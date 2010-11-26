Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 48D314C811DF
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 00:53:48 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Nov 2010 22:53:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,260,1288594800"; d="scan'208";a="577771028"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by orsmga002.jf.intel.com with ESMTP; 25 Nov 2010 22:53:47 -0800
Message-Id: <9e427e92d52e0b8791a09811c9ca4da784f8ca48.1290736298.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1290736297.git.dongxiao.xu@intel.com>
References: <cover.1290736297.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Fri, 26 Nov 2010 09:50:28 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 14/14] distro_tracking: gupnp-av, gupnp-tools, ofono, etc.
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
X-List-Received-Date: Fri, 26 Nov 2010 06:53:48 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   97 +++++++++++++-------
 1 files changed, 63 insertions(+), 34 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 5eadadd..18e9996 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -68,9 +68,12 @@ RECIPE_STATUS_pn-mingetty = "red"
 RECIPE_LATEST_VERIONS_pn-mingetty = "check"
 RECIPE_MAINTAINER_pn-mingetty = "Xiaofeng.Yan <xiaofeng@windriver.com>"
 
-RECIPE_STATUS_pn-minicom = "red"
-RECIPE_LATEST_VERIONS_pn-minicom = "check"
-RECIPE_MAINTAINER_pn-minicom = "Dongxiao Xu <dongxiao.xu@intel.com"
+RECIPE_STATUS_pn-minicom="green"
+RECIPE_LATEST_VERSION_pn-minicom="2.4"
+RECIPE_NO_OF_PATCHES_pn-minicom="1"
+RECIPE_LATEST_RELEASE_DATE_pn-minicom="2010/12/20"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-minicom="22 months"
+RECIPE_MAINTAINER_pn-minicom = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-patch = "red"
 RECIPE_LATEST_VERIONS_pn-patch = "check"
@@ -1103,9 +1106,12 @@ RECIPE_LATEST_VERSION_pn-eee-acpi-scripts = "1.1.10+eaaa266e8c3b91b19d8ac861334b
 RECIPE_MAINTAINER_pn-eee-acpi-scripts = "Kevin Tian <kevin.tian@intel.com>"
 DISTRO_PN_ALIAS_pn-eee-acpi-scripts = "Debian=eeepc-acpi-scripts Ubuntu=eeepc-acpi-scripts"
 
-RECIPE_STATUS_pn-gssdp = "red"
-RECIPE_LATEST_VERSION_pn-gssdp = "0.7.2"
-RECIPE_MAINTAINER_pn-gssdp = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_STATUS_pn-gssdp = "green"
+RECIPE_LATEST_VERSION_pn-gssdp = "0.9.0"
+RECIPE_NO_OF_PATCHES_pn-gssdp="0"
+RECIPE_LATEST_RELEASE_DATE_pn-gssdp="2010/11/12"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gssdp="2 month"
+RECIPE_MAINTAINER_pn-gssdp = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-insserv = "red"
 RECIPE_LATEST_VERSION_pn-insserv = "1.14.0"
@@ -1898,11 +1904,10 @@ RECIPE_MAINTAINER_pn-libpcap = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-wpa-supplicant="green"
 DISTRO_PN_ALIAS_pn-wpa-supplicant = "Meego=wpa_supplicant Fedora=wpa_supplicant OpenSuSE=wpa_supplicant Ubuntu=wpasupplicant Mandriva=wpa_supplicant Debian=wpasupplicant"
-RECIPE_LATEST_VERSION_pn-wpa-supplicant="0.7.2"
-RECIPE_NO_UPDATE_REASON_pn-wpa-supplicant="0.7.2 is development version, and latest stable version is 0.6.10"
+RECIPE_LATEST_VERSION_pn-wpa-supplicant="0.7.3"
 RECIPE_NO_OF_PATCHES_pn-wpa-supplicant="0"
-RECIPE_LATEST_RELEASE_DATE_pn-wpa-supplicant="2010/04/18"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-wpa-supplicant="3 months"
+RECIPE_LATEST_RELEASE_DATE_pn-wpa-supplicant="2010/09/07"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-wpa-supplicant="5 months"
 RECIPE_MAINTAINER_pn-wpa-supplicant = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-ppp="green"
@@ -1921,10 +1926,10 @@ RECIPE_MAINTAINER_pn-libproxy = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-connman = "green"
 DISTRO_PN_ALIAS_pn-connman = "Meego=connman"
-RECIPE_LATEST_VERSION_pn-connman = "0.56"
-RECIPE_NO_OF_PATCHES_pn-connman="0"
-RECIPE_LATEST_RELEASE_DATE_pn-connman="2010/08/05"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-connman="10 days"
+RECIPE_LATEST_VERSION_pn-connman = "0.63"
+RECIPE_NO_OF_PATCHES_pn-connman="2"
+RECIPE_LATEST_RELEASE_DATE_pn-connman="2010/11/04"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-connman="1 month"
 RECIPE_MAINTAINER_pn-connman = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-connman-gnome = "green"
@@ -1943,12 +1948,18 @@ RECIPE_STATUS_pn-gupnp = "red"
 RECIPE_LATEST_VERSION_pn-gupnp = "0.13.3"
 RECIPE_MAINTAINER_pn-gupnp = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-gupnp-av = "red"
-RECIPE_LATEST_VERSION_pn-gupnp-av = "0.5.5"
+RECIPE_STATUS_pn-gupnp-av = "green"
+RECIPE_LATEST_VERSION_pn-gupnp-av = "0.7.0"
+RECIPE_NO_OF_PATCHES_pn-gupnp-av= "0"
+RECIPE_LATEST_RELEASE_DATE_pn-gupnp-av= "2010/11/08"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gupnp-av= "15 days"
 RECIPE_MAINTAINER_pn-gupnp-av = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-gupnp-tools = "red"
-RECIPE_LATEST_VERSION_pn-gupnp-tools = "0.8"
+RECIPE_STATUS_pn-gupnp-tools = "green"
+RECIPE_LATEST_VERSION_pn-gupnp-tools = "0.8.1"
+RECIPE_NO_OF_PATCHES_pn-gupnp-tools = "0"
+RECIPE_LATEST_RELEASE_DATE_pn-gupnp-tools = "2010/09/16"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gupnp-tools = "3 month"
 RECIPE_MAINTAINER_pn-gupnp-tools = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-libopensync = "red"
@@ -1963,8 +1974,11 @@ RECIPE_STATUS_pn-libopensync-plugin-syncml = "red"
 RECIPE_LATEST_VERSION_pn-libopensync-plugin-syncml = "0.39"
 RECIPE_MAINTAINER_pn-libopensync-plugin-syncml = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-ofono = "red"
-RECIPE_LATEST_VERSION_pn-ofono = "0.21"
+RECIPE_STATUS_pn-ofono = "green"
+RECIPE_LATEST_VERSION_pn-ofono = "0.33"
+RECIPE_NO_OF_PATCHES_pn-ofono="0"
+RECIPE_LATEST_RELEASE_DATE_pn-ofono="2010/10/25"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-ofono="5 days"
 RECIPE_MAINTAINER_pn-ofono = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-libtelepathy = "red"
@@ -1987,8 +2001,11 @@ RECIPE_STATUS_pn-telepathy-idle = "red"
 RECIPE_LATEST_VERSION_pn-telepathy-idle = "0.1.6"
 RECIPE_MAINTAINER_pn-telepathy-idle = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-telepathy-python = "red"
-RECIPE_LATEST_VERSION_pn-telepathy-python = "0.15.17"
+RECIPE_STATUS_pn-telepathy-python = "green"
+RECIPE_LATEST_VERSION_pn-telepathy-python = "0.15.18"
+RECIPE_NO_OF_PATCHES_pn-telepathy-python="0"
+RECIPE_LATEST_RELEASE_DATE_pn-telepathy-python="2010/08/05"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-telepathy-python="5 months"
 RECIPE_MAINTAINER_pn-telepathy-python = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-bluez-hcidump = "red"
@@ -1999,8 +2016,10 @@ RECIPE_STATUS_pn-ppp-dialin = "red"
 RECIPE_LATEST_VERSION_pn-ppp-dialin = "check"
 RECIPE_MAINTAINER_pn-ppp-dialin = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-libgsmd = "red"
-RECIPE_LATEST_VERSION_pn-libgsmd = "check"
+RECIPE_STATUS_pn-libgsmd = "green"
+RECIPE_LATEST_VERSION_pn-libgsmd = "5394"
+RECIPE_LATEST_RELEASE_DATE_pn-libgsmd ="2009/08/06"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libgsmd="n/a"
 DISTRO_PN_ALIAS_pn-libgsmd = "Fedora=gsm Ubuntu=libgsm Debian=libgsm Opensuse=libgsm"
 RECIPE_MAINTAINER_pn-libgsmd = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
@@ -2009,9 +2028,13 @@ RECIPE_LATEST_VERSION_pn-zeroconf = "0.9"
 DISTRO_PN_ALIAS_pn-zeroconf = "OSPDT upstream=http://www.progsoc.org/~wildfire/zeroconf/"
 RECIPE_MAINTAINER_pn-zeroconf = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-gypsy = "red"
-RECIPE_LATEST_VERSION_pn-gypsy = "0.7"
-RECIPE_MAINTAINER_pn-gypsy = "Dongxiao Xu <dongxiao.xu@intel.com>"
+RECIPE_STATUS_pn-gypsy="green"
+RECIPE_LATEST_VERSION_pn-gypsy="0.8"
+RECIPE_NO_OF_PATCHES_pn-gypsy="0"
+RECIPE_LATEST_RELEASE_DATE_pn-gypsy="2010/06/09"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gypsy="10 months"
+RECIPE_MAINTAINER_pn-gypsy= "Dongxiao Xu <dongxiao.xu@intel.com>"
+
 
 RECIPE_STATUS_pn-libopensync-plugin-file = "red"
 RECIPE_LATEST_VERSION_pn-libopensync-plugin-file = "0.39"
@@ -2025,8 +2048,11 @@ RECIPE_STATUS_pn-libsyncml = "red"
 RECIPE_LATEST_VERSION_pn-libsyncml = "0.5.4"
 RECIPE_MAINTAINER_pn-libsyncml = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-telepathy-mission-control = "red"
-RECIPE_LATEST_VERSION_pn-telepathy-mission-control = "5.5.0"
+RECIPE_STATUS_pn-telepathy-mission-control = "green"
+RECIPE_LATEST_VERSION_pn-telepathy-mission-control = "5.7.0"
+RECIPE_NO_OF_PATCHES_pn-telepathy-mission-control ="0"
+RECIPE_LATEST_RELEASE_DATE_pn-telepathy-mission-control ="2010/11/18"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-telepathy-mission-control ="2 months"
 RECIPE_MAINTAINER_pn-telepathy-mission-control = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-libetpan = "red"
@@ -2380,8 +2406,11 @@ RECIPE_STATUS_pn-farsight2 = "red"
 RECIPE_LATEST_VERSION_pn-farsight2 = "0.0.20"
 RECIPE_MAINTAINER_pn-farsight2 = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-gst-openmax = "red"
-RECIPE_LATEST_VERSION_pn-gst-openmax = "0.10.0.5"
+RECIPE_STATUS_pn-gst-openmax = "green"
+RECIPE_LATEST_VERSION_pn-gst-openmax = "0.10.1"
+RECIPE_NO_OF_PATCHES_pn-gst-openmax = "0"
+RECIPE_LATEST_RELEASE_DATE_pn-gst-openmax = "2010/10/01"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gst-openmax= "18 months"
 RECIPE_MAINTAINER_pn-gst-openmax = "Dongxiao Xu <dongxiao.xu@intel.com>"
 DISTRO_PN_ALIAS_pn-gst-openmax="OSPDT upstream=http://cgit.freedesktop.org/gstreamer/gst-openmax"
 
@@ -2719,9 +2748,9 @@ RECIPE_LATEST_VERSION_pn-libxml-parser-perl="2.36"
 RECIPE_MAINTAINER_pn-libxml-parser-perl = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
 RECIPE_STATUS_pn-cmake-native="green" 
-RECIPE_LATEST_VERSION_pn-cmake-native="2.8.2"
-RECIPE_LATEST_RELEASE_DATE_pn-cmake-native="2010/06/28"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-cmake-native="1 month"
+RECIPE_LATEST_VERSION_pn-cmake-native="2.8.3"
+RECIPE_LATEST_RELEASE_DATE_pn-cmake-native="2010/11/03"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-cmake-native="4 month"
 RECIPE_MAINTAINER_pn-cmake-native = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-m4="red" 
-- 
1.6.3.3


