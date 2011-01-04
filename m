Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id CE63B4C811EC
	for <poky@yoctoproject.org>; Tue,  4 Jan 2011 07:45:14 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Jan 2011 05:45:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,272,1291622400"; d="scan'208";a="693398519"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.31])
	by orsmga001.jf.intel.com with ESMTP; 04 Jan 2011 05:45:14 -0800
Message-Id: <2add50953867de87d548e7eb03b39f8ecb031a7e.1294148490.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1294148490.git.edwin.zhai@intel.com>
References: <cover.1294148490.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Old-Date: Thu, 30 Dec 2010 21:04:22 +0800
Date: Tue, 04 Jan 2011 21:50:21 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 6/7] metacity: Upgrade to 2.30.3
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
X-List-Received-Date: Tue, 04 Jan 2011 13:45:15 -0000

Revised one patch from openembed to make host native binary for build.

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../gnome/metacity/crosscompile.patch              |   60 ++++++++++++++++++++
 .../{metacity_2.22.0.bb => metacity_2.30.3.bb}     |   14 +++-
 2 files changed, 70 insertions(+), 4 deletions(-)
 create mode 100644 meta/recipes-gnome/gnome/metacity/crosscompile.patch
 rename meta/recipes-gnome/gnome/{metacity_2.22.0.bb => metacity_2.30.3.bb} (53%)

diff --git a/meta/recipes-gnome/gnome/metacity/crosscompile.patch b/meta/recipes-gnome/gnome/metacity/crosscompile.patch
new file mode 100644
index 0000000..8d86134
--- /dev/null
+++ b/meta/recipes-gnome/gnome/metacity/crosscompile.patch
@@ -0,0 +1,60 @@
+This patch is revised version from openembed. It build host native binary
+rather than target binary in cross-compile environment.
+
+Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
+
+Index: metacity-2.30.3/src/Makefile.am
+===================================================================
+--- metacity-2.30.3.orig/src/Makefile.am	2010-09-05 00:09:52.000000000 +0800
++++ metacity-2.30.3/src/Makefile.am	2010-12-31 11:15:31.000000000 +0800
+@@ -134,11 +134,9 @@
+ metacity_theme_viewer_SOURCES=  \
+ 	ui/theme-viewer.c
+ 
+-schema_bindings_SOURCES =       \
+-        core/schema-bindings.c			\
+-	metacity.schemas.in.in
++schema_bindings:
++	@CC_FOR_BUILD@ core/schema-bindings.c -I./include -I../ @CFLAGS_FOR_BUILD@ @LDFLAGS_FOR_BUILD@ -o schema_bindings
+ 
+-schema_bindings_LDADD = @METACITY_LIBS@
+ metacity.schemas.in: schema_bindings ${srcdir}/metacity.schemas.in.in
+ 	@echo Generating keybinding schemas... ${srcdir}/metacity.schemas.in.in
+ 	${builddir}/schema_bindings ${srcdir}/metacity.schemas.in.in ${builddir}/metacity.schemas.in
+Index: metacity-2.30.3/configure.in
+===================================================================
+--- metacity-2.30.3.orig/configure.in	2010-09-22 22:14:06.000000000 +0800
++++ metacity-2.30.3/configure.in	2010-12-31 11:15:31.000000000 +0800
+@@ -31,6 +31,32 @@
+ AC_LIBTOOL_WIN32_DLL
+ AM_PROG_LIBTOOL
+ 
++if test x"$CC_FOR_BUILD" = x; then
++	if test x"$cross_compiling" = xyes; then
++	       AC_CHECK_PROGS(CC_FOR_BUILD, gcc cc)
++	else
++	       CC_FOR_BUILD="$CC"
++	fi
++fi
++AC_SUBST([CC_FOR_BUILD])
++if test x"$CFLAGS_FOR_BUILD" = x; then
++	if test x"$cross_compiling" = xyes; then
++	       echo boo!
++	else
++	       CFLAGS_FOR_BUILD="$CFLAGS"
++	fi
++fi
++AC_SUBST([CFLAGS_FOR_BUILD])
++if test x"$LDFLAGS_FOR_BUILD" = x; then
++	if test x"$cross_compiling" = xyes; then
++	       echo boo!
++	else
++	       LDFLAGS_FOR_BUILD="$LDFLAGS"
++	fi
++fi
++AC_SUBST([LDFLAGS_FOR_BUILD])
++
++
+ #### Integer sizes 
+ 
+ AC_CHECK_SIZEOF(char)
diff --git a/meta/recipes-gnome/gnome/metacity_2.22.0.bb b/meta/recipes-gnome/gnome/metacity_2.30.3.bb
similarity index 53%
rename from meta/recipes-gnome/gnome/metacity_2.22.0.bb
rename to meta/recipes-gnome/gnome/metacity_2.30.3.bb
index e698ec4..6e9dd72 100644
--- a/meta/recipes-gnome/gnome/metacity_2.22.0.bb
+++ b/meta/recipes-gnome/gnome/metacity_2.30.3.bb
@@ -4,11 +4,13 @@ LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
                     file://src/include/main.h;endline=24;md5=c2242df552c880280315989bab626b90"
 
-DEPENDS = "startup-notification gtk+ gconf gdk-pixbuf-csource-native"
-PR = "r3"
+DEPENDS = "startup-notification gtk+ gconf gdk-pixbuf-csource-native libcanberra"
+PR = "r0"
 
 inherit gnome update-alternatives
 
+SRC_URI += "file://crosscompile.patch;patch=1"
+
 ALTERNATIVE_NAME = "x-window-manager"
 ALTERNATIVE_LINK = "${bindir}/x-window-manager"
 ALTERNATIVE_PATH = "${bindir}/metacity"
@@ -19,5 +21,9 @@ EXTRA_OECONF += "--disable-verbose \
 
 FILES_${PN} += "${datadir}/themes"
 
-SRC_URI[archive.md5sum] = "8cb6d02cf66a1003532b4f5d2754d696"
-SRC_URI[archive.sha256sum] = "3c670b41a214311006dc05f9a005696b9d3fdcb5c80f1275367416600103b3bf"
+export CC_FOR_BUILD = "${BUILD_CC}"
+export CFLAGS_FOR_BUILD = "${BUILD_CFLAGS} -I${STAGING_LIBDIR_NATIVE}/glib-2.0/include -I${STAGING_INCDIR_NATIVE}/glib-2.0 -I${STAGING_INCDIR_NATIVE}/glib-2.0/include -I${STAGING_INCDIR_NATIVE}"
+export LDFLAGS_FOR_BUILD = "${BUILD_LDFLAGS} -L${STAGING_LIBDIR_NATIVE} -lglib-2.0"
+
+SRC_URI[archive.md5sum] = "553784f376d96b902e19ff437cd5b339"
+SRC_URI[archive.sha256sum] = "08f887018fa5e447cf184d03bae3fe2c05fdb7583bed6768e3b4d66392fc18dd"
-- 
1.7.0.4


