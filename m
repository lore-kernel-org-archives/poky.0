Return-Path: <cristian.iorga@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 531D8E01460
	for <poky@yoctoproject.org>; Thu, 14 Mar 2013 11:25:15 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 14 Mar 2013 11:25:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,846,1355126400"; d="scan'208";a="279589035"
Received: from unknown (HELO sentry.rb.intel.com) ([10.237.105.54])
	by orsmga001.jf.intel.com with ESMTP; 14 Mar 2013 11:25:13 -0700
From: Cristian Iorga <cristian.iorga@intel.com>
To: poky@yoctoproject.org
Date: Thu, 14 Mar 2013 20:25:46 +0200
Message-Id: <1363285546-24207-1-git-send-email-cristian.iorga@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] upstream-tracking: added polkit no upgrade reason
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
X-List-Received-Date: Thu, 14 Mar 2013 18:25:15 -0000

Signed-off-by: Cristian Iorga <cristian.iorga@intel.com>
---
 meta-yocto/conf/distro/include/upstream_tracking.inc |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index d212a28..c844f7c 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -175,9 +175,10 @@ RECIPE_NO_UPDATE_REASON_pn-pkgconfig = "removes glib-conf, adds circular depends
 RECIPE_UPSTREAM_VERSION_pn-pointercal = "0.0"
 RECIPE_UPSTREAM_DATE_pn-pointercal = "n/a"
 RECIPE_UPSTREAM_DATE_pn-poky-feed-config-opkg = "n/a"
-RECIPE_UPSTREAM_DATE_pn-polkit = "Jul 11, 2012"
-RECIPE_UPSTREAM_VERSION_pn-polkit = "0.107"
-CHECK_DATE_pn-polkit = "Aug 31, 2012"
+RECIPE_UPSTREAM_DATE_pn-polkit = "Jan 09, 2013"
+RECIPE_UPSTREAM_VERSION_pn-polkit = "0.110"
+CHECK_DATE_pn-polkit = "Mar 14, 2013"
+RECIPE_NO_UPDATE_REASON_pn-polkit = "requires spidermonkey 1.8.5, not available in poky"
 RECIPE_UPSTREAM_VERSION_pn-pong-clock = "1.0"
 RECIPE_NO_UPDATE_REASON_pn-powertop = "Do not upgrade to version 1.97 since it's a beta release of the comming PowerTOP 2.0"
 RECIPE_UPSTREAM_VERSION_pn-ppp-dialin = "check"
-- 
1.7.10.4


