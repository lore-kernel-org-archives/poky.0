Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1691BE014B0
	for <poky@yoctoproject.org>; Tue,  4 Sep 2012 17:42:50 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 04 Sep 2012 17:42:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,369,1344236400"; d="scan'208";a="141542189"
Received: from unknown (HELO localhost) ([10.255.13.125])
	by AZSMGA002.ch.intel.com with ESMTP; 04 Sep 2012 17:42:49 -0700
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Tue,  4 Sep 2012 19:42:47 -0500
Message-Id: <1f2a0c63ac648fafc402a9066615fc31b60cd731.1346805560.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1346805560.git.tom.zanussi@intel.com>
References: <cover.1346805560.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] yocto-bsp: remove packagegroup-core-tools-profile.bbappend
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
X-List-Received-Date: Wed, 05 Sep 2012 00:42:50 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The functionality previously added by these bbappends was already
handled in task-core-tools-profile.bb (now
packagegroup-core-tools-profile.bb), so remove this.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend | 2 --
 1 file changed, 2 deletions(-)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend

diff --git a/scripts/lib/bsp/substrate/target/arch/common/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend b/scripts/lib/bsp/substrate/target/arch/common/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
deleted file mode 100644
index 6efd583..0000000
--- a/scripts/lib/bsp/substrate/target/arch/common/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-RRECOMMENDS_packagegroup-core-tools-profile_append_{{=machine}} = " systemtap"
-
-- 
1.7.11.4


