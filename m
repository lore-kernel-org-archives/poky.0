Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 791094C811D4
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 02:49:42 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 17 Nov 2010 00:49:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,210,1288594800"; d="scan'208";a="678301514"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga001.jf.intel.com with ESMTP; 17 Nov 2010 00:49:41 -0800
Message-Id: <b996c93a33c44a4774ef11693723ae490d0d7e78.1289982119.git.ke.yu@intel.com>
In-Reply-To: <cover.1289982119.git.ke.yu@intel.com>
References: <cover.1289982119.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Wed, 17 Nov 2010 15:58:11 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 10/10] cairo dependency fix
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
X-List-Received-Date: Wed, 17 Nov 2010 08:49:42 -0000

Due to bug 540, when cairo upgrade to 1.10.0, some recpies that depends on cairo can not pass the version check by rpm. the reason is still unknown yet. Good thing is, if rebuild these recpies, this issue will disapprear. So this patch increse the PR of those recipes, to bypass this issue.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/recipes-gnome/gtk+/gtk+_2.20.1.bb             |    2 +-
 meta/recipes-gnome/librsvg/librsvg_2.26.3.bb       |    2 +-
 meta/recipes-graphics/pango/pango_1.28.0.bb        |    2 +-
 meta/recipes-kernel/lttng/lttng-viewer_0.12.35.bb  |    2 +-
 .../gstreamer/gstreamer_0.10.30.bb                 |    2 +-
 .../gtk-engines/gtk-sato-engine_svn.bb             |    2 +-
 meta/recipes-sato/leafpad/leafpad_0.8.17.bb        |    2 +-
 meta/recipes-sato/libowl/libowl_svn.bb             |    2 +-
 .../matchbox-keyboard/matchbox-keyboard_svn.bb     |    2 +-
 .../matchbox-panel-2/matchbox-panel-2_svn.bb       |    2 +-
 .../matchbox-terminal/matchbox-terminal_svn.bb     |    2 +-
 .../recipes-sato/owl-video-widget/libowl-av_svn.bb |    2 +-
 meta/recipes-sato/pcmanfm/pcmanfm_0.9.7.bb         |    2 +-
 meta/recipes-sato/screenshot/screenshot_svn.bb     |    2 ++
 meta/recipes-sato/webkit/webkit-gtk_svn.bb         |    2 +-
 meta/recipes-support/libfm/libfm_0.1.12.bb         |    2 +-
 meta/recipes-support/libsoup/libsoup-2.4_2.31.2.bb |    2 +-
 17 files changed, 18 insertions(+), 16 deletions(-)

diff --git a/meta/recipes-gnome/gtk+/gtk+_2.20.1.bb b/meta/recipes-gnome/gtk+/gtk+_2.20.1.bb
index b32d8e4..7a0222d 100644
--- a/meta/recipes-gnome/gtk+/gtk+_2.20.1.bb
+++ b/meta/recipes-gnome/gtk+/gtk+_2.20.1.bb
@@ -4,7 +4,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7 \
                     file://gtk/gtk.h;endline=27;md5=c59e0b4490dd135a5726ebf851f9b17f \
                     file://gdk/gdk.h;endline=27;md5=07db285ec208fb3e0bf7d861b0614202 \
                     file://tests/testgtk.c;endline=27;md5=262db5db5f776f9863e56df31423e24c"
-PR = "r1"
+PR = "r2"
 
 SRC_URI = "http://download.gnome.org/sources/gtk+/2.20/gtk+-${PV}.tar.bz2 \
            file://xsettings.patch;patch=1 \
diff --git a/meta/recipes-gnome/librsvg/librsvg_2.26.3.bb b/meta/recipes-gnome/librsvg/librsvg_2.26.3.bb
index 41e23b1..213da0c 100644
--- a/meta/recipes-gnome/librsvg/librsvg_2.26.3.bb
+++ b/meta/recipes-gnome/librsvg/librsvg_2.26.3.bb
@@ -8,7 +8,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
 
 SECTION = "x11/utils"
 DEPENDS = "gtk+ libcroco cairo libxml2 popt"
-PR = "r0"
+PR = "r1"
 
 EXTRA_OECONF = "--disable-mozilla-plugin --without-svgz --without-croco --disable-gnome-vfs"
 
diff --git a/meta/recipes-graphics/pango/pango_1.28.0.bb b/meta/recipes-graphics/pango/pango_1.28.0.bb
index ae914ff..1f4a1ea 100644
--- a/meta/recipes-graphics/pango/pango_1.28.0.bb
+++ b/meta/recipes-graphics/pango/pango_1.28.0.bb
@@ -2,7 +2,7 @@ require pango.inc
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7"
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI += "file://no-tests.patch"
 
diff --git a/meta/recipes-kernel/lttng/lttng-viewer_0.12.35.bb b/meta/recipes-kernel/lttng/lttng-viewer_0.12.35.bb
index 71bcb80..7b38bb1 100644
--- a/meta/recipes-kernel/lttng/lttng-viewer_0.12.35.bb
+++ b/meta/recipes-kernel/lttng/lttng-viewer_0.12.35.bb
@@ -8,7 +8,7 @@ LICENSE = "GPLv2 & LGPLv2.1"
 LIC_FILES_CHKSUM = "file://COPYING;md5=f650d5f5af1e9648fe0b40e290d3adbb \
                     file://ltt/ltt.h;beginline=2;endline=18;md5=8b7da9190028c50396d97fc85bad0da9 \
                     file://lttv/lttv/traceset.c;beginline=2;endline=17;md5=bcab42863b64b41d153bf81bbe2490a6"
-PR = "r0"
+PR = "r1"
 DEPENDS = "gtk+ pango popt"
 
 SECTION = "devel"
diff --git a/meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb b/meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb
index 38e28fa..452d2f1 100644
--- a/meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb
+++ b/meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb
@@ -9,7 +9,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=55ca817ccb7d5b5b66355690e9abc605 \
                     file://gst/gst.h;beginline=1;endline=21;md5=8e5fe5e87d33a04479fde862e238eaa4"
 DEPENDS = "glib-2.0 gettext libxml2 bison-native flex-native"
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "http://gstreamer.freedesktop.org/src/gstreamer/gstreamer-${PV}.tar.bz2 \
            file://check_fix.patch;patch=1 \
diff --git a/meta/recipes-sato/gtk-engines/gtk-sato-engine_svn.bb b/meta/recipes-sato/gtk-engines/gtk-sato-engine_svn.bb
index a7ee6c6..6e27fac 100644
--- a/meta/recipes-sato/gtk-engines/gtk-sato-engine_svn.bb
+++ b/meta/recipes-sato/gtk-engines/gtk-sato-engine_svn.bb
@@ -5,7 +5,7 @@ LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=2d5025d4aa3495befef8f17206a5b0a1 \
                     file://src/sato-main.c;endline=24;md5=b5e5dddebca570275becb51b526e4c5a"
 
 PV = "0.3.2+svnr${SRCREV}"
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "svn://svn.o-hand.com/repos/sato/trunk;module=gtk-engine;proto=http"
 
diff --git a/meta/recipes-sato/leafpad/leafpad_0.8.17.bb b/meta/recipes-sato/leafpad/leafpad_0.8.17.bb
index 5407b9e..8ba3b4e 100644
--- a/meta/recipes-sato/leafpad/leafpad_0.8.17.bb
+++ b/meta/recipes-sato/leafpad/leafpad_0.8.17.bb
@@ -11,7 +11,7 @@ DEPENDS = "gtk+ intltool-native"
 DEPENDS_append_poky = " libowl"
 SRC_URI = "http://savannah.nongnu.org/download/${PN}/${PN}-${PV}.tar.gz \
 	   file://leafpad.desktop"
-PR = "r0"
+PR = "r1"
 
 SRC_URI_append_poky += " file://owl-menu.patch;apply=yes "
 
diff --git a/meta/recipes-sato/libowl/libowl_svn.bb b/meta/recipes-sato/libowl/libowl_svn.bb
index 31a142c..8b393f2 100644
--- a/meta/recipes-sato/libowl/libowl_svn.bb
+++ b/meta/recipes-sato/libowl/libowl_svn.bb
@@ -11,7 +11,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
 SECTION = "libs"
 DEPENDS = "gtk+"
 PV = "0.0+svnr${SRCREV}"
-PR = "r6"
+PR = "r7"
 
 SRC_URI = "svn://svn.o-hand.com/repos/misc/trunk;module=${PN};proto=http"
 
diff --git a/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_svn.bb b/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_svn.bb
index 0425fec..32d7956 100644
--- a/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_svn.bb
+++ b/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_svn.bb
@@ -11,7 +11,7 @@ DEPENDS = "libfakekey expat libxft gtk+ matchbox-panel-2"
 RDEPENDS = "formfactor dbus-wait"
 SECTION = "x11"
 PV = "0.0+svnr${SRCREV}"
-PR = "r4"
+PR = "r5"
 
 SRC_URI = "svn://svn.o-hand.com/repos/matchbox/trunk;module=${PN};proto=http \
            file://configure_fix.patch;patch=1;maxrev=1819 \
diff --git a/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_svn.bb b/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_svn.bb
index 4599863..d9e31fc 100644
--- a/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_svn.bb
+++ b/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_svn.bb
@@ -13,7 +13,7 @@ DEPENDS += " ${@base_contains("MACHINE_FEATURES", "acpi", "libacpi", "",d)}"
 DEPENDS += " ${@base_contains("MACHINE_FEATURES", "apm", "apmd", "",d)}"
 
 PV = "0.0+svnr${SRCREV}"
-PR = "r5"
+PR = "r6"
 
 RPROVIDES_${PN} = "matchbox-panel"
 RREPLACES_${PN} = "matchbox-panel"
diff --git a/meta/recipes-sato/matchbox-terminal/matchbox-terminal_svn.bb b/meta/recipes-sato/matchbox-terminal/matchbox-terminal_svn.bb
index 169223f..0603ae3 100644
--- a/meta/recipes-sato/matchbox-terminal/matchbox-terminal_svn.bb
+++ b/meta/recipes-sato/matchbox-terminal/matchbox-terminal_svn.bb
@@ -9,7 +9,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
 DEPENDS = "gtk+ vte"
 SECTION = "x11/utils"
 PV = "0.0+svnr${SRCREV}"
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "svn://svn.o-hand.com/repos/matchbox/trunk;module=${PN};proto=http"
 
diff --git a/meta/recipes-sato/owl-video-widget/libowl-av_svn.bb b/meta/recipes-sato/owl-video-widget/libowl-av_svn.bb
index e00d3b6..3e8757d 100644
--- a/meta/recipes-sato/owl-video-widget/libowl-av_svn.bb
+++ b/meta/recipes-sato/owl-video-widget/libowl-av_svn.bb
@@ -13,7 +13,7 @@ RDEPENDS = "gst-meta-base"
 RRECOMMENDS = "gst-meta-audio gst-meta-video"
 
 PV = "0.0+svnr${SRCREV}"
-PR = "r4"
+PR = "r5"
 
 S = "${WORKDIR}/${PN}"
 
diff --git a/meta/recipes-sato/pcmanfm/pcmanfm_0.9.7.bb b/meta/recipes-sato/pcmanfm/pcmanfm_0.9.7.bb
index 46e46da..39956e9 100644
--- a/meta/recipes-sato/pcmanfm/pcmanfm_0.9.7.bb
+++ b/meta/recipes-sato/pcmanfm/pcmanfm_0.9.7.bb
@@ -12,7 +12,7 @@ PRIORITY = "optional"
 DEPENDS = "gtk+ startup-notification libfm"
 DEPENDS_append_poky = " libowl"
 
-PR = "r0"
+PR = "r1"
 
 COMPATIBLE_HOST = '(x86_64.*|i.86.*|arm.*|mips.*|powerpc.*)-(linux|freebsd.*)'
 
diff --git a/meta/recipes-sato/screenshot/screenshot_svn.bb b/meta/recipes-sato/screenshot/screenshot_svn.bb
index a95ba2d..c1c675d 100644
--- a/meta/recipes-sato/screenshot/screenshot_svn.bb
+++ b/meta/recipes-sato/screenshot/screenshot_svn.bb
@@ -11,6 +11,8 @@ PRIORITY = "optional"
 DEPENDS = "matchbox-panel-2"
 PV = "0.0+svnr${SRCREV}"
 
+PR = "r1"
+
 SRC_URI = "svn://svn.o-hand.com/repos/misc/trunk;module=${PN};proto=http"
 
 S = ${WORKDIR}/${PN}
diff --git a/meta/recipes-sato/webkit/webkit-gtk_svn.bb b/meta/recipes-sato/webkit/webkit-gtk_svn.bb
index fe31b9c..1287f8a 100644
--- a/meta/recipes-sato/webkit/webkit-gtk_svn.bb
+++ b/meta/recipes-sato/webkit/webkit-gtk_svn.bb
@@ -13,7 +13,7 @@ DEPENDS_darwin8 = "curl icu libxml2 cairo libxslt libidn gnutls gtk+ gstreamer f
 SRCREV_FORMAT = "webcore-rwebkit"
 
 PV = "1.3.2+svnr${SRCREV}"
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "\
   svn://svn.webkit.org/repository/webkit/trunk/;module=JavaScriptCore;proto=http \
diff --git a/meta/recipes-support/libfm/libfm_0.1.12.bb b/meta/recipes-support/libfm/libfm_0.1.12.bb
index 83e6af8..2b354da 100644
--- a/meta/recipes-support/libfm/libfm_0.1.12.bb
+++ b/meta/recipes-support/libfm/libfm_0.1.12.bb
@@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
 SECTION = "x11/libs"
 DEPENDS = "gtk+ menu-cache intltool"
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/pcmanfm/libfm-${PV}.tar.gz"
 
diff --git a/meta/recipes-support/libsoup/libsoup-2.4_2.31.2.bb b/meta/recipes-support/libsoup/libsoup-2.4_2.31.2.bb
index 9a00e07..4fb282d 100644
--- a/meta/recipes-support/libsoup/libsoup-2.4_2.31.2.bb
+++ b/meta/recipes-support/libsoup/libsoup-2.4_2.31.2.bb
@@ -6,7 +6,7 @@ LICENSE = "LGPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=55ca817ccb7d5b5b66355690e9abc605"
 
 SECTION = "x11/gnome/libs"
-PR = "r0"
+PR = "r1"
 
 DEPENDS = "glib-2.0 gnutls libxml2 libproxy sqlite3 libgnome-keyring"
 
-- 
1.7.0.4


