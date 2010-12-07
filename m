Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F2F64C81069
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 01:01:56 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 06 Dec 2010 23:01:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,310,1288594800"; d="scan'208";a="358054740"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by azsmga001.ch.intel.com with ESMTP; 06 Dec 2010 23:01:55 -0800
Message-Id: <d7941173ca8aec20754bf35914ea6e2a2edbad8c.1291705845.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291705845.git.dongxiao.xu@intel.com>
References: <cover.1291705845.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 7 Dec 2010 15:08:59 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 7/7] distro_tracking: update gupnp, gst-ffmpeg, gst-fluendo-mp3, etc.
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
X-List-Received-Date: Tue, 07 Dec 2010 07:01:56 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   35 ++++++++++++++------
 1 files changed, 25 insertions(+), 10 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 43a92e1..18ff320 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -1957,9 +1957,12 @@ RECIPE_STATUS_pn-empathy = "red"
 RECIPE_LATEST_VERSION_pn-empathy = "2.31.2"
 RECIPE_MAINTAINER_pn-empathy = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-gupnp = "red"
-RECIPE_LATEST_VERSION_pn-gupnp = "0.13.3"
-RECIPE_MAINTAINER_pn-gupnp = "Dongxiao Xu <dongxiao.xu@intel.com>"
+RECIPE_STATUS_pn-gupnp = "green"
+RECIPE_LATEST_VERSION_pn-gupnp = "0.14.0"
+RECIPE_NO_OF_PATCHES_pn-gupnp= "1"
+RECIPE_LATEST_RELEASE_DATE_pn-gupnp= "2010/09/16"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gupnp= "1 month"
+RECIPE_MAINTAINER_pn-gupnp= "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-gupnp-av = "green"
 RECIPE_LATEST_VERSION_pn-gupnp-av = "0.7.0"
@@ -2427,9 +2430,12 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gst-openmax= "18 months"
 RECIPE_MAINTAINER_pn-gst-openmax = "Dongxiao Xu <dongxiao.xu@intel.com>"
 DISTRO_PN_ALIAS_pn-gst-openmax="OSPDT upstream=http://cgit.freedesktop.org/gstreamer/gst-openmax"
 
-RECIPE_STATUS_pn-gst-ffmpeg = "red"
+RECIPE_STATUS_pn-gst-ffmpeg = "green"
 DISTRO_PN_ALIAS_pn-gst-ffmpeg = "Mandriva=gstreamer0.10-ffmpeg Debian=gstreamer0.10-ffmpeg"
-RECIPE_LATEST_VERSION_pn-gst-ffmpeg = "0.10.10"
+RECIPE_LATEST_VERSION_pn-gst-ffmpeg = "0.10.11"
+RECIPE_NO_OF_PATCHES_pn-gst-ffmpeg = "1"
+RECIPE_LATEST_RELEASE_DATE_pn-gst-ffmpeg = "2010/07/15"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gst-ffmpeg = "4 months"
 RECIPE_MAINTAINER_pn-gst-ffmpeg = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-alsa-oss = "red"
@@ -2441,8 +2447,11 @@ DISTRO_PN_ALIAS_pn-libsndfile1 = "Meego=libsndfile Fedora=libsndfile OpenSuSE=li
 RECIPE_LATEST_VERSION_pn-libsndfile1 = "1.0.21 "
 RECIPE_MAINTAINER_pn-libsndfile1 = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-pulseaudio = "red"
+RECIPE_STATUS_pn-pulseaudio = "green"
 RECIPE_LATEST_VERSION_pn-pulseaudio = "0.9.21"
+RECIPE_NO_OF_PATCHES_pn-pulseaudio = "5"
+RECIPE_LATEST_RELEASE_DATE_pn-pulseaudio = "2009/10/23"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-pulseaudio = "12 days"
 RECIPE_MAINTAINER_pn-pulseaudio = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-taglib = "green"
@@ -2456,13 +2465,19 @@ RECIPE_STATUS_pn-libnice = "red"
 RECIPE_LATEST_VERSION_pn-libnice = "0.0.12"
 RECIPE_MAINTAINER_pn-libnice = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-gst-fluendo-mp3 = "red"
-RECIPE_LATEST_VERSION_pn-gst-fluendo-mp3 = "0.10.10"
+RECIPE_STATUS_pn-gst-fluendo-mp3 = "green"
+RECIPE_LATEST_VERSION_pn-gst-fluendo-mp3 = "0.10.15"
+RECIPE_NO_OF_PATCHES_pn-gst-fluendo-mp3 = "1"
+RECIPE_LATEST_RELEASE_DATE_pn-gst-fluendo-mp3 = "2010/10/21"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gst-fluendo-mp3 = "3 months"
 RECIPE_MAINTAINER_pn-gst-fluendo-mp3 = "Dongxiao Xu <dongxiao.xu@intel.com>"
 DISTRO_PN_ALIAS_pn-gst-fluendo-mp3 = "Debian=gstreamer0.10-fluendo-mp3  Ubuntu=gstreamer0.10-fluendo-mp3"
 
-RECIPE_STATUS_pn-gst-fluendo-mpegdemux = "red"
-RECIPE_LATEST_VERSION_pn-gst-fluendo-mpegdemux = "0.10.23"
+RECIPE_STATUS_pn-gst-fluendo-mpegdemux = "green"
+RECIPE_LATEST_VERSION_pn-gst-fluendo-mpegdemux = "0.10.20"
+RECIPE_NO_OF_PATCHES_pn-gst-fluendo-mpegdemux = "0"
+RECIPE_LATEST_RELEASE_DATE_pn-gst-fluendo-mpegdemux = "2010/10/20"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gst-fluendo-mpegdemux = "1 months"
 RECIPE_MAINTAINER_pn-gst-fluendo-mpegdemux = "Dongxiao Xu <dongxiao.xu@intel.com>"
 DISTRO_PN_ALIAS_pn-gst-fluendo-mpegdemux = "Ubuntu=gstreamer0.10-fluendo-mpegdemux Debian=gstreamer0.10-fluendo-mpegdemux"
 
-- 
1.6.3.3


