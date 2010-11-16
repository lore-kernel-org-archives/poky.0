Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8F1344C811D3
	for <poky@yoctoproject.org>; Mon, 15 Nov 2010 18:56:09 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 15 Nov 2010 16:56:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,203,1288594800"; d="scan'208";a="349122338"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.22])
	by azsmga001.ch.intel.com with ESMTP; 15 Nov 2010 16:56:08 -0800
Message-Id: <f89eff7fbf60975d9c35dca46c0419a6a5b7dfc9.1289868964.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1289868964.git.dongxiao.xu@intel.com>
References: <cover.1289868964.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 16 Nov 2010 08:51:07 +0800
To: poky@yoctoproject.org
Subject: [PATCH 8/8] distro_tracking: update distro tracking fileds for bluez4, neon, etc.
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
X-List-Received-Date: Tue, 16 Nov 2010 00:56:09 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   41 ++++++++++---------
 1 files changed, 22 insertions(+), 19 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 4a00ce7..7d9f87e 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -219,11 +219,11 @@ RECIPE_MAINTAINER_pn-dbus-glib = "Kevin Tian <kevin.tian@intel.com>"
 
 RECIPE_STATUS_pn-neon="green"
 DEPENDENCY_CHECK_pn-neon = "not done"
-RECIPE_LATEST_VERSION_pn-neon="0.29.3"
+RECIPE_LATEST_VERSION_pn-neon="0.29.5"
 RECIPE_NO_OF_PATCHES_pn-neon="0"
 RECIPE_INTEL_SECTION_pn-neon = "base libs"
-RECIPE_LATEST_RELEASE_DATE_pn-neon="01/2010"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-neon="15 days"
+RECIPE_LATEST_RELEASE_DATE_pn-neon="2010/10/14"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-neon="10 days"
 RECIPE_COMMENTS_pn-neon = ""
 RECIPE_MAINTAINER_pn-neon = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
@@ -965,10 +965,10 @@ RECIPE_MAINTAINER_pn-which = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-quota = "green"
 DEPENDENCY_CHECK_pn-quota = "not done"
-RECIPE_LATEST_VERSION_pn-quota = "3.17"
+RECIPE_LATEST_VERSION_pn-quota = "4.00-pre1"
 RECIPE_INTEL_SECTION_pn-quota = "base utils"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-quota = "10 months"
-RECIPE_LATEST_RELEASE_DATE_pn-quota = "01/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-quota = "13 months"
+RECIPE_LATEST_RELEASE_DATE_pn-quota = "2010/02/17"
 RECIPE_COMMENTS_pn-quota = ""
 RECIPE_MAINTAINER_pn-quota = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
@@ -1987,10 +1987,10 @@ RECIPE_MAINTAINER_pn-irda-utils = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-bluez4="green"
 DISTRO_PN_ALIAS_pn-bluez4="Meego=bluz Fedora=bluz Ubuntu=bluz OpenSuSE=bluz Mandriva=bluz"
-RECIPE_LATEST_VERSION_pn-bluez4="4.66"
+RECIPE_LATEST_VERSION_pn-bluez4="4.79"
 RECIPE_NO_OF_PATCHES_pn-bluez4="2"
-RECIPE_LATEST_RELEASE_DATE_pn-bluez4="2010/05/24"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-bluez4="1 month"
+RECIPE_LATEST_RELEASE_DATE_pn-bluez4="2010/11/08"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-bluez4="2 days"
 DISTRO_PN_ALIAS_pn-bluez4= "Fedora=bluez Ubuntu=bluez Debian=bluez-utils Opensuse=bluez"
 RECIPE_MAINTAINER_pn-bluez4 = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
@@ -2488,17 +2488,17 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-flac="2 months"
 RECIPE_MAINTAINER_pn-flac = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-libvorbis="green"
-RECIPE_LATEST_VERSION_pn-libvorbis="1.3.1"
+RECIPE_LATEST_VERSION_pn-libvorbis="1.3.2"
 RECIPE_NO_OF_PATCHES_pn-libvorbis="0"
-RECIPE_LATEST_RELEASE_DATE_pn-libvorbis="2010/05/26"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libvorbis="8 months"
+RECIPE_LATEST_RELEASE_DATE_pn-libvorbis="2010/11/01"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libvorbis="7 months"
 RECIPE_MAINTAINER_pn-libvorbis = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-libogg="green"
-RECIPE_LATEST_VERSION_pn-libogg="1.2.0"
+RECIPE_LATEST_VERSION_pn-libogg="1.2.1"
 RECIPE_NO_OF_PATCHES_pn-libogg="0"
-RECIPE_LATEST_RELEASE_DATE_pn-libogg="2010/05/26"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libogg="9 months"
+RECIPE_LATEST_RELEASE_DATE_pn-libogg="2010/11/02"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libogg="7 months"
 RECIPE_MAINTAINER_pn-libogg = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-mpeg2dec="green"
@@ -2591,10 +2591,10 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-speex="8 months"
 RECIPE_MAINTAINER_pn-speex = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-libmusicbrainz="green"
-RECIPE_LATEST_VERSION_pn-libmusicbrainz="3.0.2"
+RECIPE_LATEST_VERSION_pn-libmusicbrainz="3.0.3"
 RECIPE_NO_OF_PATCHES_pn-libmusicbrainz="0"
-RECIPE_LATEST_RELEASE_DATE_pn-libmusicbrainz="2008/09/13"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libmusicbrainz="14 months"
+RECIPE_LATEST_RELEASE_DATE_pn-libmusicbrainz="2010/09/27"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libmusicbrainz="2 years"
 RECIPE_MAINTAINER_pn-libmusicbrainz = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-clutter-gst-0.10 = "red"
@@ -2652,8 +2652,11 @@ RECIPE_STATUS_pn-pulseaudio = "red"
 RECIPE_LATEST_VERSION_pn-pulseaudio = "0.9.21"
 RECIPE_MAINTAINER_pn-pulseaudio = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-taglib = "red"
+RECIPE_STATUS_pn-taglib = "green"
 RECIPE_LATEST_VERSION_pn-taglib = "1.6.3"
+RECIPE_NO_OF_PATCHES_pn-taglib = "2"
+RECIPE_LATEST_RELEASE_DATE_pn-taglib = "2010/04/19"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-taglib = "10 days"
 RECIPE_MAINTAINER_pn-taglib = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-libnice = "red"
-- 
1.6.3.3


