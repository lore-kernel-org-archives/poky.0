Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id ABFE54C811C3
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 01:38:13 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0U7cDBf017727
	for <poky@yoctoproject.org>; Sat, 29 Jan 2011 23:38:13 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sat, 29 Jan 2011 23:38:12 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Sat, 29 Jan 2011 23:38:12 -0800
Message-Id: <a598a01bc519ea080e73605f4ff70b499bcab645.1296372804.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1296372804.git.jingdong.lu@windriver.com>
References: <cover.1296372804.git.jingdong.lu@windriver.com>
Old-Date: Sun, 30 Jan 2011 15:23:35 +0800
Date: Sun, 30 Jan 2011 15:36:31 +0800
To: poky@yoctoproject.org
CC: 
From: Jingdong Lu <jingdong.lu@windriver.com>
X-OriginalArrivalTime: 30 Jan 2011 07:38:12.0846 (UTC)
	FILETIME=[A632E0E0:01CBC050]
Subject: [PATCH 4/5] cups: add cups 1.4.6
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
X-List-Received-Date: Sun, 30 Jan 2011 07:38:13 -0000

From: Jingdong Lu <jingdong.lu@windriver.com>

This package has been added from Open Embedded.
Changes from the Open Embedded version:
* Update to version 1.4.6
* Add SUMMARY, LIC_FILES_CHKSUM, checksum of source
* Remove skip_tools.patch
* Remove fakeroot and rename libusb0 to libusb for dependence.

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 .../cups/cups-1.4.6/configure.patch                |  117 ++++++++++++++++++++
 .../cups/cups-1.4.6/use_echo_only_in_init.patch    |   11 ++
 meta/recipes-extended/cups/cups.inc                |   88 +++++++++++++++
 meta/recipes-extended/cups/cups_1.4.6.bb           |   17 +++
 4 files changed, 233 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/cups/cups-1.4.6/configure.patch
 create mode 100644 meta/recipes-extended/cups/cups-1.4.6/use_echo_only_in_init.patch
 create mode 100644 meta/recipes-extended/cups/cups.inc
 create mode 100644 meta/recipes-extended/cups/cups_1.4.6.bb

diff --git a/meta/recipes-extended/cups/cups-1.4.6/configure.patch b/meta/recipes-extended/cups/cups-1.4.6/configure.patch
new file mode 100644
index 0000000..877e8d3
--- /dev/null
+++ b/meta/recipes-extended/cups/cups-1.4.6/configure.patch
@@ -0,0 +1,117 @@
+--- cups-1.4.3/configure.orig	2010-04-08 11:14:19.092296014 +0200
++++ cups-1.4.3/configure	2010-04-08 11:19:02.661417938 +0200
+@@ -10940,114 +10940,6 @@
+     		OPTIM="-fPIC $OPTIM"
+ 	fi
+ 
+-	# The -fstack-protector option is available with some versions of
+-	# GCC and adds "stack canaries" which detect when the return address
+-	# has been overwritten, preventing many types of exploit attacks.
+-	{ echo "$as_me:$LINENO: checking if GCC supports -fstack-protector" >&5
+-echo $ECHO_N "checking if GCC supports -fstack-protector... $ECHO_C" >&6; }
+-	OLDCFLAGS="$CFLAGS"
+-	CFLAGS="$CFLAGS -fstack-protector"
+-	cat >conftest.$ac_ext <<_ACEOF
+-/* confdefs.h.  */
+-_ACEOF
+-cat confdefs.h >>conftest.$ac_ext
+-cat >>conftest.$ac_ext <<_ACEOF
+-/* end confdefs.h.  */
+-
+-int
+-main ()
+-{
+-
+-  ;
+-  return 0;
+-}
+-_ACEOF
+-rm -f conftest.$ac_objext conftest$ac_exeext
+-if { (ac_try="$ac_link"
+-case "(($ac_try" in
+-  *\"* | *\`* | *\\*) ac_try_echo=\$ac_try;;
+-  *) ac_try_echo=$ac_try;;
+-esac
+-eval "echo \"\$as_me:$LINENO: $ac_try_echo\"") >&5
+-  (eval "$ac_link") 2>conftest.er1
+-  ac_status=$?
+-  grep -v '^ *+' conftest.er1 >conftest.err
+-  rm -f conftest.er1
+-  cat conftest.err >&5
+-  echo "$as_me:$LINENO: \$? = $ac_status" >&5
+-  (exit $ac_status); } && {
+-	 test -z "$ac_c_werror_flag" ||
+-	 test ! -s conftest.err
+-       } && test -s conftest$ac_exeext &&
+-       $as_test_x conftest$ac_exeext; then
+-  OPTIM="$OPTIM -fstack-protector"
+-		{ echo "$as_me:$LINENO: result: yes" >&5
+-echo "${ECHO_T}yes" >&6; }
+-else
+-  echo "$as_me: failed program was:" >&5
+-sed 's/^/| /' conftest.$ac_ext >&5
+-
+-	{ echo "$as_me:$LINENO: result: no" >&5
+-echo "${ECHO_T}no" >&6; }
+-fi
+-
+-rm -f core conftest.err conftest.$ac_objext conftest_ipa8_conftest.oo \
+-      conftest$ac_exeext conftest.$ac_ext
+-	CFLAGS="$OLDCFLAGS"
+-
+-	# The -pie option is available with some versions of GCC and adds
+-	# randomization of addresses, which avoids another class of exploits
+-	# that depend on a fixed address for common functions.
+-	{ echo "$as_me:$LINENO: checking if GCC supports -pie" >&5
+-echo $ECHO_N "checking if GCC supports -pie... $ECHO_C" >&6; }
+-	OLDCFLAGS="$CFLAGS"
+-	CFLAGS="$CFLAGS -pie -fPIE"
+-	cat >conftest.$ac_ext <<_ACEOF
+-/* confdefs.h.  */
+-_ACEOF
+-cat confdefs.h >>conftest.$ac_ext
+-cat >>conftest.$ac_ext <<_ACEOF
+-/* end confdefs.h.  */
+-
+-int
+-main ()
+-{
+-
+-  ;
+-  return 0;
+-}
+-_ACEOF
+-rm -f conftest.$ac_objext
+-if { (ac_try="$ac_compile"
+-case "(($ac_try" in
+-  *\"* | *\`* | *\\*) ac_try_echo=\$ac_try;;
+-  *) ac_try_echo=$ac_try;;
+-esac
+-eval "echo \"\$as_me:$LINENO: $ac_try_echo\"") >&5
+-  (eval "$ac_compile") 2>conftest.er1
+-  ac_status=$?
+-  grep -v '^ *+' conftest.er1 >conftest.err
+-  rm -f conftest.er1
+-  cat conftest.err >&5
+-  echo "$as_me:$LINENO: \$? = $ac_status" >&5
+-  (exit $ac_status); } && {
+-	 test -z "$ac_c_werror_flag" ||
+-	 test ! -s conftest.err
+-       } && test -s conftest.$ac_objext; then
+-  PIEFLAGS="-pie -fPIE"
+-		{ echo "$as_me:$LINENO: result: yes" >&5
+-echo "${ECHO_T}yes" >&6; }
+-else
+-  echo "$as_me: failed program was:" >&5
+-sed 's/^/| /' conftest.$ac_ext >&5
+-
+-	{ echo "$as_me:$LINENO: result: no" >&5
+-echo "${ECHO_T}no" >&6; }
+-fi
+-
+-rm -f core conftest.err conftest.$ac_objext conftest.$ac_ext
+-	CFLAGS="$OLDCFLAGS"
+-
+ 	if test "x$with_optim" = x; then
+ 		# Add useful warning options for tracking down problems...
+ 		OPTIM="-Wall -Wno-format-y2k $OPTIM"
diff --git a/meta/recipes-extended/cups/cups-1.4.6/use_echo_only_in_init.patch b/meta/recipes-extended/cups/cups-1.4.6/use_echo_only_in_init.patch
new file mode 100644
index 0000000..21ff0e5
--- /dev/null
+++ b/meta/recipes-extended/cups/cups-1.4.6/use_echo_only_in_init.patch
@@ -0,0 +1,11 @@
+--- a/init/cups.sh.in.orig	2008-10-04 16:50:46.000000000 -0300
++++ b/init/cups.sh.in	2008-10-04 16:51:39.000000000 -0300
+@@ -68,7 +68,7 @@
+ 		ECHO_ERROR=:
+ 		;;
+ 
+-	Linux*)
++	DISABLELinux*)
+ 		IS_ON=/bin/true
+ 		if test -f /etc/init.d/functions; then
+ 			. /etc/init.d/functions
diff --git a/meta/recipes-extended/cups/cups.inc b/meta/recipes-extended/cups/cups.inc
new file mode 100644
index 0000000..c4fec42
--- /dev/null
+++ b/meta/recipes-extended/cups/cups.inc
@@ -0,0 +1,88 @@
+SUMMARY = "An Internet printing system for Unix"
+DESCRIPTION = "CUPS is a standards-based, open source printing system \
+developed by Apple Inc. for Mac OS® X and other UNIX®-like operating systems.\
+CUPS uses the Internet Printing Protocol ("IPP") and provides System V and Berkeley \
+command-line interfaces, a web interface, and a C API to manage printers and \
+print jobs."
+SECTION = "console/utils"
+LICENSE = "GPL LGPL"
+DEPENDS = "gnutls libpng jpeg dbus dbus-glib zlib"
+PROVIDES = "cups"
+
+SRC_URI = "ftp://ftp.easysw.com/pub/cups/${PV}/cups-${PV}-source.tar.bz2"
+
+LEAD_SONAME = "libcupsdriver.so"
+
+inherit autotools binconfig
+
+EXTRA_OECONF = " \
+                --enable-gnutls \
+		--enable-dbus \
+		--enable-browsing \
+                --disable-openssl \
+		--disable-tiff \
+		--without-php \
+		--without-perl \
+		--without-python \
+		--without-java \
+               "
+
+
+do_configure() {
+	gnu-configize
+	libtoolize --force
+	DSOFLAGS="${LDFLAGS}" oe_runconf
+}
+
+do_compile () {
+	sed -i s:STRIP:NOSTRIP: Makedefs
+	sed -i s:serial:: backend/Makefile
+
+	echo "all:"    >  man/Makefile
+	echo "libs:" >> man/Makefile
+	echo "install:" >> man/Makefile
+	echo "install-data:" >> man/Makefile
+	echo "install-exec:" >> man/Makefile
+	echo "install-headers:" >> man/Makefile
+	echo "install-libs:" >> man/Makefile
+
+	oe_runmake "SSLLIBS=-lgnutls -L${STAGING_LIBDIR}" \
+		   "LIBPNG=-lpng -lm -L${STAGING_LIBDIR}" \
+		   "LIBJPEG=-ljpeg -L${STAGING_LIBDIR}" \
+		   "LIBZ=-lz -L${STAGING_LIBDIR}" \
+		   "-I."
+}
+
+do_install () {
+	oe_runmake "DSTROOT=${D}" install
+
+	# This directory gets installed with perms 511, which makes packaging fail
+	chmod 0711 "${D}/${localstatedir}/run/cups/certs"
+}
+
+python do_package_append() {
+	# Change permissions back the way they were, they probably had a reason...
+	workdir = bb.data.getVar('WORKDIR', d, 1)
+	os.system('chmod 0511 %s/install/cups/var/run/cups/certs' % workdir)
+}
+
+PACKAGES =+ "${PN}-lib ${PN}-libimage"
+
+FILES_${PN}-lib = "${libdir}/libcups.so.*"
+
+FILES_${PN}-libimage = "${libdir}/libcupsimage.so.*"
+
+FILES_${PN}-dbg += "${libdir}/cups/backend/.debug \
+                    ${libdir}/cups/cgi-bin/.debug \
+		    ${libdir}/cups/filter/.debug \
+		    ${libdir}/cups/monitor/.debug \
+		    ${libdir}/cups/notifier/.debug \
+		    ${libdir}/cups/daemon/.debug \
+		    "
+#package the html for the webgui inside the main packages (~1MB uncompressed)
+
+FILES_${PN} += "${datadir}/doc/cups/images \
+		${datadir}/doc/cups/*html \
+		${datadir}/doc/cups/*.css \
+                ${datadir}/icons/ \
+	       "
diff --git a/meta/recipes-extended/cups/cups_1.4.6.bb b/meta/recipes-extended/cups/cups_1.4.6.bb
new file mode 100644
index 0000000..8c83160
--- /dev/null
+++ b/meta/recipes-extended/cups/cups_1.4.6.bb
@@ -0,0 +1,17 @@
+require cups.inc
+
+SRC_URI += " \
+	file://use_echo_only_in_init.patch \
+	file://configure.patch \
+	"
+PR = "r0"
+
+LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=956e7600195e6139f12de8c2a5bbefa9"
+
+SRC_URI[md5sum] = "de8fb5a29c36554925c0c6a6e2c0dae1"
+SRC_URI[sha256sum] = "f08711702a77b52c7150f96fe1f45482f6151cb95ef601268c528607fe6ad514"
+
+DEFAULT_PREFERENCE = "-1"
+DEPENDS += "libusb"
+EXTRA_OECONF += " --disable-gssapi --disable-largefile --enable-debug --disable-relro --enable-libusb"
+CONFFILES_${PN} += "${sysconfdir}/cups/cupsd.conf"
-- 
1.7.0.4


