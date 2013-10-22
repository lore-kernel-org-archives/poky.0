Return-Path: <cristian.iorga@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39DC3E01638
	for <poky@yoctoproject.org>; Tue, 22 Oct 2013 07:19:01 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 Oct 2013 07:15:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="422933082"
Received: from sentry.rb.intel.com ([10.237.105.54])
	by orsmga002.jf.intel.com with ESMTP; 22 Oct 2013 07:19:00 -0700
From: Cristian Iorga <cristian.iorga@intel.com>
To: poky@yoctoproject.org
Date: Tue, 22 Oct 2013 17:21:05 +0300
Message-Id: <5fb65a9e5be0d2d16e9cefc66750859a08010857.1382451478.git.cristian.iorga@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1382451478.git.cristian.iorga@intel.com>
References: <cover.1382451478.git.cristian.iorga@intel.com>
In-Reply-To: <cover.1382451478.git.cristian.iorga@intel.com>
References: <cover.1382451478.git.cristian.iorga@intel.com>
Subject: [PATCH 1/1] upstream_tracking: Update manual check for minicom
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
X-List-Received-Date: Tue, 22 Oct 2013 14:19:03 -0000

Signed-off-by: Cristian Iorga <cristian.iorga@intel.com>
---
 meta-yocto/conf/distro/include/upstream_tracking.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index c8c140b..de30a47 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -166,7 +166,7 @@ CHECK_DATE_pn-makedevs = "Aug 31, 2012"
 RECIPE_UPSTREAM_VERSION_pn-meta-ide-support = "check"
 RECIPE_UPSTREAM_VERSION_pn-minicom = "2.6.2"
 RECIPE_UPSTREAM_DATE_pn-minicom = "Feb 06, 2013"
-CHECK_DATE_pn-minicom = "Oct 02, 2013"
+CHECK_DATE_pn-minicom = "Oct 22, 2013"
 RECIPE_UPSTREAM_DATE_pn-module-init-tools = "Jun 02, 2011"
 RECIPE_UPSTREAM_VERSION_pn-module-init-tools = "3.15"
 CHECK_DATE_pn-module-init-tools = "Aug 31, 2012"
-- 
1.8.1.2


