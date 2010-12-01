Return-Path: <edwin.zhai@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 76D4E4C810CE
	for <poky@yoctoproject.org>; Wed,  1 Dec 2010 23:55:41 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 01 Dec 2010 21:55:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,286,1288594800"; d="scan'208";a="863431213"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by fmsmga001.fm.intel.com with ESMTP; 01 Dec 2010 21:55:40 -0800
Message-Id: <6d0b89c6a65820f15b45d2f4ba789847d0b4ae6b.1291269468.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1291269468.git.edwin.zhai@intel.com>
References: <cover.1291269468.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Wed, 1 Dec 2010 09:04:58 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 13/14] gnome-icon-theme: Update to 2.31.0
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
X-List-Received-Date: Thu, 02 Dec 2010 05:55:41 -0000

Rebased the patch iconpath-option.patch

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../gnome/gnome-icon-theme/iconpath-option.patch   |   79 +++++++++----------
 ...-theme_2.22.0.bb => gnome-icon-theme_2.31.0.bb} |   12 ++-
 2 files changed, 46 insertions(+), 45 deletions(-)
 rename meta/recipes-gnome/gnome/{gnome-icon-theme_2.22.0.bb => gnome-icon-theme_2.31.0.bb} (55%)

diff --git a/meta/recipes-gnome/gnome/gnome-icon-theme/iconpath-option.patch b/meta/recipes-gnome/gnome/gnome-icon-theme/iconpath-option.patch
index 935b358..8a16d00 100644
--- a/meta/recipes-gnome/gnome/gnome-icon-theme/iconpath-option.patch
+++ b/meta/recipes-gnome/gnome/gnome-icon-theme/iconpath-option.patch
@@ -4,48 +4,43 @@ pkg-config will only search the target sysroot and we want the native script. Th
 patch adds an option to allow the path to the tool to be specified.
 
 RP - 12/8/10"
-Index: gnome-icon-theme-2.22.0/configure.in
+Index: gnome-icon-theme-2.31.0/configure.ac
 ===================================================================
---- gnome-icon-theme-2.22.0.orig/configure.in
-+++ gnome-icon-theme-2.22.0/configure.in
-@@ -28,20 +28,28 @@ AC_SUBST(themedir, "\${datadir}/icons/gn
+--- gnome-icon-theme-2.31.0.orig/configure.ac	2010-12-01 11:00:22.000000000 +0800
++++ gnome-icon-theme-2.31.0/configure.ac	2010-12-01 11:02:16.000000000 +0800
+@@ -38,18 +38,24 @@
+ ICONMAP="true"
+ if test "x$enable_mapping" != "xno"; then
+    UTILS_REQUIRED=0.8.7
++   PKG_PROG_PKG_CONFIG()
  
- UTILS_REQUIRED=0.8.1
- 
--AC_MSG_CHECKING([icon-naming-utils >= $UTILS_REQUIRED])
--PKG_CHECK_EXISTS(icon-naming-utils >= $UTILS_REQUIRED,
--                 have_utils=yes, have_utils=no)
--if test "x$have_utils" = "xyes"; then
--   UTILS_PATH="`$PKG_CONFIG --variable=program_path icon-naming-utils`"
--   ICONMAP="$UTILS_PATH/icon-name-mapping"
--   AC_SUBST(ICONMAP)
--   AC_MSG_RESULT([yes])
--else
--   AC_MSG_RESULT([no])
--   AC_MSG_ERROR([icon-naming-utils >= $UTILS_REQUIRED is required to build
--                 and install gnome-icon-theme])
-+PKG_PROG_PKG_CONFIG()
-+
-+AC_ARG_WITH(iconmap,
-+	    AC_HELP_STRING([--with-iconmap=<dir>], [The location of the icon-name-mapping script to use]),
-+	    ICONMAP=$withval, ICONMAP="")
-+if test "x$ICONMAP" = "x"; then
-+   AC_MSG_CHECKING([icon-naming-utils >= $UTILS_REQUIRED])
-+   PKG_CHECK_EXISTS(icon-naming-utils >= $UTILS_REQUIRED,
-+   		    have_utils=yes, have_utils=no)
-+   if test "x$have_utils" = "xyes"; then
-+      UTILS_PATH="`$PKG_CONFIG --variable=program_path icon-naming-utils`"
-+      ICONMAP="$UTILS_PATH/icon-name-mapping"
-+
-+      AC_MSG_RESULT([yes])
-+    else
-+      AC_MSG_RESULT([no])
-+      AC_MSG_ERROR([icon-naming-utils >= $UTILS_REQUIRED is required to build and install sato-icon-theme"])
-+    fi
- fi
- 
-+AC_SUBST(ICONMAP)
+-   AC_MSG_CHECKING([icon-naming-utils >= $UTILS_REQUIRED])
+-   PKG_CHECK_EXISTS(icon-naming-utils >= $UTILS_REQUIRED,
+-                    have_utils=yes, have_utils=no)
+-   if test "x$have_utils" = "xyes"; then
+-      UTILS_PATH="`$PKG_CONFIG --variable=program_path icon-naming-utils`"
+-      ICONMAP="$UTILS_PATH/icon-name-mapping"
+-      AC_MSG_RESULT([yes])
+-   else
+-      AC_MSG_RESULT([no])
+-      AC_MSG_ERROR([icon-naming-utils >= $UTILS_REQUIRED is required to build
+-                    and install gnome-icon-theme])
++   AC_ARG_WITH(iconmap,
++   	    AC_HELP_STRING([--with-iconmap=<dir>], [The location of the icon-name-mapping script to use]),
++   	    ICONMAP=$withval, ICONMAP="")
++   if test "x$ICONMAP" = "x"; then
++      AC_MSG_CHECKING([icon-naming-utils >= $UTILS_REQUIRED])
++      PKG_CHECK_EXISTS(icon-naming-utils >= $UTILS_REQUIRED,
++      		    have_utils=yes, have_utils=no)
++      if test "x$have_utils" = "xyes"; then
++         UTILS_PATH="`$PKG_CONFIG --variable=program_path icon-naming-utils`"
++         ICONMAP="$UTILS_PATH/icon-name-mapping"
 +
- AC_CONFIG_FILES([
- Makefile
- gnome-icon-theme.pc
++         AC_MSG_RESULT([yes])
++      else
++         AC_MSG_RESULT([no])
++         AC_MSG_ERROR([icon-naming-utils >= $UTILS_REQUIRED is required to build and install sato-icon-theme"])
++      fi
+    fi
+ else
+    ICONMAP="false"
diff --git a/meta/recipes-gnome/gnome/gnome-icon-theme_2.22.0.bb b/meta/recipes-gnome/gnome/gnome-icon-theme_2.31.0.bb
similarity index 55%
rename from meta/recipes-gnome/gnome/gnome-icon-theme_2.22.0.bb
rename to meta/recipes-gnome/gnome/gnome-icon-theme_2.31.0.bb
index bdf5ee4..c8a2db7 100644
--- a/meta/recipes-gnome/gnome/gnome-icon-theme_2.22.0.bb
+++ b/meta/recipes-gnome/gnome/gnome-icon-theme_2.31.0.bb
@@ -1,13 +1,19 @@
-LICENSE = "GPL"
+DESCRIPTION = "GNOME 2 default icon themes"
+HOMEPAGE = "http://www.gnome.org/"
+BUGTRACKER = "https://bugzilla.gnome.org/"
+
+LICENSE = "LGPLv3 | BY-SAv3"
+LIC_FILES_CHKSUM = "file://COPYING;md5=e7e289d90fc8bdceed5e3f142f98229e"
+
 SECTION = "x11/gnome"
 DEPENDS = "icon-naming-utils-native glib-2.0 intltool-native"
 RDEPENDS = "hicolor-icon-theme"
 RRECOMMENDS = "librsvg-gtk"
-PR = "r2"
+PR = "r0"
 
 FILES_${PN} += "${datadir}/*"
 
-SRC_URI = "${GNOME_MIRROR}/${PN}/2.22/${PN}-${PV}.tar.bz2 \
+SRC_URI = "${GNOME_MIRROR}/${PN}/2.31/${PN}-${PV}.tar.bz2 \
            file://iconpath-option.patch"
 
 EXTRA_OECONF = "--disable-hicolor-check --with-iconmap=${STAGING_LIBDIR_NATIVE}/../libexec/icon-name-mapping"
-- 
1.7.0.4


