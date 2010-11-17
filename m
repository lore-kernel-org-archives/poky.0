Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F0E24C80B71
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 01:59:34 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Nov 2010 23:59:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,209,1288594800"; d="scan'208";a="627595768"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost) ([10.239.48.1])
	by fmsmga002.fm.intel.com with ESMTP; 16 Nov 2010 23:59:33 -0800
Message-Id: <49a05acd5b9335e559d4170d0e9bc95a50c42e18.1289980256.git.lei.mei@intel.com>
In-Reply-To: <cover.1289980256.git.lei.mei@intel.com>
References: <cover.1289980256.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Wed, 17 Nov 2010 14:15:51 +0800
To: poky@yoctoproject.org
X-Mailman-Approved-At: Wed, 17 Nov 2010 10:48:11 -0600
Subject: [PATCH 1/1] distro_tracking_fields.inc: remove some invalid packages information from it
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
X-List-Received-Date: Wed, 17 Nov 2010 07:59:35 -0000

This commit fix [BUGID #514]

Some packages were removed from the world, but their information also exist in the distro_tracking_fields.inc.

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |  553 +-------------------
 1 files changed, 1 insertions(+), 552 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 372297a..8d16a7c 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -72,10 +72,6 @@ RECIPE_STATUS_pn-minicom = "red"
 RECIPE_LATEST_VERIONS_pn-minicom = "check"
 RECIPE_MAINTAINER_pn-minicom = "Dongxiao Xu <dongxiao.xu@intel.com"
 
-RECIPE_STATUS_pn-moblin-proto = "red"
-RECIPE_LATEST_VERIONS_pn-moblin-proto = "check"
-RECIPE_MAINTAINER_pn-moblin-proto = "Dexuan Cui <dexuan.cui@intel.com>"
-
 RECIPE_STATUS_pn-patch = "red"
 RECIPE_LATEST_VERIONS_pn-patch = "check"
 RECIPE_MAINTAINER_pn-patch = "Nitin A Kamble <nitin.a.kamble@intel.com>"
@@ -344,7 +340,6 @@ RECIPE_LATEST_RELEASE_DATE_pn-libusb-compat = "07/2009"
 RECIPE_COMMENTS_pn-libusb-compat = "replaces libusb, but doesn't provides libusbpp"
 DISTRO_PN_ALIAS_pn-libusb-compat = "OSPDT"
 
-
 RECIPE_STATUS_pn-libnl = "yellow"    # still need to update to git
 RECIPE_MAINTAINER_pn-libnl = "Qing He <qing.he@intel.com>"
 DEPENDENCY_CHECK_pn-libnl = "not done"
@@ -864,16 +859,6 @@ RECIPE_LATEST_RELEASE_DATE_pn-fakeroot = "11/2009"
 RECIPE_COMMENTS_pn-fakeroot = ""
 RECIPE_MAINTAINER_pn-fakeroot = "Kevin Tian <kevin.tian@intel.com>"
 
-RECIPE_STATUS_pn-prism-firmware = "green"
-DEPENDENCY_CHECK_pn-prism-firmware = "not done"
-RECIPE_LATEST_VERSION_pn-prism-firmware = "1.8.4"
-RECIPE_NO_UPDATE_REASON_pn-prism-firmware = "1.7.4 and 1.8.4 are both released at same time, while 1.8.4 is known with connection issue"
-RECIPE_INTEL_SECTION_pn-prism-firmware = "base utils"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-prism-firmware = "same time"
-RECIPE_LATEST_RELEASE_DATE_pn-prism-firmware = "07/2005"
-RECIPE_COMMENTS_pn-prism-firmware = "1.7.4 and 1.8.4 are both released at same time. perhaps then we don't need upgrade this one?"
-RECIPE_MAINTAINER_pn-prism-firmware = "Kevin Tian <kevin.tian@intel.com>"
-
 RECIPE_STATUS_pn-base-files = "green"
 DEPENDENCY_CHECK_pn-base-files = "not done"
 RECIPE_LATEST_VERSION_pn-base-files = "3.0.14"
@@ -1023,9 +1008,6 @@ RECIPE_STATUS_pn-coreutils = "red"
 RECIPE_MAINTAINER_pn-coreutils = "Kevin Tian <kevin.tian@intel.com>"
 RECIPE_LATEST_VERSION_pn-coreutils = "8.5"
 
-
-
-
 RECIPE_STATUS_pn-libuser = "red"
 RECIPE_MAINTAINER_pn-libuser = "Edwin Zhai <edwin.zhai@intel.com>"
 DEPENDENCY_CHECK_pn-libuser = "not done"
@@ -1076,7 +1058,6 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-pax = "n/a"
 RECIPE_LATEST_RELEASE_DATE_pn-pax = "08/2005"
 RECIPE_COMMENTS_pn-pax = ""
 
-
 RECIPE_STATUS_pn-watchdog = "green"
 RECIPE_MAINTAINER_pn-watchdog = "Dexuan Cui <dexuan.cui@intel.com>"
 DEPENDENCY_CHECK_pn-watchdog = "not done"
@@ -1088,10 +1069,6 @@ RECIPE_LATEST_RELEASE_DATE_pn-watchdog = "06/2010"
 RECIPE_COMMENTS_pn-watchdog = ""
 DISTRO_PN_ALIAS_pn-watchdog = "Debian=watchdog Ubuntu=watchdog Mandriva=watchdog"
 
-RECIPE_STATUS_pn-json-glib  = "red"
-RECIPE_LATEST_VERSION_pn-json-glib  = "0.7.6+d5922b42604c09ba7ebcb0adc1566d0a33a99808"
-RECIPE_MAINTAINER_pn-json-glib  = "Kevin Tian <kevin.tian@intel.com>"
-
 RECIPE_STATUS_pn-libatomics-ops = "red"
 DISTRO_PN_ALIAS_pn-libatomics-ops = "Meego=libatomic-ops Debian=libatomic-ops Ubuntu=libatomic-ops OpenSuSE=libatomic-ops Mandriva=libatomic-ops"
 RECIPE_LATEST_VERSION_pn-libatomics-ops = "7.2alpha4"
@@ -1105,11 +1082,6 @@ RECIPE_STATUS_pn-libgdbus  = "red"
 RECIPE_LATEST_VERSION_pn-libgdbus  = "Release-0.2"
 RECIPE_MAINTAINER_pn-libgdbus  = "Kevin Tian <kevin.tian@intel.com>"
 
-RECIPE_STATUS_pn-libjana = "red"
-DISTRO_PN_ALIAS_pn-libjana = "Fedora=jana OpenSuSE=jana"
-RECIPE_LATEST_VERSION_pn-libjana = "acd72f232c72f8692dcacdd885eea756778042c2"
-RECIPE_MAINTAINER_pn-libjana = "Kevin Tian <kevin.tian@intel.com>"
-
 RECIPE_STATUS_pn-apr = "red"
 RECIPE_LATEST_VERSION_pn-apr = "1.4.2"
 RECIPE_MAINTAINER_pn-apr = "Kevin Tian <kevin.tian@intel.com>"
@@ -1143,22 +1115,10 @@ RECIPE_STATUS_pn-insserv = "red"
 RECIPE_LATEST_VERSION_pn-insserv = "1.14.0"
 RECIPE_MAINTAINER_pn-insserv = "Kevin Tian <kevin.tian@intel.com>"
 
-RECIPE_STATUS_pn-moblin-app-installer = "red"
-RECIPE_LATEST_VERSION_pn-moblin-app-installer = "n/a"
-RECIPE_MAINTAINER_pn-moblin-app-installer = "Kevin Tian <kevin.tian@intel.com>"
-
 RECIPE_STATUS_pn-modutils-collateral = "red"
 RECIPE_LATEST_VERSION_pn-modutils-collateral = "1.0"
 RECIPE_MAINTAINER_pn-modutils-collateral = "Kevin Tian <kevin.tian@intel.com>"
 
-RECIPE_STATUS_pn-monit = "red"
-RECIPE_LATEST_VERSION_pn-monit = "5.1.1"
-RECIPE_MAINTAINER_pn-monit = "Kevin Tian <kevin.tian@intel.com>"
-
-RECIPE_STATUS_pn-mozilla-headless-services = "red"
-RECIPE_LATEST_VERSION_pn-mozilla-headless-services = "0.1+git0+c679b95dd8c2807b70186d233b3833861a499315"
-RECIPE_MAINTAINER_pn-mozilla-headless-services = "Kevin Tian <kevin.tian@intel.com>"
-
 RECIPE_STATUS_pn-mtd-utils = "red"
 RECIPE_LATEST_VERSION_pn-mtd-utils = "1.3.1+a67747b7a314e685085b62e8239442ea54959dbc"
 RECIPE_MAINTAINER_pn-mtd-utils = "Kevin Tian <kevin.tian@intel.com>"
@@ -1167,18 +1127,10 @@ RECIPE_STATUS_pn-ohm = "red"
 RECIPE_LATEST_VERSION_pn-ohm = "3cb3496846508929b9f2d05683ec93523de7947c"
 RECIPE_MAINTAINER_pn-ohm = "Kevin Tian <kevin.tian@intel.com>"
 
-RECIPE_STATUS_pn-pam = "red"
-RECIPE_LATEST_VERSION_pn-pam = "1.1.1"
-RECIPE_MAINTAINER_pn-pam = "Kevin Tian <kevin.tian@intel.com>"
-
 RECIPE_STATUS_pn-procps = "red"
 RECIPE_LATEST_VERSION_pn-procps = "3.2.8"
 RECIPE_MAINTAINER_pn-procps = "Kevin Tian <kevin.tian@intel.com>"
 
-RECIPE_STATUS_pn-gmime = "red"
-RECIPE_LATEST_VERSION_pn-gmime = "2.5.3"
-RECIPE_MAINTAINER_pn-gmime = "Kevin Tian <kevin.tian@intel.com>"
-
 RECIPE_STATUS_pn-iso-codes = "red"
 RECIPE_LATEST_VERSION_pn-iso-codes = "3.16"
 RECIPE_MAINTAINER_pn-iso-codes = "Kevin Tian <kevin.tian@intel.com>"
@@ -1187,10 +1139,6 @@ RECIPE_STATUS_pn-libgsf = "red"
 RECIPE_LATEST_VERSION_pn-libgsf = "1.14.18"
 RECIPE_MAINTAINER_pn-libgsf = "Kevin Tian <kevin.tian@intel.com>"
 
-RECIPE_STATUS_pn-libnotify = "red"
-RECIPE_LATEST_VERSION_pn-libnotify = "0.4.5"
-RECIPE_MAINTAINER_pn-libnotify = "Kevin Tian <kevin.tian@intel.com>"
-
 RECIPE_STATUS_pn-beecrypt = "red"
 RECIPE_LATEST_VERSION_pn-beecrypt = "4.2.1"
 RECIPE_MAINTAINER_pn-beecrypt = "Kevin Tian <kevin.tian@intel.com>"
@@ -1213,10 +1161,6 @@ RECIPE_LATEST_VERSION_pn-console-tools = "0.3.2"
 RECIPE_MAINTAINER_pn-console-tools = "Kevin Tian <kevin.tian@intel.com>"
 DISTRO_PN_ALIAS_pn-console-tools = "Debian=console-tools Ubuntu=console-tools"
 
-RECIPE_STATUS_pn-dalston = "red"
-RECIPE_LATEST_VERSION_pn-dalston = "?"
-RECIPE_MAINTAINER_pn-dalston = "Kevin Tian <kevin.tian@intel.com>"
-
 RECIPE_STATUS_pn-devicekit = "red"
 DISTRO_PN_ALIAS_pn-devicekit = "Fedora=DeviceKit Mandriva=devicekit"
 RECIPE_LATEST_VERSION_pn-devicekit = "3"
@@ -1329,20 +1273,6 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-grub = "n/a"
 RECIPE_LATEST_RELEASE_DATE_pn-grub = "12/2005"
 RECIPE_COMMENTS_pn-grub = ""
 
-RECIPE_STATUS_pn-yum = "yellow"    # unused patch files
-RECIPE_MAINTAINER_pn-yum = "Qing He <qing.he@intel.com>"
-DEPENDENCY_CHECK_pn-yum = "not done"
-RECIPE_LATEST_VERSION_pn-yum = "3.2.27"
-RECIPE_PATCH_pn-yum+paths = "allow custom lib path"
-RECIPE_PATCH_pn-yum+paths2 = "fix python lib path"
-RECIPE_PATCH_pn-yum+yum-install-recommends.py = "poky package system"
-RECIPE_PATCH_pn-yum+extract-postinst.awk = "poky package system"
-RECIPE_PATCH_pn-yum+98_yum = "used by populate-volatile"
-RECIPE_INTEL_SECTION_pn-yum = "base utils"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-yum = "1 month"
-RECIPE_LATEST_RELEASE_DATE_pn-yum = "03/2010"
-RECIPE_COMMENTS_pn-yum = "most files are under GPLv2+, but yum/sqlutils.py is under GPLv2"
-
 RECIPE_STATUS_pn-update-rc.d = "green"
 RECIPE_MAINTAINER_pn-update-rc.d = "Qing He <qing.he@intel.com>"
 DEPENDENCY_CHECK_pn-update-rc.d = "not done"
@@ -1656,16 +1586,6 @@ RECIPE_LATEST_RELEASE_DATE_pn-tinylogin = "n/a"
 RECIPE_COMMENTS_pn-tinylogin = "merged into busybox"
 DISTRO_PN_ALIAS_pn-tinylogin = "Debian=busybox Ubuntu=busybox Mandriva=busybox"
 
-RECIPE_STATUS_pn-spectrum-fw = "green"   # need upgrade
-DISTRO_PN_ALIAS_pn-spectrum-fw = ""
-RECIPE_MAINTAINER_pn-spectrum-fw = "Ke Yu <ke.yu@intel.com>"
-DEPENDENCY_CHECK_pn-spectrum-fw = "not done"
-RECIPE_LATEST_VERSION_pn-spectrum-fw = "1.0"
-RECIPE_INTEL_SECTION_pn-spectrum-fw = "base utils"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-spectrum-fw = "n/a"
-RECIPE_LATEST_RELEASE_DATE_pn-spectrum-fw = "n/a"
-RECIPE_COMMENTS_pn-spectrum-fw = "difficult to identify official site and current status"
-
 RECIPE_STATUS_pn-rpm = "red"   # need upgrade
 RECIPE_MAINTAINER_pn-rpm = "Joshua Lock <joshua.lock@intel.com>"
 DEPENDENCY_CHECK_pn-rpm = "not done"
@@ -1764,14 +1684,6 @@ RECIPE_STATUS_pn-openobex = "red"
 RECIPE_LATEST_VERSION_pn-openobex = "1.5"
 RECIPE_MAINTAINER_pn-openobex = "Qing He <qing.he@intel.com>"
 
-RECIPE_STATUS_pn-sessreg = "red"
-RECIPE_LATEST_VERSION_pn-sessreg = "1.0.5"
-RECIPE_MAINTAINER_pn-sessreg = "Qing He <qing.he@intel.com>"
-
-RECIPE_STATUS_pn-packagekit = "red"
-RECIPE_LATEST_VERSION_pn-packagekit = "0.6.3"
-RECIPE_MAINTAINER_pn-packagekit = "Qing He <qing.he@intel.com>"
-
 RECIPE_STATUS_pn-sed = "green"
 RECIPE_MAINTAINER_pn-sed = "Qing He <qing.he@intel.com>"
 DEPENDENCY_CHECK_pn-sed = "not done"
@@ -1822,18 +1734,10 @@ RECIPE_LATEST_VERSION_pn-ubootchart = "0.0+r12"
 RECIPE_MAINTAINER_pn-ubootchart = "Qing He <qing.he@intel.com>"
 DISTRO_PN_ALIAS_pn-ubootchart = "OSPDT upstream=http://code.google.com/p/ubootchart"
 
-RECIPE_STATUS_pn-tracker = "red"
-RECIPE_LATEST_VERSION_pn-tracker = "0.9.6"
-RECIPE_MAINTAINER_pn-tracker = "Qing He <qing.he@intel.com>"
-
 RECIPE_STATUS_pn-tiff = "red"
 RECIPE_LATEST_VERSION_pn-tiff = "3.9.2"
 RECIPE_MAINTAINER_pn-tiff = "Qing He <qing.he@intel.com>"
 
-RECIPE_STATUS_pn-syncevolution = "red"
-RECIPE_LATEST_VERSION_pn-syncevolution = "0.9.1"
-RECIPE_MAINTAINER_pn-syncevolution = "Qing He <qing.he@intel.com>"
-
 RECIPE_STATUS_pn-libexif = "red"
 RECIPE_LATEST_VERSION_pn-libexif = "0.6.19"
 RECIPE_MAINTAINER_pn-libexif = "Qing He <qing.he@intel.com>"
@@ -1850,14 +1754,6 @@ RECIPE_STATUS_pn-wbxml2 = "red"
 RECIPE_LATEST_VERSION_pn-wbxml2 = "0.10.8"
 RECIPE_MAINTAINER_pn-wbxml2 = "Qing He <qing.he@intel.com>"
 
-RECIPE_STATUS_pn-sreadahead = "red"
-RECIPE_LATEST_VERSION_pn-sreadahead = "1.0"
-RECIPE_MAINTAINER_pn-sreadahead = "Qing He <qing.he@intel.com>"
-
-RECIPE_STATUS_pn-smart = "red"
-RECIPE_LATEST_VERSION_pn-smart = "1.3"
-RECIPE_MAINTAINER_pn-smart = "Qing He <qing.he@intel.com>"
-
 RECIPE_STATUS_pn-qemu-config = "red"
 RECIPE_LATEST_VERSION_pn-qemu-config = "1.0"
 DISTRO_PN_ALIAS_pn-qemu-config = "OpenedHand"
@@ -1922,15 +1818,6 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-cronie = "3 months"
 RECIPE_LATEST_RELEASE_DATE_pn-cronie = "02/2010"
 RECIPE_MAINTAINER_pn-cronie = "Dexuan Cui <dexuan.cui@intel.com>"
 
-RECIPE_STATUS_pn-crontabs = "red" 
-DEPENDENCY_CHECK_pn-crontabs = "not done"
-RECIPE_LATEST_VERSION_pn-crontabs = "n/a"
-RECIPE_INTEL_SECTION_pn-crontabs = "base"
-RECIPE_NO_OF_PATCHES_pn-crontabs = "0"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-crontabs = "n/a"
-RECIPE_LATEST_RELEASE_DATE_pn-crontabs = "n/a"
-RECIPE_MAINTAINER_pn-crontabs = "Scott Garman <scott.a.garman@intel.com>"
-
 RECIPE_STATUS_pn-grep = "green" 
 DEPENDENCY_CHECK_pn-grep = "not done"
 RECIPE_LATEST_VERSION_pn-grep = "2.7"
@@ -2025,23 +1912,6 @@ RECIPE_LATEST_RELEASE_DATE_pn-libproxy="2010/05/19"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libproxy="3 months"
 RECIPE_MAINTAINER_pn-libproxy = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-networkmanager="red"
-DISTRO_PN_ALIAS_pn-networkmanager = "Fedora=NetworkManager OpenSuSE=NetworkManager Ubuntu=network-manager Debian=network-manager"
-RECIPE_LATEST_VERSION_pn-networkmanager="0.8"
-RECIPE_NO_UPDATE_REASON_pn-networkmanager="poky will use connman instead"
-RECIPE_NO_OF_PATCHES_pn-networkmanager="4"
-RECIPE_LATEST_RELEASE_DATE_pn-networkmanager="2010/04/18"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-networkmanager="3 months"
-RECIPE_MAINTAINER_pn-networkmanager = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
-RECIPE_STATUS_pn-networkmanager-applet="red"
-RECIPE_LATEST_VERSION_pn-networkmanager-applet="n/a"
-RECIPE_NO_UPDATE_REASON_pn-networkmanager-applet="poky will use connman instead"
-RECIPE_NO_OF_PATCHES_pn-networkmanager-applet="4"
-RECIPE_LATEST_RELEASE_DATE_pn-networkmanager-applet="n/a"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-networkmanager-applet="n/a"
-RECIPE_MAINTAINER_pn-networkmanager-applet = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
 RECIPE_STATUS_pn-connman = "green"
 DISTRO_PN_ALIAS_pn-connman = "Meego=connman"
 RECIPE_LATEST_VERSION_pn-connman = "0.56"
@@ -2058,7 +1928,6 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-connman-gnome="n/a"
 RECIPE_MAINTAINER_pn-connman-gnome = "Dongxiao Xu <dongxiao.xu@intel.com>"
 DISTRO_PN_ALIAS_pn-connman-gnome = "Intel"
 
-
 RECIPE_STATUS_pn-empathy = "red"
 RECIPE_LATEST_VERSION_pn-empathy = "2.31.2"
 RECIPE_MAINTAINER_pn-empathy = "Dongxiao Xu <dongxiao.xu@intel.com>"
@@ -2087,10 +1956,6 @@ RECIPE_STATUS_pn-libopensync-plugin-syncml = "red"
 RECIPE_LATEST_VERSION_pn-libopensync-plugin-syncml = "0.39"
 RECIPE_MAINTAINER_pn-libopensync-plugin-syncml = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-mobile-broadband-provider-info = "red"
-RECIPE_LATEST_VERSION_pn-mobile-broadband-provider-info = "084f664306398abf0df88cb82add5a577fc4ce72"
-RECIPE_MAINTAINER_pn-mobile-broadband-provider-info = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
 RECIPE_STATUS_pn-ofono = "red"
 RECIPE_LATEST_VERSION_pn-ofono = "0.21"
 RECIPE_MAINTAINER_pn-ofono = "Dongxiao Xu <dongxiao.xu@intel.com>"
@@ -2127,19 +1992,11 @@ RECIPE_STATUS_pn-ppp-dialin = "red"
 RECIPE_LATEST_VERSION_pn-ppp-dialin = "check"
 RECIPE_MAINTAINER_pn-ppp-dialin = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-samba = "red"
-RECIPE_LATEST_VERSION_pn-samba = "3.5.3"
-RECIPE_MAINTAINER_pn-samba = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
 RECIPE_STATUS_pn-libgsmd = "red"
 RECIPE_LATEST_VERSION_pn-libgsmd = "check"
 DISTRO_PN_ALIAS_pn-libgsmd = "Fedora=gsm Ubuntu=libgsm Debian=libgsm Opensuse=libgsm"
 RECIPE_MAINTAINER_pn-libgsmd = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-gnet = "red"
-RECIPE_LATEST_VERSION_pn-gnet = "2.0.8"
-RECIPE_MAINTAINER_pn-gnet = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
 RECIPE_STATUS_pn-zeroconf = "red"
 RECIPE_LATEST_VERSION_pn-zeroconf = "0.9"
 DISTRO_PN_ALIAS_pn-zeroconf = "OSPDT upstream=http://www.progsoc.org/~wildfire/zeroconf/"
@@ -2149,10 +2006,6 @@ RECIPE_STATUS_pn-gypsy = "red"
 RECIPE_LATEST_VERSION_pn-gypsy = "0.7"
 RECIPE_MAINTAINER_pn-gypsy = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-librest = "red"
-RECIPE_LATEST_VERSION_pn-librest = "0.6"
-RECIPE_MAINTAINER_pn-librest = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
 RECIPE_STATUS_pn-libopensync-plugin-file = "red"
 RECIPE_LATEST_VERSION_pn-libopensync-plugin-file = "0.39"
 RECIPE_MAINTAINER_pn-libopensync-plugin-file = "Dongxiao Xu <dongxiao.xu@intel.com>"
@@ -2161,27 +2014,6 @@ RECIPE_STATUS_pn-libopensync-plugin-vformat = "red"
 RECIPE_LATEST_VERSION_pn-libopensync-plugin-vformat = "0.39"
 RECIPE_MAINTAINER_pn-libopensync-plugin-vformat = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-libsynthesis = "red"
-RECIPE_LATEST_VERSION_pn-libsynthesis = "b682e6be01f2a0ee97e034d03320059f779978a3"
-RECIPE_MAINTAINER_pn-libsynthesis = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
-RECIPE_STATUS_pn-twitter-glib = "red"
-RECIPE_LATEST_VERSION_pn-twitter-glib = "0.9.8"
-RECIPE_MAINTAINER_pn-twitter-glib = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
-RECIPE_STATUS_pn-libsocialweb = "red"
-RECIPE_LATEST_VERSION_pn-libsocialweb = "n/a"
-RECIPE_MAINTAINER_pn-libsocialweb = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
-RECIPE_STATUS_pn-libccss = "red"
-DISTRO_PN_ALIAS_pn-libccss = "OpenSuSE=ccss"
-RECIPE_LATEST_VERSION_pn-libccss = "aaed6b2b1a206b7a0c55a786b980bdec21004a93"
-RECIPE_MAINTAINER_pn-libccss = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
-RECIPE_STATUS_pn-bisho = "red"
-RECIPE_LATEST_VERSION_pn-bisho = "n/a"
-RECIPE_MAINTAINER_pn-bisho = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
 RECIPE_STATUS_pn-libsyncml = "red"
 RECIPE_LATEST_VERSION_pn-libsyncml = "0.5.4"
 RECIPE_MAINTAINER_pn-libsyncml = "Dongxiao Xu <dongxiao.xu@intel.com>"
@@ -2194,13 +2026,6 @@ RECIPE_STATUS_pn-libetpan = "red"
 RECIPE_LATEST_VERSION_pn-libetpan = "1.0"
 RECIPE_MAINTAINER_pn-libetpan = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-bickley = "red"
-RECIPE_LATEST_VERSION_pn-bickley = "0.4.4"
-RECIPE_MAINTAINER_pn-bickley = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
-RECIPE_STATUS_pn-mojito = "red"
-RECIPE_LATEST_VERSION_pn-mojito = "n/a"
-RECIPE_MAINTAINER_pn-mojito = "Dongxiao Xu <dongxiao.xu@intel.com>"
 RECIPE_STATUS_pn-hostap-utils="yellow" # patch investigation needed; hostap-utils.inc is only included by one bb file.
 RECIPE_LATEST_VERSION_pn-hostap-utils="0.4.7"
 RECIPE_NO_OF_PATCHES_pn-hostap-utils="1"
@@ -2294,34 +2119,6 @@ RECIPE_LATEST_RELEASE_DATE_pn-enchant="2010/04/01"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-enchant="10 months"
 RECIPE_MAINTAINER_pn-enchant = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-task-moblin = "red"
-RECIPE_LATEST_VERSION_pn-task-moblin = "1.0"
-RECIPE_MAINTAINER_pn-task-moblin = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
-RECIPE_STATUS_pn-task-moblin-apps-x11-pimlico = "red"
-RECIPE_LATEST_VERSION_pn-task-moblin-apps-x11-pimlico = "1.0"
-RECIPE_MAINTAINER_pn-task-moblin-apps-x11-pimlico = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
-RECIPE_STATUS_pn-task-moblin-boot = "red"
-RECIPE_LATEST_VERSION_pn-task-moblin-boot = "1.0"
-RECIPE_MAINTAINER_pn-task-moblin-boot = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
-RECIPE_STATUS_pn-task-moblin-sdk = "red"
-RECIPE_LATEST_VERSION_pn-task-moblin-sdk = "1.0"
-RECIPE_MAINTAINER_pn-task-moblin-sdk = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
-RECIPE_STATUS_pn-task-moblin-standalone-sdk-target = "red"
-RECIPE_LATEST_VERSION_pn-task-moblin-standalone-sdk-target = "1.0"
-RECIPE_MAINTAINER_pn-task-moblin-standalone-sdk-target = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
-RECIPE_STATUS_pn-task-moblin-tools = "red"
-RECIPE_LATEST_VERSION_pn-task-moblin-tools = "1.0"
-RECIPE_MAINTAINER_pn-task-moblin-tools = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
-RECIPE_STATUS_pn-task-moblin-x11-netbook = "red"
-RECIPE_LATEST_VERSION_pn-task-moblin-x11-netbook = "1.0"
-RECIPE_MAINTAINER_pn-task-moblin-x11-netbook = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
 RECIPE_STATUS_pn-task-poky-sdk = "red"
 RECIPE_LATEST_VERSION_pn-task-poky-sdk = "1.0"
 RECIPE_MAINTAINER_pn-task-poky-sdk = "Dongxiao Xu <dongxiao.xu@intel.com>"
@@ -2338,22 +2135,10 @@ RECIPE_STATUS_pn-task-poky-standalone-sdk-target = "red"
 RECIPE_LATEST_VERSION_pn-task-poky-standalone-sdk-target = "1.0"
 RECIPE_MAINTAINER_pn-task-poky-standalone-sdk-target = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-task-poky-x11-netbook = "red"
-RECIPE_LATEST_VERSION_pn-task-poky-x11-netbook = "1.0"
-RECIPE_MAINTAINER_pn-task-poky-x11-netbook = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
-RECIPE_STATUS_pn-xerces-c = "red"
-RECIPE_LATEST_VERSION_pn-xerces-c = "3.1.1"
-RECIPE_MAINTAINER_pn-xerces-c = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
 RECIPE_STATUS_pn-xournal = "red"
 RECIPE_LATEST_VERSION_pn-xournal = "0.4.5"
 RECIPE_MAINTAINER_pn-xournal = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-carrick = "red"
-RECIPE_LATEST_VERSION_pn-carrick = "1.0"
-RECIPE_MAINTAINER_pn-carrick = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
 RECIPE_STATUS_pn-wv = "red"
 RECIPE_LATEST_VERSION_pn-wv = "1.2.1"
 RECIPE_MAINTAINER_pn-wv = "Dongxiao Xu <dongxiao.xu@intel.com>"
@@ -2406,18 +2191,10 @@ RECIPE_STATUS_pn-task-poky = "green"
 RECIPE_LATEST_VERSION_pn-task-poky = "1.0"
 RECIPE_MAINTAINER_pn-task-poky = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-task-poky-minimal = "green"
-RECIPE_LATEST_VERSION_pn-task-poky-minimal = "1.0"
-RECIPE_MAINTAINER_pn-task-poky-minimal = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
 RECIPE_STATUS_pn-task-poky-basic = "green"
 RECIPE_LATEST_VERSION_pn-task-poky-basic = "1.0"
 RECIPE_MAINTAINER_pn-task-poky-basic = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-task-poky-sato = "green"
-RECIPE_LATEST_VERSION_pn-task-poky-sato = "1.0"
-RECIPE_MAINTAINER_pn-task-poky-sato = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
 RECIPE_STATUS_pn-task-poky-lsb = "green"
 RECIPE_LATEST_VERSION_pn-task-poky-lsb = "1.0"
 RECIPE_MAINTAINER_pn-task-poky-lsb = "Dongxiao Xu <dongxiao.xu@intel.com>"
@@ -2442,10 +2219,6 @@ RECIPE_STATUS_pn-poky-image-sdk-live = "green"
 RECIPE_LATEST_VERSION_pn-poky-image-sdk-live = "1.0"
 RECIPE_MAINTAINER_pn-poky-image-sdk-live = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-poky-moblin-proto = "red"
-RECIPE_LATEST_VERSION_pn-poky-moblin-proto = "check"
-RECIPE_MAINTAINER_pn-poky-moblin-proto = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
 RECIPE_STATUS_pn-poky-image-sdk-directdisk = "green"
 RECIPE_LATEST_VERSION_pn-poky-image-sdk-directdisk = "1.0"
 RECIPE_MAINTAINER_pn-poky-image-sdk-directdisk = "Dongxiao Xu <dongxiao.xu@intel.com>"
@@ -2465,21 +2238,6 @@ RECIPE_LATEST_RELEASE_DATE_pn-libid3tag="2004/02/18"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libid3tag="8 months"
 RECIPE_MAINTAINER_pn-libid3tag = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-libmad="yellow" # patch investigation needed
-RECIPE_LATEST_VERSION_pn-libmad="0.15.1b"
-RECIPE_NO_OF_PATCHES_pn-libmad="2"
-RECIPE_LATEST_RELEASE_DATE_pn-libmad="2004/02/18"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libmad="8 months"
-RECIPE_MAINTAINER_pn-libmad = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
-RECIPE_STATUS_pn-lame="green"
-RECIPE_LATEST_VERSION_pn-lame="3.98.4"
-RECIPE_NO_OF_PATCHES_pn-lame="1"
-RECIPE_LATEST_RELEASE_DATE_pn-lame="2010/04/14"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-lame="20 months"
-RECIPE_MAINTAINER_pn-lame = "Dongxiao Xu <dongxiao.xu@intel.com>"
-DISTRO_PN_ALIAS_pn-lame="Ubuntu=lame OpenSuse=lame"
-
 RECIPE_STATUS_pn-flac="green"
 RECIPE_LATEST_VERSION_pn-flac="1.2.1"
 RECIPE_NO_OF_PATCHES_pn-flac="3"
@@ -2501,13 +2259,6 @@ RECIPE_LATEST_RELEASE_DATE_pn-libogg="2010/05/26"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libogg="9 months"
 RECIPE_MAINTAINER_pn-libogg = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-mpeg2dec="green"
-RECIPE_LATEST_VERSION_pn-mpeg2dec="0.4.1"
-RECIPE_NO_OF_PATCHES_pn-mpeg2dec="0"
-RECIPE_LATEST_RELEASE_DATE_pn-mpeg2dec="2006/09/19"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-mpeg2dec="2 years"
-RECIPE_MAINTAINER_pn-mpeg2dec = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
 RECIPE_STATUS_pn-gstreamer="green"
 RECIPE_LATEST_VERSION_pn-gstreamer="0.10.30"
 RECIPE_NO_OF_PATCHES_pn-gstreamer="2"
@@ -2631,14 +2382,6 @@ DISTRO_PN_ALIAS_pn-gst-ffmpeg = "Mandriva=gstreamer0.10-ffmpeg Debian=gstreamer0
 RECIPE_LATEST_VERSION_pn-gst-ffmpeg = "0.10.10"
 RECIPE_MAINTAINER_pn-gst-ffmpeg = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-moblin-sound-theme = "red"
-RECIPE_LATEST_VERSION_pn-moblin-sound-theme = "0.3"
-RECIPE_MAINTAINER_pn-moblin-sound-theme = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
-RECIPE_STATUS_pn-librds = "red"
-RECIPE_LATEST_VERSION_pn-librds = "0.0.1"
-RECIPE_MAINTAINER_pn-librds = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
 RECIPE_STATUS_pn-alsa-oss = "red"
 RECIPE_LATEST_VERSION_pn-alsa-oss = "1.0.17"
 RECIPE_MAINTAINER_pn-alsa-oss = "Dongxiao Xu <dongxiao.xu@intel.com>"
@@ -2660,24 +2403,11 @@ RECIPE_STATUS_pn-libnice = "red"
 RECIPE_LATEST_VERSION_pn-libnice = "0.0.12"
 RECIPE_MAINTAINER_pn-libnice = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-bognor-regis = "red"
-RECIPE_LATEST_VERSION_pn-bognor-regis = "0.5.2-2"
-RECIPE_MAINTAINER_pn-bognor-regis = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
-RECIPE_STATUS_pn-gst-fluendo-mp3 = "red"
-RECIPE_LATEST_VERSION_pn-gst-fluendo-mp3 = "0.10.10"
-RECIPE_MAINTAINER_pn-gst-fluendo-mp3 = "Dongxiao Xu <dongxiao.xu@intel.com>"
-DISTRO_PN_ALIAS_pn-gst-fluendo-mp3 = "Debian=gstreamer0.10-fluendo-mp3  Ubuntu=gstreamer0.10-fluendo-mp3"
-
 RECIPE_STATUS_pn-gst-fluendo-mpegdemux = "red"
 RECIPE_LATEST_VERSION_pn-gst-fluendo-mpegdemux = "0.10.23"
 RECIPE_MAINTAINER_pn-gst-fluendo-mpegdemux = "Dongxiao Xu <dongxiao.xu@intel.com>"
 DISTRO_PN_ALIAS_pn-gst-fluendo-mpegdemux = "Ubuntu=gstreamer0.10-fluendo-mpegdemux Debian=gstreamer0.10-fluendo-mpegdemux"
 
-RECIPE_STATUS_pn-hornsey = "red"
-RECIPE_LATEST_VERSION_pn-hornsey = "1.5.1"
-RECIPE_MAINTAINER_pn-hornsey = "Dongxiao Xu <dongxiao.xu@intel.com>"
-
 RECIPE_STATUS_pn-libomxil = "red"
 RECIPE_LATEST_VERSION_pn-libomxil = "0.9.2.1"
 RECIPE_MAINTAINER_pn-libomxil = "Dongxiao Xu <dongxiao.xu@intel.com>"
@@ -2868,10 +2598,6 @@ RECIPE_STATUS_pn-run-postinsts="green" # all local code
 RECIPE_LATEST_VERSION_pn-postinsts="1.0"
 RECIPE_MAINTAINER_pn-postinsts = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-staging-linkage="green" # no code
-RECIPE_LATEST_VERSION_pn-staging-linkage="1.0"
-RECIPE_MAINTAINER_pn-staging-linkage = "Nitin A Kamble <nitin.a.kamble@intel.com>"
-
 RECIPE_STATUS_pn-nasm="green" 
 RECIPE_LATEST_VERSION_pn-nasm="2.07"
 RECIPE_MAINTAINER_pn-nasm = "Nitin A Kamble <nitin.a.kamble@intel.com>"
@@ -2898,10 +2624,6 @@ RECIPE_STATUS_pn-python-imaging="green"
 RECIPE_LATEST_VERSION_pn-python-imaging="1.1.7"
 RECIPE_MAINTAINER_pnpython--imaging = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-python-iniparse="red"
-RECIPE_LATEST_VERSION_pn-python-iniparse="0.3.2"
-RECIPE_MAINTAINER_pn-python-iniparse = "Nitin A Kamble <nitin.a.kamble@intel.com>"
-
 RECIPE_STATUS_pn-python-pycurl="green"
 RECIPE_LATEST_VERSION_pn-python-pycurl="7.19.0"
 RECIPE_MAINTAINER_pn-python-pycurl = "Nitin A Kamble <nitin.a.kamble@intel.com>"
@@ -2926,18 +2648,10 @@ RECIPE_LATEST_VERSION_pn-python-scons="2.0.1"
 DISTRO_PN_ALIAS_pn-python-scons = "Fedora=scons OpenSuSE=scons Ubuntu=scons Mandriva=scons Debian=scons"
 RECIPE_MAINTAINER_pn-python-scons = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-python-urlgrabber="red"
-RECIPE_LATEST_VERSION_pn-python-urlgrabber="3.9.1"
-RECIPE_MAINTAINER_pn-python-urlgrabber = "Nitin A Kamble <nitin.a.kamble@intel.com>"
-
 RECIPE_STATUS_pn-python="green"
 RECIPE_LATEST_VERSION_pn-python="2.6.6"
 RECIPE_MAINTAINER_pn-python = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-yum-metadata-parser="red"
-RECIPE_LATEST_VERSION_pn-yum-metadata-parser="1.1.4"
-RECIPE_MAINTAINER_pn-yum-metadata-parser = "Nitin A Kamble <nitin.a.kamble@intel.com>"
-
 RECIPE_STATUS_pn-quilt="green"
 RECIPE_LATEST_VERSION_pn-quilt="0.48"
 RECIPE_MAINTAINER_pn-quilt = "Nitin A Kamble <nitin.a.kamble@intel.com>"
@@ -2950,10 +2664,6 @@ RECIPE_STATUS_pn-unifdef="green" # poky local source files
 RECIPE_LATEST_VERSION_pn-unifdef="2.6.18+git"
 RECIPE_MAINTAINER_pn-unifdef = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-qmake2-cross="red"
-RECIPE_LATEST_VERSION_pn-qmake2-cross="2.10a"
-RECIPE_MAINTAINER_pn-qmake2-cross = "Nitin A Kamble <nitin.a.kamble@intel.com>"
-
 RECIPE_STATUS_pn-gnu-config="red" 
 RECIPE_LATEST_VERSION_pn-gnu-config="0.1+cvs20080123"
 DISTRO_PN_ALIAS_pn-gnu-config = "OpenedHand"
@@ -3054,7 +2764,6 @@ RECIPE_LATEST_RELEASE_DATE_pn-oh-puzzles = "04/2008"
 RECIPE_COMMENTS_pn-oh-puzzles = ""
 RECIPE_MAINTAINER_pn-oh-puzzles = "Zhai Edwin <edwin.zhai@intel.com>"
 
-
 RECIPE_STATUS_pn-gnome-terminal = "red"
 RECIPE_LATEST_VERSION_pn-gnome-terminal = "2.31.3"
 RECIPE_MAINTAINER_pn-gnome-terminal = "Edwin Zhai <edwin.zhai@intel.com>"
@@ -3065,30 +2774,6 @@ RECIPE_LATEST_VERSION_pn-puzzles = "svn_8956"
 RECIPE_MAINTAINER_pn-puzzles = "Edwin Zhai <edwin.zhai@intel.com>"
 DISTRO_PN_ALIAS_pn-puzzles = "Debian=sgt-puzzles Fedora=puzzles"
 
-RECIPE_STATUS_pn-xdg-user-dirs = "red"
-RECIPE_LATEST_VERSION_pn-xdg-user-dirs = "0.12"
-RECIPE_MAINTAINER_pn-xdg-user-dirs = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-xterm = "red"
-RECIPE_LATEST_VERSION_pn-xterm = "n/a"
-RECIPE_MAINTAINER_pn-xterm = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-iceauth = "red"
-RECIPE_LATEST_VERSION_pn-iceauth = "1.0.3"
-RECIPE_MAINTAINER_pn-iceauth = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-luit = "red"
-RECIPE_LATEST_VERSION_pn-luit = "1.0.5"
-RECIPE_MAINTAINER_pn-luit = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-oclock = "red"
-RECIPE_LATEST_VERSION_pn-oclock = "n/a"
-RECIPE_MAINTAINER_pn-oclock = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-rgb = "red"
-RECIPE_LATEST_VERSION_pn-rgb = "1.0.3"
-RECIPE_MAINTAINER_pn-rgb = "Edwin Zhai <edwin.zhai@intel.com>"
-
 RECIPE_STATUS_pn-x11perf = "red"
 RECIPE_LATEST_VERSION_pn-x11perf = "1.5.1"
 RECIPE_MAINTAINER_pn-x11perf = "Edwin Zhai <edwin.zhai@intel.com>"
@@ -3098,34 +2783,6 @@ RECIPE_STATUS_pn-xbacklight = "red"
 RECIPE_LATEST_VERSION_pn-xbacklight = "1.1.1"
 RECIPE_MAINTAINER_pn-xbacklight = "Edwin Zhai <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-xbiff = "red"
-RECIPE_LATEST_VERSION_pn-xbiff = "1.0.2"
-RECIPE_MAINTAINER_pn-xbiff = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-xclipboard = "red"
-RECIPE_LATEST_VERSION_pn-xclipboard = "1.1.0"
-RECIPE_MAINTAINER_pn-xclipboard = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-xclock = "red"
-RECIPE_LATEST_VERSION_pn-xclock = "n/a"
-RECIPE_MAINTAINER_pn-xclock = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-xcmsdb = "red"
-RECIPE_LATEST_VERSION_pn-xcmsdb = "1.0.2"
-RECIPE_MAINTAINER_pn-xcmsdb = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-xconsole = "red"
-RECIPE_LATEST_VERSION_pn-xconsole = "1.0.3"
-RECIPE_MAINTAINER_pn-xconsole = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-xcursorgen = "red"
-RECIPE_LATEST_VERSION_pn-xcursorgen = "1.0.3"
-RECIPE_MAINTAINER_pn-xcursorgen = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-xdriinfo = "red"
-RECIPE_LATEST_VERSION_pn-xdriinfo = "1.0.3"
-RECIPE_MAINTAINER_pn-xdriinfo = "Edwin Zhai <edwin.zhai@intel.com>"
-
 RECIPE_STATUS_pn-xev = "red"
 RECIPE_LATEST_VERSION_pn-xev = "1.0.4"
 RECIPE_MAINTAINER_pn-xev = "Edwin Zhai <edwin.zhai@intel.com>"
@@ -3136,96 +2793,16 @@ RECIPE_LATEST_VERSION_pn-xeyes = "1.1.0"
 RECIPE_MAINTAINER_pn-xeyes = "Edwin Zhai <edwin.zhai@intel.com>"
 DISTRO_PN_ALIAS_pn-xeyes = "Ubuntu=x11-apps Fedora=xorg-x11-apps"
 
-RECIPE_STATUS_pn-xfd = "red"
-RECIPE_LATEST_VERSION_pn-xfd = "1.0.1"
-RECIPE_MAINTAINER_pn-xfd = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-xfontsel = "red"
-RECIPE_LATEST_VERSION_pn-xfontsel = "1.0.2"
-RECIPE_MAINTAINER_pn-xfontsel = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-xgamma = "red"
-RECIPE_LATEST_VERSION_pn-xgamma = "1.0.3"
-RECIPE_MAINTAINER_pn-xgamma = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-xkbevd = "red"
-RECIPE_LATEST_VERSION_pn-xkbevd = "1.1.0"
-RECIPE_MAINTAINER_pn-xkbevd = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-xkbprint = "red"
-RECIPE_LATEST_VERSION_pn-xkbprint = "1.0.2"
-RECIPE_MAINTAINER_pn-xkbprint = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-xkbutils = "red"
-RECIPE_LATEST_VERSION_pn-xkbutils = "1.0.2"
-RECIPE_MAINTAINER_pn-xkbutils = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-xkill = "red"
-RECIPE_LATEST_VERSION_pn-xkill = "1.0.2"
-RECIPE_MAINTAINER_pn-xkill = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-xload = "red"
-RECIPE_LATEST_VERSION_pn-xload = "1.0.2"
-RECIPE_MAINTAINER_pn-xload = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-xlsatoms = "red"
-RECIPE_LATEST_VERSION_pn-xlsatoms = "1.1.0"
-RECIPE_MAINTAINER_pn-xlsatoms = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-xlsclients = "red"
-RECIPE_LATEST_VERSION_pn-xlsclients = "1.1.0"
-RECIPE_MAINTAINER_pn-xlsclients = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-xlsfonts = "red"
-RECIPE_LATEST_VERSION_pn-xlsfonts = "1.0.2"
-RECIPE_MAINTAINER_pn-xlsfonts = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-xmag = "red"
-RECIPE_LATEST_VERSION_pn-xmag = "1.0.3"
-RECIPE_MAINTAINER_pn-xmag = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-xmessage = "red"
-RECIPE_LATEST_VERSION_pn-xmessage = "1.0.3"
-RECIPE_MAINTAINER_pn-xmessage = "Edwin Zhai <edwin.zhai@intel.com>"
-
 RECIPE_STATUS_pn-xrdb = "red"
 RECIPE_LATEST_VERSION_pn-xrdb = "1.0.6"
 RECIPE_MAINTAINER_pn-xrdb = "Edwin Zhai <edwin.zhai@intel.com>"
 DISTRO_PN_ALIAS_pn-xrdb = "Ubuntu=x11-xserver-utils Fedora=xorg-x11-server-utils"
 
-RECIPE_STATUS_pn-xrefresh = "red"
-RECIPE_LATEST_VERSION_pn-xrefresh = "1.0.3"
-RECIPE_MAINTAINER_pn-xrefresh = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-xsetroot = "red"
-RECIPE_LATEST_VERSION_pn-xsetroot = "1.0.3"
-RECIPE_MAINTAINER_pn-xsetroot = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-xstdcmap = "red"
-RECIPE_LATEST_VERSION_pn-xstdcmap = "1.0.1"
-RECIPE_MAINTAINER_pn-xstdcmap = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-xtrap = "red"
-RECIPE_LATEST_VERSION_pn-xtrap = "1.0.2"
-RECIPE_MAINTAINER_pn-xtrap = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-xvidtune = "red"
-RECIPE_LATEST_VERSION_pn-xvidtune = "1.0.2"
-RECIPE_MAINTAINER_pn-xvidtune = "Edwin Zhai <edwin.zhai@intel.com>"
-
 RECIPE_STATUS_pn-xvinfo = "red"
 RECIPE_LATEST_VERSION_pn-xvinfo = "1.1.0"
 RECIPE_MAINTAINER_pn-xvinfo = "Edwin Zhai <edwin.zhai@intel.com>"
 DISTRO_PN_ALIAS_pn-xvinfo = "Fedora=xorg-x11-utils Ubuntu=x11-utils"
 
-RECIPE_STATUS_pn-xwd = "red"
-RECIPE_LATEST_VERSION_pn-xwd = "1.0.3"
-RECIPE_MAINTAINER_pn-xwd = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-xwud = "red"
-RECIPE_LATEST_VERSION_pn-xwud = "1.0.2"
-RECIPE_MAINTAINER_pn-xwud = "Edwin Zhai <edwin.zhai@intel.com>"
-
 RECIPE_STATUS_pn-claws-plugin-gtkhtml2-viewer = "red"
 DISTRO_PN_ALIAS_pn-claws-plugin-gtkhtml2-viewer = "Fedora=claws-mail-plugins OpenSuSE=claws-mail-extra-plugins Debian=claws-mail-extra-plugins"
 RECIPE_LATEST_VERSION_pn-claws-plugin-gtkhtml2-viewer = "0.27"
@@ -3251,11 +2828,6 @@ RECIPE_LATEST_VERSION_pn-lndir = "n/a"
 RECIPE_MAINTAINER_pn-lndir = "Edwin Zhai <edwin.zhai@intel.com>"
 DISTRO_PN_ALIAS_pn-lndir = "Mandriva=lndir Ubuntu=xutils-dev Fedora=imake"
 
-RECIPE_STATUS_pn-mozilla-headless = "red"
-DISTRO_PN_ALIAS_pn-mozilla-headless = ""
-RECIPE_LATEST_VERSION_pn-mozilla-headless = "tip_hg_555cbc23"
-RECIPE_MAINTAINER_pn-mozilla-headless = "Edwin Zhai <edwin.zhai@intel.com>"
-
 RECIPE_STATUS_pn-kf = "red"
 RECIPE_LATEST_VERSION_pn-kf = "n/a"
 RECIPE_MAINTAINER_pn-kf = "Edwin Zhai <edwin.zhai@intel.com>"
@@ -3423,7 +2995,7 @@ RECIPE_INTEL_SECTION_pn-qt4-tools-native = "graphic app"
 RECIPE_MAINTAINER_pn-qt4-tools-native = "Yu Ke <ke.yu@intel.com>"
 DISTRO_PN_ALIAS_pn-qt4-tools-native = "Mandriva=libqt4-devel Ubuntu=libqt4-dev"
 
-ECIPE_STATUS_pn-quicky = "green" # no update needed
+RECIPE_STATUS_pn-quicky = "green" # no update needed
 RECIPE_LATEST_VERSION_pn-quicky = "0.4"
 RECIPE_NO_OF_PATCHES_pn-quicky = "0"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-quicky = "n/a"
@@ -3614,10 +3186,6 @@ RECIPE_LATEST_RELEASE_DATE_pn-xserver-xf86-dri-lite="2010/07/01"
 RECIPE_INTEL_SECTION_pn-xserver-xf86-dri-lite="graphic core"
 RECIPE_MAINTAINER_pn-xserver-xf86-dri-lite="Yu Ke <ke.yu@intel.com>"
 
-RECIPE_STATUS_pn-xbitmaps = "red"
-RECIPE_LATEST_VERSION_pn-xbitmaps = "1.1.0"
-RECIPE_MAINTAINER_pn-xbitmaps = "Ke Yu <ke.yu@intel.com>"
-
 RECIPE_STATUS_pn-xf86-input-synaptics = "red"
 DISTRO_PN_ALIAS_pn-xf86-input-synaptics = "Meego=xorg-x11-drv-synaptics Fedora=xorg-x11-drv-synaptics Ubuntu=xserver-xorg-input-synaptics Mandriva=x11-driver-input-synaptics Debian=xfree86-driver-synaptics"
 RECIPE_LATEST_VERSION_pn-xf86-input-synaptics = "1.2.2"
@@ -4506,7 +4074,6 @@ RECIPE_LATEST_RELEASE_DATE_pn-startup-notification = "04/13/2009"
 RECIPE_COMMENTS_pn-startup-notification = "in recipe, SECTION is libs but to be more accurate it should be x11/libs"
 RECIPE_MAINTAINER_pn-startup-notification = "Dexuan Cui <dexuan.cui@intel.com>"
 
-
 RECIPE_STATUS_pn-galago-daemon = "red"
 RECIPE_LATEST_VERSION_pn-galago-daemon = "0.5.1"
 RECIPE_MAINTAINER_pn-galago-daemon = "Dexuan Cui <dexuan.cui@intel.com>"
@@ -4528,10 +4095,6 @@ RECIPE_LATEST_VERSION_pn-ttf-bitstream-vera = "1.10"
 RECIPE_MAINTAINER_pn-ttf-bitstream-vera = "Dexuan Cui <dexuan.cui@intel.com>"
 DISTRO_PN_ALIAS_pn-ttf-bitstream-vera = "Debian=ttf-bitstream-vera Ubuntu=ttf-bitstream-vera"
 
-RECIPE_STATUS_pn-gvfs = "red"
-RECIPE_LATEST_VERSION_pn-gvfs = "n/a"
-RECIPE_MAINTAINER_pn-gvfs = "Dexuan Cui <dexuan.cui@intel.com>"
-
 RECIPE_STATUS_pn-libart-lgpl = "red"
 RECIPE_LATEST_VERSION_pn-libart-lgpl = "2.3.21"
 RECIPE_MAINTAINER_pn-libart-lgpl = "Dexuan Cui <dexuan.cui@intel.com>"
@@ -4613,23 +4176,11 @@ RECIPE_LATEST_VERSION_pn-windowswmproto = "1.0.4"
 RECIPE_MAINTAINER_pn-windowswmproto = "Dexuan Cui <dexuan.cui@intel.com>"
 DISTRO_PN_ALIAS_pn-windowswmproto = "Mandriva=x11-proto-devel OpenSuSE=xorg-x11-proto-devel"
 
-RECIPE_STATUS_pn-xpext = "red"
-RECIPE_LATEST_VERSION_pn-xpext = "1.0-5"
-RECIPE_MAINTAINER_pn-xpext = "Dexuan Cui <dexuan.cui@intel.com>"
-
 RECIPE_STATUS_pn-xproxymanagementprotocol = "red"
 DISTRO_PN_ALIAS_pn-xproxymanagementprotocol = "Meego=xorg-x11-proto-xproxymanagementprotocol"
 RECIPE_LATEST_VERSION_pn-xproxymanagementprotocol = "1.0.3"
 RECIPE_MAINTAINER_pn-xproxymanagementprotocol = "Dexuan Cui <dexuan.cui@intel.com>"
 
-RECIPE_STATUS_pn-xsp = "red"
-RECIPE_LATEST_VERSION_pn-xsp = "1.0.0-8"
-RECIPE_MAINTAINER_pn-xsp = "Dexuan Cui <dexuan.cui@intel.com>"
-
-RECIPE_STATUS_pn-droid-fonts = "red"
-RECIPE_LATEST_VERSION_pn-droid-fonts = "git:e3ea6e3d4c8a8c2dc71f608a74ed9f6137afe63d;latest_tag:android-2.1_r2.1s???"
-RECIPE_MAINTAINER_pn-droid-fonts = "Dexuan Cui <dexuan.cui@intel.com>"
-
 RECIPE_STATUS_pn-libxklavier = "red"
 RECIPE_LATEST_VERSION_pn-libxklavier = "5.0"
 RECIPE_MAINTAINER_pn-libxklavier = "Dexuan Cui <dexuan.cui@intel.com>"
@@ -5092,16 +4643,11 @@ RECIPE_COMMENTS_pn-menu-cache = "Add as required when adding libfm"
 DISTRO_PN_ALIAS_pn-menu-cache = "OSPDT"
 RECIPE_MAINTAINER_pn-menu-cache = "Zhai Edwin <edwin.zhai@intel.com>"
 
-
 RECIPE_STATUS_pn-gtk-engines = "red"
 DISTRO_PN_ALIAS_pn-gtk-engines = "Fedora=gtk2-engines OpenSuSE=gtk2-engines Ubuntu=gtk2-engines Mandriva=gtk-engines2 Debian=gtk2-engines"
 RECIPE_LATEST_VERSION_pn-gtk-engines = "2.18"
 RECIPE_MAINTAINER_pn-gtk-engines = "Edwin Zhai <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-clutter-imcontext = "red"
-RECIPE_LATEST_VERSION_pn-clutter-imcontext = "0.1.6"
-RECIPE_MAINTAINER_pn-clutter-imcontext = "Edwin Zhai <edwin.zhai@intel.com>"
-
 RECIPE_STATUS_pn-clutter-box2d = "red"
 RECIPE_LATEST_VERSION_pn-clutter-box2d = "0.10.0"
 RECIPE_MAINTAINER_pn-clutter-box2d = "Edwin Zhai <edwin.zhai@intel.com>"
@@ -5116,10 +4662,6 @@ DISTRO_PN_ALIAS_pn-clutter-gtk-1.0 = "Fedora=clutter-gtk OpenSuSE=clutter-gtk Ub
 RECIPE_LATEST_VERSION_pn-clutter-gtk-1.0 = "0.90.0+git0+e8d828ba1d87937baa571e68fdff22f3e2d79ca8"
 RECIPE_MAINTAINER_pn-clutter-gtk-1.0 = "Edwin Zhai <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-clutter-mozembed = "red"
-RECIPE_LATEST_VERSION_pn-clutter-mozembed = "0.10.5"
-RECIPE_MAINTAINER_pn-clutter-mozembed = "Edwin Zhai <edwin.zhai@intel.com>"
-
 RECIPE_STATUS_pn-tidy = "red"
 RECIPE_LATEST_VERSION_pn-tidy = "0.1.0+git0+e25416e1293e1074bfa6727c80527dcff5b1f3cb"
 RECIPE_MAINTAINER_pn-tidy = "Edwin Zhai <edwin.zhai@intel.com>"
@@ -5172,22 +4714,10 @@ DISTRO_PN_ALIAS_pn-clutter-gtk-1.0 = "Fedora=clutter-gtk OpenSuSE=clutter-gtk Ub
 RECIPE_LATEST_VERSION_pn-clutter = "1.2.8"
 RECIPE_MAINTAINER_pn-clutter = "Edwin Zhai <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-gnome-menus = "red"
-RECIPE_LATEST_VERSION_pn-gnome-menus = "2.30.0"
-RECIPE_MAINTAINER_pn-gnome-menus = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-gnome-packagekit = "red"
-RECIPE_LATEST_VERSION_pn-gnome-packagekit = "2.30.2"
-RECIPE_MAINTAINER_pn-gnome-packagekit = "Edwin Zhai <edwin.zhai@intel.com>"
-
 RECIPE_STATUS_pn-libgnomekbd = "red"
 RECIPE_LATEST_VERSION_pn-libgnomekbd = "2.31.1"
 RECIPE_MAINTAINER_pn-libgnomekbd = "Edwin Zhai <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-mx = "red"
-RECIPE_LATEST_VERSION_pn-mx = "1.0.2"
-RECIPE_MAINTAINER_pn-mx = "Edwin Zhai <edwin.zhai@intel.com>"
-
 RECIPE_STATUS_pn-clipboard-manager = "red"
 DISTRO_PN_ALIAS_pn-clipboard-manager = "OpenedHand"
 RECIPE_LATEST_VERSION_pn-clipboard-manager = "0.6.8"
@@ -5223,18 +4753,6 @@ RECIPE_LATEST_VERSION_pn-libgtkstylus = "0.5"
 RECIPE_MAINTAINER_pn-libgtkstylus = "Edwin Zhai <edwin.zhai@intel.com>"
 DISTRO_PN_ALIAS_pn-libgtkstylus = "Debian=libgtkstylus Ubuntu=libgtkstylus"
 
-RECIPE_STATUS_pn-libidl = "red"
-RECIPE_LATEST_VERSION_pn-libidl = "0.8.14"
-RECIPE_MAINTAINER_pn-libidl = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-libsexy = "red"
-RECIPE_LATEST_VERSION_pn-libsexy = "0.1.11"
-RECIPE_MAINTAINER_pn-libsexy = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-matchbox-session-netbook = "red"
-RECIPE_LATEST_VERSION_pn-matchbox-session-netbook = "0.1"
-RECIPE_MAINTAINER_pn-matchbox-session-netbook = "Edwin Zhai <edwin.zhai@intel.com>"
-
 RECIPE_STATUS_pn-matchbox-theme-sato-2 = "red"
 RECIPE_LATEST_VERSION_pn-matchbox-theme-sato-2 = "0.1+svnr164"
 RECIPE_MAINTAINER_pn-matchbox-theme-sato-2 = "Edwin Zhai <edwin.zhai@intel.com>"
@@ -5257,34 +4775,6 @@ RECIPE_STATUS_pn-metacity = "red"
 RECIPE_LATEST_VERSION_pn-metacity = "2.30.1"
 RECIPE_MAINTAINER_pn-metacity = "Edwin Zhai <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-moblin-cursor-theme = "red"
-RECIPE_LATEST_VERSION_pn-moblin-cursor-theme = "0.3"
-RECIPE_MAINTAINER_pn-moblin-cursor-theme = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-moblin-gtk-engine = "red"
-RECIPE_LATEST_VERSION_pn-moblin-gtk-engine = "1.2.3"
-RECIPE_MAINTAINER_pn-moblin-gtk-engine = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-moblin-icon-theme = "red"
-RECIPE_LATEST_VERSION_pn-moblin-icon-theme = "0.10"
-RECIPE_MAINTAINER_pn-moblin-icon-theme = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-moblin-menus = "red"
-RECIPE_LATEST_VERSION_pn-moblin-menus = "0.1.6"
-RECIPE_MAINTAINER_pn-moblin-menus = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-moblin-user-skel = "red"
-RECIPE_LATEST_VERSION_pn-moblin-user-skel = "0.18"
-RECIPE_MAINTAINER_pn-moblin-user-skel = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-moblin-web-browser = "red"
-RECIPE_LATEST_VERSION_pn-moblin-web-browser = "2.1.2"
-RECIPE_MAINTAINER_pn-moblin-web-browser = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-nautilus = "red"
-RECIPE_LATEST_VERSION_pn-nautilus = "2.31.2"
-RECIPE_MAINTAINER_pn-nautilus = "Edwin Zhai <edwin.zhai@intel.com>"
-
 RECIPE_STATUS_pn-polkit-gnome = "red"
 RECIPE_LATEST_VERSION_pn-polkit-gnome = "0.96"
 RECIPE_MAINTAINER_pn-polkit-gnome = "Edwin Zhai <edwin.zhai@intel.com>"
@@ -5294,50 +4784,10 @@ DISTRO_PN_ALIAS_pn-pong-clock = "OpenedHand"
 RECIPE_LATEST_VERSION_pn-pong-clock = "1.0"
 RECIPE_MAINTAINER_pn-pong-clock = "Edwin Zhai <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-twm = "red"
-RECIPE_LATEST_VERSION_pn-twm = "1.0.4"
-RECIPE_MAINTAINER_pn-twm = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-anerley  = "red"
-RECIPE_LATEST_VERSION_pn-anerley  = "0.2.13"
-RECIPE_MAINTAINER_pn-anerley  = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-nbtk = "red"
-RECIPE_LATEST_VERSION_pn-nbtk = "n/a"
-RECIPE_MAINTAINER_pn-nbtk = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-moblin-panel-applications = "red"
-RECIPE_LATEST_VERSION_pn-moblin-panel-applications = "0.1.28"
-RECIPE_MAINTAINER_pn-moblin-panel-applications = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-moblin-panel-media = "red"
-RECIPE_LATEST_VERSION_pn-moblin-panel-media = "0.0.18"
-RECIPE_MAINTAINER_pn-moblin-panel-media = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-moblin-panel-myzone = "red"
-RECIPE_LATEST_VERSION_pn-moblin-panel-myzone = "0.1.32"
-RECIPE_MAINTAINER_pn-moblin-panel-myzone = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-moblin-panel-pasteboard = "red"
-RECIPE_LATEST_VERSION_pn-moblin-panel-pasteboard = "0.0.6"
-RECIPE_MAINTAINER_pn-moblin-panel-pasteboard = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-moblin-panel-people = "red"
-RECIPE_LATEST_VERSION_pn-moblin-panel-people = "0.1.12"
-RECIPE_MAINTAINER_pn-moblin-panel-people = "Edwin Zhai <edwin.zhai@intel.com>"
-
-RECIPE_STATUS_pn-moblin-panel-status = "red"
-RECIPE_LATEST_VERSION_pn-moblin-panel-status = "0.1.21"
-RECIPE_MAINTAINER_pn-moblin-panel-status = "Edwin Zhai <edwin.zhai@intel.com>"
-
 RECIPE_STATUS_pn-mutter = "red"
 RECIPE_LATEST_VERSION_pn-mutter = "2.29.1_0.4"
 RECIPE_MAINTAINER_pn-mutter = "Edwin Zhai <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-mutter-moblin = "red"
-RECIPE_LATEST_VERSION_pn-mutter-moblin = "0.75.13"
-RECIPE_MAINTAINER_pn-mutter-moblin = "Edwin Zhai <edwin.zhai@intel.com>"
-
 RECIPE_STATUS_pn-qt4-x11-free = "green"
 DISTRO_PN_ALIAS_pn-qt4-x11-free = "Ubuntu=qt-x11-free Debian=qt-x11-free"
 RECIPE_LATEST_VERSION_pn-qt4-x11-free = "4.6.3"
@@ -5475,4 +4925,3 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-lighttpd = "10 days"
 RECIPE_LATEST_RELEASE_DATE_pn-lighttpd = "08/2010"
 RECIPE_COMMENTS_pn-lighttpd = ""
 
-
-- 
1.6.3.3


