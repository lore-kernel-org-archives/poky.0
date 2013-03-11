Return-Path: <cristian.iorga@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E36BBE004AB
	for <poky@yoctoproject.org>; Mon, 11 Mar 2013 08:25:33 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 11 Mar 2013 08:25:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,824,1355126400"; d="scan'208";a="212777315"
Received: from sentry (HELO localhost.localdomain) ([10.237.105.54])
	by AZSMGA002.ch.intel.com with ESMTP; 11 Mar 2013 08:25:32 -0700
From: Cristian Iorga <cristian.iorga@intel.com>
To: poky@yoctoproject.org
Date: Mon, 11 Mar 2013 17:25:57 +0200
Message-Id: <1363015559-18728-1-git-send-email-cristian.iorga@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH 1/3] tremor: added no update reason
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
X-List-Received-Date: Mon, 11 Mar 2013 15:25:34 -0000

it is the same revision, but on
different SVN modules

Signed-off-by: Cristian Iorga <cristian.iorga@intel.com>
---
 meta-yocto/conf/distro/include/upstream_tracking.inc |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index d7f13f9..e18dcd1 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -203,7 +203,8 @@ RECIPE_UPSTREAM_DATE_pn-tinylogin = "Jan 03, 2003"
 RECIPE_NO_UPDATE_REASON_pn-tinylogin = "TinyLogin was merged into BusyBox."
 RECIPE_UPSTREAM_VERSION_pn-tremor="20120122"
 RECIPE_UPSTREAM_DATE_pn-tremor="Jan 22, 2012"
-CHECK_DATE_pn-tremor = "Nov 08, 2012"
+CHECK_DATE_pn-tremor = "Mar 11, 2013"
+RECIPE_NO_UPDATE_REASON_pn-tremor = "Same revision on different SVN modules"
 RECIPE_UPSTREAM_VERSION_pn-ubootchart = "0.0+r12"
 CHECK_DATE_pn-ubootchart = "Sep 11, 2012"
 RECIPE_UPSTREAM_DATE_pn-udev-extraconf = "n/a"
-- 
1.7.10.4


