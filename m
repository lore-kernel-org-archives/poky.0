Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 78A024C811E7
	for <poky@yoctoproject.org>; Mon, 27 Dec 2010 07:51:16 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Dec 2010 05:51:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,234,1291622400"; d="scan'208";a="691068213"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 27 Dec 2010 05:51:15 -0800
Message-Id: <81d793a8a66f5818b9eeb4f6579df24a245f15c3.1293457442.git.ke.yu@intel.com>
In-Reply-To: <cover.1293457442.git.ke.yu@intel.com>
References: <cover.1293457442.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Mon, 27 Dec 2010 13:28:09 +0800
Date: Mon, 27 Dec 2010 21:58:11 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 6/8] recpies: use SRCPV instead of SRCREV for PV
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
X-List-Received-Date: Mon, 27 Dec 2010 13:51:17 -0000

SRCPV is intended being used by PV, some recipes still use
SRCREV for PV, which is not correct. This patch fix all the
misusage.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../recipes-connectivity/opensync/libsync_svn.bb   |    2 +-
 .../matchbox-themes-extra_svn.bb                   |    2 +-
 .../eee-acpi-scripts/eee-acpi-scripts_git.bb       |    2 +-
 meta/recipes-bsp/uboot/u-boot-omap3_git.bb         |    2 +-
 meta/recipes-bsp/x-load/x-load_git.bb              |    2 +-
 meta/recipes-bsp/zaurusd/zaurusd_svn.bb            |    2 +-
 meta/recipes-connectivity/gsm/gsmd.inc             |    2 +-
 meta/recipes-connectivity/gypsy/gypsy_svn.bb       |    2 +-
 meta/recipes-core/dbus-wait/dbus-wait_svn.bb       |    2 +-
 meta/recipes-core/psplash/psplash_svn.bb           |    2 +-
 meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb |    2 +-
 meta/recipes-devtools/opkg/opkg_svn.bb             |    2 +-
 meta/recipes-devtools/tcf-agent/tcf-agent_svn.bb   |    2 +-
 meta/recipes-devtools/ubootchart/ubootchart_svn.bb |    2 +-
 meta/recipes-gnome/gnome/gconf-dbus_svn.bb         |    2 +-
 .../gnome/gobject-introspection_git.bb             |    2 +-
 meta/recipes-gnome/gtkhtml2/gtkhtml2_svn.bb        |    2 +-
 meta/recipes-graphics/drm/libdrm_git.bb            |    2 +-
 meta/recipes-graphics/fstests/fstests_svn.bb       |    2 +-
 meta/recipes-graphics/libfakekey/libfakekey_svn.bb |    2 +-
 .../libmatchbox/libmatchbox_svn.bb                 |    2 +-
 .../matchbox-wm-2/matchbox-wm-2_svn.bb             |    2 +-
 .../matchbox-wm/matchbox-wm_svn.bb                 |    2 +-
 meta/recipes-graphics/xcb/libxcb_git.bb            |    2 +-
 meta/recipes-graphics/xcb/xcb-proto_git.bb         |    2 +-
 .../xvideo-tests/xvideo-tests_svn.bb               |    2 +-
 .../linux-firmware/linux-firmware_git.bb           |    2 +-
 meta/recipes-kernel/linux/linux-omap2_git.bb       |    2 +-
 meta/recipes-kernel/linux/linux-omap3-pm_git.bb    |    2 +-
 meta/recipes-kernel/linux/linux-omap3_git.bb       |    2 +-
 meta/recipes-kernel/oprofile/oprofileui-svn.inc    |    2 +-
 meta/recipes-sato/gaku/gaku_svn.bb                 |    2 +-
 .../gtk-engines/gtk-sato-engine_svn.bb             |    2 +-
 meta/recipes-sato/libowl/libowl_svn.bb             |    2 +-
 .../matchbox-config-gtk/matchbox-config-gtk_svn.bb |    2 +-
 .../matchbox-desktop-sato_svn.bb                   |    2 +-
 .../matchbox-desktop/matchbox-desktop_svn.bb       |    2 +-
 .../matchbox-keyboard/matchbox-keyboard_svn.bb     |    2 +-
 .../matchbox-panel-2/matchbox-panel-2_svn.bb       |    2 +-
 .../matchbox-stroke/matchbox-stroke_svn.bb         |    2 +-
 .../matchbox-terminal/matchbox-terminal_svn.bb     |    2 +-
 .../matchbox-theme-sato-2_svn.bb                   |    2 +-
 .../matchbox-theme-sato/matchbox-theme-sato_svn.bb |    2 +-
 .../recipes-sato/owl-video-widget/libowl-av_svn.bb |    2 +-
 .../recipes-sato/owl-video-widget/owl-video_svn.bb |    2 +-
 meta/recipes-sato/puzzles/oh-puzzles_svn.bb        |    2 +-
 meta/recipes-sato/screenshot/screenshot_svn.bb     |    2 +-
 .../settings-daemon/settings-daemon_svn.bb         |    2 +-
 meta/recipes-sato/web/web-webkit_svn.bb            |    2 +-
 meta/recipes-sato/web/web_svn.bb                   |    2 +-
 meta/recipes-sato/webkit/webkit-gtk_svn.bb         |    2 +-
 meta/recipes-support/libgdbus/libgdbus_git.bb      |    2 +-
 52 files changed, 52 insertions(+), 52 deletions(-)

diff --git a/meta-demoapps/recipes-connectivity/opensync/libsync_svn.bb b/meta-demoapps/recipes-connectivity/opensync/libsync_svn.bb
index 74ca752..02961b9 100644
--- a/meta-demoapps/recipes-connectivity/opensync/libsync_svn.bb
+++ b/meta-demoapps/recipes-connectivity/opensync/libsync_svn.bb
@@ -7,7 +7,7 @@ DEPENDS = "glib-2.0 gtk+ libglade libopensync avahi"
 RRECOMMENDS = "\
 	libopensync-plugin-file \
 	"
-PV = "0.0+svnr${SRCREV}"
+PV = "0.0+svnr${SRCPV}"
 
 SRC_URI = "svn://svn.o-hand.com/repos/sync/trunk;module=sync;proto=http"
 
diff --git a/meta-demoapps/recipes-sato/matchbox-themes-extra/matchbox-themes-extra_svn.bb b/meta-demoapps/recipes-sato/matchbox-themes-extra/matchbox-themes-extra_svn.bb
index 6a9f18b..e4e2f73 100644
--- a/meta-demoapps/recipes-sato/matchbox-themes-extra/matchbox-themes-extra_svn.bb
+++ b/meta-demoapps/recipes-sato/matchbox-themes-extra/matchbox-themes-extra_svn.bb
@@ -2,7 +2,7 @@ DESCRIPTION = "Matchbox window manager extra themes"
 LICENSE = "GPL"
 DEPENDS = "matchbox-wm"
 SECTION = "x11/wm"
-PV = "0.3+svnr${SRCREV}"
+PV = "0.3+svnr${SRCPV}"
 
 SRC_URI = "svn://svn.o-hand.com/repos/matchbox/trunk;module=matchbox-themes-extra;proto=http"
 S = "${WORKDIR}/${PN}"
diff --git a/meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb b/meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb
index d186727..d1c2bef 100644
--- a/meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb
+++ b/meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb
@@ -5,7 +5,7 @@ SECTION = "base"
 LICENSE="GPL"
 LIC_FILES_CHKSUM = "file://debian/copyright;md5=77ef83ab5f4af938a93edb61f7b74f2c"
 
-PV = "1.1.11+git${SRCREV}"
+PV = "1.1.11+git${SRCPV}"
 PR = "r3"
 
 RDEPENDS = "pm-utils"
diff --git a/meta/recipes-bsp/uboot/u-boot-omap3_git.bb b/meta/recipes-bsp/uboot/u-boot-omap3_git.bb
index a083b16..c0a7738 100644
--- a/meta/recipes-bsp/uboot/u-boot-omap3_git.bb
+++ b/meta/recipes-bsp/uboot/u-boot-omap3_git.bb
@@ -2,7 +2,7 @@ require u-boot.inc
 
 FILESDIR = "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/u-boot-omap3-git/${MACHINE}"
 
-PV = "2008.10-rc2+${PR}+git${SRCREV}"
+PV = "2008.10-rc2+${PR}+git${SRCPV}"
 PR="r2"
 
 SRC_URI = "git://gitorious.org/u-boot-omap3/mainline.git;branch=master;protocol=git"
diff --git a/meta/recipes-bsp/x-load/x-load_git.bb b/meta/recipes-bsp/x-load/x-load_git.bb
index 49f867e..f124e2b 100644
--- a/meta/recipes-bsp/x-load/x-load_git.bb
+++ b/meta/recipes-bsp/x-load/x-load_git.bb
@@ -2,7 +2,7 @@ require x-load.inc
 
 FILESDIR = "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/x-load-git/${MACHINE}"
 
-PV = "1.42+${PR}+git${SRCREV}"
+PV = "1.42+${PR}+git${SRCPV}"
 PR="r12"
 
 SRC_URI = "git://www.sakoman.net/git/x-load-omap3.git;branch=master;protocol=git"
diff --git a/meta/recipes-bsp/zaurusd/zaurusd_svn.bb b/meta/recipes-bsp/zaurusd/zaurusd_svn.bb
index 523f72d..1c74f7f 100644
--- a/meta/recipes-bsp/zaurusd/zaurusd_svn.bb
+++ b/meta/recipes-bsp/zaurusd/zaurusd_svn.bb
@@ -4,7 +4,7 @@ LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 DEPENDS = "tslib"
 RDEPENDS = "xrandr"
-PV = "0.0+svnr${SRCREV}"
+PV = "0.0+svnr${SRCPV}"
 
 SRC_URI = "svn://svn.o-hand.com/repos/misc/trunk;module=zaurusd;proto=http"
 
diff --git a/meta/recipes-connectivity/gsm/gsmd.inc b/meta/recipes-connectivity/gsm/gsmd.inc
index 9818188..20c366b 100644
--- a/meta/recipes-connectivity/gsm/gsmd.inc
+++ b/meta/recipes-connectivity/gsm/gsmd.inc
@@ -9,7 +9,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
 SECTION = "libs/gsm"
 PROVIDES += "gsmd"
 RPROVIDES_${PN} = "libgsmd0 libgsmd gsmd gsmd-devel"
-PV = "0.1+svnr${SRCREV}"
+PV = "0.1+svnr${SRCPV}"
 PR = "r0"
 
 SRC_URI = "svn://svn.openmoko.org/trunk/src/target;module=gsm;proto=http \
diff --git a/meta/recipes-connectivity/gypsy/gypsy_svn.bb b/meta/recipes-connectivity/gypsy/gypsy_svn.bb
index ac1b6bc..2e9840a 100644
--- a/meta/recipes-connectivity/gypsy/gypsy_svn.bb
+++ b/meta/recipes-connectivity/gypsy/gypsy_svn.bb
@@ -2,7 +2,7 @@ require gypsy.inc
 
 DEFAULT_PREFERENCE = "-1"
 
-PV = "0.0+svnr${SRCREV}"
+PV = "0.0+svnr${SRCPV}"
 S = "${WORKDIR}/${PN}"
 
 SRC_URI = "svn://svn.o-hand.com/repos/${PN}/trunk;module=${PN};proto=http \
diff --git a/meta/recipes-core/dbus-wait/dbus-wait_svn.bb b/meta/recipes-core/dbus-wait/dbus-wait_svn.bb
index 10e1db8..9fa4c55 100644
--- a/meta/recipes-core/dbus-wait/dbus-wait_svn.bb
+++ b/meta/recipes-core/dbus-wait/dbus-wait_svn.bb
@@ -4,7 +4,7 @@ SECTION = "base"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
 DEPENDS = "dbus"
-PV = "0.0+svnr${SRCREV}"
+PV = "0.0+svnr${SRCPV}"
 PR = "r2"
 
 SRC_URI = "svn://svn.o-hand.com/repos/misc/trunk;module=dbus-wait;proto=http"
diff --git a/meta/recipes-core/psplash/psplash_svn.bb b/meta/recipes-core/psplash/psplash_svn.bb
index 1ca5cf6..8c7cc75 100644
--- a/meta/recipes-core/psplash/psplash_svn.bb
+++ b/meta/recipes-core/psplash/psplash_svn.bb
@@ -5,7 +5,7 @@ SECTION = "base"
 LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://psplash.h;md5=a87c39812c1e37f3451567cc29a29c8f"
 
-PV = "0.0+svnr${SRCREV}"
+PV = "0.0+svnr${SRCPV}"
 PR = "r5"
 
 SRC_URI = "svn://svn.o-hand.com/repos/misc/trunk;module=psplash;proto=http \
diff --git a/meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb b/meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb
index 087d254..52ce234 100644
--- a/meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb
+++ b/meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
                     file://opkg.py;beginline=1;endline=18;md5=15917491ad6bf7acc666ca5f7cc1e083"
 RDEPENDS = "python"
 RDEPENDS_virtclass-native = ""
-PV = "0.1.8+svnr${SRCREV}"
+PV = "0.1.8+svnr${SRCPV}"
 PR = "r1"
 
 SRC_URI = "svn://svn.openmoko.org/trunk/src/host/;module=opkg-utils;proto=http \
diff --git a/meta/recipes-devtools/opkg/opkg_svn.bb b/meta/recipes-devtools/opkg/opkg_svn.bb
index 7a9e90e..5096345 100644
--- a/meta/recipes-devtools/opkg/opkg_svn.bb
+++ b/meta/recipes-devtools/opkg/opkg_svn.bb
@@ -16,7 +16,7 @@ SRC_URI = "svn://opkg.googlecode.com/svn;module=trunk;proto=http \
 
 S = "${WORKDIR}/trunk"
 
-PV = "0.1.8+svnr${SRCREV}"
+PV = "0.1.8+svnr${SRCPV}"
 PR = "r1"
 
 PACKAGES =+ "libopkg-dev libopkg update-alternatives-cworth"
diff --git a/meta/recipes-devtools/tcf-agent/tcf-agent_svn.bb b/meta/recipes-devtools/tcf-agent/tcf-agent_svn.bb
index b4c70ec..6f06a9c 100644
--- a/meta/recipes-devtools/tcf-agent/tcf-agent_svn.bb
+++ b/meta/recipes-devtools/tcf-agent/tcf-agent_svn.bb
@@ -6,7 +6,7 @@ LICENSE = "EPLv1.0 | EDLv1.0"
 LIC_FILES_CHKSUM = "file://../epl-v10.html;md5=7aa4215a330a0a4f6a1cbf8da1a0879f \
                     file://../agent/edl-v10.html;md5=522a390a83dc186513f0500543ad3679"
 
-PV = "0.3.0+svnr${SRCREV}"
+PV = "0.3.0+svnr${SRCPV}"
 PR = "r0"
 
 SRC_URI = "svn://dev.eclipse.org/svnroot/dsdp/org.eclipse.tm.tcf/;module=tags/0.3.0/;proto=http \
diff --git a/meta/recipes-devtools/ubootchart/ubootchart_svn.bb b/meta/recipes-devtools/ubootchart/ubootchart_svn.bb
index 6897f18..269b910 100644
--- a/meta/recipes-devtools/ubootchart/ubootchart_svn.bb
+++ b/meta/recipes-devtools/ubootchart/ubootchart_svn.bb
@@ -2,7 +2,7 @@ DESCRIPTION = "A boot profiling tool"
 HOMEPAGE = "http://code.google.com/p/ubootchart/"
 LICENSE = "GPLv3"
 LIC_FILES_CHKSUM = "file://COPYING;md5=8f0e2cd40e05189ec81232da84bd6e1a"
-PV = "0.0+r${SRCREV}"
+PV = "0.0+r${SRCPV}"
 PR = "r4"
 
 #RRECOMMENDS = "acct"
diff --git a/meta/recipes-gnome/gnome/gconf-dbus_svn.bb b/meta/recipes-gnome/gnome/gconf-dbus_svn.bb
index 879a0bb..9fdd82c 100644
--- a/meta/recipes-gnome/gnome/gconf-dbus_svn.bb
+++ b/meta/recipes-gnome/gnome/gconf-dbus_svn.bb
@@ -8,7 +8,7 @@ PROVIDES = "gconf"
 RPROVIDES_${PN} = "gconf"
 RPROVIDES_${PN}-dev = "gconf-dev"
 
-PV = "2.16.0+svnr${SRCREV}"
+PV = "2.16.0+svnr${SRCPV}"
 
 SRC_URI = "svn://developer.imendio.com/svn/gconf-dbus;module=trunk;proto=http"
 S = "${WORKDIR}/trunk"
diff --git a/meta/recipes-gnome/gnome/gobject-introspection_git.bb b/meta/recipes-gnome/gnome/gobject-introspection_git.bb
index 81d279a..49c0ed8 100644
--- a/meta/recipes-gnome/gnome/gobject-introspection_git.bb
+++ b/meta/recipes-gnome/gnome/gobject-introspection_git.bb
@@ -8,7 +8,7 @@ SRC_URI_virtclass-native = "git://git.gnome.org/gobject-introspection;protocol=g
 LICENSE = "GPLv2+ & LGPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING.tools;md5=94d55d512a9ba36caa9b7df079bae19f \
 		    file://COPYING.lib;md5=3bf50002aefd002f49e7bb854063f7e7"
-PV = "0.0+git${SRCREV}"
+PV = "0.0+git${SRCPV}"
 PR = "r3"
 
 S = "${WORKDIR}/git"
diff --git a/meta/recipes-gnome/gtkhtml2/gtkhtml2_svn.bb b/meta/recipes-gnome/gtkhtml2/gtkhtml2_svn.bb
index a217775..ac921bf 100644
--- a/meta/recipes-gnome/gtkhtml2/gtkhtml2_svn.bb
+++ b/meta/recipes-gnome/gtkhtml2/gtkhtml2_svn.bb
@@ -3,7 +3,7 @@ DEPENDS = "gtk+ glib-2.0 libxml2"
 DESCRIPTION = "A GTK+ HTML rendering library."
 LICENSE = "LGPLv2"
 LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=55ca817ccb7d5b5b66355690e9abc605"
-PV = "2.11.0+svnr${SRCREV}"
+PV = "2.11.0+svnr${SRCPV}"
 PR = "r1"
 
 SRC_URI = "svn://anonymous@svn.gnome.org/svn/gtkhtml2/;module=trunk \
diff --git a/meta/recipes-graphics/drm/libdrm_git.bb b/meta/recipes-graphics/drm/libdrm_git.bb
index d80dd5f..866da5d 100644
--- a/meta/recipes-graphics/drm/libdrm_git.bb
+++ b/meta/recipes-graphics/drm/libdrm_git.bb
@@ -4,5 +4,5 @@ SRC_URI = "git://anongit.freedesktop.org/git/mesa/drm;protocol=git"
 
 S = ${WORKDIR}/git
 
-PV = "2.4.15+git${SRCREV}"
+PV = "2.4.15+git${SRCPV}"
 PR = "r0"
diff --git a/meta/recipes-graphics/fstests/fstests_svn.bb b/meta/recipes-graphics/fstests/fstests_svn.bb
index 9d26e07..efa5c1f 100644
--- a/meta/recipes-graphics/fstests/fstests_svn.bb
+++ b/meta/recipes-graphics/fstests/fstests_svn.bb
@@ -3,7 +3,7 @@ HOMEPAGE = "http://www.o-hand.com"
 SECTION = "devel"
 LICENSE = "ZLIB"
 DEPENDS = "pango libxext libxft virtual/libx11 gtk+"
-PV = "0.0+svnr${SRCREV}"
+PV = "0.0+svnr${SRCPV}"
 PR = "r0"
 
 inherit autotools
diff --git a/meta/recipes-graphics/libfakekey/libfakekey_svn.bb b/meta/recipes-graphics/libfakekey/libfakekey_svn.bb
index 719a680..2413666 100644
--- a/meta/recipes-graphics/libfakekey/libfakekey_svn.bb
+++ b/meta/recipes-graphics/libfakekey/libfakekey_svn.bb
@@ -9,7 +9,7 @@ LIC_FILES_CHKSUM = "file://src/libfakekey.c;endline=30;md5=602b5ccd48f6440751086
 
 DEPENDS = "libxtst"
 SECTION = "x11/wm"
-PV = "0.0+svnr${SRCREV}"
+PV = "0.0+svnr${SRCPV}"
 PR = "r1"
 
 SRC_URI = "svn://svn.o-hand.com/repos/matchbox/trunk;module=${PN};proto=http"
diff --git a/meta/recipes-graphics/libmatchbox/libmatchbox_svn.bb b/meta/recipes-graphics/libmatchbox/libmatchbox_svn.bb
index 98c901f..6bc7112 100644
--- a/meta/recipes-graphics/libmatchbox/libmatchbox_svn.bb
+++ b/meta/recipes-graphics/libmatchbox/libmatchbox_svn.bb
@@ -1,6 +1,6 @@
 require libmatchbox.inc
 
-PV = "1.7+svnr${SRCREV}"
+PV = "1.7+svnr${SRCPV}"
 PR = "r5"
 DEFAULT_PREFERENCE = "-1"
 
diff --git a/meta/recipes-graphics/matchbox-wm-2/matchbox-wm-2_svn.bb b/meta/recipes-graphics/matchbox-wm-2/matchbox-wm-2_svn.bb
index 9c5cd93..2eb12e1 100644
--- a/meta/recipes-graphics/matchbox-wm-2/matchbox-wm-2_svn.bb
+++ b/meta/recipes-graphics/matchbox-wm-2/matchbox-wm-2_svn.bb
@@ -5,7 +5,7 @@ LIC_FILES_CHKSUM = "file://matchbox/core/mb-wm.h;endline=21;md5=1b1d328a52790635
 
 DEPENDS = "virtual/libx11 libxext libxrender startup-notification expat gconf pango libxdamage libxcomposite gtk+"
 
-PV = "0.0+svnr${SRCREV}"
+PV = "0.0+svnr${SRCPV}"
 PR = "r4"
 
 SRC_URI = "svn://svn.o-hand.com/repos/matchbox/trunk;module=matchbox-window-manager-2;proto=http \
diff --git a/meta/recipes-graphics/matchbox-wm/matchbox-wm_svn.bb b/meta/recipes-graphics/matchbox-wm/matchbox-wm_svn.bb
index 09c0f70..d215171 100644
--- a/meta/recipes-graphics/matchbox-wm/matchbox-wm_svn.bb
+++ b/meta/recipes-graphics/matchbox-wm/matchbox-wm_svn.bb
@@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://src/wm.h;endline=21;md5=a7e844465edbcf79c282369f93caa
 SECTION = "x11/wm"
 DEPENDS = "libmatchbox virtual/libx11 libxext libxrender startup-notification expat gconf"
 
-PV = "1.2+svnr${SRCREV}"
+PV = "1.2+svnr${SRCPV}"
 PR = "r4"
 
 SRC_URI = "svn://svn.o-hand.com/repos/matchbox/trunk;module=matchbox-window-manager;proto=http \
diff --git a/meta/recipes-graphics/xcb/libxcb_git.bb b/meta/recipes-graphics/xcb/libxcb_git.bb
index b9ac073..faa5231 100644
--- a/meta/recipes-graphics/xcb/libxcb_git.bb
+++ b/meta/recipes-graphics/xcb/libxcb_git.bb
@@ -1,7 +1,7 @@
 DEFAULT_PREFERENCE = "-1"
 
 include libxcb.inc
-PV = "1.1.90.1+gitr${SRCREV}"
+PV = "1.1.90.1+gitr${SRCPV}"
 
 DEPENDS += "libpthread-stubs xcb-proto-native"
 
diff --git a/meta/recipes-graphics/xcb/xcb-proto_git.bb b/meta/recipes-graphics/xcb/xcb-proto_git.bb
index b96fc12..e4c238c 100644
--- a/meta/recipes-graphics/xcb/xcb-proto_git.bb
+++ b/meta/recipes-graphics/xcb/xcb-proto_git.bb
@@ -1,7 +1,7 @@
 DEFAULT_PREFERENCE = "-1"
 
 include xcb-proto.inc
-PV = "1.2+gitr${SRCREV}"
+PV = "1.2+gitr${SRCPV}"
 PR = "r1"
 
 SRC_URI = "git://anongit.freedesktop.org/git/xcb/proto;protocol=git"
diff --git a/meta/recipes-graphics/xvideo-tests/xvideo-tests_svn.bb b/meta/recipes-graphics/xvideo-tests/xvideo-tests_svn.bb
index 0aa861f..a5ac251 100644
--- a/meta/recipes-graphics/xvideo-tests/xvideo-tests_svn.bb
+++ b/meta/recipes-graphics/xvideo-tests/xvideo-tests_svn.bb
@@ -3,7 +3,7 @@ LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
                     file://src/test-xvideo.c;beginline=1;endline=20;md5=6ae3b4c3c2ff9e51dbbc35bb237afa00"
 DEPENDS = "libxv"
-PV = "0.0+svnr${SRCREV}"
+PV = "0.0+svnr${SRCPV}"
 PR = "r0"
 
 SRC_URI="svn://svn.o-hand.com/repos/misc/trunk;module=test-xvideo;proto=http"
diff --git a/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb b/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb
index a912c45..3d3c579 100644
--- a/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb
+++ b/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb
@@ -18,7 +18,7 @@ LIC_FILES_CHKSUM = "file://LICENSE.radeon_rlc;md5=4c243f7854d2884b483abda991adef
 
 PROVIDES += "linux-firmware-sd8686"
 
-PV = "0.0+git${SRCREV}"
+PV = "0.0+git${SRCPV}"
 
 SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/dwmw2/linux-firmware.git;protocol=git"
 
diff --git a/meta/recipes-kernel/linux/linux-omap2_git.bb b/meta/recipes-kernel/linux/linux-omap2_git.bb
index 39d08b7..c29396f 100644
--- a/meta/recipes-kernel/linux/linux-omap2_git.bb
+++ b/meta/recipes-kernel/linux/linux-omap2_git.bb
@@ -3,7 +3,7 @@ require linux-omap2.inc
 FILESPATH = "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/linux-omap2-git/${MACHINE}:${@os.path.dirname(bb.data.getVar('FILE',d,1))}/linux-omap2-git"
 
 PV = "2.6.26"
-#PV = "2.6.26+2.6.27-rc1+${PR}+git${SRCREV}"
+#PV = "2.6.26+2.6.27-rc1+${PR}+git${SRCPV}"
 PR = "r53"
 
 SRC_URI = "git://source.mvista.com/git/linux-omap-2.6.git;protocol=git \
diff --git a/meta/recipes-kernel/linux/linux-omap3-pm_git.bb b/meta/recipes-kernel/linux/linux-omap3-pm_git.bb
index 4acf793..d65ca50 100644
--- a/meta/recipes-kernel/linux/linux-omap3-pm_git.bb
+++ b/meta/recipes-kernel/linux/linux-omap3-pm_git.bb
@@ -6,7 +6,7 @@ inherit kernel
 
 FILESDIR = "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/${PN}-git/${MACHINE}"
 
-PV = "2.6.31-rc7+pm+${PR}+git${SRCREV}"
+PV = "2.6.31-rc7+pm+${PR}+git${SRCPV}"
 PR = "r3"
 
 SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-omap-pm.git;branch=pm;protocol=git"
diff --git a/meta/recipes-kernel/linux/linux-omap3_git.bb b/meta/recipes-kernel/linux/linux-omap3_git.bb
index f25c2c7..3d38ef2 100644
--- a/meta/recipes-kernel/linux/linux-omap3_git.bb
+++ b/meta/recipes-kernel/linux/linux-omap3_git.bb
@@ -2,7 +2,7 @@ require linux-omap2.inc
 
 FILESDIR = "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/linux-omap3-git/${MACHINE}"
 
-PV = "2.6.27-rc6+${PR}+git${SRCREV}"
+PV = "2.6.27-rc6+${PR}+git${SRCPV}"
 PR = "r30"
 
 SRC_URI = "git://source.mvista.com/git/linux-omap-2.6.git;branch=master;protocol=git \
diff --git a/meta/recipes-kernel/oprofile/oprofileui-svn.inc b/meta/recipes-kernel/oprofile/oprofileui-svn.inc
index 4c9211c..0e7e794 100644
--- a/meta/recipes-kernel/oprofile/oprofileui-svn.inc
+++ b/meta/recipes-kernel/oprofile/oprofileui-svn.inc
@@ -1,6 +1,6 @@
 require oprofileui.inc
 
-PV = "0.0+svnr${SRCREV}"
+PV = "0.0+svnr${SRCPV}"
 PR = "r0"
 
 S = "${WORKDIR}/trunk"
diff --git a/meta/recipes-sato/gaku/gaku_svn.bb b/meta/recipes-sato/gaku/gaku_svn.bb
index a70863e..15dcacf 100644
--- a/meta/recipes-sato/gaku/gaku_svn.bb
+++ b/meta/recipes-sato/gaku/gaku_svn.bb
@@ -15,7 +15,7 @@ RRECOMMENDS = "gst-plugins-good-id3demux \
                gst-plugins-base-ogg \
                ${COMMERCIAL_AUDIO_PLUGINS}"
 
-PV = "0.0+svnr${SRCREV}"
+PV = "0.0+svnr${SRCPV}"
 
 PR = "r3"
 
diff --git a/meta/recipes-sato/gtk-engines/gtk-sato-engine_svn.bb b/meta/recipes-sato/gtk-engines/gtk-sato-engine_svn.bb
index a7ee6c6..3c7f1b5 100644
--- a/meta/recipes-sato/gtk-engines/gtk-sato-engine_svn.bb
+++ b/meta/recipes-sato/gtk-engines/gtk-sato-engine_svn.bb
@@ -4,7 +4,7 @@ LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=2d5025d4aa3495befef8f17206a5b0a1 \
                     file://src/sato-utils.h;endline=24;md5=708f28cfe7fe028d497aaf4389b80b62 \
                     file://src/sato-main.c;endline=24;md5=b5e5dddebca570275becb51b526e4c5a"
 
-PV = "0.3.2+svnr${SRCREV}"
+PV = "0.3.2+svnr${SRCPV}"
 PR = "r0"
 
 SRC_URI = "svn://svn.o-hand.com/repos/sato/trunk;module=gtk-engine;proto=http"
diff --git a/meta/recipes-sato/libowl/libowl_svn.bb b/meta/recipes-sato/libowl/libowl_svn.bb
index 31a142c..74d0d77 100644
--- a/meta/recipes-sato/libowl/libowl_svn.bb
+++ b/meta/recipes-sato/libowl/libowl_svn.bb
@@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
 
 SECTION = "libs"
 DEPENDS = "gtk+"
-PV = "0.0+svnr${SRCREV}"
+PV = "0.0+svnr${SRCPV}"
 PR = "r6"
 
 SRC_URI = "svn://svn.o-hand.com/repos/misc/trunk;module=${PN};proto=http"
diff --git a/meta/recipes-sato/matchbox-config-gtk/matchbox-config-gtk_svn.bb b/meta/recipes-sato/matchbox-config-gtk/matchbox-config-gtk_svn.bb
index af748f1..61209d9 100644
--- a/meta/recipes-sato/matchbox-config-gtk/matchbox-config-gtk_svn.bb
+++ b/meta/recipes-sato/matchbox-config-gtk/matchbox-config-gtk_svn.bb
@@ -9,7 +9,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
 DEPENDS = "gconf gtk+"
 RDEPENDS = "settings-daemon"
 
-PV = "0.0+svnr${SRCREV}"
+PV = "0.0+svnr${SRCPV}"
 
 S = "${WORKDIR}/${PN}"
 
diff --git a/meta/recipes-sato/matchbox-desktop-sato/matchbox-desktop-sato_svn.bb b/meta/recipes-sato/matchbox-desktop-sato/matchbox-desktop-sato_svn.bb
index bdae33d..617fb6d 100644
--- a/meta/recipes-sato/matchbox-desktop-sato/matchbox-desktop-sato_svn.bb
+++ b/meta/recipes-sato/matchbox-desktop-sato/matchbox-desktop-sato_svn.bb
@@ -8,7 +8,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552"
 SECTION = "x11"
 DEPENDS = ""
 CONFLICTS = "matchbox-common"
-PV = "0.0+svnr${SRCREV}"
+PV = "0.0+svnr${SRCPV}"
 PR = "r0"
 
 SRC_URI = "svn://svn.o-hand.com/repos/sato/trunk;module=desktop-folders;proto=http"
diff --git a/meta/recipes-sato/matchbox-desktop/matchbox-desktop_svn.bb b/meta/recipes-sato/matchbox-desktop/matchbox-desktop_svn.bb
index 324c81f..f5aadfd 100644
--- a/meta/recipes-sato/matchbox-desktop/matchbox-desktop_svn.bb
+++ b/meta/recipes-sato/matchbox-desktop/matchbox-desktop_svn.bb
@@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
 
 DEPENDS = "gtk+ startup-notification dbus"
 SECTION = "x11/wm"
-PV = "2.0+svnr${SRCREV}"
+PV = "2.0+svnr${SRCPV}"
 PR = "r0"
 
 SRC_URI = "svn://svn.o-hand.com/repos/matchbox/trunk;module=${PN}-2;proto=http"
diff --git a/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_svn.bb b/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_svn.bb
index 337738e..52a65a7 100644
--- a/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_svn.bb
+++ b/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_svn.bb
@@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
 DEPENDS = "libfakekey expat libxft gtk+ matchbox-panel-2"
 RDEPENDS = "formfactor dbus-wait"
 SECTION = "x11"
-PV = "0.0+svnr${SRCREV}"
+PV = "0.0+svnr${SRCPV}"
 PR = "r4"
 
 SRC_URI = "svn://svn.o-hand.com/repos/matchbox/trunk;module=${PN};proto=http \
diff --git a/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_svn.bb b/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_svn.bb
index 8f5ccc8..d76fc09 100644
--- a/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_svn.bb
+++ b/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_svn.bb
@@ -12,7 +12,7 @@ DEPENDS = "gtk+ startup-notification dbus dbus-glib"
 DEPENDS += " ${@base_contains("MACHINE_FEATURES", "acpi", "libacpi", "",d)}"
 DEPENDS += " ${@base_contains("MACHINE_FEATURES", "apm", "apmd", "",d)}"
 
-PV = "0.0+svnr${SRCREV}"
+PV = "0.0+svnr${SRCPV}"
 PR = "r7"
 
 RPROVIDES_${PN} = "matchbox-panel"
diff --git a/meta/recipes-sato/matchbox-stroke/matchbox-stroke_svn.bb b/meta/recipes-sato/matchbox-stroke/matchbox-stroke_svn.bb
index b0e77ac..5021d88 100644
--- a/meta/recipes-sato/matchbox-stroke/matchbox-stroke_svn.bb
+++ b/meta/recipes-sato/matchbox-stroke/matchbox-stroke_svn.bb
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://src/matchbox-stroke.h;endline=12;md5=8ed5c5bbec2321fb
 
 DEPENDS = "libfakekey expat libxft"
 SECTION = "x11/wm"
-PV = "0.0+svnr${SRCREV}"
+PV = "0.0+svnr${SRCPV}"
 
 SRC_URI = "svn://svn.o-hand.com/repos/matchbox/trunk;module=${PN};proto=http \
            file://single-instance.patch;patch=1 \
diff --git a/meta/recipes-sato/matchbox-terminal/matchbox-terminal_svn.bb b/meta/recipes-sato/matchbox-terminal/matchbox-terminal_svn.bb
index 169223f..f06d80c 100644
--- a/meta/recipes-sato/matchbox-terminal/matchbox-terminal_svn.bb
+++ b/meta/recipes-sato/matchbox-terminal/matchbox-terminal_svn.bb
@@ -8,7 +8,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
 
 DEPENDS = "gtk+ vte"
 SECTION = "x11/utils"
-PV = "0.0+svnr${SRCREV}"
+PV = "0.0+svnr${SRCPV}"
 PR = "r0"
 
 SRC_URI = "svn://svn.o-hand.com/repos/matchbox/trunk;module=${PN};proto=http"
diff --git a/meta/recipes-sato/matchbox-theme-sato/matchbox-theme-sato-2_svn.bb b/meta/recipes-sato/matchbox-theme-sato/matchbox-theme-sato-2_svn.bb
index 30b6329..4511353 100644
--- a/meta/recipes-sato/matchbox-theme-sato/matchbox-theme-sato-2_svn.bb
+++ b/meta/recipes-sato/matchbox-theme-sato/matchbox-theme-sato-2_svn.bb
@@ -1,7 +1,7 @@
 require matchbox-theme-sato.inc
 
 DEPENDS = "matchbox-wm-2"
-PV = "0.1+svnr${SRCREV}"
+PV = "0.1+svnr${SRCPV}"
 
 SRC_URI = "svn://svn.o-hand.com/repos/sato/trunk;module=matchbox-sato;proto=http"
 S = "${WORKDIR}/matchbox-sato"
diff --git a/meta/recipes-sato/matchbox-theme-sato/matchbox-theme-sato_svn.bb b/meta/recipes-sato/matchbox-theme-sato/matchbox-theme-sato_svn.bb
index 7d49235..16ea825 100644
--- a/meta/recipes-sato/matchbox-theme-sato/matchbox-theme-sato_svn.bb
+++ b/meta/recipes-sato/matchbox-theme-sato/matchbox-theme-sato_svn.bb
@@ -1,6 +1,6 @@
 require matchbox-theme-sato.inc
 
-PV = "0.1+svnr${SRCREV}"
+PV = "0.1+svnr${SRCPV}"
 PR = "r0"
 
 SRC_URI = "svn://svn.o-hand.com/repos/sato/trunk;module=matchbox-sato;proto=http"
diff --git a/meta/recipes-sato/owl-video-widget/libowl-av_svn.bb b/meta/recipes-sato/owl-video-widget/libowl-av_svn.bb
index 4eeeed6..bb45430 100644
--- a/meta/recipes-sato/owl-video-widget/libowl-av_svn.bb
+++ b/meta/recipes-sato/owl-video-widget/libowl-av_svn.bb
@@ -12,7 +12,7 @@ DEPENDS = "gtk+ gstreamer gst-plugins-base"
 RDEPENDS = "gst-meta-base"
 RRECOMMENDS = "gst-meta-audio gst-meta-video"
 
-PV = "0.0+svnr${SRCREV}"
+PV = "0.0+svnr${SRCPV}"
 PR = "r5"
 
 S = "${WORKDIR}/${PN}"
diff --git a/meta/recipes-sato/owl-video-widget/owl-video_svn.bb b/meta/recipes-sato/owl-video-widget/owl-video_svn.bb
index bfa02b7..f83dbdc 100644
--- a/meta/recipes-sato/owl-video-widget/owl-video_svn.bb
+++ b/meta/recipes-sato/owl-video-widget/owl-video_svn.bb
@@ -8,7 +8,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=ac14b7ca45afea5af040da54db270eb0 \
 SECTION = "x11"
 DEPENDS = "libowl-av"
 
-PV = "0.0+svnr${SRCREV}"
+PV = "0.0+svnr${SRCPV}"
 PR = "r3"
 
 S = "${WORKDIR}/video"
diff --git a/meta/recipes-sato/puzzles/oh-puzzles_svn.bb b/meta/recipes-sato/puzzles/oh-puzzles_svn.bb
index 5fcea24..3bee486 100644
--- a/meta/recipes-sato/puzzles/oh-puzzles_svn.bb
+++ b/meta/recipes-sato/puzzles/oh-puzzles_svn.bb
@@ -11,7 +11,7 @@ SECTION = "x11"
 DEPENDS = "gtk+ gconf intltool-native librsvg"
 DEPENDS_append_poky = " libowl"
 
-PV = "0.1+svnr${SRCREV}"
+PV = "0.1+svnr${SRCPV}"
 PR = "r10"
 
 bindir = "/usr/games"
diff --git a/meta/recipes-sato/screenshot/screenshot_svn.bb b/meta/recipes-sato/screenshot/screenshot_svn.bb
index a95ba2d..35f3422 100644
--- a/meta/recipes-sato/screenshot/screenshot_svn.bb
+++ b/meta/recipes-sato/screenshot/screenshot_svn.bb
@@ -9,7 +9,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
 
 PRIORITY = "optional"
 DEPENDS = "matchbox-panel-2"
-PV = "0.0+svnr${SRCREV}"
+PV = "0.0+svnr${SRCPV}"
 
 SRC_URI = "svn://svn.o-hand.com/repos/misc/trunk;module=${PN};proto=http"
 
diff --git a/meta/recipes-sato/settings-daemon/settings-daemon_svn.bb b/meta/recipes-sato/settings-daemon/settings-daemon_svn.bb
index 4d1d9ba..720ebfb 100644
--- a/meta/recipes-sato/settings-daemon/settings-daemon_svn.bb
+++ b/meta/recipes-sato/settings-daemon/settings-daemon_svn.bb
@@ -6,7 +6,7 @@ LIC_FILES_CHKSUM = "file://xsettings-manager.h;endline=22;md5=7cfac9d2d4dc3694cc
                     file://xsettings-common.h;endline=22;md5=7cfac9d2d4dc3694cc7eb605cf32a69b"
 DEPENDS = "gconf glib-2.0 gtk+"
 SECTION = "x11"
-PV = "0.0+svnr${SRCREV}"
+PV = "0.0+svnr${SRCPV}"
 
 PR = "r3"
 
diff --git a/meta/recipes-sato/web/web-webkit_svn.bb b/meta/recipes-sato/web/web-webkit_svn.bb
index 7dfce26..3df2bd8 100644
--- a/meta/recipes-sato/web/web-webkit_svn.bb
+++ b/meta/recipes-sato/web/web-webkit_svn.bb
@@ -8,7 +8,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=7fbc338309ac38fefcd64b04bb903e34"
 SECTION = "x11"
 DEPENDS = "libxml2 glib-2.0 gtk+ libglade webkit-gtk curl gconf js libowl"
 
-PV = "0.0+svnr${SRCREV}"
+PV = "0.0+svnr${SRCPV}"
 PR = "r3"
 
 SRC_URI = "svn://svn.o-hand.com/repos/web/branches;module=webkit;proto=http \
diff --git a/meta/recipes-sato/web/web_svn.bb b/meta/recipes-sato/web/web_svn.bb
index 79838ce..bdcdaba 100644
--- a/meta/recipes-sato/web/web_svn.bb
+++ b/meta/recipes-sato/web/web_svn.bb
@@ -4,7 +4,7 @@ DEPENDS = "libxml2 glib-2.0 gtk+ libglade gtkhtml2 curl gconf js libowl"
 DESCRIPTION = "Web is a multi-platform web browsing application."
 PR = "r4"
 
-PV = "0.0+svnr${SRCREV}"
+PV = "0.0+svnr${SRCPV}"
 
 SRC_URI = 	"svn://svn.o-hand.com/repos/${PN};module=trunk;proto=http \
 		file://owl-window-menu.patch \
diff --git a/meta/recipes-sato/webkit/webkit-gtk_svn.bb b/meta/recipes-sato/webkit/webkit-gtk_svn.bb
index fe31b9c..8d4eb35 100644
--- a/meta/recipes-sato/webkit/webkit-gtk_svn.bb
+++ b/meta/recipes-sato/webkit/webkit-gtk_svn.bb
@@ -12,7 +12,7 @@ DEPENDS_darwin8 = "curl icu libxml2 cairo libxslt libidn gnutls gtk+ gstreamer f
 
 SRCREV_FORMAT = "webcore-rwebkit"
 
-PV = "1.3.2+svnr${SRCREV}"
+PV = "1.3.2+svnr${SRCPV}"
 PR = "r0"
 
 SRC_URI = "\
diff --git a/meta/recipes-support/libgdbus/libgdbus_git.bb b/meta/recipes-support/libgdbus/libgdbus_git.bb
index c465023..73fb1d6 100644
--- a/meta/recipes-support/libgdbus/libgdbus_git.bb
+++ b/meta/recipes-support/libgdbus/libgdbus_git.bb
@@ -4,7 +4,7 @@ LICENSE  = "GPLv2&LGPLv2.1"
 LIC_FILES_CHKSUM = "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e \
 		    file://COPYING.LIB;md5=fb504b67c50331fc78734fed90fb0e09"
 DEPENDS  = "glib-2.0 dbus"
-PV       = "0.0+git${SRCREV}"
+PV       = "0.0+git${SRCPV}"
 S        = "${WORKDIR}/git"
 
 SRC_URI  = "git://git.kernel.org/pub/scm/bluetooth/libgdbus.git;protocol=git"
-- 
1.7.0.4


