Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5AF774C811FC
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 07:06:42 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 05 Jan 2011 05:06:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,278,1291622400"; d="scan'208";a="590092039"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by orsmga002.jf.intel.com with ESMTP; 05 Jan 2011 05:06:41 -0800
Message-Id: <d7862d8671613a432b6520def713a91d4ffac16d.1294232460.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1294232460.git.dexuan.cui@intel.com>
References: <cover.1294232460.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Wed, 5 Jan 2011 20:48:51 +0800
Date: Wed, 05 Jan 2011 21:06:25 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 12/12] distro_tracking_fields.inc: update for lastest package updates
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
X-List-Received-Date: Wed, 05 Jan 2011 13:06:42 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   96 +++++++++++---------
 1 files changed, 51 insertions(+), 45 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 16db013..d9bbad1 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -2823,11 +2823,11 @@ RECIPE_MAINTAINER_pn-lttng-ust = "Dexuan Cui <dexuan.cui@intel.com>"
 RECIPE_STATUS_pn-lttng-control = "green"
 DISTRO_PN_ALIAS_pn-lttng-control = "OSPDT upstream=http://lttng.org/"
 RECIPE_DEPENDENCY_CHECK_pn-lttng-control = "not done"
-RECIPE_LATEST_VERSION_pn-lttng-control = "0.87"
+RECIPE_LATEST_VERSION_pn-lttng-control = "0.88-09242010"
 RECIPE_NO_OF_PATCHES_pn-lttng-control = "0"
 RECIPE_INTEL_SECTION_pn-lttng-control = "sdk-tools"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-lttng-control = "1 month"
-RECIPE_LATEST_RELEASE_DATE_pn-lttng-control = "06/2010"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-lttng-control = "3 months"
+RECIPE_LATEST_RELEASE_DATE_pn-lttng-control = "Sep 24, 2010"
 RECIPE_COMMENTS_pn-lttng-control = ""
 RECIPE_LAST_UPDATE_pn-lttng-control = "Nov 24, 2010"
 RECIPE_MAINTAINER_pn-lttng-control = "Dexuan Cui <dexuan.cui@intel.com>"
@@ -3727,13 +3727,13 @@ RECIPE_MAINTAINER_pn-calibrateproto = "Dexuan Cui <dexuan.cui@intel.com>"
 RECIPE_STATUS_pn-compositeproto = "green"
 DISTRO_PN_ALIAS_pn-compositeproto = "Meego=xorg-x11-proto-compositeproto"
 RECIPE_DEPENDENCY_CHECK_pn-compositeproto = "not done"
-RECIPE_LATEST_VERSION_pn-compositeproto = "0.4"
+RECIPE_LATEST_VERSION_pn-compositeproto = "0.4.2"
 RECIPE_NO_OF_PATCHES_pn-compositeproto = "0"
 RECIPE_INTEL_SECTION_pn-compositeproto = "x11/libs"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-compositeproto = "1 year"
-RECIPE_LATEST_RELEASE_DATE_pn-compositeproto = "07/2007"
+RECIPE_LATEST_RELEASE_DATE_pn-compositeproto = "Oct 29, 2010"
 RECIPE_COMMENTS_pn-compositeproto = ""
-RECIPE_LAST_UPDATE_pn-compositeproto = "Aug 1, 2007"
+RECIPE_LAST_UPDATE_pn-compositeproto = "Jan 5, 2011"
 RECIPE_MAINTAINER_pn-compositeproto = "Dexuan Cui <dexuan.cui@intel.com>"
 
 RECIPE_STATUS_pn-damageproto = "green"
@@ -3811,13 +3811,13 @@ RECIPE_MAINTAINER_pn-glproto = "Dexuan Cui <dexuan.cui@intel.com>"
 RECIPE_STATUS_pn-inputproto = "green"
 DISTRO_PN_ALIAS_pn-inputproto = "Meego=xorg-x11-proto-inputproto"
 RECIPE_DEPENDENCY_CHECK_pn-inputproto = "not done"
-RECIPE_LATEST_VERSION_pn-inputproto = "2.0"
+RECIPE_LATEST_VERSION_pn-inputproto = "2.0.1"
 RECIPE_NO_OF_PATCHES_pn-inputproto = "0"
 RECIPE_INTEL_SECTION_pn-inputproto = "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-inputproto = "2 months"
-RECIPE_LATEST_RELEASE_DATE_pn-inputproto = "10/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-inputproto = "1 year"
+RECIPE_LATEST_RELEASE_DATE_pn-inputproto = "Nov 10, 2010"
 RECIPE_COMMENTS_pn-inputproto = ""
-RECIPE_LAST_UPDATE_pn-inputproto = "Feb 3, 2010"
+RECIPE_LAST_UPDATE_pn-inputproto = "Jan 5, 2011"
 RECIPE_MAINTAINER_pn-inputproto = "Dexuan Cui <dexuan.cui@intel.com>"
 
 RECIPE_STATUS_pn-kbproto = "green"
@@ -3834,13 +3834,13 @@ RECIPE_MAINTAINER_pn-kbproto = "Dexuan Cui <dexuan.cui@intel.com>"
 
 RECIPE_STATUS_pn-libdmx = "green"
 RECIPE_DEPENDENCY_CHECK_pn-libdmx = "not done"
-RECIPE_LATEST_VERSION_pn-libdmx = "1.1.0"
+RECIPE_LATEST_VERSION_pn-libdmx = "1.1.1"
 RECIPE_NO_OF_PATCHES_pn-libdmx = "0"
 RECIPE_INTEL_SECTION_pn-libdmx = "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libdmx = "2 months"
-RECIPE_LATEST_RELEASE_DATE_pn-libdmx = "10/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libdmx = "1 year"
+RECIPE_LATEST_RELEASE_DATE_pn-libdmx = "Oct 28, 2010"
 RECIPE_COMMENTS_pn-libdmx = ""
-RECIPE_LAST_UPDATE_pn-libdmx = "Feb 3, 2010"
+RECIPE_LAST_UPDATE_pn-libdmx = "Jan 5, 2011"
 RECIPE_MAINTAINER_pn-libdmx = "Dexuan Cui <dexuan.cui@intel.com>"
 
 RECIPE_STATUS_pn-libxi = "green"
@@ -3926,25 +3926,25 @@ RECIPE_MAINTAINER_pn-recordproto = "Dexuan Cui <dexuan.cui@intel.com>"
 RECIPE_STATUS_pn-renderproto = "green"
 DISTRO_PN_ALIAS_pn-renderproto = "Meego=xorg-x11-proto-renderproto"
 RECIPE_DEPENDENCY_CHECK_pn-renderproto = "not done"
-RECIPE_LATEST_VERSION_pn-renderproto = "0.11"
+RECIPE_LATEST_VERSION_pn-renderproto = "0.11.1"
 RECIPE_NO_OF_PATCHES_pn-renderproto = "0"
 RECIPE_INTEL_SECTION_pn-renderproto = "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-renderproto = "2 years"
-RECIPE_LATEST_RELEASE_DATE_pn-renderproto = "07/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-renderproto = "1 year"
+RECIPE_LATEST_RELEASE_DATE_pn-renderproto = "Aug 10, 2010"
 RECIPE_COMMENTS_pn-renderproto = ""
-RECIPE_LAST_UPDATE_pn-renderproto = "Feb 3, 2010"
+RECIPE_LAST_UPDATE_pn-renderproto = "Jan 5, 2011"
 RECIPE_MAINTAINER_pn-renderproto = "Dexuan Cui <dexuan.cui@intel.com>"
 
 RECIPE_STATUS_pn-resourceproto = "green"
 DISTRO_PN_ALIAS_pn-resourceproto = "Meego=xorg-x11-proto-resourceproto"
 RECIPE_DEPENDENCY_CHECK_pn-resourceproto = "not done"
-RECIPE_LATEST_VERSION_pn-resourceproto = "1.1.0"
+RECIPE_LATEST_VERSION_pn-resourceproto = "1.1.1"
 RECIPE_NO_OF_PATCHES_pn-resourceproto = "0"
 RECIPE_INTEL_SECTION_pn-resourceproto = "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-resourceproto = "3 years"
-RECIPE_LATEST_RELEASE_DATE_pn-resourceproto = "08/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-resourceproto = "1+ years"
+RECIPE_LATEST_RELEASE_DATE_pn-resourceproto = "Dec 8, 2010"
 RECIPE_COMMENTS_pn-resourceproto = ""
-RECIPE_LAST_UPDATE_pn-resourceproto = "Feb 3, 2010"
+RECIPE_LAST_UPDATE_pn-resourceproto = "Jan 5, 2011"
 RECIPE_MAINTAINER_pn-resourceproto = "Dexuan Cui <dexuan.cui@intel.com>"
 
 RECIPE_STATUS_pn-scrnsaverproto = "green"
@@ -3956,7 +3956,7 @@ RECIPE_INTEL_SECTION_pn-scrnsaverproto = "x11/libs"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-scrnsaverproto = "1+ years"
 RECIPE_LATEST_RELEASE_DATE_pn-scrnsaverproto = "Oct 29, 2010"
 RECIPE_COMMENTS_pn-scrnsaverproto = ""
-RECIPE_LAST_UPDATE_pn-scrnsaverproto = "Feb 3, 2010"
+RECIPE_LAST_UPDATE_pn-scrnsaverproto = "Jan 5, 2011"
 RECIPE_MAINTAINER_pn-scrnsaverproto = "Dexuan Cui <dexuan.cui@intel.com>"
 
 RECIPE_STATUS_pn-trapproto = "green"
@@ -4117,23 +4117,23 @@ RECIPE_MAINTAINER_pn-xf86vidmodeproto = "Dexuan Cui <dexuan.cui@intel.com>"
 RECIPE_STATUS_pn-xproto = "green"
 DISTRO_PN_ALIAS_pn-xproto = "Meego=xorg-x11-proto-xproto Fedora=xorg-x11-proto-devel Ubuntu=x11proto-core-dev Debian=x11proto-core-dev Opensuse=xorg-x11-proto-devel Mandriva=x11-proto-devel"
 RECIPE_DEPENDENCY_CHECK_pn-xproto = "not done"
-RECIPE_LATEST_VERSION_pn-xproto = "7.0.17"
+RECIPE_LATEST_VERSION_pn-xproto = "7.0.20"
 RECIPE_NO_OF_PATCHES_pn-xproto = "0"
 RECIPE_INTEL_SECTION_pn-xproto = "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xproto = "8 months"
-RECIPE_LATEST_RELEASE_DATE_pn-xproto = "05/2010"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xproto = "1 month"
+RECIPE_LATEST_RELEASE_DATE_pn-xproto = "Dec 7, 2010"
 RECIPE_COMMENTS_pn-xproto = ""
-RECIPE_LAST_UPDATE_pn-xproto = "Nov 24, 2010"
+RECIPE_LAST_UPDATE_pn-xproto = "Jan 5, 2011"
 RECIPE_MAINTAINER_pn-xproto = "Dexuan Cui <dexuan.cui@intel.com>"
 
 RECIPE_STATUS_pn-liberation-fonts = "green"
 RECIPE_DEPENDENCY_CHECK_pn-liberation-fonts = "not done"
-RECIPE_LATEST_VERSION_pn-liberation-fonts = "1.05.2.20091019"
-RECIPE_NO_UPDATE_REASON_pn-liberation-fonts = "1.05.2.20091019 doesn't have big differences from current version 1.04; 1.05.2.20091019 needs adding new native packages like libungif_4.1.3, libspiro and fontforge that have stability concerns"
+RECIPE_LATEST_VERSION_pn-liberation-fonts = "1.06.0.20100721"
+RECIPE_NO_UPDATE_REASON_pn-liberation-fonts = "before upgrading to 1.06.0.20100721, we need adding new native packages like libungif_4.1.3, libspiro and fontforge first"
 RECIPE_NO_OF_PATCHES_pn-liberation-fonts = "0"
 RECIPE_INTEL_SECTION_pn-liberation-fonts = "x11/fonts"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-liberation-fonts = "5 months"
-RECIPE_LATEST_RELEASE_DATE_pn-liberation-fonts = "12/26/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-liberation-fonts = "1 month"
+RECIPE_LATEST_RELEASE_DATE_pn-liberation-fonts = "Jul 21, 2010"
 RECIPE_COMMENTS_pn-liberation-fonts = "current version 1.04 released open source under GPLv2 with exceptions"
 RECIPE_LAST_UPDATE_pn-liberation-fonts = "Nov 24, 2010"
 RECIPE_MAINTAINER_pn-liberation-fonts = "Dexuan Cui <dexuan.cui@intel.com>"
@@ -4297,13 +4297,13 @@ RECIPE_MAINTAINER_pn-libxvmc = "Dexuan Cui <dexuan.cui@intel.com>"
 
 RECIPE_STATUS_pn-libxxf86misc = "green"
 RECIPE_DEPENDENCY_CHECK_pn-libxxf86misc = "not done"
-RECIPE_LATEST_VERSION_pn-libxxf86misc = "1.0.2"
+RECIPE_LATEST_VERSION_pn-libxxf86misc = "1.0.3"
 RECIPE_NO_OF_PATCHES_pn-libxxf86misc = "0"
 RECIPE_INTEL_SECTION_pn-libxxf86misc = "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libxxf86misc = "3 years"
-RECIPE_LATEST_RELEASE_DATE_pn-libxxf86misc = "10/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libxxf86misc = "1+ years"
+RECIPE_LATEST_RELEASE_DATE_pn-libxxf86misc = "Nov 21, 2010"
 RECIPE_COMMENTS_pn-libxxf86misc = ""
-RECIPE_LAST_UPDATE_pn-libxxf86misc = "Jun 29, 2010"
+RECIPE_LAST_UPDATE_pn-libxxf86misc = "Jan 5, 2011"
 RECIPE_MAINTAINER_pn-libxxf86misc = "Dexuan Cui <dexuan.cui@intel.com>"
 
 RECIPE_STATUS_pn-libxxf86vm = "green"
@@ -4397,13 +4397,13 @@ RECIPE_MAINTAINER_pn-libxkbfile = "Dexuan Cui <dexuan.cui@intel.com>"
 
 RECIPE_STATUS_pn-pixman = "green"
 RECIPE_DEPENDENCY_CHECK_pn-pixman = "not done"
-RECIPE_LATEST_VERSION_pn-pixman = "0.18.2"
+RECIPE_LATEST_VERSION_pn-pixman = "0.21.2"
 RECIPE_NO_OF_PATCHES_pn-pixman = "0"
 RECIPE_INTEL_SECTION_pn-pixman = "x11/libs"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-pixman = "1 month"
-RECIPE_LATEST_RELEASE_DATE_pn-pixman = "05/2010"
+RECIPE_LATEST_RELEASE_DATE_pn-pixman = "Nov 16, 2010"
 RECIPE_COMMENTS_pn-pixman = ""
-RECIPE_LAST_UPDATE_pn-pixman = "Nov 15, 2010"
+RECIPE_LAST_UPDATE_pn-pixman = "Jan 5, 2011"
 RECIPE_MAINTAINER_pn-pixman = "Dexuan Cui <dexuan.cui@intel.com>"
 
 RECIPE_STATUS_pn-xtrans = "green"
@@ -4490,13 +4490,13 @@ RECIPE_MAINTAINER_pn-freetype = "Dexuan Cui <dexuan.cui@intel.com>"
 
 RECIPE_STATUS_pn-librsvg = "green"
 RECIPE_DEPENDENCY_CHECK_pn-librsvg = "not done"
-RECIPE_LATEST_VERSION_pn-librsvg = "2.26.3"
+RECIPE_LATEST_VERSION_pn-librsvg = "2.32.1"
 RECIPE_NO_OF_PATCHES_pn-librsvg = "0"
 RECIPE_INTEL_SECTION_pn-librsvg = "x11/utils"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-librsvg = "10 months"
-RECIPE_LATEST_RELEASE_DATE_pn-librsvg = "05/2010"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-librsvg = "1+ months"
+RECIPE_LATEST_RELEASE_DATE_pn-librsvg = "Nov 13, 2010"
 RECIPE_COMMENTS_pn-librsvg = ""
-RECIPE_LAST_UPDATE_pn-librsvg = "Nov 24, 2010"
+RECIPE_LAST_UPDATE_pn-librsvg = "Jan 5, 2011"
 RECIPE_MAINTAINER_pn-librsvg = "Dexuan Cui <dexuan.cui@intel.com>"
 
 RECIPE_STATUS_pn-libx11 = "green"
@@ -4637,11 +4637,17 @@ RECIPE_LATEST_VERSION_pn-libxprintutil = "1.0.1"
 RECIPE_LAST_UPDATE_pn-libxprintutil = "Jul 3, 2007"
 RECIPE_MAINTAINER_pn-libxprintutil = "Dexuan Cui <dexuan.cui@intel.com>"
 
-RECIPE_STATUS_pn-libxscrnsaver = "red"
-RECIPE_LATEST_VERSION_pn-libxscrnsaver = "1.2.0"
+RECIPE_STATUS_pn-libxscrnsaver = "green"
+DISTRO_PN_ALIAS_pn-libxscrnsaver = "Fedora=libXScrnSaver Ubuntu=libxss1 Mandriva=libxscrnsaver"
+DEPENDENCY_CHECK_pn-libxscrnsaver = "not done"
+RECIPE_LATEST_VERSION_pn-libxscrnsaver = "1.2.1"
+RECIPE_NO_OF_PATCHES_pn-libxscrnsaver = "0"
+RECIPE_INTEL_SECTION_pn-libxscrnsaver = "x11/libs"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libxscrnsaver = "1+ years"
+RECIPE_LATEST_RELEASE_DATE_pn-libxscrnsaver = "Oct 29, 2010"
+RECIPE_COMMENTS_pn-libxscrnsaver = ""
 RECIPE_LAST_UPDATE_pn-libxscrnsaver = "Nov 16, 2010"
 RECIPE_MAINTAINER_pn-libxscrnsaver = "Dexuan Cui <dexuan.cui@intel.com>"
-DISTRO_PN_ALIAS_pn-libxscrnsaver = "Fedora=libXScrnSaver Ubuntu=libxss1 Mandriva=libxscrnsaver"
 
 RECIPE_STATUS_pn-libxtrap = "red"
 RECIPE_LATEST_VERSION_pn-libxtrap = "1.0.0"
-- 
1.7.2


