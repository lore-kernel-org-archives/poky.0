Return-Path: <holger@freyther.de>
Received: from gandharva.secretlabs.de (gandharva.secretlabs.de
	[78.46.147.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6A4FE4C800A3
	for <poky@yoctoproject.org>; Sat,  2 Jul 2011 16:09:47 -0500 (CDT)
Received: from [192.168.0.101] (91-64-95-94-dynip.superkabel.de [91.64.95.94])
	by gandharva.secretlabs.de (Postfix) with ESMTPSA id 58D2F1B10C03
	for <poky@yoctoproject.org>; Sat,  2 Jul 2011 21:17:37 +0000 (UTC)
Message-ID: <4E0F8915.30004@freyther.de>
Date: Sat, 02 Jul 2011 23:09:41 +0200
From: Holger Hans Peter Freyther <holger@freyther.de>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110516 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4E0DC212.5020808@freyther.de> <4E0DCF2C.1090602@windriver.com>
In-Reply-To: <4E0DCF2C.1090602@windriver.com>
X-Enigmail-Version: 1.1.1
Subject: Re: Installing GDB or the saga of getting RPM/Zypp to run on	JFFS2
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 02 Jul 2011 21:10:34 -0000
X-Groupsio-MsgNum: 6685
Content-Type: multipart/mixed; boundary="------------040805070107090604090202"

--------------040805070107090604090202
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 07/01/2011 03:44 PM, Mark Hatle wrote:
>> f) The size of zypper
>> > libzypp is a _huge_ library, did anyone look into shrinking it? maybe
>> > by making zypper link statically to it? Did anyone look into the alternatives
>> > like SMART?
> zypper is somewhat of a pig.  Again this wasn't really designed for really small
> systems.
> 
> I've used smart in the past, it's worth looking into... but it's been a lack of
> time.  (Plus smart, at least used to, require python.. which itself is a pig, if
> you don't already need python.)
> 


Hi again,

I looked a bit around and I found:
	- zypper
	- SMART
	- yum
	- apt-rpm

zypper/libzypp:
	- I tried to produce a static libzypp and hoped the compiler would
	  make it small, but I ended up in unresolved symbols in zypper and
	  didn't feel like continuing (and using -Wl,--begin-group.. )

SMART:
	- Oh, I assume that the python installation needed will bringt it to
	  the ballpark of libzypp/zypper

yum:
	- It is slow on my laptop, it will not fly on a 300Mhz device..


apt-rpm:
	- I stumbled over a port for rpm 5.x (rpm is such a mess), it
	  compiles (after patching out a json dependency, for a library
	  using Scons, highlighting broken scons support).
	- Even with things in the package we don't need the installed size
	  is < 2MB
	- genbasedir requires our RPMs to be in RPMS.all/, RPMS.armv5te/
	  format... and it is segfaulting.
	- I have attached my current bb file (against my companies bblayer)


anyone wants to jump in with trying to get apt-rpm to replace zypper? The
net-saving will be probably around 5-6MB...


--------------040805070107090604090202
Content-Type: text/plain;
 name="apt_rpm"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="apt_rpm"

diff --git a/meta-sysmocom/recipes-system/apt-rpm/apt-rpm_0.5.bb b/meta-sysmocom/recipes-system/apt-rpm/apt-rpm_0.5.bb
new file mode 100644
index 0000000..1681104
--- /dev/null
+++ b/meta-sysmocom/recipes-system/apt-rpm/apt-rpm_0.5.bb
@@ -0,0 +1,22 @@
+DESCRIPTION = "apt-rpm for rpm based distros"
+HOMEPAGE = "http://gitorious.org/rpm5distro/apt-rpm"
+SRC_URI = "git://gitorious.org/rpm5distro/apt-rpm.git;protocol=git \
+	   file://hacks.patch"
+SRCREV = "2a6bd7a847e9a7ad269c637a1b673dafb71d26dd"
+LICENSE = "GPL"
+LIC_FILES_CHKSUM = "file://COPYING.GPL;md5=0636e73ff0215e8d672dc4c32c317bb3"
+
+S = "${WORKDIR}/git"
+
+DEPENDS = "rpm"
+DEPENDS_virtclass-native = "rpm-native"
+PR = "r1"
+
+EXTRA_OECONF += " --disable-scripts"
+
+FILES_${PN} += "${libdir}/apt/methods/*"
+FILES_${PN}-dbg += "${libdir}/apt/methods/.debug"
+
+inherit autotools gettext
+
+BBCLASSEXTEND = "native"
diff --git a/meta-sysmocom/recipes-system/apt-rpm/files/hacks.patch b/meta-sysmocom/recipes-system/apt-rpm/files/hacks.patch
new file mode 100644
index 0000000..c652984
--- /dev/null
+++ b/meta-sysmocom/recipes-system/apt-rpm/files/hacks.patch
@@ -0,0 +1,118 @@
+diff --git a/Makefile.am b/Makefile.am
+index f4efa1f..540abbe 100644
+--- a/Makefile.am
++++ b/Makefile.am
+@@ -2,7 +2,7 @@ SUBDIRS =
+ if WITH_LUAEXT
+ SUBDIRS += luaext
+ endif
+-SUBDIRS += apt-pkg methods cmdline tools doc po
++SUBDIRS += apt-pkg methods cmdline tools doc
+ SUBDIRS += test
+ 
+ ACLOCAL_AMFLAGS = -I m4 -I buildlib
+diff --git a/apt-pkg/Makefile.am b/apt-pkg/Makefile.am
+index 670ccb4..58ea9d2 100644
+--- a/apt-pkg/Makefile.am
++++ b/apt-pkg/Makefile.am
+@@ -6,7 +6,6 @@ pkgconfigdir = $(libdir)/pkgconfig
+ pkgconfig_DATA = libapt-pkg.pc
+ 
+ libapt_pkg_la_LIBADD = @RPM_LIBS@
+-libapt_pkg_la_LIBADD += -ljsoncpp
+ libapt_pkg_la_LDFLAGS = -version-info 4:0:0
+ 
+ AM_CPPFLAGS = -DLIBDIR=\"$(libdir)\" -DPKGDATADIR=\"$(pkgdatadir)\"
+diff --git a/apt-pkg/contrib/dudf.cc b/apt-pkg/contrib/dudf.cc
+index 9272670..af48504 100644
+--- a/apt-pkg/contrib/dudf.cc
++++ b/apt-pkg/contrib/dudf.cc
+@@ -28,7 +28,7 @@
+ #include <libxml/parser.h>
+ #include <libxml/tree.h>
+ 
+-#include <jsoncpp/json.h>
++//#include <jsoncpp/json.h>
+ 
+ #include <tr1/cinttypes>
+ 
+@@ -106,6 +106,7 @@ GlobalDudf::GlobalDudf()
+ 
+ }
+ 
++#if 0
+ Json::Value getTagArray(Header hdr, rpmTag tagname)
+ {
+ 	HE_t tagdata = (HE_t)memset(alloca(sizeof(*tagdata)), 0, sizeof(*tagdata));
+@@ -177,6 +178,7 @@ Json::Value getTagString(Header hdr, rpmTag tag)
+ 	return val;
+     }
+ }
++#endif
+ 
+ bool isDepFlag(rpmuint64_t value)
+ {
+@@ -190,6 +192,7 @@ struct StringComparator {
+ };
+ 
+ 
++#if 0
+ /*
+  * Generic getter for versioned dependency style info
+  * It should work for requires, provides, conflicts and obsoletes
+@@ -268,6 +271,7 @@ Json::Value getTagRequires(Header hdr, rpmTag tag, rpmTag flag_tag, rpmTag versi
+ 	return *arr;
+ 
+ }
++#endif
+ 
+ /**
+  * Dump the RPM installation status into a JSON object to be embedded in the DUDF
+@@ -276,6 +280,7 @@ Json::Value getTagRequires(Header hdr, rpmTag tag, rpmTag flag_tag, rpmTag versi
+ string GlobalDudf::dumpRPMDb()
+ {
+ 	stringstream rpmDbDump;
++#if 0
+ 	//TODO: We should be reusing the RPM db connection that apt already has, maybe
+ 	// through RPMDBHandler class
+ 	rpmReadConfigFiles(NULL, NULL);
+@@ -328,6 +333,7 @@ string GlobalDudf::dumpRPMDb()
+ 		rpmDbDump << fast.write(*array_of_pkgs) << endl;
+ 	}
+ 
++#endif
+ 	return rpmDbDump.str();
+ 
+ }
+diff --git a/configure.ac b/configure.ac
+index 6da87a5..8318505 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -296,7 +296,6 @@ AC_CONFIG_FILES([
+ 	  tools/Makefile
+ 	  doc/Makefile
+ 	  test/Makefile
+-	  po/Makefile.in
+ 	  ])
+ AC_CONFIG_LINKS([include/apti18n.h:buildlib/gettext.h])
+ 

--------------040805070107090604090202--
