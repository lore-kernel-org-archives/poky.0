Return-Path: <cristian.iorga@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3967E014C8
	for <poky@yoctoproject.org>; Tue, 30 Apr 2013 03:47:18 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Apr 2013 03:47:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,580,1363158000"; d="scan'208";a="330052263"
Received: from sentry.rb.intel.com ([10.237.105.54])
	by fmsmga002.fm.intel.com with ESMTP; 30 Apr 2013 03:47:17 -0700
From: Cristian Iorga <cristian.iorga@intel.com>
To: poky@yoctoproject.org
Date: Tue, 30 Apr 2013 13:48:07 +0300
Message-Id: <1367318887-10515-1-git-send-email-cristian.iorga@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] upstream_tracking.inc: minicom check update
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
X-List-Received-Date: Tue, 30 Apr 2013 10:47:19 -0000

Signed-off-by: Cristian Iorga <cristian.iorga@intel.com>
---
 meta-yocto/conf/distro/include/upstream_tracking.inc |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index 01ad877..a5e3d8c 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -159,7 +159,7 @@ CHECK_DATE_pn-makedevs = "Aug 31, 2012"
 RECIPE_UPSTREAM_VERSION_pn-meta-ide-support = "check"
 RECIPE_UPSTREAM_VERSION_pn-minicom = "2.6.2"
 RECIPE_UPSTREAM_DATE_pn-minicom = "Feb 06, 2013"
-CHECK_DATE_pn-minicom = "Feb 20, 2013"
+CHECK_DATE_pn-minicom = "Apr 30, 2013"
 RECIPE_UPSTREAM_DATE_pn-module-init-tools = "Jun 02, 2011"
 RECIPE_UPSTREAM_VERSION_pn-module-init-tools = "3.15"
 CHECK_DATE_pn-module-init-tools = "Aug 31, 2012"
-- 
1.7.10.4


