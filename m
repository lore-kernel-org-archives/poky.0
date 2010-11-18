Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id DE0FA4C80039
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 20:57:44 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 02 Dec 2010 18:57:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,291,1288594800"; d="scan'208";a="356438220"
Received: from mukti.sc.intel.com (HELO localhost) ([143.183.140.51])
	by azsmga001.ch.intel.com with ESMTP; 02 Dec 2010 18:57:43 -0800
Message-Id: <13295237a43547ecaeeaa517c32c9b50003ca655.1291344572.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1291344572.git.nitin.a.kamble@intel.com>
References: <cover.1291344572.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Date: Thu, 18 Nov 2010 14:52:03 -0800
To: poky@yoctoproject.org
Subject: [PATCH 1/6] subversion: upgrade from 1.5.5 to 1.6.13
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
X-List-Received-Date: Fri, 03 Dec 2010 02:57:45 -0000

And update recipe checksums

rebased neon-detection.patch:
upstream code has some of the changes similar to the changes in the
patch. Removing the duplicate changes from the patch file.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../subversion-1.5.5/neon-detection.patch          |   36 --------------------
 .../disable-revision-install.patch                 |    0
 .../libtool2.patch                                 |    0
 .../subversion/subversion/neon-detection.patch     |   13 +++++++
 .../{subversion_1.5.5.bb => subversion_1.6.13.bb}  |    5 ++-
 5 files changed, 17 insertions(+), 37 deletions(-)
 delete mode 100644 meta/recipes-devtools/subversion/subversion-1.5.5/neon-detection.patch
 rename meta/recipes-devtools/subversion/{subversion-1.5.5 => subversion}/disable-revision-install.patch (100%)
 rename meta/recipes-devtools/subversion/{subversion-1.5.5 => subversion}/libtool2.patch (100%)
 create mode 100644 meta/recipes-devtools/subversion/subversion/neon-detection.patch
 rename meta/recipes-devtools/subversion/{subversion_1.5.5.bb => subversion_1.6.13.bb} (86%)

diff --git a/meta/recipes-devtools/subversion/subversion-1.5.5/neon-detection.patch b/meta/recipes-devtools/subversion/subversion-1.5.5/neon-detection.patch
deleted file mode 100644
index b567d5c..0000000
--- a/meta/recipes-devtools/subversion/subversion-1.5.5/neon-detection.patch
+++ /dev/null
@@ -1,36 +0,0 @@
-diff --git a/build/ac-macros/neon.m4 b/build/ac-macros/neon.m4
-index 9fcf859..8d964f3 100644
---- a/build/ac-macros/neon.m4
-+++ b/build/ac-macros/neon.m4
-@@ -38,7 +38,7 @@ AC_DEFUN(SVN_LIB_NEON,
-     if test "$withval" = "yes" ; then
-       AC_MSG_ERROR([--with-neon requires an argument.])
-     else
--      neon_config="$withval/bin/neon-config"
-+      neon_config="env env PKG_CONFIG_PATH=${withval}:${PKG_CONFIG_PATH} pkg-config neon"
-     fi
- 
-     SVN_NEON_CONFIG()
-@@ -117,10 +117,10 @@ dnl SVN_NEON_CONFIG()
- dnl neon-config found, gather relevant information from it
- AC_DEFUN(SVN_NEON_CONFIG,
- [
--  if test -f "$neon_config"; then
--    if test "$neon_config" != ""; then
-+  if true; then
-+    if true; then
-       AC_MSG_CHECKING([neon library version])
--      NEON_VERSION=`$neon_config --version | sed -e 's/^neon //'`
-+      NEON_VERSION=`$neon_config --modversion | sed -e 's/^neon //'`
-       AC_MSG_RESULT([$NEON_VERSION])
- 
-       if test -n "`echo \"$NEON_VERSION\" | grep '^0\.25\.'`" ; then
-@@ -133,7 +133,7 @@ AC_DEFUN(SVN_NEON_CONFIG,
-            test "$svn_allowed_neon" = "any"; then
-             svn_allowed_neon_on_system="yes"
-             SVN_NEON_INCLUDES=[`$neon_config --cflags | sed -e 's/-D[^ ]*//g'`]
--            NEON_LIBS=`$neon_config --la-file`
-+            NEON_LIBS=`$neon_config --libs`
-             CFLAGS=["$CFLAGS `$neon_config --cflags | sed -e 's/-I[^ ]*//g'`"]
-             svn_lib_neon="yes"
-             break
diff --git a/meta/recipes-devtools/subversion/subversion-1.5.5/disable-revision-install.patch b/meta/recipes-devtools/subversion/subversion/disable-revision-install.patch
similarity index 100%
rename from meta/recipes-devtools/subversion/subversion-1.5.5/disable-revision-install.patch
rename to meta/recipes-devtools/subversion/subversion/disable-revision-install.patch
diff --git a/meta/recipes-devtools/subversion/subversion-1.5.5/libtool2.patch b/meta/recipes-devtools/subversion/subversion/libtool2.patch
similarity index 100%
rename from meta/recipes-devtools/subversion/subversion-1.5.5/libtool2.patch
rename to meta/recipes-devtools/subversion/subversion/libtool2.patch
diff --git a/meta/recipes-devtools/subversion/subversion/neon-detection.patch b/meta/recipes-devtools/subversion/subversion/neon-detection.patch
new file mode 100644
index 0000000..eaf6de0
--- /dev/null
+++ b/meta/recipes-devtools/subversion/subversion/neon-detection.patch
@@ -0,0 +1,13 @@
+Index: subversion-1.6.13/build/ac-macros/neon.m4
+===================================================================
+--- subversion-1.6.13.orig/build/ac-macros/neon.m4
++++ subversion-1.6.13/build/ac-macros/neon.m4
+@@ -42,7 +42,7 @@ AC_DEFUN(SVN_LIB_NEON,
+         AC_MSG_ERROR([--with-neon requires an argument.])
+       fi
+     else
+-      neon_config="$withval/bin/neon-config"
++      neon_config="env env PKG_CONFIG_PATH=${withval}:${PKG_CONFIG_PATH} pkg-config neon"
+     fi
+ 
+     SVN_NEON_CONFIG()
diff --git a/meta/recipes-devtools/subversion/subversion_1.5.5.bb b/meta/recipes-devtools/subversion/subversion_1.6.13.bb
similarity index 86%
rename from meta/recipes-devtools/subversion/subversion_1.5.5.bb
rename to meta/recipes-devtools/subversion/subversion_1.6.13.bb
index 4477274..c099756 100644
--- a/meta/recipes-devtools/subversion/subversion_1.5.5.bb
+++ b/meta/recipes-devtools/subversion/subversion_1.6.13.bb
@@ -5,13 +5,16 @@ RDEPENDS = "neon"
 LICENSE = "Apache BSD"
 HOMEPAGE = "http://subversion.tigris.org"
 
-PR = "r7"
+PR = "r0"
 
 SRC_URI = "http://subversion.tigris.org/downloads/${P}.tar.bz2 \
            file://disable-revision-install.patch;patch=1 \
 	   file://neon-detection.patch;patch=1 \
 	   file://libtool2.patch;patch=1"
 
+SRC_URI[md5sum] = "7ae1c827689f21cf975804005be30aeb"
+SRC_URI[sha256sum] = "3a30327bdb04109f369586196ee4a6993cdab2cfa85c3134549f02c229bf0d15"
+
 LIC_FILES_CHKSUM = "file://COPYING;md5=b592c67ecb801ccc95e236f186ec33fd"
 
 EXTRA_OECONF = "--with-neon=${STAGING_EXECPREFIXDIR} \
-- 
1.7.2.2


