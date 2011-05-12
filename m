Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 53EEC4C81110
	for <poky@yoctoproject.org>; Thu, 12 May 2011 17:08:00 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 12 May 2011 15:07:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,360,1301900400"; d="scan'208";a="435224112"
Received: from unknown (HELO localhost) ([10.255.12.106])
	by azsmga001.ch.intel.com with ESMTP; 12 May 2011 15:07:56 -0700
Message-Id: <0ef3247ebe6b3909d135b2a1702283ead424e1ac.1305236058.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1305236058.git.tom.zanussi@intel.com>
References: <cover.1305236058.git.tom.zanussi@intel.com>
Old-Date: Thu, 12 May 2011 11:15:39 -0500
Date: Thu, 12 May 2011 17:07:32 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 4/4] meta-crownbay: remove obsolete graphics recipes
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
X-List-Received-Date: Thu, 12 May 2011 22:08:00 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

With the emgd 1.6.1 upgrade, we no longer need these.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb |   90 --------------------
 .../xserver-xf86-emgd/crosscompile.patch           |   19 ----
 .../fix_open_max_preprocessor_error.patch          |   13 ---
 .../xserver-xf86-emgd/macro_tweak.patch            |   18 ----
 .../xorg-xserver/xserver-xf86-emgd/nodolt.patch    |   12 ---
 .../xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb     |   25 ------
 6 files changed, 0 insertions(+), 177 deletions(-)
 delete mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin/.gitignore
 delete mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb
 delete mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/crosscompile.patch
 delete mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/fix_open_max_preprocessor_error.patch
 delete mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/macro_tweak.patch
 delete mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/nodolt.patch
 delete mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb

diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin/.gitignore b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin/.gitignore
deleted file mode 100644
index e69de29..0000000
diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb
deleted file mode 100644
index 9506872..0000000
--- a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb
+++ /dev/null
@@ -1,90 +0,0 @@
-SUMMARY = "EMGD 1.5 xserver binaries"
-DESCRIPTION = "EMGD 1.5 includes some userspace binaries that use non-free licensing.  Intel Open Source Technology Center unfortunately has no power to change that, but tries to make their use as painless as possible.  Please see the README.before.building in meta-crownbay/recipes/xorg-xerver for instructions on the (simple) manual steps necessary to make the necessary binaries available to this recipe.  Please do that before building an image."
-
-LICENSE = "Intel-binary-only"
-LIC_FILES_CHKSUM = "file://${WORKDIR}/License.txt;md5=95c4d031b83ab803f3f2401b04ecfbcd"
-PR = "r0"
-
-FILESPATH = "${FILE_DIRNAME}/xserver-xf86-emgd-bin"
-
-FILES_${PN} = "${libdir}/*.so.* ${libdir}/dri ${libdir}/xorg/modules/drivers"
-
-SRC_URI = "file://emgd_dri.so \
-           file://emgd_drv.so \
-           file://emgd_drv_video.so \
-           file://libEGL.so \
-           file://libGLES_CM.so \
-           file://libGLESv2.so \
-           file://libIMGegl.so \
-           file://libOpenVG.so \
-           file://libOpenVGU.so \
-           file://libPVROGL.so \
-           file://libPVRScopeServices.so \
-           file://libXegd_escape.so.2.0.0 \
-           file://libglslcompiler.so \
-           file://libpvr2d.so \
-           file://libpvrPVR2D_DRIWSEGL.so \
-           file://libsrv_init.so \
-           file://libsrv_um.so \
-           file://libva-x11.so.1.0.1 \
-           file://libva.so.1.0.1 \
-           file://License.txt"
-
-S = "${WORKDIR}"
-
-do_install () {
-	install -d -m 0755 ${D}/${libdir}/dri ${D}/${libdir}/xorg/modules/drivers
-
-	install -m 0755	${S}/emgd_dri.so			${D}${libdir}/dri/emgd_dri.so.1.1.15.3082
-	ln -sf		emgd_dri.so.1.1.15.3082			${D}${libdir}/dri/emgd_dri.so
-
-	install -m 0755	${S}/emgd_drv.so			${D}${libdir}/xorg/modules/drivers/emgd_drv.so
-	install -m 0755	${S}/emgd_drv_video.so			${D}${libdir}/xorg/modules/drivers/emgd_drv_video.so
-
-	install -m 0755	${S}/libEGL.so				${D}${libdir}/libEGL.so.1.1.15.3082
-	ln -sf		libEGL.so.1.1.15.3082			${D}${libdir}/libEGL.so
-
-	install -m 0755	${S}/libGLES_CM.so			${D}${libdir}/libGLES_CM.so.1.1.15.3082
-	ln -sf		libGLES_CM.so.1.1.15.3082		${D}${libdir}/libGLES_CM.so
-
-	install -m 0755	${S}/libGLESv2.so			${D}${libdir}/libGLESv2.so.1.1.15.3082
-	ln -sf		libGLESv2.so.1.1.15.3082		${D}${libdir}/libGLESv2.so
-
-	install -m 0755	${S}/libIMGegl.so			${D}${libdir}/libIMGegl.so.1.1.15.3082
-	ln -sf		libIMGegl.so.1.1.15.3082		${D}${libdir}/libIMGegl.so
-
-	install -m 0755	${S}/libOpenVG.so			${D}${libdir}/libOpenVG.so.1.1.15.3082
-	ln -sf		libOpenVG.so.1.1.15.3082		${D}${libdir}/libOpenVG.so
-
-	install -m 0755	${S}/libOpenVGU.so			${D}${libdir}/libOpenVGU.so.1.1.15.3082
-	ln -sf		libOpenVG.so.1.1.15.3082		${D}${libdir}/libOpenVGU.so
-
-	install -m 0755	${S}/libPVROGL.so			${D}${libdir}/libPVROGL.so.1.1.15.3082
-	ln -sf		libPVROGL.so.1.1.15.3082		${D}${libdir}/libPVROGL.so
-
-	install -m 0755	${S}/libPVRScopeServices.so		${D}${libdir}/libPVRScopeServices.so.1.1.15.3082
-	ln -sf		libPVRScopeServices.so.1.1.15.3082	${D}${libdir}/libPVRScopeServices.so
-
-	install -m 0755	${S}/libXegd_escape.so.2.0.0		${D}${libdir}/libXegd_escape.so.2.0.0
-
-	install -m 0755	${S}/libglslcompiler.so			${D}${libdir}/libglslcompiler.so.1.1.15.3082
-	ln -sf		libglslcompiler.so.1.1.15.3082		${D}${libdir}/libglslcompiler.so
-
-	install -m 0755	${S}/libpvr2d.so			${D}${libdir}/libpvr2d.so.1.1.15.3082
-	ln -sf		libpvr2d.so.1.1.15.3082			${D}${libdir}/libpvr2d.so
-
-	install -m 0755	${S}/libpvrPVR2D_DRIWSEGL.so		${D}${libdir}/libpvrPVR2D_DRIWSEGL.so.1.1.15.3082
-	ln -sf		libpvrPVR2D_DRIWSEGL.so.1.1.15.3082	${D}${libdir}/libpvrPVR2D_DRIWSEGL.so
-
-	install -m 0755	${S}/libsrv_init.so			${D}${libdir}/libsrv_init.so.1.1.15.3082
-	ln -sf		libsrv_init.so.1.1.15.3082		${D}${libdir}/libsrv_init.so
-
-	install -m 0755	${S}/libsrv_um.so			${D}${libdir}/libsrv_um.so.1.1.15.3082
-	ln -sf		libsrv_um.so.1.1.15.3082		${D}${libdir}/libsrv_um.so
-
-	install -m 0755	${S}/libva-x11.so.1.0.1			${D}${libdir}/libva-x11.so.1.0.1
-
-	install -m 0755	${S}/libva.so.1.0.1			${D}${libdir}/libva.so.1.0.1
-}
-
-LEAD_SONAME = "libEGL.so"
diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/crosscompile.patch b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/crosscompile.patch
deleted file mode 100644
index 2341e40..0000000
--- a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/crosscompile.patch
+++ /dev/null
@@ -1,19 +0,0 @@
-Index: xorg-server-1.7.99.2/configure.ac
-===================================================================
---- xorg-server-1.7.99.2.orig/configure.ac	2010-01-29 16:38:49.000000000 +0000
-+++ xorg-server-1.7.99.2/configure.ac	2010-01-29 16:42:39.000000000 +0000
-@@ -503,14 +503,10 @@
- 
- dnl Uses --default-font-path if set, otherwise checks for /etc/X11/fontpath.d,
- dnl otherwise uses standard subdirectories of FONTROOTDIR
--AC_CHECK_FILE([${sysconfdir}/X11/fontpath.d],
--	[DEFAULT_FONT_PATH='catalogue:${sysconfdir}/X11/fontpath.d'],
--	[
- 		DEFAULT_FONT_PATH="${FONTMISCDIR}/,${FONTTTFDIR}/,${FONTOTFDIR}/,${FONTTYPE1DIR}/,${FONT100DPIDIR}/,${FONT75DPIDIR}/"
- 		case $host_os in
- 			darwin*)    DEFAULT_FONT_PATH="${DEFAULT_FONT_PATH},/Library/Fonts,/System/Library/Fonts" ;;
- 		esac
--	])
- AC_ARG_WITH(default-font-path, AS_HELP_STRING([--with-default-font-path=PATH], [Comma separated list of font dirs]),
- 				[ FONTPATH="$withval" ],
- 				[ FONTPATH="${DEFAULT_FONT_PATH}" ])
diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/fix_open_max_preprocessor_error.patch b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/fix_open_max_preprocessor_error.patch
deleted file mode 100644
index 565832e..0000000
--- a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/fix_open_max_preprocessor_error.patch
+++ /dev/null
@@ -1,13 +0,0 @@
-Index: git/os/osdep.h
-===================================================================
---- git.orig/os/osdep.h	2008-10-07 18:38:21.000000000 +0100
-+++ git/os/osdep.h	2008-10-07 18:39:36.000000000 +0100
-@@ -92,7 +92,7 @@
-  * like sysconf(_SC_OPEN_MAX) is not supported.
-  */
- 
--#if OPEN_MAX <= 256
-+#if 0
- #define MAXSOCKS (OPEN_MAX - 1)
- #else
- #define MAXSOCKS 256
diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/macro_tweak.patch b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/macro_tweak.patch
deleted file mode 100644
index 6998adf..0000000
--- a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/macro_tweak.patch
+++ /dev/null
@@ -1,18 +0,0 @@
-Index: xorg-server-1.5.0/xorg-server.m4
-===================================================================
---- xorg-server-1.5.0.orig/xorg-server.m4	2007-05-29 20:36:51.000000000 +0100
-+++ xorg-server-1.5.0/xorg-server.m4	2008-11-04 23:56:55.000000000 +0000
-@@ -28,9 +28,12 @@
- # Checks for the $1 define in xorg-server.h (from the sdk).  If it
- # is defined, then add $1 to $REQUIRED_MODULES.
- 
-+m4_pattern_allow(PKG_CONFIG_SYSROOT_DIR)
-+
- AC_DEFUN([XORG_DRIVER_CHECK_EXT],[
-+	PKG_PROG_PKG_CONFIG
- 	SAVE_CFLAGS="$CFLAGS"
--	CFLAGS="$CFLAGS -I`pkg-config --variable=sdkdir xorg-server`"
-+	CFLAGS="$CFLAGS -I$PKG_CONFIG_SYSROOT_DIR`pkg-config --variable=sdkdir xorg-server`"
- 	AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[
- #include "xorg-server.h"
- #if !defined $1
diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/nodolt.patch b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/nodolt.patch
deleted file mode 100644
index 6b34032..0000000
--- a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/nodolt.patch
+++ /dev/null
@@ -1,12 +0,0 @@
-Index: git/configure.ac
-===================================================================
---- git.orig/configure.ac	2009-01-15 20:35:31.000000000 +0000
-+++ git/configure.ac	2009-01-15 20:35:38.000000000 +0000
-@@ -62,7 +62,6 @@
- AC_LIBTOOL_WIN32_DLL
- AC_DISABLE_STATIC
- AC_PROG_LIBTOOL
--DOLT
- AC_PROG_MAKE_SET
- PKG_PROG_PKG_CONFIG
- AC_PROG_LEX
diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb
deleted file mode 100644
index 01f0a24..0000000
--- a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb
+++ /dev/null
@@ -1,25 +0,0 @@
-require recipes-graphics/xorg-xserver/xserver-xf86-dri-lite.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=3dd2bbe3563837f80ed8926b06c1c353"
-
-PROTO_DEPS += "xf86driproto dri2proto"
-
-DEPENDS += "font-util"
-
-PE = "1"
-PR = "r0"
-
-SRC_URI += "file://nodolt.patch \
-            file://crosscompile.patch"
-
-# Misc build failure for master HEAD
-SRC_URI += "file://fix_open_max_preprocessor_error.patch"
-
-SRC_URI[md5sum] = "cafc4e2d4ef6cf6e47f3e7dffeb3346a"
-SRC_URI[sha256sum] = "a89f13b166b412930fe418ff50032dd2cde8bb181d8b47b5ca6f848d218fdcf2"
-
-RDEPENDS_${PN} += "xserver-xf86-emgd-bin mesa-dri"
-
-COMPATIBLE_MACHINE = "crownbay"
-
-EXTRA_OECONF += "--enable-dga --enable-dri --enable-dri2"
-- 
1.7.0.4


