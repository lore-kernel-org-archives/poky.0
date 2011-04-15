Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 371064C80A7E
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 00:36:06 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 14 Apr 2011 22:36:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,216,1301900400"; d="scan'208";a="419668352"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 14 Apr 2011 22:36:05 -0700
Message-Id: <232da11eb337a9b1350410ad13e0346ca38c4e3a.1302845703.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1302845703.git.dongxiao.xu@intel.com>
References: <cover.1302845703.git.dongxiao.xu@intel.com>
Old-Date: Fri, 15 Apr 2011 13:30:23 +0800
Date: Fri, 15 Apr 2011 13:36:59 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 14/14] distro_tracking_fields: update for gstreamer, gupnp, telepathy-glib, etc
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
X-List-Received-Date: Fri, 15 Apr 2011 05:36:06 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |  106 ++++++++++----------
 1 files changed, 52 insertions(+), 54 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 8469e96..a507ce2 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -1162,12 +1162,11 @@ RECIPE_MAINTAINER_pn-eee-acpi-scripts = "Edwin Zhai <edwin.zhai@intel.com>"
 DISTRO_PN_ALIAS_pn-eee-acpi-scripts = "Debian=eeepc-acpi-scripts Ubuntu=eeepc-acpi-scripts"
 
 RECIPE_STATUS_pn-gssdp = "green"
-RECIPE_LATEST_VERSION_pn-gssdp = "0.9.2"
+RECIPE_LATEST_VERSION_pn-gssdp = "0.10.0"
 RECIPE_NO_OF_PATCHES_pn-gssdp="0"
-RECIPE_LATEST_RELEASE_DATE_pn-gssdp="2010/11/12"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gssdp="2 month"
-RECIPE_LAST_UPDATE_pn-gssdp = "Nov 25, 2010"
-RECIPE_MANUAL_CHECK_DATE_pn-gssdp = "Jan 30, 2011"
+RECIPE_LATEST_RELEASE_DATE_pn-gssdp="2011/04/07"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gssdp="3 month"
+RECIPE_LAST_UPDATE_pn-gssdp = "Apr 15, 2011"
 RECIPE_MAINTAINER_pn-gssdp = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-insserv = "green"
@@ -2085,12 +2084,11 @@ RECIPE_LAST_UPDATE_pn-empathy = "Aug 19, 2009"
 RECIPE_MAINTAINER_pn-empathy = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-gupnp = "green"
-RECIPE_LATEST_VERSION_pn-gupnp = "0.15.1"
+RECIPE_LATEST_VERSION_pn-gupnp = "0.16.0"
 RECIPE_NO_OF_PATCHES_pn-gupnp= "1"
-RECIPE_LATEST_RELEASE_DATE_pn-gupnp= "2010/09/16"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gupnp= "1 month"
-RECIPE_LAST_UPDATE_pn-gupnp = "Dec 7, 2010"
-RECIPE_MANUAL_CHECK_DATE_pn-gupnp = "Jan 30, 2011"
+RECIPE_LATEST_RELEASE_DATE_pn-gupnp= "2011/04/08"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gupnp= "3 month"
+RECIPE_LAST_UPDATE_pn-gupnp = "Apr 15, 2011"
 RECIPE_MAINTAINER_pn-gupnp= "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-gupnp-av = "green"
@@ -2137,11 +2135,11 @@ RECIPE_LAST_UPDATE_pn-libopensync-plugin-syncml = "Jul 31, 2009"
 RECIPE_MAINTAINER_pn-libopensync-plugin-syncml = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-ofono = "green"
-RECIPE_LATEST_VERSION_pn-ofono = "0.37"
+RECIPE_LATEST_VERSION_pn-ofono = "0.45"
 RECIPE_NO_OF_PATCHES_pn-ofono="0"
-RECIPE_LATEST_RELEASE_DATE_pn-ofono="2010/12/24"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-ofono="1 month"
-RECIPE_LAST_UPDATE_pn-ofono = "Dec 30, 2010"
+RECIPE_LATEST_RELEASE_DATE_pn-ofono="2011/03/15"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-ofono="15 days"
+RECIPE_LAST_UPDATE_pn-ofono = "Apr 15, 2011"
 RECIPE_MAINTAINER_pn-ofono = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-libtelepathy = "red"
@@ -2161,18 +2159,18 @@ RECIPE_MAINTAINER_pn-telepathy-gabble = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-telepathy-glib = "green"
 RECIPE_NO_OF_PATCHES_pn-telepathy-glib ="0"
-RECIPE_LATEST_RELEASE_DATE_pn-telepathy-glib = "2010/11/17"
-RECIPE_LATEST_VERSION_pn-telepathy-glib = "0.13.6"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-telepathy-glib = "12 days"
-RECIPE_LAST_UPDATE_pn-telepathy-glib = "Dec 30, 2010"
+RECIPE_LATEST_RELEASE_DATE_pn-telepathy-glib = "2011/03/31"
+RECIPE_LATEST_VERSION_pn-telepathy-glib = "0.14.3"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-telepathy-glib = "10 days"
+RECIPE_LAST_UPDATE_pn-telepathy-glib = "Apr 15, 2011"
 RECIPE_MAINTAINER_pn-telepathy-glib = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-telepathy-idle = "green"
 RECIPE_NO_OF_PATCHES_pn-telepathy-idle ="0"
-RECIPE_LATEST_RELEASE_DATE_pn-telepathy-glib ="2010/12/07"
-RECIPE_LATEST_VERSION_pn-telepathy-idle = "0.1.7"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-telepathy-idle = "10 months"
-RECIPE_LAST_UPDATE_pn-telepathy-idle = "Dec 30, 2010"
+RECIPE_LATEST_RELEASE_DATE_pn-telepathy-glib ="2011/02/11"
+RECIPE_LATEST_VERSION_pn-telepathy-idle = "0.1.8"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-telepathy-idle = "3 months"
+RECIPE_LAST_UPDATE_pn-telepathy-idle = "Apr 15, 2011"
 RECIPE_MAINTAINER_pn-telepathy-idle = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-telepathy-python = "green"
@@ -2232,11 +2230,11 @@ RECIPE_LAST_UPDATE_pn-libsyncml = "Jul 31, 2009"
 RECIPE_MAINTAINER_pn-libsyncml = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-telepathy-mission-control = "green"
-RECIPE_LATEST_VERSION_pn-telepathy-mission-control = "5.7.1"
+RECIPE_LATEST_VERSION_pn-telepathy-mission-control = "5.7.9"
 RECIPE_NO_OF_PATCHES_pn-telepathy-mission-control ="0"
-RECIPE_LATEST_RELEASE_DATE_pn-telepathy-mission-control ="2010/12/07"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-telepathy-mission-control ="20 days"
-RECIPE_LAST_UPDATE_pn-telepathy-mission-control = "Dec 30, 2010"
+RECIPE_LATEST_RELEASE_DATE_pn-telepathy-mission-control ="2011/04/05"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-telepathy-mission-control ="2 months"
+RECIPE_LAST_UPDATE_pn-telepathy-mission-control = "Apr 15, 2011"
 RECIPE_MAINTAINER_pn-telepathy-mission-control = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-libetpan = "red"
@@ -2496,63 +2494,63 @@ RECIPE_LAST_UPDATE_pn-libogg = "Dec 30, 2010"
 RECIPE_MAINTAINER_pn-libogg = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-gstreamer="green"
-RECIPE_LATEST_VERSION_pn-gstreamer="0.10.31"
+RECIPE_LATEST_VERSION_pn-gstreamer="0.10.32"
 RECIPE_NO_OF_PATCHES_pn-gstreamer="2"
-RECIPE_LATEST_RELEASE_DATE_pn-gstreamer="2010/11/30"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gstreamer="4 month"
-RECIPE_LAST_UPDATE_pn-gstreamer = "Dec 30, 2010"
+RECIPE_LATEST_RELEASE_DATE_pn-gstreamer="2011/01/32"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gstreamer="2 month"
+RECIPE_LAST_UPDATE_pn-gstreamer = "Apr 15, 2011"
 RECIPE_MAINTAINER_pn-gstreamer = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-gst-plugins-base="green"
 DISTRO_PN_ALIAS_pn-gst-plugins-base = "Meego=gst-plugins-base Fedora=gstreamer-plugins-base OpenSuSE=gstreamer-plugins-base Ubuntu=gst-plugins-base0.10 Mandriva=gstreamer0.10-plugins-base Debian=gst-plugins-base0.10"
-RECIPE_LATEST_VERSION_pn-gst-plugins-base="0.10.31"
+RECIPE_LATEST_VERSION_pn-gst-plugins-base="0.10.32"
 RECIPE_NO_OF_PATCHES_pn-gst-plugins-base="0"
-RECIPE_LATEST_RELEASE_DATE_pn-gst-plugins-base="2010/11/30"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gst-plugins-base="4 months"
-RECIPE_LAST_UPDATE_pn-gst-plugins-base = "Dec 30, 2010"
+RECIPE_LATEST_RELEASE_DATE_pn-gst-plugins-base="2011/01/21"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gst-plugins-base="2 months"
+RECIPE_LAST_UPDATE_pn-gst-plugins-base = "Apr 15, 2011"
 RECIPE_MAINTAINER_pn-gst-plugins-base = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-gst-plugins-good="green"
 DISTRO_PN_ALIAS_pn-gst-plugins-good = "Meego=gst-plugins-good Fedora=gstreamer-plugins-good OpenSuSE=gstreamer-plugins-good Ubuntu=gst-plugins-good0.10 Mandriva=gstreamer0.10-plugins-good Debian=gst-plugins-good0.10"
-RECIPE_LATEST_VERSION_pn-gst-plugins-good="0.10.26"
+RECIPE_LATEST_VERSION_pn-gst-plugins-good="0.10.28"
 RECIPE_NO_OF_PATCHES_pn-gst-plugins-good="0"
-RECIPE_LATEST_RELEASE_DATE_pn-gst-plugins-good="2010/12/01"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gst-plugins-good="3 month"
-RECIPE_LAST_UPDATE_pn-gst-plugins-good = "Dec 30, 2010"
+RECIPE_LATEST_RELEASE_DATE_pn-gst-plugins-good="2011/03/08"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gst-plugins-good="2 month"
+RECIPE_LAST_UPDATE_pn-gst-plugins-good = "Apr 15, 2011"
 RECIPE_MAINTAINER_pn-gst-plugins-good = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-gst-plugins-ugly="green"
 DISTRO_PN_ALIAS_pn-gst-plugins-ugly = "OpenSuSE=gstreamer-plugins-ugly Mandriva=gstreamer0.10-plugins-ugly Debian=gst-plugins-ugly0.10"
-RECIPE_LATEST_VERSION_pn-gst-plugins-ugly="0.10.16"
+RECIPE_LATEST_VERSION_pn-gst-plugins-ugly="0.10.17"
 RECIPE_NO_OF_PATCHES_pn-gst-plugins-ugly="0"
-RECIPE_LATEST_RELEASE_DATE_pn-gst-plugins-ugly="2010/09/02"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gst-plugins-ugly="3 months"
-RECIPE_LAST_UPDATE_pn-gst-plugins-ugly = "Nov 12, 2010"
+RECIPE_LATEST_RELEASE_DATE_pn-gst-plugins-ugly="2011/01/21"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gst-plugins-ugly="4 months"
+RECIPE_LAST_UPDATE_pn-gst-plugins-ugly = "Apr 15, 2011"
 RECIPE_MAINTAINER_pn-gst-plugins-ugly = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-gst-plugins-bad="green"
 DISTRO_PN_ALIAS_pn-gst-plugins-bad = "Fedora=gstreamer-plugins-bad-free OpenSuSE=gstreamer-plugins-bad Debian=gst-plugins-bad0.10"
-RECIPE_LATEST_VERSION_pn-gst-plugins-bad="0.10.20"
+RECIPE_LATEST_VERSION_pn-gst-plugins-bad="0.10.21"
 RECIPE_NO_OF_PATCHES_pn-gst-plugins-bad="0"
-RECIPE_LATEST_RELEASE_DATE_pn-gst-plugins-bad="2010/09/02"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gst-plugins-bad="3 months"
-RECIPE_LAST_UPDATE_pn-gst-plugins-bad = "Nov 12, 2010"
+RECIPE_LATEST_RELEASE_DATE_pn-gst-plugins-bad="2011/01/21"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gst-plugins-bad="4 months"
+RECIPE_LAST_UPDATE_pn-gst-plugins-bad = "Apr 15, 2011"
 RECIPE_MAINTAINER_pn-gst-plugins-bad = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-alsa-utils="green"
-RECIPE_LATEST_VERSION_pn-alsa-utils="1.0.23"
+RECIPE_LATEST_VERSION_pn-alsa-utils="1.0.24.2"
 RECIPE_NO_OF_PATCHES_pn-alsa-utils="1"
-RECIPE_LATEST_RELEASE_DATE_pn-alsa-utils="2010/04/16"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-alsa-utils="4 months"
-RECIPE_LAST_UPDATE_pn-alsa-utils = "Jun 26, 2010"
+RECIPE_LATEST_RELEASE_DATE_pn-alsa-utils="2011/01/31"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-alsa-utils="9 months"
+RECIPE_LAST_UPDATE_pn-alsa-utils = "Apr 15, 2011"
 RECIPE_MAINTAINER_pn-alsa-utils = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-alsa-lib="green"
-RECIPE_LATEST_VERSION_pn-alsa-lib="1.0.23"
+RECIPE_LATEST_VERSION_pn-alsa-lib="1.0.24.1"
 RECIPE_NO_OF_PATCHES_pn-alsa-lib="1"
-RECIPE_LATEST_RELEASE_DATE_pn-alsa-lib="2010/04/16"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-alsa-lib="4 months"
-RECIPE_LAST_UPDATE_pn-alsa-lib = "Jun 26, 2010"
+RECIPE_LATEST_RELEASE_DATE_pn-alsa-lib="2011/01/31"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-alsa-lib="9 months"
+RECIPE_LAST_UPDATE_pn-alsa-lib = "Apr 15, 2011"
 RECIPE_MAINTAINER_pn-alsa-lib = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-tremor="green"
-- 
1.7.1


