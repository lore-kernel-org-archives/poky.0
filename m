Return-Path: <cristian.iorga@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CA2FE01248
	for <poky@yoctoproject.org>; Wed, 20 Feb 2013 01:47:01 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 Feb 2013 01:47:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,699,1355126400"; d="scan'208";a="289478500"
Received: from sentry (HELO localhost.localdomain) ([10.237.105.54])
	by fmsmga001.fm.intel.com with ESMTP; 20 Feb 2013 01:46:49 -0800
From: Cristian Iorga <cristian.iorga@intel.com>
To: poky@yoctoproject.org
Date: Wed, 20 Feb 2013 11:47:12 +0200
Message-Id: <1361353632-15927-1-git-send-email-cristian.iorga@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] upstream_tracking.inc: Coonectivity and multimedia packages updates
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
X-List-Received-Date: Wed, 20 Feb 2013 09:47:01 -0000

Upstream packages tracking updates

Signed-off-by: Cristian Iorga <cristian.iorga@intel.com>
---
 meta-yocto/conf/distro/include/upstream_tracking.inc |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index a984722..52d35dc 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -121,9 +121,9 @@ RECIPE_UPSTREAM_VERSION_pn-makedevs = "1.0.0"
 RECIPE_UPSTREAM_DATE_pn-makedevs = "Feb 11, 2009"
 CHECK_DATE_pn-makedevs = "Aug 31, 2012"
 RECIPE_UPSTREAM_VERSION_pn-meta-ide-support = "check"
-RECIPE_UPSTREAM_VERSION_pn-minicom = "2.6.1"
-RECIPE_UPSTREAM_DATE_pn-minicom = "Feb 11, 2012"
-CHECK_DATE_pn-minicom = "Aug 31, 2012"
+RECIPE_UPSTREAM_VERSION_pn-minicom = "2.6.2"
+RECIPE_UPSTREAM_DATE_pn-minicom = "Feb 06, 2013"
+CHECK_DATE_pn-minicom = "Feb 20, 2013"
 RECIPE_UPSTREAM_DATE_pn-module-init-tools = "Jun 02, 2011"
 RECIPE_UPSTREAM_VERSION_pn-module-init-tools = "3.15"
 CHECK_DATE_pn-module-init-tools = "Aug 31, 2012"
-- 
1.7.10.4


