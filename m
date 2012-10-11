Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01D5DE0027E
	for <poky@yoctoproject.org>; Thu, 11 Oct 2012 11:43:56 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 Oct 2012 11:43:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,573,1344236400"; d="scan'208";a="204473771"
Received: from duke.jf.intel.com (HELO localhost) ([10.7.199.52])
	by orsmga001.jf.intel.com with ESMTP; 11 Oct 2012 11:43:56 -0700
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Thu, 11 Oct 2012 11:43:56 -0700
Message-Id: <76e43ababbb974c3bc3ed97f1c61133490635237.1349980878.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349980878.git.scott.a.garman@intel.com>
References: <cover.1349980878.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1349980878.git.scott.a.garman@intel.com>
References: <cover.1349980878.git.scott.a.garman@intel.com>
Subject: [PATCH 8/8] openssl: add deprecated and unmaintained find.pl from perl-5.14 to fix perlpath.pl
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 11 Oct 2012 18:43:57 -0000

From: Martin Jansa <martin.jansa@gmail.com>

* openembedded-core/meta/recipes-connectivity/openssl/openssl.inc
*
* is using perlpath.pl:
*
*   do_configure () {
*           cd util
*           perl perlpath.pl ${STAGING_BINDIR_NATIVE}
*   ...
*
* and perlpath.pl is using find.pl:
* openssl-1.0.0i/util/perlpath.pl:
*   #!/usr/local/bin/perl
*   #
*   # modify the '#!/usr/local/bin/perl'
*   # line in all scripts that rely on perl.
*   #
*
*   require "find.pl";
*   ...
*
* which was removed in perl-5.16.0 and marked as deprecated and
* unmaintained in 5.14 and older:
* /tmp/usr/lib/perl5/5.14.2/find.pl:
*   warn "Legacy library @{[(caller(0))[6]]} will be removed from the Perl
*   core distribution in the next major release. Please install it from the
*   CPAN distribution Perl4::CoreLibs. It is being used at @{[(caller)[1]]},
*   line @{[(caller)[2]]}.\n";
*
*   # This library is deprecated and unmaintained. It is included for
*   # compatibility with Perl 4 scripts which may use it, but it will be
*   # removed in a future version of Perl. Please use the File::Find module
*   # instead.

(from OE-Core rev c09bf5d177a7ecd2045ef7e13fff4528137a9775)

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 .../openssl/openssl-1.0.0i/find.pl                 |   54 ++++++++++++++++++++
 .../recipes-connectivity/openssl/openssl_1.0.0i.bb |    7 ++-
 2 files changed, 60 insertions(+), 1 deletion(-)
 create mode 100644 meta/recipes-connectivity/openssl/openssl-1.0.0i/find.pl

diff --git a/meta/recipes-connectivity/openssl/openssl-1.0.0i/find.pl b/meta/recipes-connectivity/openssl/openssl-1.0.0i/find.pl
new file mode 100644
index 0000000..8e1b42c
--- /dev/null
+++ b/meta/recipes-connectivity/openssl/openssl-1.0.0i/find.pl
@@ -0,0 +1,54 @@
+warn "Legacy library @{[(caller(0))[6]]} will be removed from the Perl core distribution in the next major release. Please install it from the CPAN distribution Perl4::CoreLibs. It is being used at @{[(caller)[1]]}, line @{[(caller)[2]]}.\n";
+
+# This library is deprecated and unmaintained. It is included for
+# compatibility with Perl 4 scripts which may use it, but it will be
+# removed in a future version of Perl. Please use the File::Find module
+# instead.
+
+# Usage:
+#	require "find.pl";
+#
+#	&find('/foo','/bar');
+#
+#	sub wanted { ... }
+#		where wanted does whatever you want.  $dir contains the
+#		current directory name, and $_ the current filename within
+#		that directory.  $name contains "$dir/$_".  You are cd'ed
+#		to $dir when the function is called.  The function may
+#		set $prune to prune the tree.
+#
+# For example,
+#
+#   find / -name .nfs\* -mtime +7 -exec rm -f {} \; -o -fstype nfs -prune
+#
+# corresponds to this
+#
+#	sub wanted {
+#	    /^\.nfs.*$/ &&
+#	    (($dev,$ino,$mode,$nlink,$uid,$gid) = lstat($_)) &&
+#	    int(-M _) > 7 &&
+#	    unlink($_)
+#	    ||
+#	    ($nlink || (($dev,$ino,$mode,$nlink,$uid,$gid) = lstat($_))) &&
+#	    $dev < 0 &&
+#	    ($prune = 1);
+#	}
+#
+# Set the variable $dont_use_nlink if you're using AFS, since AFS cheats.
+
+use File::Find ();
+
+*name		= *File::Find::name;
+*prune		= *File::Find::prune;
+*dir		= *File::Find::dir;
+*topdir		= *File::Find::topdir;
+*topdev		= *File::Find::topdev;
+*topino		= *File::Find::topino;
+*topmode	= *File::Find::topmode;
+*topnlink	= *File::Find::topnlink;
+
+sub find {
+    &File::Find::find(\&wanted, @_);
+}
+
+1;
diff --git a/meta/recipes-connectivity/openssl/openssl_1.0.0i.bb b/meta/recipes-connectivity/openssl/openssl_1.0.0i.bb
index ca15a38..c233ba1 100644
--- a/meta/recipes-connectivity/openssl/openssl_1.0.0i.bb
+++ b/meta/recipes-connectivity/openssl/openssl_1.0.0i.bb
@@ -6,7 +6,7 @@ DEPENDS += "ocf-linux"
 
 CFLAG += "-DHAVE_CRYPTODEV -DUSE_CRYPTODEV_DIGESTS"
 
-PR = "${INC_PR}.2"
+PR = "${INC_PR}.3"
 
 LIC_FILES_CHKSUM = "file://LICENSE;md5=f9a8f968107345e0b75aa8c2ecaa7ec8"
 
@@ -29,6 +29,7 @@ SRC_URI += "file://configure-targets.patch \
             file://debian/no-symbolic.patch \
             file://debian/debian-targets.patch \
             file://openssl_fix_for_x32.patch \
+            file://find.pl \
            "
 
 SRC_URI[md5sum] = "b4df9c11af454fd68178c85a1d5f328f"
@@ -43,3 +44,7 @@ FILES_${PN}-engines = "${libdir}/ssl/engines/*.so ${libdir}/engines"
 FILES_${PN}-engines-dbg = "${libdir}/ssl/engines/.debug"
 
 PARALLEL_MAKEINST = ""
+
+do_configure_prepend() {
+  cp ${WORKDIR}/find.pl ${S}/util/find.pl
+}
-- 
1.7.9.5


