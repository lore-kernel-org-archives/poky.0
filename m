Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B0BD34C811F1
	for <poky@yoctoproject.org>; Tue, 11 Jan 2011 19:41:52 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 Jan 2011 17:41:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,310,1291622400"; d="scan'208";a="695849818"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.31])
	by orsmga001.jf.intel.com with ESMTP; 11 Jan 2011 17:41:51 -0800
Message-Id: <d29fc0820bad1967c27469717c68c642aeeb1893.1294796468.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1294796468.git.edwin.zhai@intel.com>
References: <cover.1294796468.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Old-Date: Fri, 17 Dec 2010 10:00:20 +0800
Date: Wed, 12 Jan 2011  9:46:41 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 4/5] apr: Update to 1.4.2
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
X-List-Received-Date: Wed, 12 Jan 2011 01:41:52 -0000

Add buildconf_fix.patch of removing new libtool detection method to avoid config
failure.  Handled build/libtool.m4 & apr_rules.mk after configure to take place
of "top_builddir" by "apr_builddir", as these files would be reused by apr-util.

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 meta/recipes-support/apr/apr/buildconf_fix.patch   |   25 ++++++++++++++++++++
 meta/recipes-support/apr/apr/cleanup.patch         |    9 +++----
 .../apr/{apr_1.3.3.bb => apr_1.4.2.bb}             |   23 ++++++++++++++----
 3 files changed, 47 insertions(+), 10 deletions(-)
 create mode 100644 meta/recipes-support/apr/apr/buildconf_fix.patch
 rename meta/recipes-support/apr/{apr_1.3.3.bb => apr_1.4.2.bb} (60%)

diff --git a/meta/recipes-support/apr/apr/buildconf_fix.patch b/meta/recipes-support/apr/apr/buildconf_fix.patch
new file mode 100644
index 0000000..641340b
--- /dev/null
+++ b/meta/recipes-support/apr/apr/buildconf_fix.patch
@@ -0,0 +1,25 @@
+Remove the new libtool detection method to avoid config failure. Poky's libtool
+has different format for "aclocaldir", and there is no elegant parsing method,
+so fall back to old detection.
+
+Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
+
+Index: apr-1.4.2/buildconf
+===================================================================
+--- apr-1.4.2.orig/buildconf	2009-11-13 06:19:49.000000000 +0800
++++ apr-1.4.2/buildconf	2010-11-29 14:39:19.000000000 +0800
+@@ -50,14 +50,6 @@
+ 
+ if [ -f libtool.m4 ]; then 
+    ltfile=`pwd`/libtool.m4
+-elif grep all_pkgmacro_files $libtoolize > /dev/null; then
+-    # libtool 2.x
+-   aclocal_dir=`sed -n '/^aclocaldir=/{s/.*=//;p;q;}' < $libtoolize`
+-   ltfiles=`sed -n '/^all_pkgmacro_files=/{s/.*=//;;s/"//;p;q;}' < $libtoolize`
+-   for f in $ltfiles; do
+-       test -f "$aclocal_dir/$f" && cp "$aclocal_dir/$f" build
+-   done
+-   ltfile=$aclocal_dir/libtool.m4
+ else
+    ltfindcmd="`sed -n \"/=[^\\\`]/p;/libtool_m4=/{s/.*=/echo /p;q;}\" \
+                    < $libtoolize`"
diff --git a/meta/recipes-support/apr/apr/cleanup.patch b/meta/recipes-support/apr/apr/cleanup.patch
index fd74826..47f1c42 100644
--- a/meta/recipes-support/apr/apr/cleanup.patch
+++ b/meta/recipes-support/apr/apr/cleanup.patch
@@ -1,7 +1,7 @@
-Index: apr-1.3.3/build/buildcheck.sh
+Index: apr-1.4.2/build/buildcheck.sh
 ===================================================================
---- apr-1.3.3.orig/build/buildcheck.sh	2009-01-15 13:32:33.000000000 +0000
-+++ apr-1.3.3/build/buildcheck.sh	2009-01-15 13:33:06.000000000 +0000
+--- apr-1.4.2.orig/build/buildcheck.sh	2009-11-13 08:27:16.000000000 +0800
++++ apr-1.4.2/build/buildcheck.sh	2010-11-26 15:44:00.000000000 +0800
 @@ -32,35 +32,4 @@
  echo "buildconf: autoconf version $ac_version (ok)"
  fi
@@ -12,7 +12,7 @@ Index: apr-1.3.3/build/buildcheck.sh
 -# output is multiline from 1.5 onwards
 -
 -# Require libtool 1.4 or newer
--libtool=`build/PrintPath glibtool libtool libtool15 libtool14`
+-libtool=`build/PrintPath glibtool1 glibtool libtool libtool15 libtool14`
 -lt_pversion=`$libtool --version 2>/dev/null|sed -e 's/([^)]*)//g;s/^[^0-9]*//;s/[- ].*//g;q'`
 -if test -z "$lt_pversion"; then
 -echo "buildconf: libtool not found."
@@ -39,4 +39,3 @@ Index: apr-1.3.3/build/buildcheck.sh
 -
 -exit 1
 +exit 0
-\ No newline at end of file
diff --git a/meta/recipes-support/apr/apr_1.3.3.bb b/meta/recipes-support/apr/apr_1.4.2.bb
similarity index 60%
rename from meta/recipes-support/apr/apr_1.3.3.bb
rename to meta/recipes-support/apr/apr_1.4.2.bb
index 26cc01f..fe983eb 100644
--- a/meta/recipes-support/apr/apr_1.3.3.bb
+++ b/meta/recipes-support/apr/apr_1.4.2.bb
@@ -1,16 +1,21 @@
 DESCRIPTION = "Apache Portable Runtime (APR) library"
+HOMEPAGE = "http://apr.apache.org/"
 SECTION = "libs"
+
 LICENSE = "Apache License, Version 2.0"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=0c35ff3c4c83b89d2f076e315caac28b"
-PR = "r5"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=0c35ff3c4c83b89d2f076e315caac28b \
+                    file://include/apr_lib.h;endline=17;md5=ee42fa7575dc40580a9e01c1b75fae96"
+
+PR = "r0"
 
 SRC_URI = "${APACHE_MIRROR}/apr/${P}.tar.bz2 \
            file://configure_fixes.patch;patch=1 \
 	   file://cleanup.patch;patch=1 \
-           file://configfix.patch;patch=1"
+           file://configfix.patch;patch=1 \
+           file://buildconf_fix.patch;patch=1"
 
-SRC_URI[md5sum] = "2090c21dee4f0eb1512604127dcd158f"
-SRC_URI[sha256sum] = "d95f3b78366c86317043304864bb08cb836312c87ea7d142a4c02154e7e0dd37"
+SRC_URI[md5sum] = "4b00e8f70c067893d075577962656b35"
+SRC_URI[sha256sum] = "2017ca700694d09d2b0b21dd7c4d195e43a48735aac88526160c6195ee8f5391"
 
 inherit autotools lib_package binconfig
 
@@ -21,6 +26,14 @@ do_configure_prepend() {
 	./buildconf
 }
 
+#for some reason, build/libtool.m4 handled by buildconf still be overwritten
+#when autoconf, so handle it again.
+do_configure_append() {
+	cd ${S}
+	sed -i -e 's/LIBTOOL=\(.*\)top_build/LIBTOOL=\1apr_build/' build/libtool.m4
+	sed -i -e 's/LIBTOOL=\(.*\)top_build/LIBTOOL=\1apr_build/' build/apr_rules.mk
+}
+
 SYSROOT_PREPROCESS_FUNCS += "apr_sysroot_preprocess"
 
 apr_sysroot_preprocess () {
-- 
1.7.0.4


