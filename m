Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5F0C54C81205
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 13:38:56 -0600 (CST)
Received: from msp-mhatle-lx2.wrs.com (msp-mhatle-lx2.wrs.com [172.25.34.61])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBDJcmLu002800; 
	Mon, 13 Dec 2010 11:38:55 -0800 (PST)
From: Mark Hatle <mark.hatle@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 13 Dec 2010 13:39:00 -0600
Message-Id: <f7866dcb1d9dbd71421a71fdabacea85fa0ad240.1292268594.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.2.3
In-Reply-To: <cover.1292268594.git.mark.hatle@windriver.com>
References: <cover.1292268594.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1292268594.git.mark.hatle@windriver.com>
References: <cover.1292268594.git.mark.hatle@windriver.com>
Cc: poky@yoctoproject.org
Subject: [PATCH 5/7] recipes-graphics: Add SUMMARY and update DESCRIPTION
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
X-List-Received-Date: Mon, 13 Dec 2010 19:38:56 -0000

Add the missing SUMMARY fields and update DESCRIPTION fields if necessary

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/recipes-graphics/cairo/cairo.inc              |    5 ++++-
 meta/recipes-graphics/drm/libdrm.inc               |    1 +
 .../fontconfig/fontconfig_2.8.0.bb                 |    1 +
 meta/recipes-graphics/freetype/freetype_2.4.3.bb   |    6 +++++-
 meta/recipes-graphics/libfakekey/libfakekey_svn.bb |    4 +++-
 .../libxsettings-client_0.10.bb                    |    6 +++++-
 .../menu-cache/menu-cache_0.3.2.bb                 |    1 +
 .../ttf-fonts/liberation-fonts_1.04.bb             |    1 +
 meta/recipes-graphics/xcb/libpthread-stubs_0.3.bb  |    1 +
 meta/recipes-graphics/xorg-app/xauth_1.0.5.bb      |    2 +-
 meta/recipes-graphics/xorg-app/xkbcomp_1.1.1.bb    |    2 ++
 meta/recipes-graphics/xorg-lib/xtrans_1.2.6.bb     |    2 ++
 12 files changed, 27 insertions(+), 5 deletions(-)

diff --git a/meta/recipes-graphics/cairo/cairo.inc b/meta/recipes-graphics/cairo/cairo.inc
index e73a839..e750d6e 100644
--- a/meta/recipes-graphics/cairo/cairo.inc
+++ b/meta/recipes-graphics/cairo/cairo.inc
@@ -1,4 +1,7 @@
-DESCRIPTION = "Cairo graphics library"
+SUMMARY = "A 2D graphics library"
+DESCRIPTION = "Cairo is a 2D graphics library designed to provide high-quality display \
+and print output. Cairo is designed to produce consistent output on all output media while \
+taking advantage of display hardware acceleration when available."
 HOMEPAGE = "http://cairographics.org"
 BUGTRACKER = "http://bugs.freedesktop.org"
 SECTION = "libs"
diff --git a/meta/recipes-graphics/drm/libdrm.inc b/meta/recipes-graphics/drm/libdrm.inc
index 4f153ff..54968db 100644
--- a/meta/recipes-graphics/drm/libdrm.inc
+++ b/meta/recipes-graphics/drm/libdrm.inc
@@ -1,3 +1,4 @@
+SUMMARY = "Direct Rendering Manager userspace library"
 DESCRIPTION = "userspace library for accessing the DRM(direct rendering manager)"
 HOMEPAGE = "http://dri.freedesktop.org"
 SECTION = "x11/base"
diff --git a/meta/recipes-graphics/fontconfig/fontconfig_2.8.0.bb b/meta/recipes-graphics/fontconfig/fontconfig_2.8.0.bb
index 052ae25..8d2d6b5 100644
--- a/meta/recipes-graphics/fontconfig/fontconfig_2.8.0.bb
+++ b/meta/recipes-graphics/fontconfig/fontconfig_2.8.0.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Font configuration and customization library"
 DESCRIPTION = "A library for configuring and customizing font access."
 HOMEPAGE = "http://www.fontconfig.org"
 BUGTRACKER = "https://bugs.freedesktop.org/enter_bug.cgi?product=fontconfig"
diff --git a/meta/recipes-graphics/freetype/freetype_2.4.3.bb b/meta/recipes-graphics/freetype/freetype_2.4.3.bb
index 2508559..63061fb 100644
--- a/meta/recipes-graphics/freetype/freetype_2.4.3.bb
+++ b/meta/recipes-graphics/freetype/freetype_2.4.3.bb
@@ -1,4 +1,8 @@
-DESCRIPTION = "Freetype font rendering library"
+SUMMARY = "Freetype font rendering library"
+DESCRIPTION = "FreeType is a software font engine that is designed to be small, efficient, \
+highly customizable, and portable while capable of producing high-quality output (glyph \
+images). It can be used in graphics libraries, display servers, font conversion tools, text \
+image generation tools, and many other products as well."
 HOMEPAGE = "http://www.freetype.org/"
 BUGTRACKER = "https://savannah.nongnu.org/bugs/?group=freetype"
 
diff --git a/meta/recipes-graphics/libfakekey/libfakekey_svn.bb b/meta/recipes-graphics/libfakekey/libfakekey_svn.bb
index 8949140..719a680 100644
--- a/meta/recipes-graphics/libfakekey/libfakekey_svn.bb
+++ b/meta/recipes-graphics/libfakekey/libfakekey_svn.bb
@@ -1,4 +1,6 @@
-DESCRIPTION = "libfakekey"
+SUMMARY = "Library for converting characters to X key-presses"
+DESCRIPTION = "libfakekey is a simple library for converting UTF-8 characters into 'fake' X \
+key-presses."
 HOMEPAGE = "http://matchbox-project.org/"
 BUGTRACKER = "http://bugzilla.openedhand.com/"
 
diff --git a/meta/recipes-graphics/libxsettings-client/libxsettings-client_0.10.bb b/meta/recipes-graphics/libxsettings-client/libxsettings-client_0.10.bb
index 9dcd56c..eac3499 100644
--- a/meta/recipes-graphics/libxsettings-client/libxsettings-client_0.10.bb
+++ b/meta/recipes-graphics/libxsettings-client/libxsettings-client_0.10.bb
@@ -1,4 +1,8 @@
-DESCRIPTION = "Common code for XSETTINGS"
+SUMMARY = "utility functions for the Xsettings protocol"
+DESCRIPTION = "Libraries used for applications making use of the Xsettings configuration \
+setting propagation protocol. Controls setting of double click timeout, drag-and-drop \
+threshold, and default foreground and background colors for all applications running within a \
+desktop."
 HOMEPAGE = "http://matchbox-project.org/sources/optional-dependencies/"
 BUGTRACKER = "http://bugzilla.openedhand.com/"
 SECTION = "x/libs"
diff --git a/meta/recipes-graphics/menu-cache/menu-cache_0.3.2.bb b/meta/recipes-graphics/menu-cache/menu-cache_0.3.2.bb
index a812ece..3d21256 100644
--- a/meta/recipes-graphics/menu-cache/menu-cache_0.3.2.bb
+++ b/meta/recipes-graphics/menu-cache/menu-cache_0.3.2.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Library for caching application menus"
 DESCRIPTION = "A library creating and utilizing caches to speed up freedesktop.org application menus"
 HOMEPAGE = "http://lxde.sourceforge.net/"
 BUGTRACKER = ""
diff --git a/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb b/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb
index 6e897a3..bba1c24 100644
--- a/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb
+++ b/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Liberation(tm) Fonts"
 DESCRIPTION = "The Liberation(tm) Fonts is a font family originally created by Ascender(c) which aims metric compatibility as usage of Arial, Times New Roman, Courier New"
 HOMEPAGE = "https://fedorahosted.org/liberation-fonts/"
 BUGTRACKER = "https://bugzilla.redhat.com/"
diff --git a/meta/recipes-graphics/xcb/libpthread-stubs_0.3.bb b/meta/recipes-graphics/xcb/libpthread-stubs_0.3.bb
index 3ef9ab2..038c00f 100644
--- a/meta/recipes-graphics/xcb/libpthread-stubs_0.3.bb
+++ b/meta/recipes-graphics/xcb/libpthread-stubs_0.3.bb
@@ -1,3 +1,4 @@
+SUMMARY = "Library that provides weak aliases for pthread functions"
 DESCRIPTION = "This library provides weak aliases for pthread functions \
 not provided in libc or otherwise available by default."
 HOMEPAGE = "http://xcb.freedesktop.org"
diff --git a/meta/recipes-graphics/xorg-app/xauth_1.0.5.bb b/meta/recipes-graphics/xorg-app/xauth_1.0.5.bb
index daccca7..43e51c8 100644
--- a/meta/recipes-graphics/xorg-app/xauth_1.0.5.bb
+++ b/meta/recipes-graphics/xorg-app/xauth_1.0.5.bb
@@ -1,5 +1,5 @@
 require xorg-app-common.inc
-
+SUMMARY = "X authority utilities"
 DESCRIPTION = "X application to edit and display the authorization \
 information used in connecting to the X server"
 
diff --git a/meta/recipes-graphics/xorg-app/xkbcomp_1.1.1.bb b/meta/recipes-graphics/xorg-app/xkbcomp_1.1.1.bb
index 6f43668..bd40e42 100644
--- a/meta/recipes-graphics/xorg-app/xkbcomp_1.1.1.bb
+++ b/meta/recipes-graphics/xorg-app/xkbcomp_1.1.1.bb
@@ -1,5 +1,7 @@
 require xorg-app-common.inc
 
+SUMMARY = "X Keyboard Extensions"
+
 DESCRIPTION = "The X Keyboard Extension essentially replaces the core protocol definition of keyboard."
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=08436e4f4476964e2e2dd7e7e41e076a"
diff --git a/meta/recipes-graphics/xorg-lib/xtrans_1.2.6.bb b/meta/recipes-graphics/xorg-lib/xtrans_1.2.6.bb
index 6a533e7..f2d9394 100644
--- a/meta/recipes-graphics/xorg-lib/xtrans_1.2.6.bb
+++ b/meta/recipes-graphics/xorg-lib/xtrans_1.2.6.bb
@@ -1,3 +1,5 @@
+SUMMARY = "X transport library"
+
 DESCRIPTION = "network API translation layer to insulate X applications and \
 libraries from OS network vageries."
 
-- 
1.7.2.2


