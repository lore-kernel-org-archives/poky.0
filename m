Return-Path: <radu.moisan@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12E29E003DA
	for <poky@yoctoproject.org>; Fri,  9 Nov 2012 04:19:55 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 Nov 2012 04:19:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,744,1344236400"; d="scan'208";a="166349547"
Received: from dell-desktop (HELO localhost.localdomain) ([10.237.105.32])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Nov 2012 04:19:36 -0800
From: Radu Moisan <radu.moisan@intel.com>
To: poky@yoctoproject.org
Date: Fri,  9 Nov 2012 14:24:04 +0200
Message-Id: <1352463844-18247-1-git-send-email-radu.moisan@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] upstream_tracking.inc: Update hdparm
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
X-List-Received-Date: Fri, 09 Nov 2012 12:19:56 -0000

Signed-off-by: Radu Moisan <radu.moisan@intel.com>
---
 .../conf/distro/include/upstream_tracking.inc      |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index e69a082..fe90814 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -418,7 +418,7 @@ RECIPE_UPSTREAM_DATE_pn-hal = "Nov 01, 2009"
 CHECK_DATE_pn-hal = "Aug 29, 2012"
 RECIPE_UPSTREAM_VERSION_pn-hdparm = "9.39"
 RECIPE_UPSTREAM_DATE_pn-hdparm = "Feb 03, 2012"
-CHECK_DATE_pn-hdparm = "Aug 29, 2012"
+CHECK_DATE_pn-hdparm = "Nov 09, 2012"
 RECIPE_UPSTREAM_VERSION_pn-hicolor-icon-theme = "0.12"
 RECIPE_UPSTREAM_DATE_pn-hicolor-icon-theme = "Jan 13, 2010"
 CHECK_DATE_pn-hicolor-icon-theme = "Aug 29, 2012"
-- 
1.7.9.5


