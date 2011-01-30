Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 27AAB4C80B5F
	for <poky@yoctoproject.org>; Sat, 29 Jan 2011 18:36:57 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 29 Jan 2011 16:36:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,398,1291622400"; d="scan'208";a="882346812"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga001.fm.intel.com with ESMTP; 29 Jan 2011 16:36:52 -0800
Message-Id: <77bb0329f34c71ae60b2de964edbd31506d59876.1296348480.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1296348480.git.dongxiao.xu@intel.com>
References: <cover.1296348480.git.dongxiao.xu@intel.com>
Old-Date: Sun, 30 Jan 2011 08:46:15 +0800
Date: Sun, 30 Jan 2011  8:53:34 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 2/2] distro_tracking: update distro tracking fields
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
X-List-Received-Date: Sun, 30 Jan 2011 00:36:57 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Add manual check date for recipes whose upstream vesion could not be
found automatically.

Also update glib-2.0 tracking data.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   23 +++++++++++++++----
 1 files changed, 18 insertions(+), 5 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 9f99e50..c90d37e 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -80,11 +80,12 @@ RECIPE_LAST_UPDATE_pn-mingetty = "Sep 1, 2010"
 RECIPE_MAINTAINER_pn-mingetty = "Xiaofeng.Yan <xiaofeng@windriver.com>"
 
 RECIPE_STATUS_pn-minicom="green"
-RECIPE_LATEST_VERSION_pn-minicom="2.4"
+RECIPE_LATEST_VERSION_pn-minicom="2.5"
 RECIPE_NO_OF_PATCHES_pn-minicom="1"
 RECIPE_LATEST_RELEASE_DATE_pn-minicom="2010/12/20"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-minicom="22 months"
 RECIPE_LAST_UPDATE_pn-minicom = "Nov 24, 2010"
+RECIPE_MANUAL_CHECK_DATE_pn-minicom = "Jan 30, 2011"
 RECIPE_MAINTAINER_pn-minicom = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-patch = "green"
@@ -165,6 +166,7 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-glib-2.0 = "1 month"
 RECIPE_LATEST_RELEASE_DATE_pn-glib-2.0 = "2010/12/20"
 RECIPE_COMMENTS_pn-glib-2.0 = ""
 RECIPE_LAST_UPDATE_pn-glib-2.0 = "Dec 30, 2010"
+RECIPE_NO_UPDATE_REASON_pn-glib-2.0 ="do not upgrade to 2.27.5 because it is unstable version"
 RECIPE_MAINTAINER_pn-glib-2.0 = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-libpam = "green"
@@ -1000,8 +1002,9 @@ RECIPE_LATEST_VERSION_pn-ethtool = "2.6.36"
 RECIPE_LAST_UPDATE_pn-ethtool = "Nov 28, 2010"
 RECIPE_MAINTAINER_pn-ethtool = "Edwin Zhai <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-net-tools = "red"
+RECIPE_STATUS_pn-net-tools = "green"
 RECIPE_LAST_UPDATE_pn-net-tools = "Aug 16, 2010"
+RECIPE_LATEST_VERSION_pn-net-tools = "1.60-23"
 RECIPE_MAINTAINER_pn-net-tools = "Dongxiao Xu <dongxiao.xu@intel.com>"
 RECIPE_LATEST_VERSION_pn-net-tools = "1.60-23"
 
@@ -1148,11 +1151,12 @@ RECIPE_MAINTAINER_pn-eee-acpi-scripts = "Edwin Zhai <edwin.zhai@intel.com>"
 DISTRO_PN_ALIAS_pn-eee-acpi-scripts = "Debian=eeepc-acpi-scripts Ubuntu=eeepc-acpi-scripts"
 
 RECIPE_STATUS_pn-gssdp = "green"
-RECIPE_LATEST_VERSION_pn-gssdp = "0.9.0"
+RECIPE_LATEST_VERSION_pn-gssdp = "0.9.2"
 RECIPE_NO_OF_PATCHES_pn-gssdp="0"
 RECIPE_LATEST_RELEASE_DATE_pn-gssdp="2010/11/12"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gssdp="2 month"
 RECIPE_LAST_UPDATE_pn-gssdp = "Nov 25, 2010"
+RECIPE_MANUAL_CHECK_DATE_pn-gssdp = "Jan 30, 2011"
 RECIPE_MAINTAINER_pn-gssdp = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-insserv = "green"
@@ -1974,6 +1978,7 @@ RECIPE_NO_OF_PATCHES_pn-lrzsz="3"
 RECIPE_LATEST_RELEASE_DATE_pn-lrzsz="1998/12/31"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-lrzsz="12 months"
 RECIPE_LAST_UPDATE_pn-lrzsz = "Jul 21, 2006"
+RECIPE_MANUAL_CHECK_DATE_pn-lrzsz = "Jan 30, 2011"
 RECIPE_MAINTAINER_pn-lrzsz = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-wireless-tools="yellow" # patch investigation needed
@@ -1982,6 +1987,7 @@ RECIPE_NO_OF_PATCHES_pn-wireless-tools="3"
 RECIPE_LATEST_RELEASE_DATE_pn-wireless-tools="2007/09/18"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-wireless-tools="18 months"
 RECIPE_LAST_UPDATE_pn-wireless-tools = "Oct 19, 2007"
+RECIPE_MANUAL_CHECK_DATE_pn-wireless-tools = "Jan 30, 2011"
 RECIPE_MAINTAINER_pn-wireless-tools = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-bluez-dtl1-workaround="yellow" # LICENSE double check
@@ -2041,6 +2047,7 @@ RECIPE_NO_OF_PATCHES_pn-libproxy="1"
 RECIPE_LATEST_RELEASE_DATE_pn-libproxy="2010/09/01"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libproxy="10 days"
 RECIPE_LAST_UPDATE_pn-libproxy = "Nov 16, 2010"
+RECIPE_MANUAL_CHECK_DATE_pn-libproxy = "Jan 30, 2011"
 RECIPE_MAINTAINER_pn-libproxy = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-connman = "green"
@@ -2067,19 +2074,21 @@ RECIPE_LAST_UPDATE_pn-empathy = "Aug 19, 2009"
 RECIPE_MAINTAINER_pn-empathy = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-gupnp = "green"
-RECIPE_LATEST_VERSION_pn-gupnp = "0.14.0"
+RECIPE_LATEST_VERSION_pn-gupnp = "0.15.1"
 RECIPE_NO_OF_PATCHES_pn-gupnp= "1"
 RECIPE_LATEST_RELEASE_DATE_pn-gupnp= "2010/09/16"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gupnp= "1 month"
 RECIPE_LAST_UPDATE_pn-gupnp = "Dec 7, 2010"
+RECIPE_MANUAL_CHECK_DATE_pn-gupnp = "Jan 30, 2011"
 RECIPE_MAINTAINER_pn-gupnp= "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-gupnp-av = "green"
-RECIPE_LATEST_VERSION_pn-gupnp-av = "0.7.0"
+RECIPE_LATEST_VERSION_pn-gupnp-av = "0.7.1"
 RECIPE_NO_OF_PATCHES_pn-gupnp-av= "0"
 RECIPE_LATEST_RELEASE_DATE_pn-gupnp-av= "2010/11/08"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gupnp-av= "15 days"
 RECIPE_LAST_UPDATE_pn-gupnp-av = "Nov 25, 2010"
+RECIPE_MANUAL_CHECK_DATE_pn-gupnp-av = "Jan 30, 2011"
 RECIPE_MAINTAINER_pn-gupnp-av = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-gupnp-tools = "green"
@@ -2088,6 +2097,7 @@ RECIPE_NO_OF_PATCHES_pn-gupnp-tools = "0"
 RECIPE_LATEST_RELEASE_DATE_pn-gupnp-tools = "2010/09/16"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gupnp-tools = "3 month"
 RECIPE_LAST_UPDATE_pn-gupnp-tools = "Nov 25, 2010"
+RECIPE_MANUAL_CHECK_DATE_pn-gupnp-tools = "Jan 30, 2011"
 RECIPE_MAINTAINER_pn-gupnp-tools = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-libopensync = "red"
@@ -2439,6 +2449,7 @@ RECIPE_NO_OF_PATCHES_pn-liba52="1"
 RECIPE_LATEST_RELEASE_DATE_pn-liba52="2002/07/27"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-liba52="5 months"
 RECIPE_LAST_UPDATE_pn-liba52 = "Sep 1, 2006"
+RECIPE_MANUAL_CHECK_DATE_pn-liba52 = "Jan 30, 2011"
 RECIPE_MAINTAINER_pn-liba52 = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-libid3tag="yellow" # patch investigation needed
@@ -2623,6 +2634,7 @@ RECIPE_NO_OF_PATCHES_pn-taglib = "2"
 RECIPE_LATEST_RELEASE_DATE_pn-taglib = "2010/04/19"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-taglib = "10 days"
 RECIPE_LAST_UPDATE_pn-taglib = "Nov 16, 2010"
+RECIPE_MANUAL_CHECK_DATE_pn-taglib = "Jan 30, 2011"
 RECIPE_MAINTAINER_pn-taglib = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-libnice = "red"
@@ -2658,6 +2670,7 @@ RECIPE_STATUS_pn-libsamplerate0 = "red"
 DISTRO_PN_ALIAS_pn-libsamplerate0 = "Meego=libsamplerate Fedora=libsamplerate OpenSuSE=libsamplerate Ubuntu=libsamplerate Mandriva=libsamplerate Debian=libsamplerate"
 RECIPE_LATEST_VERSION_pn-libsamplerate0 = "0.1.7"
 RECIPE_LAST_UPDATE_pn-libsamplerate0 = "Nov 22, 2010"
+RECIPE_MANUAL_CHECK_DATE_pn-libsamplerate0 = "Jan 30, 2011"
 RECIPE_MAINTAINER_pn-libsamplerate0 = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-oprofileui = "green"
-- 
1.6.3.3


