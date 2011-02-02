Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 630A04C800A8
	for <poky@yoctoproject.org>; Wed,  2 Feb 2011 12:55:53 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p12Itq2J012871
	for <poky@yoctoproject.org>; Wed, 2 Feb 2011 10:55:53 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 2 Feb 2011 10:55:52 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 2 Feb 2011 10:55:50 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Wed,  2 Feb 2011 12:52:21 -0600
Message-Id: <059d3ce115f375303bb7ce91e6f4b49d7ddaed72.1296672559.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1296672559.git.mark.hatle@windriver.com>
References: <cover.1296672559.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1296672559.git.mark.hatle@windriver.com>
References: <cover.1296672559.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 02 Feb 2011 18:55:50.0542 (UTC)
	FILETIME=[CF5032E0:01CBC30A]
X-Mailman-Approved-At: Wed, 02 Feb 2011 13:08:28 -0600
Subject: [PATCH 2/3] recipes-graphics: Add more detailed SUMMARY and DESCRIPTIONS
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
X-List-Received-Date: Wed, 02 Feb 2011 18:55:53 -0000

Add more detailed SUMMARY and DESCRIPTIONS to various graphics and
graphics related components.  I've recently gotten question from users
what something is, or why it was needed.. this should go a long way toward
answering those questions.

Many of the descriptions were taken directly from the upstream location,
where one was not available the Debian packages were consulted for
information.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/recipes-graphics/cairo/cairo.inc              |   12 ++++++++----
 meta/recipes-graphics/cairo/cairo_1.10.2.bb        |   20 +++++++++++++++++---
 meta/recipes-graphics/directfb/directfb.inc        |    1 +
 meta/recipes-graphics/drm/libdrm.inc               |    7 +++++--
 .../fontconfig/fontconfig_2.8.0.bb                 |   12 ++++++++++--
 meta/recipes-graphics/mesa/mesa-common.inc         |    9 ++++++++-
 meta/recipes-graphics/mesa/mesa-demos_8.0.1.bb     |    4 +++-
 meta/recipes-graphics/pango/pango.inc              |    8 +++++---
 meta/recipes-graphics/tslib/tslib_1.0.bb           |    6 +++++-
 .../ttf-fonts/liberation-fonts_1.04.bb             |    4 +++-
 .../ttf-fonts/liberation-fonts_1.06.bb             |    5 ++++-
 .../ttf-fonts/ttf-bitstream-vera_1.10.bb           |    7 ++++++-
 meta/recipes-graphics/x11-common/x11-common_0.1.bb |    2 +-
 meta/recipes-graphics/xcb/libxcb.inc               |    5 ++++-
 meta/recipes-graphics/xcb/xcb-proto.inc            |    6 +++++-
 meta/recipes-graphics/xcb/xcb-util.inc             |    9 ++++++++-
 meta/recipes-graphics/xorg-app/mkfontdir_1.0.6.bb  |    8 +++++++-
 .../recipes-graphics/xorg-app/mkfontscale_1.0.8.bb |    8 +++++++-
 meta/recipes-graphics/xorg-app/x11perf_1.5.2.bb    |    7 ++++++-
 meta/recipes-graphics/xorg-app/xauth_1.0.5.bb      |    2 +-
 meta/recipes-graphics/xorg-app/xdpyinfo_1.2.0.bb   |    9 ++++++++-
 meta/recipes-graphics/xorg-app/xhost_1.0.4.bb      |   10 +++++++++-
 meta/recipes-graphics/xorg-app/xinit_1.3.0.bb      |    9 ++++++++-
 meta/recipes-graphics/xorg-app/xkbcomp_1.2.0.bb    |    7 +++++--
 meta/recipes-graphics/xorg-app/xmodmap_1.0.5.bb    |    9 ++++++++-
 meta/recipes-graphics/xorg-app/xprop_1.2.0.bb      |    8 +++++++-
 meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb     |    7 ++++++-
 meta/recipes-graphics/xorg-app/xset_1.2.1.bb       |    6 +++++-
 meta/recipes-graphics/xorg-app/xvinfo_1.1.1.bb     |    7 ++++++-
 meta/recipes-graphics/xorg-app/xwininfo_1.1.1.bb   |    7 ++++++-
 .../xorg-driver/xf86-input-evdev_2.6.0.bb          |   12 +++++++++++-
 .../xorg-driver/xf86-input-keyboard_1.5.0.bb       |    7 ++++++-
 .../xorg-driver/xf86-input-keyboard_git.bb         |    7 ++++++-
 .../xorg-driver/xf86-input-mouse_1.6.0.bb          |    8 +++++++-
 .../xorg-driver/xf86-input-mouse_git.bb            |    8 +++++++-
 .../xorg-driver/xf86-input-synaptics_1.3.0.bb      |    8 +++++++-
 .../xorg-driver/xf86-input-synaptics_git.bb        |    8 +++++++-
 .../xorg-driver/xf86-video-intel_2.14.0.bb         |    7 ++++++-
 .../xorg-driver/xf86-video-intel_git.bb            |    8 +++++++-
 .../xorg-driver/xf86-video-omapfb_git.bb           |    6 +++++-
 .../xorg-driver/xf86-video-vesa_2.3.0.bb           |    8 +++++++-
 .../xorg-driver/xf86-video-vmware_11.0.3.bb        |    4 +++-
 meta/recipes-graphics/xorg-font/encodings_1.0.4.bb |    6 +++++-
 .../xorg-font/xorg-minimal-fonts.bb                |    3 ++-
 meta/recipes-graphics/xorg-lib/libdmx_1.1.1.bb     |    7 ++++++-
 meta/recipes-graphics/xorg-lib/libfontenc_1.1.0.bb |    5 ++++-
 meta/recipes-graphics/xorg-lib/libice_1.0.7.bb     |    8 +++++++-
 .../xorg-lib/libpciaccess_0.12.0.bb                |    5 ++++-
 meta/recipes-graphics/xorg-lib/libsm_1.2.0.bb      |    8 +++++++-
 meta/recipes-graphics/xorg-lib/libx11-diet_1.3.bb  |    3 +++
 meta/recipes-graphics/xorg-lib/libx11-diet_git.bb  |    3 +++
 .../recipes-graphics/xorg-lib/libx11-trim_1.3.4.bb |    2 ++
 meta/recipes-graphics/xorg-lib/libx11-trim_git.bb  |    2 ++
 meta/recipes-graphics/xorg-lib/libx11.inc          |    6 +++++-
 meta/recipes-graphics/xorg-lib/libxau_1.0.6.bb     |    6 +++++-
 .../recipes-graphics/xorg-lib/libxcalibrate_git.bb |    5 ++++-
 .../xorg-lib/libxcomposite_0.4.3.bb                |   11 ++++++++++-
 .../recipes-graphics/xorg-lib/libxcursor_1.1.11.bb |    8 +++++++-
 meta/recipes-graphics/xorg-lib/libxdamage_1.1.3.bb |   13 ++++++++++++-
 meta/recipes-graphics/xorg-lib/libxdmcp_1.1.0.bb   |    8 +++++++-
 meta/recipes-graphics/xorg-lib/libxext_1.2.0.bb    |   10 +++++++++-
 meta/recipes-graphics/xorg-lib/libxext_git.bb      |   11 ++++++++++-
 meta/recipes-graphics/xorg-lib/libxfixes_4.0.5.bb  |    7 ++++++-
 meta/recipes-graphics/xorg-lib/libxfont_1.4.3.bb   |    6 +++++-
 .../xorg-lib/libxfontcache_1.0.5.bb                |    6 +++++-
 meta/recipes-graphics/xorg-lib/libxft_2.2.0.bb     |   12 +++++++++++-
 meta/recipes-graphics/xorg-lib/libxi_1.4.0.bb      |    7 ++++++-
 meta/recipes-graphics/xorg-lib/libxi_git.bb        |    8 +++++++-
 .../recipes-graphics/xorg-lib/libxinerama_1.1.1.bb |    6 +++++-
 meta/recipes-graphics/xorg-lib/libxkbfile_1.0.7.bb |    5 ++++-
 meta/recipes-graphics/xorg-lib/libxmu_1.1.0.bb     |   10 +++++++++-
 meta/recipes-graphics/xorg-lib/libxp_1.0.1.bb      |    5 ++++-
 meta/recipes-graphics/xorg-lib/libxpm_3.5.9.bb     |    8 +++++++-
 .../xorg-lib/libxprintapputil_1.0.1.bb             |    7 ++++++-
 .../xorg-lib/libxprintutil_1.0.1.bb                |    7 ++++++-
 meta/recipes-graphics/xorg-lib/libxrandr_1.3.1.bb  |    8 +++++++-
 meta/recipes-graphics/xorg-lib/libxrender_0.9.6.bb |    8 +++++++-
 meta/recipes-graphics/xorg-lib/libxres_1.0.5.bb    |    7 ++++++-
 .../xorg-lib/libxscrnsaver_1.2.1.bb                |   10 +++++++++-
 meta/recipes-graphics/xorg-lib/libxt_1.0.9.bb      |   12 +++++++++++-
 meta/recipes-graphics/xorg-lib/libxtrap_1.0.0.bb   |    6 +++++-
 meta/recipes-graphics/xorg-lib/libxtst_1.2.0.bb    |    6 +++++-
 meta/recipes-graphics/xorg-lib/libxv_1.0.6.bb      |    7 ++++++-
 meta/recipes-graphics/xorg-lib/libxvmc_1.0.6.bb    |    5 ++++-
 .../recipes-graphics/xorg-lib/libxxf86dga_1.1.2.bb |    8 +++++++-
 .../xorg-lib/libxxf86misc_1.0.3.bb                 |    5 ++++-
 meta/recipes-graphics/xorg-lib/libxxf86vm_1.1.1.bb |    7 ++++++-
 meta/recipes-graphics/xorg-lib/pixman_0.20.2.bb    |    7 ++++++-
 .../xorg-lib/xkeyboard-config_2.1.bb               |    9 ++++++++-
 meta/recipes-graphics/xorg-lib/xtrans_1.2.6.bb     |   10 +++++++---
 .../xorg-proto/bigreqsproto_1.1.1.bb               |    6 +++++-
 .../xorg-proto/calibrateproto_git.bb               |    5 ++++-
 .../xorg-proto/compositeproto_0.4.2.bb             |    6 ++++++
 .../xorg-proto/damageproto_1.2.1.bb                |    7 +++++++
 meta/recipes-graphics/xorg-proto/dmxproto_2.3.1.bb |    8 ++++++++
 meta/recipes-graphics/xorg-proto/dri2proto_2.3.bb  |    8 ++++++--
 meta/recipes-graphics/xorg-proto/dri2proto_git.bb  |    8 ++++++--
 meta/recipes-graphics/xorg-proto/evieext_1.1.0.bb  |    6 +++++-
 .../xorg-proto/fixesproto_4.1.2.bb                 |    8 ++++++++
 .../xorg-proto/fontcacheproto_0.1.3.bb             |    6 ++++++
 .../xorg-proto/fontsproto_2.1.1.bb                 |    6 ++++++
 meta/recipes-graphics/xorg-proto/glproto_1.4.12.bb |    6 ++++++
 .../xorg-proto/inputproto_2.0.1.bb                 |    6 ++++++
 meta/recipes-graphics/xorg-proto/inputproto_git.bb |    6 ++++++
 meta/recipes-graphics/xorg-proto/kbproto_1.0.5.bb  |    6 ++++++
 .../xorg-proto/printproto_1.0.5.bb                 |    5 +++++
 .../xorg-proto/randrproto_1.3.2.bb                 |    6 ++++++
 .../xorg-proto/recordproto_1.14.1.bb               |    6 ++++++
 .../xorg-proto/renderproto_0.11.1.bb               |    6 ++++++
 .../xorg-proto/resourceproto_1.1.1.bb              |    6 ++++++
 .../xorg-proto/scrnsaverproto_1.2.1.bb             |    6 ++++++
 .../recipes-graphics/xorg-proto/trapproto_3.4.3.bb |    6 ++++++
 .../xorg-proto/videoproto_2.3.1.bb                 |    5 +++++
 .../xorg-proto/xcmiscproto_1.2.1.bb                |    6 ++++++
 .../recipes-graphics/xorg-proto/xextproto_7.1.2.bb |    9 +++++++++
 .../xorg-proto/xf86bigfontproto_1.2.0.bb           |    6 ++++++
 .../xorg-proto/xf86dgaproto_2.1.bb                 |    7 +++++++
 .../xorg-proto/xf86driproto_2.1.1.bb               |    7 +++++++
 .../xorg-proto/xf86miscproto_0.9.3.bb              |    7 +++++++
 .../xorg-proto/xf86rushproto_1.1.2.bb              |    6 ++++++
 .../xorg-proto/xf86vidmodeproto_2.3.1.bb           |    6 ++++++
 .../xorg-proto/xineramaproto_1.2.1.bb              |    7 +++++++
 meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb  |    5 +++++
 .../recipes-graphics/xorg-util/gccmakedep_1.0.2.bb |    6 ++++++
 meta/recipes-graphics/xorg-util/imake_1.0.4.bb     |    9 ++++++++-
 .../recipes-graphics/xorg-util/makedepend_1.0.3.bb |   10 +++++++++-
 .../xorg-util/util-macros_1.11.0.bb                |    4 +++-
 meta/recipes-graphics/xrestop/xrestop_0.4.bb       |    3 +++
 meta/recipes-graphics/xtscal/xtscal_0.6.3.bb       |    5 ++++-
 129 files changed, 790 insertions(+), 108 deletions(-)

diff --git a/meta/recipes-graphics/cairo/cairo.inc b/meta/recipes-graphics/cairo/cairo.inc
index e750d6e..e5b6e18 100644
--- a/meta/recipes-graphics/cairo/cairo.inc
+++ b/meta/recipes-graphics/cairo/cairo.inc
@@ -1,7 +1,11 @@
-SUMMARY = "A 2D graphics library"
-DESCRIPTION = "Cairo is a 2D graphics library designed to provide high-quality display \
-and print output. Cairo is designed to produce consistent output on all output media while \
-taking advantage of display hardware acceleration when available."
+SUMMARY = "The Cairo 2D vector graphics library"
+DESCRIPTION = "Cairo is a multi-platform library providing anti-aliased \
+vector-based rendering for multiple target backends. Paths consist \
+of line segments and cubic splines and can be rendered at any width \
+with various join and cap styles. All colors may be specified with \
+optional translucence (opacity/alpha) and combined using the \
+extended Porter/Duff compositing algebra as found in the X Render \
+Extension."
 HOMEPAGE = "http://cairographics.org"
 BUGTRACKER = "http://bugs.freedesktop.org"
 SECTION = "libs"
diff --git a/meta/recipes-graphics/cairo/cairo_1.10.2.bb b/meta/recipes-graphics/cairo/cairo_1.10.2.bb
index 603b51d..572e1f6 100644
--- a/meta/recipes-graphics/cairo/cairo_1.10.2.bb
+++ b/meta/recipes-graphics/cairo/cairo_1.10.2.bb
@@ -25,9 +25,23 @@ PACKAGES =+ "libcairo2 libcairo2-dev libcairo2-dbg \
 		     cairo-perf-utils \
 			"
 
-DESCRIPTION_libcairo2 = "The Cairo 2D vector graphics library"
-DESCRIPTION_libcairo-gobject2 = "The Cairo library GObject wrapper library"
-DESCRIPTION_libcairo-script-interpreter2 = "The Cairo library script interpreter"
+SUMMARY_libcairo2 = "The Cairo 2D vector graphics library"
+DESCRIPTION_libcairo2 = "Cairo is a multi-platform library providing anti-aliased \
+vector-based rendering for multiple target backends. Paths consist \
+of line segments and cubic splines and can be rendered at any width \
+with various join and cap styles. All colors may be specified with \
+optional translucence (opacity/alpha) and combined using the \
+extended Porter/Duff compositing algebra as found in the X Render \
+Extension."
+
+SUMMARY_libcairo-gobject2 = "The Cairo library GObject wrapper library"
+DESCRIPTION_libcairo-gobject2 = "A GObject wrapper library for the Cairo API."
+
+SUMMARY_libcairo-script-interpreter2 = "The Cairo library script interpreter"
+DESCRIPTION_libcairo-script-interpreter2 = "The Cairo script interpreter implements \
+CairoScript.  CairoScript is used by tracing utilities to enable the ability \
+to replay rendering."
+
 DESCRIPTION_cairo-perf-utils = "The Cairo library performance utilities"
 
 FILES_libcairo2 = "${libdir}/libcairo.so*"
diff --git a/meta/recipes-graphics/directfb/directfb.inc b/meta/recipes-graphics/directfb/directfb.inc
index 2fe8b1c..e4cd006 100644
--- a/meta/recipes-graphics/directfb/directfb.inc
+++ b/meta/recipes-graphics/directfb/directfb.inc
@@ -1,3 +1,4 @@
+SUMMARY = "Graphics abstraction library for the Linux Framebuffer Device"
 DESCRIPTION = "DirectFB is a thin library that provides developers \
 with hardware graphics acceleration, input device handling and \
 abstraction, an integrated windowing system with support for \
diff --git a/meta/recipes-graphics/drm/libdrm.inc b/meta/recipes-graphics/drm/libdrm.inc
index 54968db..a66afad 100644
--- a/meta/recipes-graphics/drm/libdrm.inc
+++ b/meta/recipes-graphics/drm/libdrm.inc
@@ -1,5 +1,8 @@
-SUMMARY = "Direct Rendering Manager userspace library"
-DESCRIPTION = "userspace library for accessing the DRM(direct rendering manager)"
+SUMMARY = "Userspace interface to the kernel DRM services"
+DESCRIPTION = "The runtime library for accessing the kernel DRM services.  DRM \
+stands for \"Direct Rendering Manager\", which is the kernel portion of the \
+\"Direct Rendering Infrastructure\" (DRI).  DRI is required for many hardware \
+accelerated OpenGL drivers."
 HOMEPAGE = "http://dri.freedesktop.org"
 SECTION = "x11/base"
 LICENSE = "MIT"
diff --git a/meta/recipes-graphics/fontconfig/fontconfig_2.8.0.bb b/meta/recipes-graphics/fontconfig/fontconfig_2.8.0.bb
index 8d2d6b5..3cdfc04 100644
--- a/meta/recipes-graphics/fontconfig/fontconfig_2.8.0.bb
+++ b/meta/recipes-graphics/fontconfig/fontconfig_2.8.0.bb
@@ -1,5 +1,13 @@
-SUMMARY = "Font configuration and customization library"
-DESCRIPTION = "A library for configuring and customizing font access."
+SUMMARY = "Generic font configuration library"
+DESCRIPTION = "Fontconfig is a font configuration and customization library, which \
+does not depend on the X Window System. It is designed to locate \
+fonts within the system and select them according to requirements \
+specified by applications. \
+Fontconfig is not a rasterization library, nor does it impose a \
+particular rasterization library on the application. The X-specific \
+library 'Xft' uses fontconfig along with freetype to specify and \
+rasterize fonts."
+
 HOMEPAGE = "http://www.fontconfig.org"
 BUGTRACKER = "https://bugs.freedesktop.org/enter_bug.cgi?product=fontconfig"
 
diff --git a/meta/recipes-graphics/mesa/mesa-common.inc b/meta/recipes-graphics/mesa/mesa-common.inc
index 0294c8f..d8e800e 100644
--- a/meta/recipes-graphics/mesa/mesa-common.inc
+++ b/meta/recipes-graphics/mesa/mesa-common.inc
@@ -1,4 +1,11 @@
-DESCRIPTION = "An open source implementation of the OpenGL spec"
+SUMMARY = "A free implementation of the OpenGL API"
+DESCRIPTION = "Mesa is an open-source implementation of the OpenGL specification - \
+a system for rendering interactive 3D graphics.  \
+A variety of device drivers allows Mesa to be used in many different environments \
+ranging from software emulation to complete hardware acceleration for modern GPUs. \
+Mesa is used as part of the overall Direct Rendering Infrastructure and X.org \
+environment."
+
 HOMEPAGE = "http://mesa3d.org"
 BUGTRACKER = "https://bugs.freedesktop.org"
 SECTION = "x11"
diff --git a/meta/recipes-graphics/mesa/mesa-demos_8.0.1.bb b/meta/recipes-graphics/mesa/mesa-demos_8.0.1.bb
index fde2453..e3a84be 100644
--- a/meta/recipes-graphics/mesa/mesa-demos_8.0.1.bb
+++ b/meta/recipes-graphics/mesa/mesa-demos_8.0.1.bb
@@ -1,4 +1,6 @@
-DESCRIPTION = "mesa demo applications"
+SUMMARY = "Mesa demo applications"
+DESCRIPTION = "This package includes the demonstration application, such as glxgears. \
+These applications can be used for Mesa validation and benchmarking."
 HOMEPAGE = "http://mesa3d.org"
 BUGTRACKER = "https://bugs.freedesktop.org"
 SECTION = "x11"
diff --git a/meta/recipes-graphics/pango/pango.inc b/meta/recipes-graphics/pango/pango.inc
index 38ca3be..5a8a5ae 100644
--- a/meta/recipes-graphics/pango/pango.inc
+++ b/meta/recipes-graphics/pango/pango.inc
@@ -1,7 +1,9 @@
 SUMMARY = "Framework for layout and rendering of internationalized text"
-DESCRIPTION = "The goal of the Pango project is to provide an \
-Open Source framework for the layout and rendering of \
-internationalized text."
+DESCRIPTION = "Pango is a library for laying out and rendering of text, \
+with an emphasis on internationalization. Pango can be used anywhere \
+that text layout is needed, though most of the work on Pango so far has \
+been done in the context of the GTK+ widget toolkit. Pango forms the \
+core of text and font handling for GTK+-2.x."
 HOMEPAGE = "http://www.pango.org/"
 BUGTRACKER = "http://bugzilla.gnome.org"
 SECTION = "x11/libs"
diff --git a/meta/recipes-graphics/tslib/tslib_1.0.bb b/meta/recipes-graphics/tslib/tslib_1.0.bb
index fd75d60..51529e3 100644
--- a/meta/recipes-graphics/tslib/tslib_1.0.bb
+++ b/meta/recipes-graphics/tslib/tslib_1.0.bb
@@ -1,4 +1,8 @@
-DESCRIPTION = "tslib is a plugin-based flexible touchscreen access library."
+SUMMARY = "An abstraction layer for touchscreen panel events."
+DESCRIPTION = "Tslib is an abstraction layer for touchscreen panel \
+events, as well as a filter stack for the manipulation of those events. \
+Tslib is generally used on embedded devices to provide a common user \
+space interface to touchscreen functionality."
 HOMEPAGE = "http://tslib.berlios.de/"
 
 AUTHOR = "Russell King w/ plugins by Chris Larson et. al."
diff --git a/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb b/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb
index bba1c24..12d9d86 100644
--- a/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb
+++ b/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb
@@ -1,5 +1,7 @@
 SUMMARY = "Liberation(tm) Fonts"
-DESCRIPTION = "The Liberation(tm) Fonts is a font family originally created by Ascender(c) which aims metric compatibility as usage of Arial, Times New Roman, Courier New"
+DESCRIPTION = "The Liberation(tm) Fonts is a font family originally \
+created by Ascender(c) which aims at metric compatibility with \
+Arial, Times New Roman, Courier New."
 HOMEPAGE = "https://fedorahosted.org/liberation-fonts/"
 BUGTRACKER = "https://bugzilla.redhat.com/"
 
diff --git a/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.06.bb b/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.06.bb
index 210372b..887536a 100644
--- a/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.06.bb
+++ b/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.06.bb
@@ -1,4 +1,7 @@
-DESCRIPTION = "The Liberation(tm) Fonts is a font family originally created by Ascender(c) which aims metric compatibility as usage of Arial, Times New Roman, Courier New"
+SUMMARY = "Liberation(tm) Fonts"
+DESCRIPTION = "The Liberation(tm) Fonts is a font family originally \
+created by Ascender(c) which aims at metric compatibility with \
+Arial, Times New Roman, Courier New."
 HOMEPAGE = "https://fedorahosted.org/liberation-fonts/"
 BUGTRACKER = "https://bugzilla.redhat.com/"
 
diff --git a/meta/recipes-graphics/ttf-fonts/ttf-bitstream-vera_1.10.bb b/meta/recipes-graphics/ttf-fonts/ttf-bitstream-vera_1.10.bb
index ed64b1e..b9a75a7 100644
--- a/meta/recipes-graphics/ttf-fonts/ttf-bitstream-vera_1.10.bb
+++ b/meta/recipes-graphics/ttf-fonts/ttf-bitstream-vera_1.10.bb
@@ -1,4 +1,9 @@
-DESCRIPTION = "The Bitstream Vera fonts - TTF Edition"
+SUMMARY = "The Bitstream Vera fonts - TTF Edition"
+DESCRIPTION = "The Bitstream Vera fonts include four monospace and sans \
+faces (normal, oblique, bold, bold oblique) and two serif faces (normal \
+and bold).  In addition Fontconfig/Xft2 can artificially oblique the \
+serif faces for you: this loses hinting and distorts the faces slightly, \
+but is visibly different than normal and bold, and reasonably pleasing."
 SECTION = "x11/fonts"
 PRIORITY = "optional"
 LICENSE = "Bitstream Vera"
diff --git a/meta/recipes-graphics/x11-common/x11-common_0.1.bb b/meta/recipes-graphics/x11-common/x11-common_0.1.bb
index 60b21c3..2d49951 100644
--- a/meta/recipes-graphics/x11-common/x11-common_0.1.bb
+++ b/meta/recipes-graphics/x11-common/x11-common_0.1.bb
@@ -1,4 +1,4 @@
-DESCRIPTION = "Common X11 scripts"
+DESCRIPTION = "Common X11 scripts and configuration files"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
 SECTION = "x11"
diff --git a/meta/recipes-graphics/xcb/libxcb.inc b/meta/recipes-graphics/xcb/libxcb.inc
index 37d1f86..81d4a20 100644
--- a/meta/recipes-graphics/xcb/libxcb.inc
+++ b/meta/recipes-graphics/xcb/libxcb.inc
@@ -1,4 +1,7 @@
-DESCRIPTION = "XCB: an X protocol C binding"
+SUMMARY = "XCB: The X protocol C binding library"
+DESCRIPTION = "The X protocol C-language Binding (XCB) is a replacement \
+for Xlib featuring a small footprint, latency hiding, direct access to \
+the protocol, improved threading support, and extensibility."
 HOMEPAGE = "http://xcb.freedesktop.org"
 BUGTRACKER = "https://bugs.freedesktop.org/enter_bug.cgi?product=XCB"
 
diff --git a/meta/recipes-graphics/xcb/xcb-proto.inc b/meta/recipes-graphics/xcb/xcb-proto.inc
index 2e1810f..ae40282 100644
--- a/meta/recipes-graphics/xcb/xcb-proto.inc
+++ b/meta/recipes-graphics/xcb/xcb-proto.inc
@@ -1,4 +1,8 @@
-DESCRIPTION = "XCB: an X protocol C binding"
+SUMMARY = "XCB: The X protocol C binding headers"
+DESCRIPTION = "Function prototypes for the X protocol C-language Binding \
+(XCB).  XCB is a replacement for Xlib featuring a small footprint, \
+latency hiding, direct access to the protocol, improved threading \
+support, and extensibility."
 HOMEPAGE = "http://xcb.freedesktop.org"
 BUGTRACKER = "https://bugs.freedesktop.org/enter_bug.cgi?product=XCB"
 
diff --git a/meta/recipes-graphics/xcb/xcb-util.inc b/meta/recipes-graphics/xcb/xcb-util.inc
index 6bda3d0..cd9923d 100644
--- a/meta/recipes-graphics/xcb/xcb-util.inc
+++ b/meta/recipes-graphics/xcb/xcb-util.inc
@@ -1,4 +1,11 @@
-DESCRIPTION = "XCB: an X protocol C binding"
+SUMMARY = "XCB: The X protocol C binding utilities"
+DESCRIPTION = "The xcb-util module provides a number of libraries which \
+sit on top of libxcb, the core X protocol library, and some of the \
+extension libraries. These experimental libraries provide convenience \
+functions and interfaces which make the raw X protocol more usable. Some \
+of the libraries also provide client-side code which is not strictly \
+part of the X protocol but which have traditionally been provided by \
+Xlib."
 HOMEPAGE = "http://xcb.freedesktop.org/XcbUtil/"
 BUGTRACKER = "https://bugs.freedesktop.org/enter_bug.cgi?product=XCB"
 
diff --git a/meta/recipes-graphics/xorg-app/mkfontdir_1.0.6.bb b/meta/recipes-graphics/xorg-app/mkfontdir_1.0.6.bb
index 9b843fc..2657ecf 100644
--- a/meta/recipes-graphics/xorg-app/mkfontdir_1.0.6.bb
+++ b/meta/recipes-graphics/xorg-app/mkfontdir_1.0.6.bb
@@ -1,6 +1,12 @@
 require xorg-app-common.inc
 
-DESCRIPTION = "a program to create an index of X font files in a directory"
+SUMMARY = "A program to create an index of X font files in a directory"
+
+DESCRIPTION = "For each directory argument, mkfontdir reads all of the \
+font files in the directory. The font names and related data are written \
+out to the files \"fonts.dir\", \"fonts.scale\", and \"fonts.alias\".  \
+The X server and font server use these files to find the available font \
+files."
 
 PE = "1"
 PR = "r0"
diff --git a/meta/recipes-graphics/xorg-app/mkfontscale_1.0.8.bb b/meta/recipes-graphics/xorg-app/mkfontscale_1.0.8.bb
index 23bae39..3b21c1e 100644
--- a/meta/recipes-graphics/xorg-app/mkfontscale_1.0.8.bb
+++ b/meta/recipes-graphics/xorg-app/mkfontscale_1.0.8.bb
@@ -1,6 +1,12 @@
 require xorg-app-common.inc
 
-DESCRIPTION = "a program to create an index of scalable font files for X"
+SUMMARY = "A program to create an index of scalable font files for X"
+
+DESCRIPTION = "For each directory argument, mkfontscale reads all of the \
+scalable font files in the directory. For every font file found, an X11 \
+font name (XLFD) is generated, and is written together with the file \
+name to a file fonts.scale in the directory.  The resulting fonts.scale \
+is used by the mkfontdir program."
 
 DEPENDS += " zlib libfontenc freetype virtual/libx11"
 
diff --git a/meta/recipes-graphics/xorg-app/x11perf_1.5.2.bb b/meta/recipes-graphics/xorg-app/x11perf_1.5.2.bb
index 88dec1b..e10fcf0 100644
--- a/meta/recipes-graphics/xorg-app/x11perf_1.5.2.bb
+++ b/meta/recipes-graphics/xorg-app/x11perf_1.5.2.bb
@@ -1,6 +1,11 @@
 require xorg-app-common.inc
 
-DESCRIPTION = "X11 server performance test program"
+SUMMARY = "X11 server performance test program"
+
+DESCRIPTION = "The x11perf program runs one or more performance tests \
+and reports how fast an X server can execute the tests."
+
+
 DEPENDS += "libxmu libxrender libxft libxext fontconfig"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=428ca4d67a41fcd4fc3283dce9bbda7e \
diff --git a/meta/recipes-graphics/xorg-app/xauth_1.0.5.bb b/meta/recipes-graphics/xorg-app/xauth_1.0.5.bb
index 43e51c8..23986ac 100644
--- a/meta/recipes-graphics/xorg-app/xauth_1.0.5.bb
+++ b/meta/recipes-graphics/xorg-app/xauth_1.0.5.bb
@@ -1,7 +1,7 @@
 require xorg-app-common.inc
 SUMMARY = "X authority utilities"
 DESCRIPTION = "X application to edit and display the authorization \
-information used in connecting to the X server"
+information used in connecting to the X server."
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=5ec74dd7ea4d10c4715a7c44f159a40b"
 
diff --git a/meta/recipes-graphics/xorg-app/xdpyinfo_1.2.0.bb b/meta/recipes-graphics/xorg-app/xdpyinfo_1.2.0.bb
index e448d3c..d975d82 100644
--- a/meta/recipes-graphics/xorg-app/xdpyinfo_1.2.0.bb
+++ b/meta/recipes-graphics/xorg-app/xdpyinfo_1.2.0.bb
@@ -1,6 +1,13 @@
 require xorg-app-common.inc
 
-DESCRIPTION = "X display information utility"
+SUMMARY = "Display information utility for X"
+
+DESCRIPTION = "Xdpyinfo is a utility for displaying information about an \
+X server. It is used to examine the capabilities of a server, the \
+predefined values for various parameters used in communicating between \
+clients and the server, and the different types of screens and visuals \
+that are available."
+
 LIC_FILES_CHKSUM = "file://COPYING;md5=f3d09e6b9e203a1af489e16c708f4fb3"
 DEPENDS += "libxtst libxext libxxf86vm libxxf86dga libxxf86misc libxi libxrender libxinerama libdmx libxp libxau"
 PR = "r0"
diff --git a/meta/recipes-graphics/xorg-app/xhost_1.0.4.bb b/meta/recipes-graphics/xorg-app/xhost_1.0.4.bb
index 602027b..9330228 100644
--- a/meta/recipes-graphics/xorg-app/xhost_1.0.4.bb
+++ b/meta/recipes-graphics/xorg-app/xhost_1.0.4.bb
@@ -1,6 +1,14 @@
 require xorg-app-common.inc
 
-DESCRIPTION = "Server access control program for X"
+SUMMARY = "Server access control program for X"
+
+DESCRIPTION = "The xhost program is used to add and delete host names or \
+user names to the list allowed to make connections to the X server. In \
+the case of hosts, this provides a rudimentary form of privacy control \
+and security. Environments which require more sophisticated measures \
+should implement the user-based mechanism or use the hooks in the \
+protocol for passing other authentication data to the server."
+
 LIC_FILES_CHKSUM = "file://COPYING;md5=8fbed71dddf48541818cef8079124199"
 DEPENDS += "libxmu libxau"
 PR = "r0"
diff --git a/meta/recipes-graphics/xorg-app/xinit_1.3.0.bb b/meta/recipes-graphics/xorg-app/xinit_1.3.0.bb
index 6a87f42..ee7c64d 100644
--- a/meta/recipes-graphics/xorg-app/xinit_1.3.0.bb
+++ b/meta/recipes-graphics/xorg-app/xinit_1.3.0.bb
@@ -1,6 +1,13 @@
 require xorg-app-common.inc
 
-DESCRIPTION = "X Window System initializer"
+SUMMARY = "X Window System initializer"
+
+DESCRIPTION = "The xinit program is used to start the X Window System \
+server and a first client program on systems that cannot start X \
+directly from /etc/init or in environments that use multiple window \
+systems. When this first client exits, xinit will kill the X server and \
+then terminate."
+
 LIC_FILES_CHKSUM = "file://COPYING;md5=0d4b5eef75f1584ccbdc5e4a34314407"
 PR = "r0"
 PE = "1"
diff --git a/meta/recipes-graphics/xorg-app/xkbcomp_1.2.0.bb b/meta/recipes-graphics/xorg-app/xkbcomp_1.2.0.bb
index b8592fa..f574690 100644
--- a/meta/recipes-graphics/xorg-app/xkbcomp_1.2.0.bb
+++ b/meta/recipes-graphics/xorg-app/xkbcomp_1.2.0.bb
@@ -1,8 +1,11 @@
 require xorg-app-common.inc
 
-SUMMARY = "X Keyboard Extensions"
+SUMMARY = "A program to compile XKB keyboard description"
 
-DESCRIPTION = "The X Keyboard Extension essentially replaces the core protocol definition of keyboard."
+DESCRIPTION = "The xkbcomp keymap compiler converts a description of an \
+XKB keymap into one of several output formats. The most common use for \
+xkbcomp is to create a compiled keymap file (.xkm extension) which can \
+be read directly by XKB-capable X servers or utilities."
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=08436e4f4476964e2e2dd7e7e41e076a"
 
diff --git a/meta/recipes-graphics/xorg-app/xmodmap_1.0.5.bb b/meta/recipes-graphics/xorg-app/xmodmap_1.0.5.bb
index 2d5ee24..e98ed4f 100644
--- a/meta/recipes-graphics/xorg-app/xmodmap_1.0.5.bb
+++ b/meta/recipes-graphics/xorg-app/xmodmap_1.0.5.bb
@@ -1,6 +1,13 @@
 require xorg-app-common.inc
 
-DESCRIPTION = "utility for modifying keymaps and pointer button mappings in X"
+SUMMARY = "Utility for modifying keymaps and pointer button mappings in X"
+
+DESCRIPTION = "The xmodmap program is used to edit and display the \
+keyboard modifier map and keymap table that are used by client \
+applications to convert event keycodes into keysyms. It is usually run \
+from the user's session startup script to configure the keyboard \
+according to personal tastes."
+
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=eef098b27f09d0ac39268df0cc2c00b5"
 
diff --git a/meta/recipes-graphics/xorg-app/xprop_1.2.0.bb b/meta/recipes-graphics/xorg-app/xprop_1.2.0.bb
index 4d35636..dc53b98 100644
--- a/meta/recipes-graphics/xorg-app/xprop_1.2.0.bb
+++ b/meta/recipes-graphics/xorg-app/xprop_1.2.0.bb
@@ -1,6 +1,12 @@
 require xorg-app-common.inc
 
-DESCRIPTION = "utility to display window and font properties of an X server"
+SUMMARY = "Utility to display window and font properties of an X server"
+
+DESCRIPTION = "The xprop utility is for displaying window and font \
+properties in an X server. One window or font is selected using the \
+command line arguments or possibly in the case of a window, by clicking \
+on the desired window. A list of properties is then given, possibly with \
+formatting information."
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=e226ab8db88ac0bc0391673be40c9f91"
 
diff --git a/meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb b/meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb
index 9a6e470..ab29874 100644
--- a/meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb
+++ b/meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb
@@ -1,6 +1,11 @@
 require xorg-app-common.inc
 
-DESCRIPTION = "X Resize and Rotate extension command."
+SUMMARY = "XRandR: X Resize, Rotate and Reflect extension command"
+
+DESCRIPTION = "Xrandr is used to set the size, orientation and/or \
+reflection of the outputs for a screen. It can also set the screen \
+size."
+
 LICENSE= "BSD-X"
 LIC_FILES_CHKSUM = "file://COPYING;md5=fe1608bdb33cf8c62a4438f7d34679b3"
 DEPENDS += "libxrandr libxrender"
diff --git a/meta/recipes-graphics/xorg-app/xset_1.2.1.bb b/meta/recipes-graphics/xorg-app/xset_1.2.1.bb
index 5ce0a5b..b5d63bc 100644
--- a/meta/recipes-graphics/xorg-app/xset_1.2.1.bb
+++ b/meta/recipes-graphics/xorg-app/xset_1.2.1.bb
@@ -1,6 +1,10 @@
 require xorg-app-common.inc
 
-DESCRIPTION = "Utility of setting various user preference options of the display"
+SUMMARY = "Utility for setting various user preference options of the display"
+
+DESCRIPTION = "xset is a utility that is used to set various user \
+preference options of the display."
+
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=bea81cc9827cdf1af0e12c2b8228cf8d"
 DEPENDS += "libxext libxxf86misc libxfontcache libxmu libxp libxau"
diff --git a/meta/recipes-graphics/xorg-app/xvinfo_1.1.1.bb b/meta/recipes-graphics/xorg-app/xvinfo_1.1.1.bb
index 0547bd6..7a0b822 100644
--- a/meta/recipes-graphics/xorg-app/xvinfo_1.1.1.bb
+++ b/meta/recipes-graphics/xorg-app/xvinfo_1.1.1.bb
@@ -1,6 +1,11 @@
 require xorg-app-common.inc
 
-DESCRIPTION = "Print out X-Video extension adaptor information"
+SUMMARY = "Print out X-Video extension adaptor information"
+
+DESCRIPTION = "xvinfo prints out the capabilities of any video adaptors \
+associated with the display that are accessible through the X-Video \
+extension."
+
 LIC_FILES_CHKSUM = "file://COPYING;md5=b664101ad7a1dc758a4c4109bf978e68"
 DEPENDS += " libxv"
 PE = "1"
diff --git a/meta/recipes-graphics/xorg-app/xwininfo_1.1.1.bb b/meta/recipes-graphics/xorg-app/xwininfo_1.1.1.bb
index 0011a0a..cabd466 100644
--- a/meta/recipes-graphics/xorg-app/xwininfo_1.1.1.bb
+++ b/meta/recipes-graphics/xorg-app/xwininfo_1.1.1.bb
@@ -1,6 +1,11 @@
 require xorg-app-common.inc
 
-DESCRIPTION = "window information utility for X"
+SUMMARY = "Window information utility for X"
+
+DESCRIPTION = "Xwininfo is a utility for displaying information about \
+windows.  Information may include window position, size, color depth, \
+and a number of other items."
+
 LIC_FILES_CHKSUM = "file://COPYING;md5=78976cd3115f6faf615accc4e094d90e"
 DEPENDS += "libxext libxmu"
 
diff --git a/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.6.0.bb b/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.6.0.bb
index 79e5f18..a37be17 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.6.0.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.6.0.bb
@@ -1,6 +1,16 @@
 require xf86-input-common.inc
 
-DESCRIPTION = "X.Org X server -- evdev input driver"
+SUMMARY = "X.Org X server -- event devices (evdev) input driver"
+
+DESCRIPTION = "evdev is an Xorg input driver for Linux's generic event \
+devices. It therefore supports all input devices that the kernel knows \
+about, including most mice and keyboards. \
+\
+The evdev driver can serve as both a pointer and a keyboard input \
+device, and may be used as both the core keyboard and the core pointer. \
+Multiple input devices are supported by multiple instances of this \
+driver, with one Load directive for evdev in the Module section of your \
+xorg.conf for each input device that will use this driver. "
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=fefe33b1cf0cacba0e72e3b0fa0f0e16"
 
diff --git a/meta/recipes-graphics/xorg-driver/xf86-input-keyboard_1.5.0.bb b/meta/recipes-graphics/xorg-driver/xf86-input-keyboard_1.5.0.bb
index d3b58b3..aa8be67 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-input-keyboard_1.5.0.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-input-keyboard_1.5.0.bb
@@ -1,6 +1,11 @@
 require xf86-input-common.inc
 
-DESCRIPTION = "X.Org X server -- keyboard input driver"
+SUMMARY = "X.Org X server -- keyboard input driver"
+
+DESCRIPTION = "keyboard is an Xorg input driver for keyboards. The \
+driver supports the standard OS-provided keyboard interface.  The driver \
+functions as a keyboard input device, and may be used as the X server's \
+core keyboard."
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=ea2099d24ac9e316a6d4b9f20b3d4e10"
 
diff --git a/meta/recipes-graphics/xorg-driver/xf86-input-keyboard_git.bb b/meta/recipes-graphics/xorg-driver/xf86-input-keyboard_git.bb
index a6744bd..57c601c 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-input-keyboard_git.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-input-keyboard_git.bb
@@ -1,6 +1,11 @@
 require xf86-input-common.inc
 
-DESCRIPTION = "X.Org X server -- keyboard input driver"
+SUMMARY = "X.Org X server -- keyboard input driver"
+
+DESCRIPTION = "keyboard is an Xorg input driver for keyboards. The \
+driver supports the standard OS-provided keyboard interface.  The driver \
+functions as a keyboard input device, and may be used as the X server's \
+core keyboard."
 
 PV = "1.3.2+git${SRCPV}"
 
diff --git a/meta/recipes-graphics/xorg-driver/xf86-input-mouse_1.6.0.bb b/meta/recipes-graphics/xorg-driver/xf86-input-mouse_1.6.0.bb
index d0914cf..61d73e1 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-input-mouse_1.6.0.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-input-mouse_1.6.0.bb
@@ -1,6 +1,12 @@
 require xf86-input-common.inc
 
-DESCRIPTION = "X.Org X server -- mouse input driver"
+SUMMARY = "X.Org X server -- mouse input driver"
+
+DESCRIPTION = "mouse is an Xorg input driver for mice. The driver \
+supports most available mouse types and interfaces.  The mouse driver \
+functions as a pointer input device, and may be used as the X server's \
+core pointer. Multiple mice are supported by multiple instances of this \
+driver."
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=237eb1d1a602d29ef2af62d8fba60f19"
 
diff --git a/meta/recipes-graphics/xorg-driver/xf86-input-mouse_git.bb b/meta/recipes-graphics/xorg-driver/xf86-input-mouse_git.bb
index 94dedf1..bdf61c1 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-input-mouse_git.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-input-mouse_git.bb
@@ -1,6 +1,12 @@
 require xf86-input-common.inc
 
-DESCRIPTION = "X.Org X server -- mouse input driver"
+SUMMARY = "X.Org X server -- mouse input driver"
+
+DESCRIPTION = "mouse is an Xorg input driver for mice. The driver \
+supports most available mouse types and interfaces.  The mouse driver \
+functions as a pointer input device, and may be used as the X server's \
+core pointer. Multiple mice are supported by multiple instances of this \
+driver."
 
 PV = "1.3.0+git${SRCPV}"
 PR = "r2"
diff --git a/meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.3.0.bb b/meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.3.0.bb
index 8c2999f..b0953bb 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.3.0.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.3.0.bb
@@ -1,6 +1,12 @@
 require xf86-input-common.inc
 
-DESCRIPTION = "X.Org X server -- keyboard input driver"
+SUMMARY = "X.Org X server -- synaptics touchpad input driver"
+
+DESCRIPTION = "synaptics is an Xorg input driver for the touchpads from \
+Synaptics Incorporated. Even though these touchpads (by default, \
+operating in a compatibility mode emulating a standard mouse) can be \
+handled by the normal evdev or mouse drivers, this driver allows more \
+advanced features of the touchpad to become available."
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=e395e21f3c21d4fc3a243783e85e9ab5"
 
diff --git a/meta/recipes-graphics/xorg-driver/xf86-input-synaptics_git.bb b/meta/recipes-graphics/xorg-driver/xf86-input-synaptics_git.bb
index f7dc3b7..70478d5 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-input-synaptics_git.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-input-synaptics_git.bb
@@ -1,6 +1,12 @@
 require xf86-input-common.inc
 
-DESCRIPTION = "X.Org X server -- keyboard input driver"
+SUMMARY = "X.Org X server -- synaptics touchpad input driver"
+
+DESCRIPTION = "synaptics is an Xorg input driver for the touchpads from \
+Synaptics Incorporated. Even though these touchpads (by default, \
+operating in a compatibility mode emulating a standard mouse) can be \
+handled by the normal evdev or mouse drivers, this driver allows more \
+advanced features of the touchpad to become available."
 
 PV = "0.15.2+git${SRCPV}"
 
diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.14.0.bb b/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.14.0.bb
index 54dc11b..017a2e0 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.14.0.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.14.0.bb
@@ -1,6 +1,11 @@
 require xf86-video-common.inc
 
-DESCRIPTION = "X.Org X server -- Intel i8xx, i9xx display driver"
+SUMMARY = "X.Org X server -- Intel integrated graphics chipsets driver"
+
+DESCRIPTION = "intel is an Xorg driver for Intel integrated graphics \
+chipsets. The driver supports depths 8, 15, 16 and 24. On some chipsets, \
+the driver supports hardware accelerated 3D via the Direct Rendering \
+Infrastructure (DRI)."
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=8730ad58d11c7bbad9a7066d69f7808e"
 
diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-intel_git.bb b/meta/recipes-graphics/xorg-driver/xf86-video-intel_git.bb
index 30791b2..4aac803 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-video-intel_git.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-video-intel_git.bb
@@ -1,6 +1,12 @@
 require xf86-video-common.inc
 
-DESCRIPTION = "X.Org X server -- Intel i8xx, i9xx display driver"
+SUMMARY = "X.Org X server -- Intel integrated graphics chipsets driver"
+
+DESCRIPTION = "intel is an Xorg driver for Intel integrated graphics \
+chipsets. The driver supports depths 8, 15, 16 and 24. On some chipsets, \
+the driver supports hardware accelerated 3D via the Direct Rendering \
+Infrastructure (DRI)."
+
 DEPENDS += "virtual/libx11 libxvmc drm dri2proto glproto \
 	    virtual/libgl xineramaproto libpciaccess"
 
diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-omapfb_git.bb b/meta/recipes-graphics/xorg-driver/xf86-video-omapfb_git.bb
index 054b96a..2714786 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-video-omapfb_git.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-video-omapfb_git.bb
@@ -1,6 +1,10 @@
 require xf86-driver-common.inc
 
-DESCRIPTION = "X.Org X server -- OMAP display driver"
+SUMMARY = "X.Org X server -- Texas Instruments OMAP framebuffer driver"
+
+DESCRIPTION = "omapfb driver supports the basic Texas Instruments OMAP \
+framebuffer."
+
 LICENSE = "MIT-X"
 LIC_FILES_CHKSUM = "file://src/omapfb-driver.c;beginline=1;endline=30;md5=a44c2a37e04d1c2c5f0313afb493f833"
 DEPENDS += "virtual/libx11"
diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-vesa_2.3.0.bb b/meta/recipes-graphics/xorg-driver/xf86-video-vesa_2.3.0.bb
index 7527413..474c779 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-video-vesa_2.3.0.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-video-vesa_2.3.0.bb
@@ -4,7 +4,13 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=e5418e7a75e21268637984e70265e146"
 
 EXTRA_OECONF += "--disable-xvmc"
 
-DESCRIPTION = "X.Org X server -- Generic Vesa display driver"
+SUMMARY = "X.Org X server -- Generic Vesa video driver"
+
+DESCRIPTION = "vesa is an Xorg driver for generic VESA video cards. It \
+can drive most VESA-compatible video cards, but only makes use of the \
+basic standard VESA core that is common to these cards. The driver \
+supports depths 8, 15 16 and 24."
+
 DEPENDS += "virtual/libx11 libxvmc drm xf86driproto glproto \
 	    virtual/libgl xineramaproto xf86driproto libpciaccess"
 
diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-vmware_11.0.3.bb b/meta/recipes-graphics/xorg-driver/xf86-video-vmware_11.0.3.bb
index c76248f..a0f6041 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-video-vmware_11.0.3.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-video-vmware_11.0.3.bb
@@ -1,6 +1,8 @@
 require xf86-video-common.inc
 
-DESCRIPTION = "X.Org X server -- VMware SVGA II display driver"
+SUMMARY = "X.Org X server -- VMware SVGA display driver"
+
+DESCRIPTION = "vmware is an Xorg driver for VMware virtual video cards."
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=5fcd7d437a959a15fbee8707747c6b53"
 
diff --git a/meta/recipes-graphics/xorg-font/encodings_1.0.4.bb b/meta/recipes-graphics/xorg-font/encodings_1.0.4.bb
index a5d9013..897f0fa 100644
--- a/meta/recipes-graphics/xorg-font/encodings_1.0.4.bb
+++ b/meta/recipes-graphics/xorg-font/encodings_1.0.4.bb
@@ -1,4 +1,8 @@
-DESCRIPTION = "The XFree86/Xorg encoding files"
+SUMMARY = "The Xorg font encoding files"
+
+DESCRIPTION = "The encodings that map to specific characters for a \
+number of Xorg and common fonts."
+
 require xorg-font-common.inc
 LICENSE = "Public Domain"
 LIC_FILES_CHKSUM = "file://COPYING;md5=9da93f2daf2d5572faa2bfaf0dbd9e76"
diff --git a/meta/recipes-graphics/xorg-font/xorg-minimal-fonts.bb b/meta/recipes-graphics/xorg-font/xorg-minimal-fonts.bb
index 26a64cd..86d6194 100644
--- a/meta/recipes-graphics/xorg-font/xorg-minimal-fonts.bb
+++ b/meta/recipes-graphics/xorg-font/xorg-minimal-fonts.bb
@@ -1,4 +1,5 @@
-DESCRIPTION = "Xorg minimal fonts data"
+SUMMARY = "Xorg minimal fonts data"
+DESCRIPTION = "Minimal fonts required by X.org."
 HOMEPAGE = "http://www.x.org"
 BUGTRACKER = "n/a"
 
diff --git a/meta/recipes-graphics/xorg-lib/libdmx_1.1.1.bb b/meta/recipes-graphics/xorg-lib/libdmx_1.1.1.bb
index 7c5a030..cb49880 100644
--- a/meta/recipes-graphics/xorg-lib/libdmx_1.1.1.bb
+++ b/meta/recipes-graphics/xorg-lib/libdmx_1.1.1.bb
@@ -1,6 +1,11 @@
 require xorg-lib-common.inc
 
-DESCRIPTION = "X11 Distributed Multihead extension library"
+SUMMARY = "DMX: Distributed Multihead X extension library"
+
+DESCRIPTION = "The DMX extension provides support for communication with \
+and control of Xdmx(1) server. Attributes of the Xdmx(1) server and of \
+the back-end screens attached to the server can be queried and modified \
+via this protocol."
 
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=a3c3499231a8035efd0e004cfbd3b72a \
diff --git a/meta/recipes-graphics/xorg-lib/libfontenc_1.1.0.bb b/meta/recipes-graphics/xorg-lib/libfontenc_1.1.0.bb
index 2933f93..3d90042 100644
--- a/meta/recipes-graphics/xorg-lib/libfontenc_1.1.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libfontenc_1.1.0.bb
@@ -1,4 +1,7 @@
-DESCRIPTION = "X11 font encoding library"
+SUMMARY = "X font encoding library"
+
+DESCRIPTION = "libfontenc is a library which helps font libraries \
+portably determine and deal with different encodings of fonts."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/libice_1.0.7.bb b/meta/recipes-graphics/xorg-lib/libice_1.0.7.bb
index 7228a02..0a906d8 100644
--- a/meta/recipes-graphics/xorg-lib/libice_1.0.7.bb
+++ b/meta/recipes-graphics/xorg-lib/libice_1.0.7.bb
@@ -1,4 +1,10 @@
-DESCRIPTION = "X11 Inter-Client Exchange library"
+SUMMARY = "ICE: Inter-Client Exchange library"
+
+DESCRIPTION = "The Inter-Client Exchange (ICE) protocol provides a \
+generic framework for building protocols on top of reliable, byte-stream \
+transport connections. It provides basic mechanisms for setting up and \
+shutting down connections, for performing authentication, for \
+negotiating versions, and for reporting errors. "
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/libpciaccess_0.12.0.bb b/meta/recipes-graphics/xorg-lib/libpciaccess_0.12.0.bb
index b68f3ad..d7417a2 100644
--- a/meta/recipes-graphics/xorg-lib/libpciaccess_0.12.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libpciaccess_0.12.0.bb
@@ -1,4 +1,7 @@
-DESCRIPTION = "Generic PCI access library"
+SUMMARY = "Generic PCI access library for X"
+
+DESCRIPTION = "libpciaccess provides functionality for X to access the \
+PCI bus and devices in a platform-independant way."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/libsm_1.2.0.bb b/meta/recipes-graphics/xorg-lib/libsm_1.2.0.bb
index 9ad5e4a..bb384aa 100644
--- a/meta/recipes-graphics/xorg-lib/libsm_1.2.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libsm_1.2.0.bb
@@ -1,4 +1,10 @@
-DESCRIPTION = "X11 Session management library"
+SUMMARY = "SM: Session Management library"
+
+DESCRIPTION = "The Session Management Library (SMlib) is a low-level \"C\" \
+language interface to XSMP.  The purpose of the X Session Management \
+Protocol (XSMP) is to provide a uniform mechanism for users to save and \
+restore their sessions.  A session is a group of clients, each of which \
+has a particular state."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/libx11-diet_1.3.bb b/meta/recipes-graphics/xorg-lib/libx11-diet_1.3.bb
index a76aba1..fee44ae 100644
--- a/meta/recipes-graphics/xorg-lib/libx11-diet_1.3.bb
+++ b/meta/recipes-graphics/xorg-lib/libx11-diet_1.3.bb
@@ -1,5 +1,8 @@
 require libx11.inc
 
+DESCRIPTION += " Support for XCB, UDC, XCMS and XLOCALE is disabled in \
+this version."
+
 PR = "r1"
 
 SRC_URI += "file://x11_disable_makekeys.patch;patch=1 \
diff --git a/meta/recipes-graphics/xorg-lib/libx11-diet_git.bb b/meta/recipes-graphics/xorg-lib/libx11-diet_git.bb
index d1f0a75..458ba41 100644
--- a/meta/recipes-graphics/xorg-lib/libx11-diet_git.bb
+++ b/meta/recipes-graphics/xorg-lib/libx11-diet_git.bb
@@ -1,6 +1,9 @@
 require libx11.inc
 require libx11_git.inc
 
+DESCRIPTION += " Support for XCB, UDC, XCMS and XLOCALE is disabled in \
+this version."
+
 SRC_URI += "file://X18NCMSstubs.diff;patch=1 \
             file://fix-disable-xlocale.diff;patch=1 \
             file://fix-utf8-wrong-define.patch;patch=1"
diff --git a/meta/recipes-graphics/xorg-lib/libx11-trim_1.3.4.bb b/meta/recipes-graphics/xorg-lib/libx11-trim_1.3.4.bb
index 190217d..b013498 100644
--- a/meta/recipes-graphics/xorg-lib/libx11-trim_1.3.4.bb
+++ b/meta/recipes-graphics/xorg-lib/libx11-trim_1.3.4.bb
@@ -1,5 +1,7 @@
 require libx11.inc
 
+DESCRIPTION += " Support for XCB, and XCMS is disabled in this version."
+
 LICENSE = "MIT & MIT-style & BSD"
 LIC_FILES_CHKSUM = "file://COPYING;md5=bf75bfe4d05068311b5e6862d4b5f2c5"
 
diff --git a/meta/recipes-graphics/xorg-lib/libx11-trim_git.bb b/meta/recipes-graphics/xorg-lib/libx11-trim_git.bb
index 99426c3..7044a0e 100644
--- a/meta/recipes-graphics/xorg-lib/libx11-trim_git.bb
+++ b/meta/recipes-graphics/xorg-lib/libx11-trim_git.bb
@@ -1,6 +1,8 @@
 require libx11.inc
 require libx11_git.inc
 
+DESCRIPTION += " Support for XCB, and XCMS is disabled in this version."
+
 PR = "r2"
 
 DEPENDS += "libxcb xproto xextproto xtrans libxau kbproto inputproto xf86bigfontproto xproto-native"
diff --git a/meta/recipes-graphics/xorg-lib/libx11.inc b/meta/recipes-graphics/xorg-lib/libx11.inc
index f8c17b1..267a03a 100644
--- a/meta/recipes-graphics/xorg-lib/libx11.inc
+++ b/meta/recipes-graphics/xorg-lib/libx11.inc
@@ -1,4 +1,8 @@
-DESCRIPTION = "X11 protocol and utility library"
+SUMMARY = "Xlib: C Language X Interface library"
+
+DESCRIPTION = "This package provides a client interface to the X Window \
+System, otherwise known as 'Xlib'.  It provides a complete API for the \
+basic functions of the window system."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/libxau_1.0.6.bb b/meta/recipes-graphics/xorg-lib/libxau_1.0.6.bb
index 98c84e6..79078ef 100644
--- a/meta/recipes-graphics/xorg-lib/libxau_1.0.6.bb
+++ b/meta/recipes-graphics/xorg-lib/libxau_1.0.6.bb
@@ -1,4 +1,8 @@
-DESCRIPTION = "A Sample Authorization Protocol for X"
+SUMMARY = "Xau: X Authority Database library"
+
+DESCRIPTION = "libxau provides the main interfaces to the X11 \
+authorisation handling, which controls authorisation for X connections, \
+both client-side and server-side."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/libxcalibrate_git.bb b/meta/recipes-graphics/xorg-lib/libxcalibrate_git.bb
index 8ca731b..f27c595 100644
--- a/meta/recipes-graphics/xorg-lib/libxcalibrate_git.bb
+++ b/meta/recipes-graphics/xorg-lib/libxcalibrate_git.bb
@@ -1,4 +1,7 @@
-DESCRIPTION = "Touchscreen calibration client library"
+SUMMARY = "XCalibrate: Touchscreen calibration library"
+
+DESCRIPTION = "libXCalibrate is a library for performing touchscreen \
+calibration with the kdrive tslib touchscreen driver."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/libxcomposite_0.4.3.bb b/meta/recipes-graphics/xorg-lib/libxcomposite_0.4.3.bb
index e6a1611..deaa366 100644
--- a/meta/recipes-graphics/xorg-lib/libxcomposite_0.4.3.bb
+++ b/meta/recipes-graphics/xorg-lib/libxcomposite_0.4.3.bb
@@ -1,4 +1,13 @@
-DESCRIPTION = "X Composite extension library."
+SUMMARY = "Xcomposite: X Composite extension library"
+
+DESCRIPTION = "The composite extension provides three related \
+mechanisms: per-hierarchy storage, automatic shadow update, and external \
+parent.  In per-hierarchy storage, the rendering of an entire hierarchy \
+of windows is redirected to off-screen storage.  In automatic shadow \
+update, when a hierarchy is rendered off-screen, the X server provides \
+an automatic mechanism for presenting those contents within the parent \
+window.  In external parent, a mechanism for providing redirection of \
+compositing transformations through a client."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/libxcursor_1.1.11.bb b/meta/recipes-graphics/xorg-lib/libxcursor_1.1.11.bb
index 0506079..a8dee4c 100644
--- a/meta/recipes-graphics/xorg-lib/libxcursor_1.1.11.bb
+++ b/meta/recipes-graphics/xorg-lib/libxcursor_1.1.11.bb
@@ -1,4 +1,10 @@
-DESCRIPTION = "X cursor management library"
+SUMMARY = "Xcursor: X Cursor management library"
+
+DESCRIPTION = "Xcursor is a simple library designed to help locate and \
+load cursors. Cursors can be loaded from files or memory. A library of \
+common cursors exists which map to the standard X cursor names. Cursors \
+can exist in several sizes and the library automatically picks the best \
+size."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/libxdamage_1.1.3.bb b/meta/recipes-graphics/xorg-lib/libxdamage_1.1.3.bb
index f2ed669..81f90ba 100644
--- a/meta/recipes-graphics/xorg-lib/libxdamage_1.1.3.bb
+++ b/meta/recipes-graphics/xorg-lib/libxdamage_1.1.3.bb
@@ -1,4 +1,15 @@
-DESCRIPTION = "X11 damaged region extension library"
+SUMMARY = "Xdamage: X Damage extension library"
+
+DESCRIPTION = "'Damage' is a term that describes changes make to pixel \
+contents of windows and pixmaps.  Damage accumulates as drawing occurs \
+in the drawable.  Each drawing operation 'damages' one or more \
+rectangular areas within the drawable.  The rectangles are guaranteed to \
+include the set of pixels modified by each operation, but may include \
+significantly more than just those pixels.  The DAMAGE extension allows \
+applications to either receive the raw rectangles as a stream of events, \
+or to have them partially processed within the X server to reduce the \
+amount of data transmitted as well as reduce the processing latency once \
+the repaint operation has started."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/libxdmcp_1.1.0.bb b/meta/recipes-graphics/xorg-lib/libxdmcp_1.1.0.bb
index 344bdb1..d897dab 100644
--- a/meta/recipes-graphics/xorg-lib/libxdmcp_1.1.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libxdmcp_1.1.0.bb
@@ -1,4 +1,10 @@
-DESCRIPTION = "X Display Manager Control Protocol library"
+SUMMARY = "XDMCP: X Display Manager Control Protocol library"
+
+DESCRIPTION = "The purpose of the X Display Manager Control Protocol \
+(XDMCP) is to provide a uniform mechanism for an autonomous display to \
+request login service from a remote host. An X terminal (screen, \
+keyboard, mouse, processor, network interface) is a prime example of an \
+autonomous display."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/libxext_1.2.0.bb b/meta/recipes-graphics/xorg-lib/libxext_1.2.0.bb
index 75417c2..b907b9f 100644
--- a/meta/recipes-graphics/xorg-lib/libxext_1.2.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libxext_1.2.0.bb
@@ -1,4 +1,12 @@
-DESCRIPTION = "X11 miscellaneous extension library"
+SUMMARY = "XExt: X Extension library"
+
+DESCRIPTION = "libXext provides an X Window System client interface to \
+several extensions to the X protocol.  The supported protocol extensions \
+are DOUBLE-BUFFER, DPMS, Extended-Visual-Information, LBX, MIT_SHM, \
+MIT_SUNDRY-NONSTANDARD, Multi-Buffering, SECURITY, SHAPE, SYNC, TOG-CUP, \
+XC-APPGROUP, XC-MISC, XTEST.  libXext also provides a small set of \
+utility functions to aid authors of client APIs for X protocol \
+extensions."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/libxext_git.bb b/meta/recipes-graphics/xorg-lib/libxext_git.bb
index d0b3d7f..66bbbcb 100644
--- a/meta/recipes-graphics/xorg-lib/libxext_git.bb
+++ b/meta/recipes-graphics/xorg-lib/libxext_git.bb
@@ -1,6 +1,15 @@
 require xorg-lib-common.inc
 
-DESCRIPTION = "X11 miscellaneous extension library"
+SUMMARY = "XExt: X Extension library"
+
+DESCRIPTION = "libXext provides an X Window System client interface to \
+several extensions to the X protocol.  The supported protocol extensions \
+are DOUBLE-BUFFER, DPMS, Extended-Visual-Information, LBX, MIT_SHM, \
+MIT_SUNDRY-NONSTANDARD, Multi-Buffering, SECURITY, SHAPE, SYNC, TOG-CUP, \
+XC-APPGROUP, XC-MISC, XTEST.  libXext also provides a small set of \
+utility functions to aid authors of client APIs for X protocol \
+extensions."
+
 DEPENDS += "xproto virtual/libx11 xextproto libxau libxdmcp"
 PROVIDES = "xext"
 PE = "1"
diff --git a/meta/recipes-graphics/xorg-lib/libxfixes_4.0.5.bb b/meta/recipes-graphics/xorg-lib/libxfixes_4.0.5.bb
index 8ecf1f8..a69d5fd 100644
--- a/meta/recipes-graphics/xorg-lib/libxfixes_4.0.5.bb
+++ b/meta/recipes-graphics/xorg-lib/libxfixes_4.0.5.bb
@@ -1,4 +1,9 @@
-DESCRIPTION = "X Fixes extension library."
+SUMMARY = "XFixes: X Fixes extension library."
+
+DESCRIPTION = "X applications have often needed to work around various \
+shortcomings in the core X window system.  This extension is designed to \
+provide the minimal server-side support necessary to eliminate problems \
+caused by these workarounds."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/libxfont_1.4.3.bb b/meta/recipes-graphics/xorg-lib/libxfont_1.4.3.bb
index 2e19f8f..2f9516c 100644
--- a/meta/recipes-graphics/xorg-lib/libxfont_1.4.3.bb
+++ b/meta/recipes-graphics/xorg-lib/libxfont_1.4.3.bb
@@ -1,4 +1,8 @@
-DESCRIPTION = "X11 font rasterisation library"
+SUMMARY = "XFont: X Font rasterisation library"
+
+DESCRIPTION = "libXfont provides various services for X servers, most \
+notably font selection and rasterisation (through external libraries \
+such as freetype)."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/libxfontcache_1.0.5.bb b/meta/recipes-graphics/xorg-lib/libxfontcache_1.0.5.bb
index 5ee42be..b254eb9 100644
--- a/meta/recipes-graphics/xorg-lib/libxfontcache_1.0.5.bb
+++ b/meta/recipes-graphics/xorg-lib/libxfontcache_1.0.5.bb
@@ -1,6 +1,10 @@
 require xorg-lib-common.inc
 
-DESCRIPTION = "X-TrueType font cache extension client library"
+SUMMARY = "XFontCache: X Font Cache extension library"
+
+DESCRIPTION = "FontCache is an extension that is used by X-TrueType to cache \
+information about fonts."
+
 DEPENDS += "libxext fontcacheproto"
 LIC_FILES_CHKSUM = "file://COPYING;md5=62a75d5d3da40f1f6eb1cbe3bcc0a5d0"
 PR = "r0"
diff --git a/meta/recipes-graphics/xorg-lib/libxft_2.2.0.bb b/meta/recipes-graphics/xorg-lib/libxft_2.2.0.bb
index f32e2ce..1a56702 100644
--- a/meta/recipes-graphics/xorg-lib/libxft_2.2.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libxft_2.2.0.bb
@@ -1,4 +1,14 @@
-DESCRIPTION = "FreeType-based font drawing library for X"
+SUMMARY = "XFt: X FreeType libary"
+
+DESCRIPTION = "Xft was designed to provide good support for scalable \
+fonts, and to do so efficiently.  Unlike the core fonts system, it \
+supports features such as anti-aliasing and sub-pixel rasterisation. \
+Perhaps more importantly, it gives applications full control over the \
+way glyphs are rendered, making fine typesetting and WYSIWIG display \
+possible. Finally, it allows applications to use fonts that are not \
+installed system-wide for displaying documents with embedded fonts.  Xft \
+is not compatible with the core fonts system: usage of Xft requires \
+fairly extensive changes to toolkits (user-interface libraries)."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/libxi_1.4.0.bb b/meta/recipes-graphics/xorg-lib/libxi_1.4.0.bb
index 7820653..c7fb9d5 100644
--- a/meta/recipes-graphics/xorg-lib/libxi_1.4.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libxi_1.4.0.bb
@@ -1,6 +1,11 @@
 require xorg-lib-common.inc
 
-DESCRIPTION = "X11 Input extension library"
+SUMMARY = "XI: X Input extension library"
+
+DESCRIPTION = "libxi is an extension to the X11 protocol to support \
+input devices other than the core X keyboard and pointer.  It allows \
+client programs to select input from these devices independently from \
+each other and independently from the core devices."
 
 LICENSE = "MIT & MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=17b064789fab936a1c58c4e13d965b0f \
diff --git a/meta/recipes-graphics/xorg-lib/libxi_git.bb b/meta/recipes-graphics/xorg-lib/libxi_git.bb
index 30c1778..fac3236 100644
--- a/meta/recipes-graphics/xorg-lib/libxi_git.bb
+++ b/meta/recipes-graphics/xorg-lib/libxi_git.bb
@@ -1,6 +1,12 @@
 require xorg-lib-common.inc
 
-DESCRIPTION = "X11 Input extension library"
+SUMMARY = "XI: X Input extension library"
+
+DESCRIPTION = "libxi is an extension to the X11 protocol to support \
+input devices other than the core X keyboard and pointer.  It allows \
+client programs to select input from these devices independently from \
+each other and independently from the core devices."
+
 DEPENDS += "libxext inputproto"
 PE = "1"
 PV = "1.2.99.5+gitr${SRCPV}"
diff --git a/meta/recipes-graphics/xorg-lib/libxinerama_1.1.1.bb b/meta/recipes-graphics/xorg-lib/libxinerama_1.1.1.bb
index a4048b7..cbd7d4c 100644
--- a/meta/recipes-graphics/xorg-lib/libxinerama_1.1.1.bb
+++ b/meta/recipes-graphics/xorg-lib/libxinerama_1.1.1.bb
@@ -1,6 +1,10 @@
 require xorg-lib-common.inc
 
-DESCRIPTION = "X11 Xinerama extension library"
+SUMMARY = "Xinerama: Xinerama extension library"
+
+DESCRIPTION = "Xinerama is a simple library designed to interface the \
+Xinerama Extension for retrieving information about physical output \
+devices which may be combined into a single logical X screen."
 
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=6f4f634d1643a2e638bba3fcd19c2536 \
diff --git a/meta/recipes-graphics/xorg-lib/libxkbfile_1.0.7.bb b/meta/recipes-graphics/xorg-lib/libxkbfile_1.0.7.bb
index 17bbca0..ff2f90f 100644
--- a/meta/recipes-graphics/xorg-lib/libxkbfile_1.0.7.bb
+++ b/meta/recipes-graphics/xorg-lib/libxkbfile_1.0.7.bb
@@ -1,4 +1,7 @@
-DESCRIPTION = "X11 keyboard file manipulation library"
+SUMMARY = "XKB: X Keyboard File manipulation library"
+
+DESCRIPTION = "libxkbfile provides an interface to read and manipulate \
+description files for XKB, the X11 keyboard configuration extension."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/libxmu_1.1.0.bb b/meta/recipes-graphics/xorg-lib/libxmu_1.1.0.bb
index bea21791..59f2c28 100644
--- a/meta/recipes-graphics/xorg-lib/libxmu_1.1.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libxmu_1.1.0.bb
@@ -1,4 +1,12 @@
-DESCRIPTION = "X11 miscellaneous utility library"
+SUMMARY = "Xmu and Xmuu: X Miscellaneous Utility libraries"
+
+DESCRIPTION = "The Xmu Library is a collection of miscellaneous (some \
+might say random) utility functions that have been useful in building \
+various applications and widgets. This library is required by the Athena \
+Widgets. A subset of the functions that do not rely on the Athena \
+Widgets (libXaw) or X Toolkit Instrinsics (libXt) are provided in a \
+second library, libXmuu."
+
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/libxp_1.0.1.bb b/meta/recipes-graphics/xorg-lib/libxp_1.0.1.bb
index a8461a9..a19f561 100644
--- a/meta/recipes-graphics/xorg-lib/libxp_1.0.1.bb
+++ b/meta/recipes-graphics/xorg-lib/libxp_1.0.1.bb
@@ -1,6 +1,9 @@
 require xorg-lib-common.inc
 
-DESCRIPTION = "X Printing Extension (Xprint) client library"
+SUMMARY = "XP: X Printing extension library"
+
+DESCRIPTION = "libXp provides public APIs to allow client applications \
+to render to non-display devices, making use of the X Print Service."
 
 LICENSE = "MIT & MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=9504a1264f5ddd4949254a57c0f8d6bb \
diff --git a/meta/recipes-graphics/xorg-lib/libxpm_3.5.9.bb b/meta/recipes-graphics/xorg-lib/libxpm_3.5.9.bb
index ecb8ad7..1a548fa 100644
--- a/meta/recipes-graphics/xorg-lib/libxpm_3.5.9.bb
+++ b/meta/recipes-graphics/xorg-lib/libxpm_3.5.9.bb
@@ -1,6 +1,12 @@
 require xorg-lib-common.inc
 
-DESCRIPTION = "X11 Pixmap library"
+SUMMARY = "Xpm: X Pixmap extension library"
+
+DESCRIPTION = "libXpm provides support and common operation for the XPM \
+pixmap format, which is commonly used in legacy X applications.  XPM is \
+an extension of the monochrome XBM bitmap specificied in the X \
+protocol."
+
 LICENSE = "X-BSD"
 LIC_FILES_CHKSUM = "file://COPYING;md5=3e07763d16963c3af12db271a31abaa5"
 DEPENDS += "libxext libsm libxt"
diff --git a/meta/recipes-graphics/xorg-lib/libxprintapputil_1.0.1.bb b/meta/recipes-graphics/xorg-lib/libxprintapputil_1.0.1.bb
index cc54790..0f3892c 100644
--- a/meta/recipes-graphics/xorg-lib/libxprintapputil_1.0.1.bb
+++ b/meta/recipes-graphics/xorg-lib/libxprintapputil_1.0.1.bb
@@ -1,6 +1,11 @@
 require xorg-lib-common.inc
 
-DESCRIPTION = "Xprint job utility client library"
+SUMMARY = "Xprint: Xprint job utility library"
+
+DESCRIPTION = "libxprintapputil provides utility Xpau APIs allowing \
+client applications to access information about and control Xprint jobs \
+from an Xprint server."
+
 DEPENDS += "libxp libxt libxprintutil"
 PR = "r1"
 LIC_FILES_CHKSUM = "file://src/xpapputil.c;beginline=2;endline=27;md5=be811cca90200613a672dc96206a767b"
diff --git a/meta/recipes-graphics/xorg-lib/libxprintutil_1.0.1.bb b/meta/recipes-graphics/xorg-lib/libxprintutil_1.0.1.bb
index a499fe2..8e3507c 100644
--- a/meta/recipes-graphics/xorg-lib/libxprintutil_1.0.1.bb
+++ b/meta/recipes-graphics/xorg-lib/libxprintutil_1.0.1.bb
@@ -1,7 +1,12 @@
 require xorg-lib-common.inc
 LIC_FILES_CHKSUM = "file://src/xprintutil.c;endline=29;md5=22d5a98494dd356a2c6c9c355886f3af"
 
-DESCRIPTION = "Xprint printer utility client library"
+SUMMARY = "Xprint: Xprint printer utility library"
+
+DESCRIPTION = "libxprintutil provides utility Xpu APIs allowing client \
+applications to access and manipulate information about printer \
+capabilities from an Xprint server."
+
 DEPENDS += "libxp libxt"
 PR = "r1"
 PE = "1"
diff --git a/meta/recipes-graphics/xorg-lib/libxrandr_1.3.1.bb b/meta/recipes-graphics/xorg-lib/libxrandr_1.3.1.bb
index 789d394..917fe20 100644
--- a/meta/recipes-graphics/xorg-lib/libxrandr_1.3.1.bb
+++ b/meta/recipes-graphics/xorg-lib/libxrandr_1.3.1.bb
@@ -1,4 +1,10 @@
-DESCRIPTION = "X11 Resize and Rotate extension library"
+SUMMARY = "XRandR: X Resize, Rotate and Reflect extension library"
+
+DESCRIPTION = "The X Resize, Rotate and Reflect Extension, called RandR \
+for short, brings the ability to resize, rotate and reflect the root \
+window of a screen. It is based on the X Resize and Rotate Extension as \
+specified in the Proceedings of the 2001 Usenix Technical Conference \
+[RANDR]."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/libxrender_0.9.6.bb b/meta/recipes-graphics/xorg-lib/libxrender_0.9.6.bb
index 22418e3..a5c5ead 100644
--- a/meta/recipes-graphics/xorg-lib/libxrender_0.9.6.bb
+++ b/meta/recipes-graphics/xorg-lib/libxrender_0.9.6.bb
@@ -1,4 +1,10 @@
-DESCRIPTION = "X11 Rendering Extension client library"
+SUMMARY = "XRender: X Rendering Extension library"
+
+DESCRIPTION = "The X Rendering Extension (Render) introduces digital \
+image composition as the foundation of a new rendering model within the \
+X Window System. Rendering geometric figures is accomplished by \
+client-side tessellation into either triangles or trapezoids.  Text is \
+drawn by loading glyphs into the server and rendering sets of them."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/libxres_1.0.5.bb b/meta/recipes-graphics/xorg-lib/libxres_1.0.5.bb
index 5d8f946..3d9e8fc 100644
--- a/meta/recipes-graphics/xorg-lib/libxres_1.0.5.bb
+++ b/meta/recipes-graphics/xorg-lib/libxres_1.0.5.bb
@@ -1,4 +1,9 @@
-DESCRIPTION = "X11 Resource extension library"
+SUMMARY = "XRes: X Resource extension library"
+
+DESCRIPTION = "libXRes provides an X Window System client interface to \
+the Resource extension to the X protocol.  The Resource extension allows \
+for X clients to see and monitor the X resource usage of various clients \
+(pixmaps, et al)."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/libxscrnsaver_1.2.1.bb b/meta/recipes-graphics/xorg-lib/libxscrnsaver_1.2.1.bb
index 3df0aca..453c68f 100644
--- a/meta/recipes-graphics/xorg-lib/libxscrnsaver_1.2.1.bb
+++ b/meta/recipes-graphics/xorg-lib/libxscrnsaver_1.2.1.bb
@@ -1,6 +1,14 @@
 require xorg-lib-common.inc
 
-DESCRIPTION = "X Screen Saver extension library"
+SUMMARY = "Xscrnsaver: X Screen Saver extension library"
+
+DESCRIPTION = "The X Window System provides support for changing the \
+image on a display screen after a user-settable period of inactivity to \
+avoid burning the cathode ray tube phosphors. However, no interfaces are \
+provided for the user to control the image that is drawn. This extension \
+allows an external \"screen saver\" client to detect when the alternate \
+image is to be displayed and to provide the graphics."
+
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=21fd154ee757813632ada871a34113fb"
 
diff --git a/meta/recipes-graphics/xorg-lib/libxt_1.0.9.bb b/meta/recipes-graphics/xorg-lib/libxt_1.0.9.bb
index 7a62e7b..63119ae 100644
--- a/meta/recipes-graphics/xorg-lib/libxt_1.0.9.bb
+++ b/meta/recipes-graphics/xorg-lib/libxt_1.0.9.bb
@@ -1,4 +1,14 @@
-DESCRIPTION = "X11 toolkit intrinsics library"
+SUMMARY = "Xt: X Toolkit Intrinsics library"
+
+DESCRIPTION = "The Intrinsics are a programming library tailored to the \
+special requirements of user interface construction within a network \
+window system, specifically the X Window System. The Intrinsics and a \
+widget set make up an X Toolkit. The Intrinsics provide the base \
+mechanism necessary to build a wide variety of interoperating widget \
+sets and application environments. The Intrinsics are a layer on top of \
+Xlib, the C Library X Interface. They extend the fundamental \
+abstractions provided by the X Window System while still remaining \
+independent of any particular user interface policy or style."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/libxtrap_1.0.0.bb b/meta/recipes-graphics/xorg-lib/libxtrap_1.0.0.bb
index 19b1c36..4d1f791 100644
--- a/meta/recipes-graphics/xorg-lib/libxtrap_1.0.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libxtrap_1.0.0.bb
@@ -1,6 +1,10 @@
+SUMMARY = "XTrap: X event trapping extension library"
+
+DESCRIPTION = "libXTrap provides an interface to the DEC-XTRAP \
+extension, which allows for capture and synthesis of core input events."
+
 require xorg-lib-common.inc
 LIC_FILES_CHKSUM = "file://COPYING;md5=fe7cbb8cc97683303f7814685cc47305"
-DESCRIPTION = "X11 event trapping extension library"
 DEPENDS += "libxt trapproto libxext"
 PR = "r1"
 PE = "1"
diff --git a/meta/recipes-graphics/xorg-lib/libxtst_1.2.0.bb b/meta/recipes-graphics/xorg-lib/libxtst_1.2.0.bb
index 811a190..2081f0c 100644
--- a/meta/recipes-graphics/xorg-lib/libxtst_1.2.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libxtst_1.2.0.bb
@@ -1,6 +1,10 @@
 require xorg-lib-common.inc
 
-DESCRIPTION = "X Test Extension: client side library"
+SUMMARY = "XTest: X Test extension library"
+
+DESCRIPTION = "This extension is a minimal set of client and server \
+extensions required to completely test the X11 server with no user \
+intervention."
 
 LICENSE = "MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=cba677ca25c42ad29ee8ff351b50ece8 \
diff --git a/meta/recipes-graphics/xorg-lib/libxv_1.0.6.bb b/meta/recipes-graphics/xorg-lib/libxv_1.0.6.bb
index 0feecb4..f3d8d27 100644
--- a/meta/recipes-graphics/xorg-lib/libxv_1.0.6.bb
+++ b/meta/recipes-graphics/xorg-lib/libxv_1.0.6.bb
@@ -1,4 +1,9 @@
-DESCRIPTION = "X11 Video extension library"
+SUMMARY = "Xv: X Video extension library"
+
+DESCRIPTION = "libXv provides an X Window System client interface to the \
+X Video extension to the X protocol. The X Video extension allows for \
+accelerated drawing of videos.  Hardware adaptors are exposed to \
+clients, which may draw in a number of colourspaces, including YUV."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/libxvmc_1.0.6.bb b/meta/recipes-graphics/xorg-lib/libxvmc_1.0.6.bb
index 6f87f72..1f690b8 100644
--- a/meta/recipes-graphics/xorg-lib/libxvmc_1.0.6.bb
+++ b/meta/recipes-graphics/xorg-lib/libxvmc_1.0.6.bb
@@ -1,4 +1,7 @@
-DESCRIPTION = "X Video Motion Compensation extension library"
+SUMMARY = "XvMC: X Video Motion Compensation extension library"
+
+DESCRIPTION = "XvMC extends the X Video extension (Xv) and enables \
+hardware rendered motion compensation support."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/libxxf86dga_1.1.2.bb b/meta/recipes-graphics/xorg-lib/libxxf86dga_1.1.2.bb
index cc76861..8e777c3 100644
--- a/meta/recipes-graphics/xorg-lib/libxxf86dga_1.1.2.bb
+++ b/meta/recipes-graphics/xorg-lib/libxxf86dga_1.1.2.bb
@@ -1,6 +1,12 @@
 require xorg-lib-common.inc
 
-DESCRIPTION = "X11 Direct Graphics Access extension library"
+SUMMARY = "XFree86-DGA: XFree86 Direct Graphics Access extension library"
+
+DESCRIPTION = "libXxf86dga provides the XFree86-DGA extension, which \
+allows direct graphics access to a framebuffer-like region, and also \
+allows relative mouse reporting, et al.  It is mainly used by games and \
+emulators for games."
+
 DEPENDS += "libxext xf86dgaproto"
 PR = "r1"
 PE = "1"
diff --git a/meta/recipes-graphics/xorg-lib/libxxf86misc_1.0.3.bb b/meta/recipes-graphics/xorg-lib/libxxf86misc_1.0.3.bb
index e90ecc7..bda6da2 100644
--- a/meta/recipes-graphics/xorg-lib/libxxf86misc_1.0.3.bb
+++ b/meta/recipes-graphics/xorg-lib/libxxf86misc_1.0.3.bb
@@ -1,4 +1,7 @@
-DESCRIPTION = "X11 XFree86 miscellaneous extension library"
+SUMMARY = "XFree86-Misc: XFree86 miscellaneous extension library"
+
+DESCRIPTION = "The XFree86-Misc extension, provides a means to access \
+input device configuration settings specific to the XFree86/Xorg DDX."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/libxxf86vm_1.1.1.bb b/meta/recipes-graphics/xorg-lib/libxxf86vm_1.1.1.bb
index 0e4e95b..4066f08 100644
--- a/meta/recipes-graphics/xorg-lib/libxxf86vm_1.1.1.bb
+++ b/meta/recipes-graphics/xorg-lib/libxxf86vm_1.1.1.bb
@@ -1,4 +1,9 @@
-DESCRIPTION = "X11 XFree86 video mode extension library"
+SUMMARY = "XFree86-VM: XFree86 video mode extension library"
+
+DESCRIPTION = "libXxf86vm provides an interface to the \
+XFree86-VidModeExtension extension, which allows client applications to \
+get and set video mode timings in extensive detail.  It is used by the \
+xvidtune program in particular."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/pixman_0.20.2.bb b/meta/recipes-graphics/xorg-lib/pixman_0.20.2.bb
index dfd883e..9a97c3d 100644
--- a/meta/recipes-graphics/xorg-lib/pixman_0.20.2.bb
+++ b/meta/recipes-graphics/xorg-lib/pixman_0.20.2.bb
@@ -1,4 +1,9 @@
-DESCRIPTION = "Library for lowlevel pixel operations"
+SUMMARY = "Pixman: Pixel Manipulation library"
+
+DESCRIPTION = "Pixman provides a library for manipulating pixel regions \
+-- a set of Y-X banded rectangles, image compositing using the \
+Porter/Duff model and implicit mask generation for geometric primitives \
+including trapezoids, triangles, and rectangles."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.bb b/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.bb
index e36280e..e0aa799 100644
--- a/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.bb
+++ b/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.bb
@@ -1,4 +1,11 @@
-DESCRIPTION = "Keyboard configuration database for X Window"
+SUMMARY = "Keyboard configuration database for X Window"
+
+DESCRIPTION = "The non-arch keyboard configuration database for X \
+Window.  The goal is to provide the consistent, well-structured, \
+frequently released open source of X keyboard configuration data for X \
+Window System implementations.  The project is targeted to XKB-based \
+systems."
+
 HOMEPAGE = "http://freedesktop.org/wiki/Software/XKeyboardConfig"
 BUGTRACKER = "https://bugs.freedesktop.org/enter_bug.cgi?product=xkeyboard-config"
 
diff --git a/meta/recipes-graphics/xorg-lib/xtrans_1.2.6.bb b/meta/recipes-graphics/xorg-lib/xtrans_1.2.6.bb
index f2d9394..335f020 100644
--- a/meta/recipes-graphics/xorg-lib/xtrans_1.2.6.bb
+++ b/meta/recipes-graphics/xorg-lib/xtrans_1.2.6.bb
@@ -1,7 +1,11 @@
-SUMMARY = "X transport library"
+SUMMARY = "XTrans: X Transport library"
 
-DESCRIPTION = "network API translation layer to insulate X applications and \
-libraries from OS network vageries."
+DESCRIPTION = "The X Transport Interface is intended to combine all \
+system and transport specific code into a single place.  This API should \
+be used by all libraries, clients and servers of the X Window System. \
+Use of this API should allow the addition of new types of transports and \
+support for new platforms without making any changes to the source \
+except in the X Transport Interface code."
 
 require xorg-lib-common.inc
 
diff --git a/meta/recipes-graphics/xorg-proto/bigreqsproto_1.1.1.bb b/meta/recipes-graphics/xorg-proto/bigreqsproto_1.1.1.bb
index 57d74ae..19fe328 100644
--- a/meta/recipes-graphics/xorg-proto/bigreqsproto_1.1.1.bb
+++ b/meta/recipes-graphics/xorg-proto/bigreqsproto_1.1.1.bb
@@ -5,7 +5,11 @@ PE = "1"
 
 DEPENDS += "gettext"
 
-DESCRIPTION = "X.Org BigReqs extension headers"
+SUMMARY = "BigReqs: X Big Requests extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the \
+BIG-REQUESTS extension, used to send larger requests that usual in order \
+to avoid fragmentation."
 
 BBCLASSEXTEND = "native nativesdk"
 
diff --git a/meta/recipes-graphics/xorg-proto/calibrateproto_git.bb b/meta/recipes-graphics/xorg-proto/calibrateproto_git.bb
index 9fd5c3f..f86ea4a 100644
--- a/meta/recipes-graphics/xorg-proto/calibrateproto_git.bb
+++ b/meta/recipes-graphics/xorg-proto/calibrateproto_git.bb
@@ -1,6 +1,9 @@
 require xorg-proto-common.inc
 
-DESCRIPTION = "Touchscreen calibration protocol"
+SUMMARY = "XCalibrate: Touchscreen calibration headers"
+
+DESCRIPTION = "This package provides the wire protocol for the \
+Touchscreen calibration extension."
 
 LICENSE = "MIT-style"
 LIC_FILES_CHKSUM = "file://xcalibratewire.h;endline=23;md5=7f86ef7b03cce6c4c9ebd59d20ca485f \
diff --git a/meta/recipes-graphics/xorg-proto/compositeproto_0.4.2.bb b/meta/recipes-graphics/xorg-proto/compositeproto_0.4.2.bb
index e78e173..5917f20 100644
--- a/meta/recipes-graphics/xorg-proto/compositeproto_0.4.2.bb
+++ b/meta/recipes-graphics/xorg-proto/compositeproto_0.4.2.bb
@@ -1,5 +1,11 @@
 require xorg-proto-common.inc
 
+SUMMARY = "Xcomposite: X composite extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the X \
+composite extension.  The X composite extension provides three related \
+mechanisms for compositing and off-screen storage."
+
 LICENSE = "MIT & MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=2c4bfe136f4a4418ea2f2a96b7c8f3c5 \
                     file://composite.h;endline=43;md5=cbd44d4079053aa75930ed2f02b92926"
diff --git a/meta/recipes-graphics/xorg-proto/damageproto_1.2.1.bb b/meta/recipes-graphics/xorg-proto/damageproto_1.2.1.bb
index 1f2c555..6bfa1b2 100644
--- a/meta/recipes-graphics/xorg-proto/damageproto_1.2.1.bb
+++ b/meta/recipes-graphics/xorg-proto/damageproto_1.2.1.bb
@@ -1,5 +1,12 @@
 require xorg-proto-common.inc
 
+SUMMARY = "Xdamage: X Damage extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the DAMAGE \
+extension.  The DAMAGE extension allows applications to receive \
+information about changes made to pixel contents of windows and \
+pixmaps."
+
 LICENSE = "MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d5f5a2de65c3a84cbde769f07a769608 \
                     file://damagewire.h;endline=23;md5=4a4501a592dbc7de5ce89255e50d0296"
diff --git a/meta/recipes-graphics/xorg-proto/dmxproto_2.3.1.bb b/meta/recipes-graphics/xorg-proto/dmxproto_2.3.1.bb
index 94c81f0..c521071 100644
--- a/meta/recipes-graphics/xorg-proto/dmxproto_2.3.1.bb
+++ b/meta/recipes-graphics/xorg-proto/dmxproto_2.3.1.bb
@@ -1,5 +1,13 @@
 require xorg-proto-common.inc
 
+SUMMARY = "DMX: Distributed Multihead extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the DMX \
+extension.  The DMX extension provides support for communication with \
+and control of Xdmx server.  Attributes of the Xdmx server and of the \
+back-end screens attached to the server can be queried and modified via \
+this protocol."
+
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=a3c3499231a8035efd0e004cfbd3b72a \
                     file://dmxproto.h;endline=32;md5=ab8509955c3dd4c65fac728e1b367bc4"
diff --git a/meta/recipes-graphics/xorg-proto/dri2proto_2.3.bb b/meta/recipes-graphics/xorg-proto/dri2proto_2.3.bb
index 849dc00..79f7dbc 100644
--- a/meta/recipes-graphics/xorg-proto/dri2proto_2.3.bb
+++ b/meta/recipes-graphics/xorg-proto/dri2proto_2.3.bb
@@ -1,7 +1,11 @@
-DESCRIPTION = "DRI2 extension headers"
-
 require xorg-proto-common.inc
 
+SUMMARY = "DRI2: Direct Rendering Infrastructure 2 headers"
+
+DESCRIPTION = "This package provides the wire protocol for the Direct \
+Rendering Ifnrastructure 2.  DIR is required for may hardware \
+accelerated OpenGL drivers."
+
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=2e396fa91834f8786032cad2da5638f3 \
                     file://dri2proto.h;endline=31;md5=22f28bf68d01b533f26195e94b3ed8ca"
diff --git a/meta/recipes-graphics/xorg-proto/dri2proto_git.bb b/meta/recipes-graphics/xorg-proto/dri2proto_git.bb
index a5ad7d0..c1aa35f 100644
--- a/meta/recipes-graphics/xorg-proto/dri2proto_git.bb
+++ b/meta/recipes-graphics/xorg-proto/dri2proto_git.bb
@@ -1,7 +1,11 @@
-DESCRIPTION = "DRI2 extension headers"
-
 require xorg-proto-common.inc
 
+SUMMARY = "DRI2: Direct Rendering Infrastructure 2 headers"
+
+DESCRIPTION = "This package provides the wire protocol for the Direct \
+Rendering Ifnrastructure 2.  DIR is required for may hardware \
+accelerated OpenGL drivers."
+
 PV = "1.99.3+git${SRCPV}"
 PR = "r2"
 
diff --git a/meta/recipes-graphics/xorg-proto/evieext_1.1.0.bb b/meta/recipes-graphics/xorg-proto/evieext_1.1.0.bb
index 9e28304..5800af1 100644
--- a/meta/recipes-graphics/xorg-proto/evieext_1.1.0.bb
+++ b/meta/recipes-graphics/xorg-proto/evieext_1.1.0.bb
@@ -1,6 +1,10 @@
 require xorg-proto-common.inc
 
-DESCRIPTION = "X EVIE extension headers"
+SUMMARY = "EvIE: X Event Interception Extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the X Event \
+Interception Extension.  This extension allows the interception of \
+keyboard and mouse events."
 
 PR = "r1"
 PE = "1"
diff --git a/meta/recipes-graphics/xorg-proto/fixesproto_4.1.2.bb b/meta/recipes-graphics/xorg-proto/fixesproto_4.1.2.bb
index 567f1fe..853ffa8 100644
--- a/meta/recipes-graphics/xorg-proto/fixesproto_4.1.2.bb
+++ b/meta/recipes-graphics/xorg-proto/fixesproto_4.1.2.bb
@@ -1,5 +1,13 @@
 require xorg-proto-common.inc
 
+SUMMARY = "XFixes: X Fixes extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the X Fixes \
+extension.  This extension is designed to provide server-side support \
+for application work arounds to shortcomings in the core X window \
+system."
+
+
 LICENSE = "MIT & MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=3bd0f26ecf86d0f24922125195d5b70a \
                     file://xfixesproto.h;endline=43;md5=27614675897bb1cdc611ba7de506cddc"
diff --git a/meta/recipes-graphics/xorg-proto/fontcacheproto_0.1.3.bb b/meta/recipes-graphics/xorg-proto/fontcacheproto_0.1.3.bb
index d4594b3..42c9588 100644
--- a/meta/recipes-graphics/xorg-proto/fontcacheproto_0.1.3.bb
+++ b/meta/recipes-graphics/xorg-proto/fontcacheproto_0.1.3.bb
@@ -1,5 +1,11 @@
 require xorg-proto-common.inc
 
+SUMMARY = "XFontCache: X Font Cache extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the X Font \
+Cache extension.  This extension is used by X-TrueType to cache \
+information about fonts."
+
 LICENSE = "BSD"
 LIC_FILES_CHKSUM = "file://COPYING;md5=ba9fcd8fe6d09af9f733daccc1a21857 \
                     file://fontcacheP.h;endline=28;md5=85c80bfa96c802ee85a570862ee60214"
diff --git a/meta/recipes-graphics/xorg-proto/fontsproto_2.1.1.bb b/meta/recipes-graphics/xorg-proto/fontsproto_2.1.1.bb
index 1ed8100..af59240 100644
--- a/meta/recipes-graphics/xorg-proto/fontsproto_2.1.1.bb
+++ b/meta/recipes-graphics/xorg-proto/fontsproto_2.1.1.bb
@@ -1,5 +1,11 @@
 require xorg-proto-common.inc
 
+SUMMARY = "XFont: X Font rasterisation headers"
+
+DESCRIPTION = "This package provides the wire protocol for the X Font \
+rasterisation extensions.  These extensions are used to control \
+server-side font configurations."
+
 LICENSE = "MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=c3e48aa9ce868c8e90f0401db41c11a2 \
                     file://FSproto.h;endline=44;md5=d2e58e27095e5ea7d4ad456ccb91986c"
diff --git a/meta/recipes-graphics/xorg-proto/glproto_1.4.12.bb b/meta/recipes-graphics/xorg-proto/glproto_1.4.12.bb
index 9c8e703..7b32e70 100644
--- a/meta/recipes-graphics/xorg-proto/glproto_1.4.12.bb
+++ b/meta/recipes-graphics/xorg-proto/glproto_1.4.12.bb
@@ -1,5 +1,11 @@
 require xorg-proto-common.inc
 
+SUMMARY = "OpenGL: X OpenGL extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the \
+OpenGL-related extensions, used to enable the rendering of applications \
+using OpenGL."
+
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d44ed0146997856304dfbb512a59a8de \
                     file://glxproto.h;beginline=4;endline=32;md5=6b79c570f644363b356456e7d44471d9"
diff --git a/meta/recipes-graphics/xorg-proto/inputproto_2.0.1.bb b/meta/recipes-graphics/xorg-proto/inputproto_2.0.1.bb
index 29f5526..7103d0d 100644
--- a/meta/recipes-graphics/xorg-proto/inputproto_2.0.1.bb
+++ b/meta/recipes-graphics/xorg-proto/inputproto_2.0.1.bb
@@ -1,5 +1,11 @@
 require xorg-proto-common.inc
 
+SUMMARY = "XI: X Input extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the X Input \
+extension.  The extension supports input devices other then the core X \
+keyboard and pointer."
+
 LICENSE = "MIT & MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=e562cc0f6587b961f032211d8160f31e \
                     file://XI2proto.h;endline=48;md5=1ac1581e61188da2885cc14ff49b20be"
diff --git a/meta/recipes-graphics/xorg-proto/inputproto_git.bb b/meta/recipes-graphics/xorg-proto/inputproto_git.bb
index a97fb0b..f1cbbb8 100644
--- a/meta/recipes-graphics/xorg-proto/inputproto_git.bb
+++ b/meta/recipes-graphics/xorg-proto/inputproto_git.bb
@@ -1,5 +1,11 @@
 require xorg-proto-common.inc
 
+SUMMARY = "XI: X Input extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the X Input \
+extension.  The extension supports input devices other then the core X \
+keyboard and pointer."
+
 PR = "r1"
 PE = "1"
 PV = "1.9.99.12+git${SRCPV}"
diff --git a/meta/recipes-graphics/xorg-proto/kbproto_1.0.5.bb b/meta/recipes-graphics/xorg-proto/kbproto_1.0.5.bb
index affd627..cd62534 100644
--- a/meta/recipes-graphics/xorg-proto/kbproto_1.0.5.bb
+++ b/meta/recipes-graphics/xorg-proto/kbproto_1.0.5.bb
@@ -1,5 +1,11 @@
 require xorg-proto-common.inc
 
+SUMMARY = "XKB: X Keyboard extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the X \
+Keyboard extension.  This extension is used to control options related \
+to keyboard handling and layout."
+
 LICENSE = "MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=7dd6ea99e2a83a552c02c80963623c38 \
                     file://XKBproto.h;beginline=2;endline=26;md5=5744eeff407aeb6e7a1346eebab486a2"
diff --git a/meta/recipes-graphics/xorg-proto/printproto_1.0.5.bb b/meta/recipes-graphics/xorg-proto/printproto_1.0.5.bb
index 28f0e94..2c8afbd 100644
--- a/meta/recipes-graphics/xorg-proto/printproto_1.0.5.bb
+++ b/meta/recipes-graphics/xorg-proto/printproto_1.0.5.bb
@@ -1,5 +1,10 @@
 require xorg-proto-common.inc
 
+SUMMARY = "XP: X Printing extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the X \
+Printing extension.  This extension provides a way for client \
+applications to render to non-display devices."
 
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=658463213f19b48b81f8672d2696069f \
diff --git a/meta/recipes-graphics/xorg-proto/randrproto_1.3.2.bb b/meta/recipes-graphics/xorg-proto/randrproto_1.3.2.bb
index c027bfa..f0f81bc 100644
--- a/meta/recipes-graphics/xorg-proto/randrproto_1.3.2.bb
+++ b/meta/recipes-graphics/xorg-proto/randrproto_1.3.2.bb
@@ -1,5 +1,11 @@
 require xorg-proto-common.inc
 
+SUMMARY = "XRandR: X Resize, Rotate and Reflect extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the X Resize, \
+Rotate and Reflect extension.  This extension provides the ability to \
+resize, rotate and reflect the root window of a screen."
+
 LICENSE = "MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=5fa3f85d9eefaa3a945071485be11343 \
                     file://randrproto.h;endline=30;md5=3885957c6048fdf3310ac8ba54ca2c3f"
diff --git a/meta/recipes-graphics/xorg-proto/recordproto_1.14.1.bb b/meta/recipes-graphics/xorg-proto/recordproto_1.14.1.bb
index b5f68d3..8ee2017 100644
--- a/meta/recipes-graphics/xorg-proto/recordproto_1.14.1.bb
+++ b/meta/recipes-graphics/xorg-proto/recordproto_1.14.1.bb
@@ -1,5 +1,11 @@
 require xorg-proto-common.inc
 
+SUMMARY = "XRecord: X Record extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the X Record \
+extension.  This extension is used to record and play back event \
+sequences."
+
 LICENSE = "MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=575827a0f554bbed332542976d5f3d40 \
                     file://recordproto.h;endline=19;md5=1cbb0dd45a0b060ff833901620a3e738"
diff --git a/meta/recipes-graphics/xorg-proto/renderproto_0.11.1.bb b/meta/recipes-graphics/xorg-proto/renderproto_0.11.1.bb
index 7fabfd9..a352b1e 100644
--- a/meta/recipes-graphics/xorg-proto/renderproto_0.11.1.bb
+++ b/meta/recipes-graphics/xorg-proto/renderproto_0.11.1.bb
@@ -1,5 +1,11 @@
 require xorg-proto-common.inc
 
+SUMMARY = "XRender: X rendering Extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the X \
+Rendering extension.  This is the basis the image composition within the \
+X window system."
+
 LICENSE = "MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=f826d99765196352e6122a406cf0d024 \
                     file://renderproto.h;beginline=4;endline=24;md5=3e5e2851dad240b0a3a27c4776b4fd1f"
diff --git a/meta/recipes-graphics/xorg-proto/resourceproto_1.1.1.bb b/meta/recipes-graphics/xorg-proto/resourceproto_1.1.1.bb
index 8cc0607..fa13970 100644
--- a/meta/recipes-graphics/xorg-proto/resourceproto_1.1.1.bb
+++ b/meta/recipes-graphics/xorg-proto/resourceproto_1.1.1.bb
@@ -1,5 +1,11 @@
 require xorg-proto-common.inc
 
+SUMMARY = "XRes: X Resource extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the X \
+Resource extension.  XRes provides an interface that allows X clients to \
+see and monitor X resource usage of various clients."
+
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=e01e66e4b317088cf869bc98e6af4fb6"
 
diff --git a/meta/recipes-graphics/xorg-proto/scrnsaverproto_1.2.1.bb b/meta/recipes-graphics/xorg-proto/scrnsaverproto_1.2.1.bb
index c897a10..fe937eb 100644
--- a/meta/recipes-graphics/xorg-proto/scrnsaverproto_1.2.1.bb
+++ b/meta/recipes-graphics/xorg-proto/scrnsaverproto_1.2.1.bb
@@ -1,5 +1,11 @@
 require xorg-proto-common.inc
 
+SUMMARY = "Xscrnsaver: X Screen Saver extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the X Screen \
+Saver extension.  This extension allows an external \"screen saver\" \
+client to detect when the alternative image is to be displayed and to \
+provide the graphics."
 
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=eed49b78b15b436c933b6b8b054e3901 \
diff --git a/meta/recipes-graphics/xorg-proto/trapproto_3.4.3.bb b/meta/recipes-graphics/xorg-proto/trapproto_3.4.3.bb
index c4a0780..54d962e 100644
--- a/meta/recipes-graphics/xorg-proto/trapproto_3.4.3.bb
+++ b/meta/recipes-graphics/xorg-proto/trapproto_3.4.3.bb
@@ -1,5 +1,11 @@
 require xorg-proto-common.inc
 
+SUMMARY = "XTrap: X event trapping extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the X event \
+trapping extension.  This extension provides the interface which allows \
+for capture and synthesis of core input events."
+
 LICENSE = "MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=0a984c8e242256a12f3b8dac085893db"
 
diff --git a/meta/recipes-graphics/xorg-proto/videoproto_2.3.1.bb b/meta/recipes-graphics/xorg-proto/videoproto_2.3.1.bb
index 827aa27..5113243 100644
--- a/meta/recipes-graphics/xorg-proto/videoproto_2.3.1.bb
+++ b/meta/recipes-graphics/xorg-proto/videoproto_2.3.1.bb
@@ -1,5 +1,10 @@
 require xorg-proto-common.inc
 
+SUMMARY = "Xv: X Video extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the X Video \
+extension.  This extension alows for accerlated drawing of videos."
+
 LICENSE = "MIT & MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=59d089e37bf57b5206602da38f58ca5d"
 
diff --git a/meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.1.bb b/meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.1.bb
index 9b677e6..1b34a5d 100644
--- a/meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.1.bb
+++ b/meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.1.bb
@@ -1,5 +1,11 @@
 require xorg-proto-common.inc
 
+SUMMARY = "XC-MISC: X XC-Miscellaneous extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the XC-MISC \
+extension, which is used to get details of XID allocations within the \
+server."
+
 LICENSE = "MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=09d83047c15994e05db29b423ed6662e"
 
diff --git a/meta/recipes-graphics/xorg-proto/xextproto_7.1.2.bb b/meta/recipes-graphics/xorg-proto/xextproto_7.1.2.bb
index 2289744..b079736 100644
--- a/meta/recipes-graphics/xorg-proto/xextproto_7.1.2.bb
+++ b/meta/recipes-graphics/xorg-proto/xextproto_7.1.2.bb
@@ -1,5 +1,14 @@
 require xorg-proto-common.inc
 
+SUMMARY = "XExt: X Extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for several X \
+extensions.  These protocol extensions include DOUBLE-BUFFER, DPMS, \
+Extended-Visual-Information, LBX, MIT_SHM, MIT_SUNDRY-NONSTANDARD, \
+Multi-Buffering, SECURITY, SHAPE, SYNC, TOG-CUP, XC-APPGROUP, XC-MISC, \
+XTEST.  In addition a small set of utility functions are also \
+available."
+
 LICENSE = "MIT & MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=86f273291759d0ba2a22585cd1c06c53"
 
diff --git a/meta/recipes-graphics/xorg-proto/xf86bigfontproto_1.2.0.bb b/meta/recipes-graphics/xorg-proto/xf86bigfontproto_1.2.0.bb
index 4bf6b53..d80c0f1 100644
--- a/meta/recipes-graphics/xorg-proto/xf86bigfontproto_1.2.0.bb
+++ b/meta/recipes-graphics/xorg-proto/xf86bigfontproto_1.2.0.bb
@@ -1,5 +1,11 @@
 require xorg-proto-common.inc
 
+SUMMARY = "XFree86-BIGFONT: XFree86 Big Font extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the XFree86 \
+Big Font extension.  This extension makes larger font requests \
+possible."
+
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=e01e66e4b317088cf869bc98e6af4fb6"
 
diff --git a/meta/recipes-graphics/xorg-proto/xf86dgaproto_2.1.bb b/meta/recipes-graphics/xorg-proto/xf86dgaproto_2.1.bb
index 99f1f0e..f70d79d 100644
--- a/meta/recipes-graphics/xorg-proto/xf86dgaproto_2.1.bb
+++ b/meta/recipes-graphics/xorg-proto/xf86dgaproto_2.1.bb
@@ -1,5 +1,12 @@
 require xorg-proto-common.inc
 
+SUMMARY = "XFree86-DGA: XFree86 Direct Graphics Access extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the XFree86 \
+Direct Graphics Access extension. This extension allows direct graphics \
+access to a framebuffer-like region, as well as relative mouse \
+reporting."
+
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=e01e66e4b317088cf869bc98e6af4fb6"
 
diff --git a/meta/recipes-graphics/xorg-proto/xf86driproto_2.1.1.bb b/meta/recipes-graphics/xorg-proto/xf86driproto_2.1.1.bb
index dc4e758..5b38117 100644
--- a/meta/recipes-graphics/xorg-proto/xf86driproto_2.1.1.bb
+++ b/meta/recipes-graphics/xorg-proto/xf86driproto_2.1.1.bb
@@ -1,5 +1,12 @@
 require xorg-proto-common.inc
 
+SUMMARY = "XFree86-DRI: XFree86 Direct Rendering Infrastructure extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the XFree86 \
+Direct Rendering Infrastructure extension.  The XFree86-DRI extension is \
+used to organize direct rendering support or 3D clients and help \
+arbitrate requests."
+
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=ef103b9d951e39ff7e23d386e2011fa3 \
                     file://xf86driproto.h;endline=35;md5=42be3d8e6d429ab79172572bb0cff544"
diff --git a/meta/recipes-graphics/xorg-proto/xf86miscproto_0.9.3.bb b/meta/recipes-graphics/xorg-proto/xf86miscproto_0.9.3.bb
index 6046c7e..d4663ea 100644
--- a/meta/recipes-graphics/xorg-proto/xf86miscproto_0.9.3.bb
+++ b/meta/recipes-graphics/xorg-proto/xf86miscproto_0.9.3.bb
@@ -1,5 +1,12 @@
 require xorg-proto-common.inc
 
+SUMMARY = "XFree86-Misc: XFree86 miscellaneous extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the XFree \
+miscellaneous extension.  The XFree86-Misc extension provides a means to \
+access input device configuration settings specific to the XFree86/Xorg \
+DDX."
+
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=e01e66e4b317088cf869bc98e6af4fb6"
 
diff --git a/meta/recipes-graphics/xorg-proto/xf86rushproto_1.1.2.bb b/meta/recipes-graphics/xorg-proto/xf86rushproto_1.1.2.bb
index 6f090d4..1548bd0 100644
--- a/meta/recipes-graphics/xorg-proto/xf86rushproto_1.1.2.bb
+++ b/meta/recipes-graphics/xorg-proto/xf86rushproto_1.1.2.bb
@@ -1,5 +1,11 @@
 require xorg-proto-common.inc
 
+SUMMARY = "XFree86-Rush: XFree86 Rush extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the XFree86 \
+Rush extension.  This extension is there to allow Glide applications to \
+run."
+
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=e01e66e4b317088cf869bc98e6af4fb6"
 
diff --git a/meta/recipes-graphics/xorg-proto/xf86vidmodeproto_2.3.1.bb b/meta/recipes-graphics/xorg-proto/xf86vidmodeproto_2.3.1.bb
index f88e2bd..721e7b0 100644
--- a/meta/recipes-graphics/xorg-proto/xf86vidmodeproto_2.3.1.bb
+++ b/meta/recipes-graphics/xorg-proto/xf86vidmodeproto_2.3.1.bb
@@ -1,5 +1,11 @@
 require xorg-proto-common.inc
 
+SUMMARY = "XFree86-VM: XFree86 video mode extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the XFree86 \
+video mode extension.  This extension allows client applications to get \
+and set video mode timings."
+
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=499be2ff387a42f84628c35f311f1502"
 
diff --git a/meta/recipes-graphics/xorg-proto/xineramaproto_1.2.1.bb b/meta/recipes-graphics/xorg-proto/xineramaproto_1.2.1.bb
index d1f8cb4..a68e4f5 100644
--- a/meta/recipes-graphics/xorg-proto/xineramaproto_1.2.1.bb
+++ b/meta/recipes-graphics/xorg-proto/xineramaproto_1.2.1.bb
@@ -1,5 +1,12 @@
 require xorg-proto-common.inc
 
+SUMMARY = "Xinerama: Xinerama extension headers"
+
+DESCRIPTION = "This package provides the wire protocol for the Xinerama \
+extension.  This extension is used for retrieving information about \
+physical output devices which may be combined into a single logical X \
+screen."
+
 LICENSE = "MIT & MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=3e397a5326c83d5d0ebf5b3f87163ac6 \
                     file://panoramiXproto.h;endline=24;md5=098e0bc089368a988092b3cbda617a57"
diff --git a/meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb b/meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb
index 0e830eb..58520d9 100644
--- a/meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb
+++ b/meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb
@@ -1,5 +1,10 @@
 require xorg-proto-common.inc
 
+SUMMARY = "Xlib: C Language X interface headers"
+
+DESCRIPTION = "This package provides the basic headers for the X Window \
+System."
+
 LICENSE = "MIT & MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=93ae8952e7d02d855516fbf2efb9a0d2"
 
diff --git a/meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb b/meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb
index a42745f..23cef63 100644
--- a/meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb
+++ b/meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb
@@ -1,3 +1,9 @@
+SUMMARY = "Program to create dependencies in makefiles"
+
+DESCRIPTION = "The gccmakedep program calls 'gcc -M' to output makefile \
+rules describing the dependencies of each sourcefile, so that make knows \
+which object files must be recompiled when a dependency has changed."
+
 require xorg-util-common.inc
 LIC_FILES_CHKSUM = "file://Makefile.am;endline=20;md5=23c277396d690413245ebb89b18c5d4d"
 DESCRIPTION = "create dependencies in makefiles using 'gcc -M'"
diff --git a/meta/recipes-graphics/xorg-util/imake_1.0.4.bb b/meta/recipes-graphics/xorg-util/imake_1.0.4.bb
index d770590..9202317 100644
--- a/meta/recipes-graphics/xorg-util/imake_1.0.4.bb
+++ b/meta/recipes-graphics/xorg-util/imake_1.0.4.bb
@@ -1,6 +1,13 @@
 require xorg-util-common.inc
 
-DESCRIPTION = "C preprocessor interface to the make utility"
+SUMMARY = "C preprocessor interface to the make utility"
+
+DESCRIPTION = "Imake is used to generate Makefiles from a template, a \
+set of cpp macro functions, and a per-directory input file called an \
+Imakefile. This allows machine dependencies (such as compiler options, \
+alternate command names, and special make rules) to be kept separate \
+from the descriptions of the various items to be built."
+
 DEPENDS = "util-macros"
 RDEPENDS_${PN} = "perl xproto"
 
diff --git a/meta/recipes-graphics/xorg-util/makedepend_1.0.3.bb b/meta/recipes-graphics/xorg-util/makedepend_1.0.3.bb
index a103700..342d1b8 100644
--- a/meta/recipes-graphics/xorg-util/makedepend_1.0.3.bb
+++ b/meta/recipes-graphics/xorg-util/makedepend_1.0.3.bb
@@ -1,6 +1,14 @@
 require xorg-util-common.inc
 
-DESCRIPTION = "create dependencies in makefiles"
+SUMMARY = "create dependencies in makefiles"
+
+DESCRIPTION = "The makedepend program reads each sourcefile in sequence \
+and parses it like a C-preprocessor, processing all #include, #define, \
+#undef, #ifdef, #ifndef, #endif, #if, #elif and #else directives so that \
+it can correctly tell which #include, directives would be used in a \
+compilation. Any #include, directives can reference files having other \
+#include directives, and parsing will occur in these files as well."
+
 DEPENDS = "xproto util-macros"
 PR = "r0"
 PE = "1"
diff --git a/meta/recipes-graphics/xorg-util/util-macros_1.11.0.bb b/meta/recipes-graphics/xorg-util/util-macros_1.11.0.bb
index 7130ea2..8242326 100644
--- a/meta/recipes-graphics/xorg-util/util-macros_1.11.0.bb
+++ b/meta/recipes-graphics/xorg-util/util-macros_1.11.0.bb
@@ -1,4 +1,6 @@
-DESCRIPTION = "X autotools macros"
+SUMMARY = "X autotools macros"
+
+DESCRIPTION = "M4 autotools macros used by various X.org programs."
 
 require xorg-util-common.inc
 
diff --git a/meta/recipes-graphics/xrestop/xrestop_0.4.bb b/meta/recipes-graphics/xrestop/xrestop_0.4.bb
index 915a375..bd4c25c 100644
--- a/meta/recipes-graphics/xrestop/xrestop_0.4.bb
+++ b/meta/recipes-graphics/xrestop/xrestop_0.4.bb
@@ -1,4 +1,7 @@
+SUMMARY = "XRes: A top-like resource usage tool for X"
+
 DESCRIPTION = "top-like statistics of X11 server resource usage by clients"
+
 HOMEPAGE = "http://www.freedesktop.org/wiki/Software/xrestop"
 BUGTRACKER = "https://bugs.freedesktop.org/"
 
diff --git a/meta/recipes-graphics/xtscal/xtscal_0.6.3.bb b/meta/recipes-graphics/xtscal/xtscal_0.6.3.bb
index 539399e..75013a2 100644
--- a/meta/recipes-graphics/xtscal/xtscal_0.6.3.bb
+++ b/meta/recipes-graphics/xtscal/xtscal_0.6.3.bb
@@ -1,4 +1,7 @@
-DESCRIPTION = "Touchscreen calibration utility"
+SUMMARY = "Touchscreen calibration utility"
+
+DESCRIPTION = "Basic touchscreen calibration utility"
+
 HOMEPAGE = "http://gpe.linuxtogo.org"
 BUGTRACKER = "http://bugs.linuxtogo.org"
 LICENSE = "GPLv2 & GPLv2+"
-- 
1.7.3.4


