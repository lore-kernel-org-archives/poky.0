Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D742D4C811C3
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 08:12:13 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 21 Jan 2011 06:12:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,358,1291622400"; d="scan'208";a="649685803"
Received: from gzhai-nhm.sh.intel.com (HELO localhost) ([10.239.36.8])
	by fmsmga002.fm.intel.com with ESMTP; 21 Jan 2011 06:12:13 -0800
Message-Id: <95ba44f9344c9f4a9914fcd07e2119e4fa8170d4.1295619627.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1295619627.git.edwin.zhai@intel.com>
References: <cover.1295619627.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Old-Date: Fri, 21 Jan 2011 22:15:50 +0800
Date: Fri, 21 Jan 2011 22:23:04 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] distro tracking: Add more info for qemu, gdk-pixbuf...., after last interation of upgrade
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
X-List-Received-Date: Fri, 21 Jan 2011 14:12:14 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |  123 ++++++++++++--------
 1 files changed, 73 insertions(+), 50 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index d3d6126..9212d44 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -117,8 +117,8 @@ DISTRO_PN_ALIAS_pn-trace-cmd = "Mandriva=trace-cmd Ubuntu=trace-cmd"
 RECIPE_LAST_UPDATE_pn-trace-cmd = "Aug 20, 2010"
 RECIPE_MAINTAINER_pn-trace-cmd = "Bruce"
 
-RECIPE_STATUS_pn-web = "red"
-RECIPE_LATEST_VERSION_pn-web = "check"
+RECIPE_STATUS_pn-web = "green"
+RECIPE_LATEST_VERSION_pn-web = "0.0+svnr129"
 DISTRO_PN_ALIAS_pn-web = "OpenedHand"
 RECIPE_LAST_UPDATE_pn-web = "Nov 30, 2010"
 RECIPE_MAINTAINER_pn-web = "Edwin Zhai <edwin.zhai@intel.com>"
@@ -999,10 +999,10 @@ RECIPE_LAST_UPDATE_pn-iptables = "Nov 10, 2010"
 RECIPE_MAINTAINER_pn-iptables = "Qing He <qing.he@intel.com>"
 RECIPE_LATEST_VERSION_pn-iptables = "1.4.8"
 
-RECIPE_STATUS_pn-ethtool = "red"
+RECIPE_STATUS_pn-ethtool = "green"
+RECIPE_LATEST_VERSION_pn-ethtool = "2.6.36"
 RECIPE_LAST_UPDATE_pn-ethtool = "Nov 28, 2010"
 RECIPE_MAINTAINER_pn-ethtool = "Edwin Zhai <edwin.zhai@intel.com>"
-RECIPE_LATEST_VERSION_pn-ethtool = "2.6.36"
 
 RECIPE_STATUS_pn-net-tools = "red"
 RECIPE_LAST_UPDATE_pn-net-tools = "Aug 16, 2010"
@@ -1031,6 +1031,7 @@ RECIPE_LAST_UPDATE_pn-libuser = "Nov 19, 2010"
 RECIPE_MAINTAINER_pn-libuser = "Edwin Zhai <edwin.zhai@intel.com>"
 RECIPE_DEPENDENCY_CHECK_pn-libuser = "not done"
 RECIPE_LATEST_VERSION_pn-libuser = "0.56.18"
+RECIPE_MANUAL_CHECK_DATE_pn-libuser = "Nov 19, 2010"
 RECIPE_NO_OF_PATCHES_pn-libuser = "1"
 RECIPE_INTEL_SECTION_pn-libuser = "base utils"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libuser = "1 month"
@@ -1118,14 +1119,14 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libgdbus = "unknown"
 RECIPE_LAST_UPDATE_pn-libgdbus = "Jan 4, 2011"
 RECIPE_MAINTAINER_pn-libgdbus = "Scott Garman <scott.a.garman@intel.com>"
 
-RECIPE_STATUS_pn-apr = "red"
+RECIPE_STATUS_pn-apr = "green"
 RECIPE_LATEST_VERSION_pn-apr = "1.4.2"
-RECIPE_LAST_UPDATE_pn-apr = "Jan 7, 2009"
+RECIPE_LAST_UPDATE_pn-apr = "Dec 17, 2010"
 RECIPE_MAINTAINER_pn-apr = "Edwin Zhai <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-apr-util = "red"
-RECIPE_LATEST_VERSION_pn-apr-util = "1.3.9"
-RECIPE_LAST_UPDATE_pn-apr-util = "Jan 7, 2009"
+RECIPE_STATUS_pn-apr-util = "green"
+RECIPE_LATEST_VERSION_pn-apr-util = "1.3.10"
+RECIPE_LAST_UPDATE_pn-apr-util = "Dec 29, 2010"
 RECIPE_MAINTAINER_pn-apr-util = "Edwin Zhai <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-apt = "red"
@@ -1144,8 +1145,9 @@ RECIPE_LATEST_VERSION_pn-dosfstools = "2.11"
 RECIPE_LAST_UPDATE_pn-dosfstools = "Oct 11, 2007"
 RECIPE_MAINTAINER_pn-dosfstools = "Kevin Tian <kevin.tian@intel.com>"
 
-RECIPE_STATUS_pn-eee-acpi-scripts = "red"
-RECIPE_LATEST_VERSION_pn-eee-acpi-scripts = "1.1.10+eaaa266e8c3b91b19d8ac861334b41ce7530e8c5"
+RECIPE_STATUS_pn-eee-acpi-scripts = "green"
+RECIPE_LATEST_VERSION_pn-eee-acpi-scripts = "1.1.11+e224937ba51165e2a52252f9a113c8a82c01bb36"
+RECIPE_LAST_UPDATE_pn-eee-acpi-scripts = "Nov 28, 2010"
 RECIPE_MAINTAINER_pn-eee-acpi-scripts = "Edwin Zhai <edwin.zhai@intel.com>"
 DISTRO_PN_ALIAS_pn-eee-acpi-scripts = "Debian=eeepc-acpi-scripts Ubuntu=eeepc-acpi-scripts"
 
@@ -1195,9 +1197,9 @@ RECIPE_LATEST_VERSION_pn-libgsf = "1.14.18"
 RECIPE_LAST_UPDATE_pn-libgsf = "Aug 20, 2007"
 RECIPE_MAINTAINER_pn-libgsf = "Dexuan Cui <dexuan.cui@intel.com>"
 
-RECIPE_STATUS_pn-beecrypt = "red"
-RECIPE_LATEST_VERSION_pn-beecrypt = "4.1.2"
-RECIPE_LAST_UPDATE_pn-beecrypt = "Jul 5, 2010"
+RECIPE_STATUS_pn-beecrypt = "green"
+RECIPE_LATEST_VERSION_pn-beecrypt = "4.2.1"
+RECIPE_LAST_UPDATE_pn-beecrypt = "Nov 26, 2010"
 RECIPE_MAINTAINER_pn-beecrypt = "Edwin Zhai <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-libacpi = "red"
@@ -1206,13 +1208,13 @@ RECIPE_LAST_UPDATE_pn-libacpi = "Sep 30, 2008"
 RECIPE_MAINTAINER_pn-libacpi = "Kevin Tian <kevin.tian@intel.com>"
 DISTRO_PN_ALIAS_pn-libacpi="Ubuntu=libacpi Mandriva=libacpi"
 
-RECIPE_STATUS_pn-acpid = "red"
+RECIPE_STATUS_pn-acpid = "green"
 RECIPE_LATEST_VERSION_pn-acpid = "1.0.10"
 RECIPE_LAST_UPDATE_pn-acpid = "Nov 26, 2010"
 RECIPE_MAINTAINER_pn-acpid = "Edwin Zhai <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-consolekit = "red"
-RECIPE_LATEST_VERSION_pn-consolekit = "0.4.1"
+RECIPE_STATUS_pn-consolekit = "green"
+RECIPE_LATEST_VERSION_pn-consolekit = "0.4.3"
 RECIPE_LAST_UPDATE_pn-consolekit = "Nov 28, 2010"
 RECIPE_MAINTAINER_pn-consolekit = "Edwin Zhai <edwin.zhai@intel.com>"
 
@@ -1888,13 +1890,13 @@ RECIPE_MAINTAINER_pn-qemu-helper-native = "Zhai Edwin <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-qemu = "green"
 RECIPE_DEPENDENCY_CHECK_pn-qemu = "not done"
-RECIPE_LATEST_VERSION_pn-qemu = "0.12.4"
+RECIPE_LATEST_VERSION_pn-qemu = "0.13.0"
 RECIPE_NO_OF_PATCHES_pn-qemu = "12"
 RECIPE_INTEL_SECTION_pn-qemu = "base utils"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-qemu = "3 months"
-RECIPE_LATEST_RELEASE_DATE_pn-qemu = "05/2010"
+RECIPE_LATEST_RELEASE_DATE_pn-qemu = "10/2010"
 RECIPE_COMMENTS_pn-qemu = ""
-RECIPE_LAST_UPDATE_pn-qemu = "Jun 3, 2010"
+RECIPE_LAST_UPDATE_pn-qemu = "Jan 15, 2011"
 RECIPE_MAINTAINER_pn-qemu = "Zhai Edwin <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-qemu-helper-nativesdk = "green"
@@ -3038,6 +3040,7 @@ RECIPE_MAINTAINER_pn-xtscal = "Zhai Edwin <edwin.zhai@intel.com>"
 RECIPE_STATUS_pn-xrestop = "green" # no update needed
 RECIPE_DEPENDENCY_CHECK_pn-xrestop = "not done"
 RECIPE_LATEST_VERSION_pn-xrestop = "0.4"
+RECIPE_MANUAL_CHECK_DATE_pn-xrestop = "Nov 18, 2010"
 RECIPE_NO_OF_PATCHES_pn-xrestop = "0"
 RECIPE_INTEL_SECTION_pn-xrestop = "graphic apps"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xrestop = "18 months"
@@ -3074,13 +3077,14 @@ RECIPE_MAINTAINER_pn-gnome-terminal = "Edwin Zhai <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-puzzles = "red"
 DISTRO_PN_ALIAS_pn-puzzles = "Debian=sgt-puzzles"
-RECIPE_LATEST_VERSION_pn-puzzles = "r9034"
-RECIPE_LAST_UPDATE_pn-puzzles = "Nov 30, 2010"
+RECIPE_LATEST_VERSION_pn-puzzles = "r9076"
+RECIPE_MANUAL_CHECK_DATE_pn-puzzles = "Jan 06, 2011"
+RECIPE_LAST_UPDATE_pn-puzzles = "Jan 06, 2011"
 RECIPE_MAINTAINER_pn-puzzles = "Edwin Zhai <edwin.zhai@intel.com>"
 DISTRO_PN_ALIAS_pn-puzzles = "Debian=sgt-puzzles Fedora=puzzles"
 
-RECIPE_STATUS_pn-x11perf = "red"
-RECIPE_LATEST_VERSION_pn-x11perf = "1.5.1"
+RECIPE_STATUS_pn-x11perf = "green"
+RECIPE_LATEST_VERSION_pn-x11perf = "1.5.2"
 RECIPE_LAST_UPDATE_pn-x11perf = "Nov 30, 2010"
 RECIPE_MAINTAINER_pn-x11perf = "Edwin Zhai <edwin.zhai@intel.com>"
 DISTRO_PN_ALIAS_pn-x11perf = "Fedora=xorg-x11-apps Ubuntu=x11-apps"
@@ -3108,9 +3112,9 @@ RECIPE_LAST_UPDATE_pn-xrdb = "Mar 28, 2008"
 RECIPE_MAINTAINER_pn-xrdb = "Edwin Zhai <edwin.zhai@intel.com>"
 DISTRO_PN_ALIAS_pn-xrdb = "Ubuntu=x11-xserver-utils Fedora=xorg-x11-server-utils"
 
-RECIPE_STATUS_pn-xvinfo = "red"
-RECIPE_LATEST_VERSION_pn-xvinfo = "1.1.0"
-RECIPE_LAST_UPDATE_pn-xvinfo = "Mar 5, 2008"
+RECIPE_STATUS_pn-xvinfo = "green"
+RECIPE_LATEST_VERSION_pn-xvinfo = "1.1.1"
+RECIPE_LAST_UPDATE_pn-xvinfo = "Dec 31, 2010"
 RECIPE_MAINTAINER_pn-xvinfo = "Edwin Zhai <edwin.zhai@intel.com>"
 DISTRO_PN_ALIAS_pn-xvinfo = "Fedora=xorg-x11-utils Ubuntu=x11-utils"
 
@@ -3149,7 +3153,7 @@ RECIPE_LATEST_VERSION_pn-claws-mail = "3.7.6"
 RECIPE_LAST_UPDATE_pn-kf = "Apr 25, 2007"
 RECIPE_MAINTAINER_pn-claws-mail = "Edwin Zhai <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-x11vnc = "red"
+RECIPE_STATUS_pn-x11vnc = "green"
 RECIPE_LATEST_VERSION_pn-x11vnc = "0.9.12"
 RECIPE_LAST_UPDATE_pn-x11vnc = "Nov 30, 2010"
 RECIPE_MAINTAINER_pn-x11vnc = "Edwin Zhai <edwin.zhai@intel.com>"
@@ -4831,15 +4835,21 @@ RECIPE_MAINTAINER_pn-atk = "Zhai Edwin <edwin.zhai@intel.com>"
 RECIPE_STATUS_pn-gtk+ = "green"
 DISTRO_PN_ALIAS_pn-gtk+ = "Meego=gtk2 Fedora=gtk2 OpenSuSE=gtk2 Ubuntu=gtk+2.0 Mandriva=gtk+2.0 Debian=gtk+2.0"
 RECIPE_DEPENDENCY_CHECK_pn-gtk+ = "not done"
-RECIPE_LATEST_VERSION_pn-gtk+ = "2.20.1"
+RECIPE_LATEST_VERSION_pn-gtk+ = "2.23.2"
 RECIPE_NO_OF_PATCHES_pn-gtk+ = "0"
 RECIPE_INTEL_SECTION_pn-gtk+ = "graphic UX"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gtk+ = "2 months"
-RECIPE_LATEST_RELEASE_DATE_pn-gtk+ = "05/2010"
+RECIPE_LATEST_RELEASE_DATE_pn-gtk+ = "11/2010"
 RECIPE_COMMENTS_pn-gtk+ = ""
-RECIPE_LAST_UPDATE_pn-gtk+ = "Jul 8, 2010"
+RECIPE_LAST_UPDATE_pn-gtk+ = "Nov 22, 2010"
+RECIPE_NO_UPDATE_REASON_pn-gtk+ = "Do not upgrade to version: 2.99.2 because prefer stable tree"
 RECIPE_MAINTAINER_pn-gtk+ = "Zhai Edwin <edwin.zhai@intel.com>"
 
+RECIPE_STATUS_pn-gdk-pixbuf = "green"
+RECIPE_LATEST_VERSION_pn-gdk-pixbuf = "2.22.1"
+RECIPE_LAST_UPDATE_pn-gdk-pixbuf = "Nov 25, 2010"
+RECIPE_MAINTAINER_pn-gdk-pixbuf = "Edwin Zhai <edwin.zhai@intel.com>"
+
 RECIPE_STATUS_pn-gdk-pixbuf-csource-native = "red" # update needed
 RECIPE_DEPENDENCY_CHECK_pn-gdk-pixbuf-csource-native = "not done"
 RECIPE_LATEST_VERSION_pn-gdk-pixbuf-csource-native = "2.20.1"
@@ -4877,13 +4887,14 @@ RECIPE_MAINTAINER_pn-gnome-common = "Zhai Edwin <edwin.zhai@intel.com>"
 RECIPE_STATUS_pn-webkit-gtk = "green"
 DISTRO_PN_ALIAS_pn-webkit-gtk = "Fedora=webkitgtk"
 RECIPE_DEPENDENCY_CHECK_pn-webkit-gtk = "not done"
-RECIPE_LATEST_VERSION_pn-webkit-gtk = "1.3.2+svnr62027"
-RECIPE_NO_OF_PATCHES_pn-webkit-gtk = "0"
+RECIPE_LATEST_VERSION_pn-webkit-gtk = "1.3.7+svnr72836"
+RECIPE_MANUAL_CHECK_DATE_pn-webkit-gtk = "Nov 19, 2010"
+RECIPE_NO_OF_PATCHES_pn-webkit-gtk = "1"
 RECIPE_INTEL_SECTION_pn-webkit-gtk = "graphic UX"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-webkit-gtk = "1 month"
-RECIPE_LATEST_RELEASE_DATE_pn-webkit-gtk = "06/2010"
+RECIPE_LATEST_RELEASE_DATE_pn-webkit-gtk = "11/2011"
 RECIPE_COMMENTS_pn-webkit-gtk = ""
-RECIPE_LAST_UPDATE_pn-webkit-gtk = "Jul 22, 2010"
+RECIPE_LAST_UPDATE_pn-webkit-gtk = "Nov 30, 2011"
 RECIPE_MAINTAINER_pn-webkit-gtk = "Zhai Edwin <edwin.zhai@intel.com>"
 DISTRO_PN_ALIAS_pn-webkit-gtk = "Fedora=webkitgtk Ubuntu=libwebkit"
 
@@ -4909,6 +4920,7 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gnome-keyring = "1 month"
 RECIPE_LATEST_RELEASE_DATE_pn-gnome-keyring = "10/2010"
 RECIPE_COMMENTS_pn-gnome-keyring = ""
 RECIPE_LAST_UPDATE_pn-gnome-keyring = "Nov 19, 2010"
+RECIPE_NO_UPDATE_REASON_pn-gnome-keyring = "Do not upgrade to version: 2.91.4 because prefer stable tree"
 RECIPE_MAINTAINER_pn-gnome-keyring = "Zhai Edwin <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-gtk-sato-engine = "green"
@@ -4936,6 +4948,7 @@ RECIPE_MAINTAINER_pn-hicolor-icon-theme = "Zhai Edwin <edwin.zhai@intel.com>"
 RECIPE_STATUS_pn-jpeg = "green"
 RECIPE_DEPENDENCY_CHECK_pn-jpeg = "not done"
 RECIPE_LATEST_VERSION_pn-jpeg = "8b"
+RECIPE_MANUAL_CHECK_DATE_pn-jpeg = "Dec 30, 2010"
 RECIPE_NO_OF_PATCHES_pn-jpeg = "0"
 RECIPE_INTEL_SECTION_pn-jpeg = "graphic UX"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-jpeg = "12 months"
@@ -5084,6 +5097,7 @@ RECIPE_MAINTAINER_pn-web-webkit = "Zhai Edwin <edwin.zhai@intel.com>"
 RECIPE_STATUS_pn-libfm = "green"
 RECIPE_DEPENDENCY_CHECK_pn-libfm = "not done"
 RECIPE_LATEST_VERSION_pn-libfm = "0.1.14"
+RECIPE_MANUAL_CHECK_DATE_pn-libfm = "Nov 19, 2010"
 RECIPE_NO_OF_PATCHES_pn-libfm = "0"
 RECIPE_INTEL_SECTION_pn-libfm = "graphic UX"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libfm = "5 months"
@@ -5095,6 +5109,7 @@ RECIPE_MAINTAINER_pn-libfm = "Zhai Edwin <edwin.zhai@intel.com>"
 RECIPE_STATUS_pn-menu-cache = "green"
 RECIPE_DEPENDENCY_CHECK_pn-menu-cache = "not done"
 RECIPE_LATEST_VERSION_pn-menu-cache = "0.3.2"
+RECIPE_MANUAL_CHECK_DATE_pn-menu-cache = "Nov 22, 2010"
 RECIPE_NO_OF_PATCHES_pn-menu-cache = "0"
 RECIPE_INTEL_SECTION_pn-menu-cache = "graphic UX"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-menu-cache = "1 month"
@@ -5104,10 +5119,11 @@ DISTRO_PN_ALIAS_pn-menu-cache = "OSPDT"
 RECIPE_LAST_UPDATE_pn-menu-cache = "Jul 22, 2010"
 RECIPE_MAINTAINER_pn-menu-cache = "Zhai Edwin <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-gtk-engines = "red"
+RECIPE_STATUS_pn-gtk-engines = "green"
 DISTRO_PN_ALIAS_pn-gtk-engines = "Fedora=gtk2-engines OpenSuSE=gtk2-engines Ubuntu=gtk2-engines Mandriva=gtk-engines2 Debian=gtk2-engines"
-RECIPE_LATEST_VERSION_pn-gtk-engines = "2.18"
+RECIPE_LATEST_VERSION_pn-gtk-engines = "2.20.2"
 RECIPE_LAST_UPDATE_pn-gtk-engines = "Dec 1, 2010"
+RECIPE_NO_UPDATE_REASON_pn-gtk-engines = "Do not upgrade to version: 2.91.1 because prefer stable tree"
 RECIPE_MAINTAINER_pn-gtk-engines = "Edwin Zhai <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-clutter-box2d = "red"
@@ -5124,9 +5140,9 @@ RECIPE_LATEST_VERSION_pn-tidy = "0.1.0+git0+e25416e1293e1074bfa6727c80527dcff5b1
 RECIPE_LAST_UPDATE_pn-tidy = "Dec 18, 2008"
 RECIPE_MAINTAINER_pn-tidy = "Edwin Zhai <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-libcanberra = "red"
-RECIPE_LATEST_VERSION_pn-libcanberra = "0.24"
-RECIPE_LAST_UPDATE_pn-libcanberra = "Nov 22, 2010"
+RECIPE_STATUS_pn-libcanberra = "green"
+RECIPE_LATEST_VERSION_pn-libcanberra = "0.26"
+RECIPE_LAST_UPDATE_pn-libcanberra = "Dec 31, 2010"
 RECIPE_MAINTAINER_pn-libcanberra = "Edwin Zhai <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-libgalago = "red"
@@ -5156,14 +5172,16 @@ RECIPE_LATEST_VERSION_pn-clipboard-manager = "0.6.8"
 RECIPE_LAST_UPDATE_pn-clipboard-manager = "Dec 24, 2007"
 RECIPE_MAINTAINER_pn-clipboard-manager = "Edwin Zhai <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-gnome-desktop = "red"
-RECIPE_LATEST_VERSION_pn-gnome-desktop = "2.31.2"
+RECIPE_STATUS_pn-gnome-desktop = "green"
+RECIPE_LATEST_VERSION_pn-gnome-desktop = "2.32.1"
 RECIPE_LAST_UPDATE_pn-gnome-desktop = "Dec 1, 2010"
+RECIPE_NO_UPDATE_REASON_pn-gnome-desktop = "Do not upgrade to version: 2.91.6 because prefer stable tree"
 RECIPE_MAINTAINER_pn-gnome-desktop = "Edwin Zhai <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-gnome-icon-theme = "red"
-RECIPE_LATEST_VERSION_pn-gnome-icon-theme = "2.30.2"
+RECIPE_STATUS_pn-gnome-icon-theme = "green"
+RECIPE_LATEST_VERSION_pn-gnome-icon-theme = "2.31.0"
 RECIPE_LAST_UPDATE_pn-gnome-icon-theme = "Dec 1, 2010"
+RECIPE_NO_UPDATE_REASON_pn-gnome-icon-theme = "Do not upgrade to version: 2.91.0 because prefer stable tree"
 RECIPE_MAINTAINER_pn-gnome-icon-theme = "Edwin Zhai <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-gtk-doc = "red"
@@ -5197,15 +5215,15 @@ RECIPE_STATUS_pn-matchbox-themes-gtk = "red"
 RECIPE_LATEST_VERSION_pn-matchbox-themes-gtk = "1.0"
 RECIPE_MAINTAINER_pn-matchbox-themes-gtk = "Edwin Zhai <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-matchbox-wm-2 = "red"
+RECIPE_STATUS_pn-matchbox-wm-2 = "green"
 DISTRO_PN_ALIAS_pn-matchbox-wm-2 = "Mandriva=matchbox-window-manager Debian=matchbox-window-manager"
-RECIPE_LATEST_VERSION_pn-matchbox-wm-2 = "2106"
-RECIPE_LAST_UPDATE_pn-matchbox-wm-2= "Sep 26, 2008"
+RECIPE_LATEST_VERSION_pn-matchbox-wm-2 = "0.0+svnr2106"
+RECIPE_LAST_UPDATE_pn-matchbox-wm-2= "Dec 31, 2010"
 RECIPE_MAINTAINER_pn-matchbox-wm-2 = "Edwin Zhai <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-metacity = "red"
-RECIPE_LATEST_VERSION_pn-metacity = "2.30.1"
-RECIPE_LAST_UPDATE_pn-metacity = "Sep 22, 2008"
+RECIPE_STATUS_pn-metacity = "green"
+RECIPE_LATEST_VERSION_pn-metacity = "2.30.3"
+RECIPE_LAST_UPDATE_pn-metacity = "Dec 30, 2010"
 RECIPE_MAINTAINER_pn-metacity = "Edwin Zhai <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-polkit-gnome = "green"
@@ -5407,7 +5425,12 @@ RECIPE_LATEST_VERSION_pn-libtool-cross = "2.4"
 RECIPE_LATEST_VERSION_pn-gthumb = "2.12.2"
 RECIPE_LATEST_VERSION_pn-libtheora = "1.2.0"
 RECIPE_NO_UPDATE_REASON_pn-libtheora = "1.1.1 is latest stable release not 1.2.0alpha1"
+
+RECIPE_STATUS_pn-libgdata = "red"
 RECIPE_LATEST_VERSION_pn-libgdata = "0.8.0"
+RECIPE_LAST_UPDATE_pn-libgdata = "Dec 29, 2010"
+RECIPE_MAINTAINER_pn-libgdata = "Edwin Zhai <edwin.zhai@intel.com>"
+
 RECIPE_LATEST_VERSION_pn-man-pages = "3.32"
 RECIPE_LATEST_VERSION_pn-qmmp = "0.4.3"
 RECIPE_LATEST_VERSION_pn-sysprof = "6b5b8432711ef5c747f8375073cd9af88922d3c6"
-- 
1.6.3.3


