Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AE38E01409
	for <poky@yoctoproject.org>; Thu, 13 Jun 2013 07:43:50 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jun 2013 07:44:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,859,1363158000"; d="scan'208";a="349335416"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.13.2])
	by fmsmga001.fm.intel.com with ESMTP; 13 Jun 2013 07:43:52 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 13 Jun 2013 07:43:21 -0700
Message-Id: <1371134601-21490-2-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1371134601-21490-1-git-send-email-sgw@linux.intel.com>
References: <1371134601-21490-1-git-send-email-sgw@linux.intel.com>
Subject: [PATCH 2/2] maintainers: Added missing recipes with maintainers
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
X-List-Received-Date: Thu, 13 Jun 2013 14:43:50 -0000

Added
gstreamer1.0-plugins-good     1.0.7                         1.1.1                         No Maintainer info
gstreamer1.0-libav            1.0.7                         1.1.1                         No Maintainer info
chkconfig-alternatives-native 1.3.59+AUTOINC+cd437ecbd8     6                             No Maintainer info
gstreamer1.0-plugins-bad      1.0.7                         1.1.1                         No Maintainer info
gsettings-desktop-schemas     3.7.3                         3.9.2                         No Maintainer info
harfbuzz                      0.9.17                        0.9.18                        No Maintainer info
gtk-update-icon-cache-native  3.4.4                         3.9.2                         No Maintainer info
gstreamer1.0                  1.0.7                         1.1.1                         No Maintainer info
gstreamer1.0-plugins-base     1.0.7                         1.1.1                         No Maintainer info
gstreamer1.0-plugins-ugly     1.0.7                         1.1.1                         No Maintainer info
xf86-video-omap               0.4.2+gitrAUTOINC+ae0394e     0.4.3+gitrAUTOINC+1482807     No Maintainer info
gtk+3                         3.4.4                         3.9.2                         No Maintainer info
clutter-gst-1.0               1.6.0                         2.0.4                         No Maintainer info
dbus-ptest                    1.6.8                         1.7.2                         No Maintainer info
mx-1.0                        1.4.7+gitAUTOINC+9b1db6b      1.99.4+gitAUTOINC+6a5a7ff     No Maintainer info
clutter-gtk-1.0               1.4.2                         1.4.4                         No Maintainer info
weston                        1.1.0                         1.1.1                         No Maintainer info

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 4ac93a4..1ecafe7 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -79,6 +79,7 @@ RECIPE_MAINTAINER_pn-calibrateproto = "Constantin Musca <constantinx.musca@intel
 RECIPE_MAINTAINER_pn-ccache = "Wenzong Fan <wenzong.fan@windriver.com>"
 RECIPE_MAINTAINER_pn-cdrtools = "Andrei Dinu <andrei.adrianx.dinu@intel.com>"
 RECIPE_MAINTAINER_pn-chkconfig = "Wenzong Fan <wenzong.fan@windriver.com>"
+RECIPE_MAINTAINER_pn-chkconfig-alternatives-native = "Wenzong Fan <wenzong.fan@windriver.com>"
 RECIPE_MAINTAINER_pn-chrpath = "Andrei Dinu <andrei.adrianx.dinu@intel.com>"
 RECIPE_MAINTAINER_pn-claws-mail = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-claws-plugin-gtkhtml2-viewer = "Constantin Musca <constantinx.musca@intel.com>"
@@ -87,7 +88,9 @@ RECIPE_MAINTAINER_pn-claws-plugin-mailmbox = "Constantin Musca <constantinx.musc
 RECIPE_MAINTAINER_pn-claws-plugin-rssyl = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-clipboard-manager = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-clutter-1.8 = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-clutter-gst-1.0 = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-clutter-gst-1.8 = "Ross Burton <ross.burton@intel.com>"
+RECIPE_MAINTAINER_pn-clutter-gtk-1.0 = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-clutter-gtk-1.8 = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-clutter = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-cmake-native = "Ross Burton <ross.burton@intel.com>"
@@ -134,6 +137,7 @@ RECIPE_MAINTAINER_pn-cyassl = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-damageproto = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-db = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-dbus = "Cristian Iorga <cristian.iorga@intel.com>"
+RECIPE_MAINTAINER_pn-dbus-ptest = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-dbus-glib = "Andrei Dinu <andrei.adrianx.dinu@intel.com>"
 RECIPE_MAINTAINER_pn-dbus-wait = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-desktop-file-utils-native = "Saul Wold <sgw@linux.intel.com>"
@@ -249,13 +253,21 @@ RECIPE_MAINTAINER_pn-gst-plugins-base = "Cristian Iorga <cristian.iorga@intel.co
 RECIPE_MAINTAINER_pn-gst-plugins-good = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-gst-plugins-ugly = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-gstreamer = "Cristian Iorga <cristian.iorga@intel.com>"
+RECIPE_MAINTAINER_pn-gstreamer1.0 = "Cristian Iorga <cristian.iorga@intel.com>"
+RECIPE_MAINTAINER_pn-gstreamer1.0-libav = "Cristian Iorga <cristian.iorga@intel.com>"
+RECIPE_MAINTAINER_pn-gstreamer1.0-plugins-bad = "Cristian Iorga <cristian.iorga@intel.com>"
+RECIPE_MAINTAINER_pn-gstreamer1.0-plugins-base = "Cristian Iorga <cristian.iorga@intel.com>"
+RECIPE_MAINTAINER_pn-gstreamer1.0-plugins-good = "Cristian Iorga <cristian.iorga@intel.com>"
+RECIPE_MAINTAINER_pn-gstreamer1.0-plugins-ugly = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-gtk-doc-stub-native = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-gtk-doc-stub = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-gtk-doc = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-gtk-engines = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-gtk-sato-engine = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-gtk-theme-torturer = "Constantin Musca <constantinx.musca@intel.com>"
+RECIPE_MAINTAINER_pn-gtk-update-icon-cache-native = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-gtk+ = "Constantin Musca <constantinx.musca@intel.com>"
+RECIPE_MAINTAINER_pn-gtk+3 = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-guile = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-guilt-native = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-gupnp-av = "Cristian Iorga <cristian.iorga@intel.com>"
@@ -265,6 +277,7 @@ RECIPE_MAINTAINER_pn-gypsy = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-gzip = "Andrei Dinu <andrei.adrianx.dinu@intel.com>"
 RECIPE_MAINTAINER_pn-hal-info = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-hal = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-harfbuzz = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-hdparm = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-help2man-native = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-hicolor-icon-theme = "Constantin Musca <constantinx.musca@intel.com>"
@@ -391,6 +404,7 @@ RECIPE_MAINTAINER_pn-libpcap = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-libpciaccess = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-libpcre = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-libpng = "Andrei Dinu <andrei.adrianx.dinu@intel.com>"
+RECIPE_MAINTAINER_pn-libpng12 = "Andrei Dinu <andrei.adrianx.dinu@intel.com>"
 RECIPE_MAINTAINER_pn-libpod-plainer-perl-native = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libpod-plainer-perl = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libproxy = "Cristian Iorga <cristian.iorga@intel.com>"
@@ -545,7 +559,7 @@ RECIPE_MAINTAINER_pn-msynctool = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-mtdev = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-mtd-utils = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-mtools = "Andrei Dinu <andrei.adrianx.dinu@intel.com>"
-RECIPE_MAINTAINER_pn-mx = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-mx-1.0 = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-nasm = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-nativesdk-cmake = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-nativesdk-dtc = "Saul Wold <sgw@linux.intel.com>"
@@ -791,9 +805,11 @@ RECIPE_MAINTAINER_pn-valgrind = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-videoproto = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-vte ="Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-watchdog = "Radu Moisan <radu.moisan@intel.com>"
+RECIPE_MAINTAINER_pn-wayland = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-wbxml2 = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-webkit-gtk = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-web-webkit = "Constantin Musca <constantinx.musca@intel.com>"
+RECIPE_MAINTAINER_pn-weston = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-wget = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-which = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-wireless-tools = "Cristian Iorga <cristian.iorga@intel.com>"
@@ -830,6 +846,7 @@ RECIPE_MAINTAINER_pn-xf86rushproto = "Laurentiu Palcu <laurentiu.palcu@intel.com
 RECIPE_MAINTAINER_pn-xf86-video-fbdev = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-xf86-video-intel = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-xf86-video-omapfb = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
+RECIPE_MAINTAINER_pn-xf86-video-omap = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-xf86-video-vesa = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-xf86-video-vmware = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-xf86vidmodeproto = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
-- 
1.8.1.4


