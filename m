Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68715E0147F
	for <poky@yoctoproject.org>; Mon, 10 Sep 2012 14:41:51 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 10 Sep 2012 14:41:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,400,1344236400"; d="scan'208";a="143511379"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.13.123])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Sep 2012 14:41:50 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 10 Sep 2012 14:41:50 -0700
Message-Id: <1347313310-21352-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
Subject: [PATCH] upstream_tracking: Fix format issues
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
X-List-Received-Date: Mon, 10 Sep 2012 21:41:51 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../conf/distro/include/upstream_tracking.inc      |   13 ++++++-------
 1 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index b03422a..b3f90a7 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -182,7 +182,7 @@ RECIPE_UPSTREAM_VERSION_pn-diffstat="1.55"
 RECIPE_UPSTREAM_DATE_pn-diffstat = "Jan 03, 2012"
 CHECK_DATE_pn-diffstat = "Aug 28, 2012"
 RECIPE_UPSTREAM_VERSION_pn-diffutils = "3.2"
-RECIPE_UPSTREAM_DATE_Pn-diffutils = "Sept 3, 2011"
+RECIPE_UPSTREAM_DATE_pn-diffutils = "Sept 3, 2011"
 CHECK_DATE_pn-diffutils = "Aug 28, 2012"
 RECIPE_UPSTREAM_DATE_pn-direcfb = "Jun 29, 2012"
 RECIPE_UPSTREAM_VERSION_pn-directfb = "1.6.1"
@@ -457,7 +457,7 @@ RECIPE_UPSTREAM_DATE_pn-irda-utils="Jul 10, 2006"
 CHECK_DATE_pn-irda-utils = "Aug 29, 2012"
 RECIPE_UPSTREAM_VERSION_pn-iso-codes = "3.38"
 RECIPE_UPSTREAM_DATE_pn-iso-codes = "Aug 08, 2012"
-CHECK_DATE_Pn-iso-codes = "Aug 29, 2012"
+CHECK_DATE_pn-iso-codes = "Aug 29, 2012"
 RECIPE_UPSTREAM_VERSION_pn-jpeg = "8d"
 CHECK_DATE_pn-jpeg = "Aug 29, 2012"
 RECIPE_UPSTREAM_DATE_pn-jpeg = "Jan 15, 2012"
@@ -500,7 +500,7 @@ CHECK_DATE_pn-liba52 = "Aug 29, 2012"
 RECIPE_UPSTREAM_DATE_pn-liba52="Jul 27, 2002"
 RECIPE_UPSTREAM_VERSION_pn-libacpi = "0.2"
 RECIPE_UPSTREAM_DATE_pn-libacpi = "unknown"
-CHECK_DATE_pn_libacpi = "Aug 29, 2012"
+CHECK_DATE_pn-libacpi = "Aug 29, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libaio = "0.3.109"
 RECIPE_UPSTREAM_DATE_pn-libaio = "Aug 30, 2011"
 CHECK_DATE_pn-libaio = "Aug 29, 2012"
@@ -848,7 +848,7 @@ RECIPE_UPSTREAM_DATE_pn-libxscrnsaver = "Mar 08, 2012"
 CHECK_DATE_pn-libxscrnsaver = "Aug 31, 2012"
 RECIPE_UPSTREAM_DATE_pn-libxsettings-client = "Mar 24, 2008"
 RECIPE_UPSTREAM_VERSION_pn-libxsettings-client = "0.17-5"
-CHECK_DATE_pn0libxsettings-client = "Aug 31, 2012"
+CHECK_DATE_pn-libxsettings-client = "Aug 31, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libxslt = "1.1.26"
 CHECK_DATE_pn-libxslt = "AUg 31, 2012"
 RECIPE_UPSTREAM_DATE_pn-libxslt = "Sep 01, 2009"
@@ -954,7 +954,7 @@ RECIPE_UPSTREAM_VERSION_pn-metacity = "2.34.3"
 RECIPE_UPSTREAM_DATE_pn-metacity = "Mar 20, 2012"
 CHECK_DATE_pn-metacity = "Aug 31, 2012"
 RECIPE_UPSTREAM_VERSION_pn-mingetty = "1.08"
-RECIPE_UPSTREAM_DATE_pn_mingetty = "Jan 18, 2008"
+RECIPE_UPSTREAM_DATE_pn-mingetty = "Jan 18, 2008"
 CHECK_DATE_pn-mingetty = "Aug 31, 2012"
 RECIPE_UPSTREAM_VERSION_pn-minicom = "2.6.1"
 RECIPE_UPSTREAM_DATE_pn-minicom = "Feb 11, 2012"
@@ -1160,7 +1160,7 @@ RECIPE_UPSTREAM_DATE_pn-qt-mobility-embedded = "May 10, 2011"
 CHECK_DATE_pn-qt-mobility-embedded = "Sep 03, 2012"
 RECIPE_UPSTREAM_VERSION_pn-quickly = "0.4.1"
 RECIPE_UPSTREAM_DATE_pn-quickly = "Apr 10, 2010"
-CHECK_DATE_pn-quickly = "Sep 31, 2012"
+CHECK_DATE_pn-quickly = "Aug 31, 2012"
 RECIPE_UPSTREAM_VERSION_pn-quilt="0.60"
 RECIPE_UPSTREAM_DATE_pn-quilt = "Feb 29, 2012"
 CHECK_DATE_pn-quilt = "Sep 03, 2012"
@@ -1428,7 +1428,6 @@ RECIPE_UPSTREAM_DATE_pn-xcursor-transparent-theme = "Dec 01, 2004"
 RECIPE_UPSTREAM_VERSION_pn-xcursor-transparent-theme = "0.1.1-1mamba"
 CHECK_DATE_pn-xcursor-transparent-theme = "Sep 03, 2012"
 RECIPE_UPSTREAM_VERSION_pn-xdg-utils = "1.0.2"
-RECIPE_UPSTREAM_DATE_pn-xdg-utils = "unkown"
 CHECK_DATE_pn-xdg-utils = "Sep 03, 2012"
 RECIPE_NO_UPDATE_REASON_pn-xdg-utils = "only release candidates available "
 RECIPE_UPSTREAM_VERSION_pn-xdpyinfo="1.3.0"
-- 
1.7.7.6


