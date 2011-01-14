Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0E5A54C80FBE
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 17:33:51 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Jan 2011 15:33:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,325,1291622400"; d="scan'208";a="593169290"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 14 Jan 2011 15:33:51 -0800
Message-Id: <eef23fed9096cf2a086904ca9258a478e8f98079.1295049240.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1295049240.git.jessica.zhang@intel.com>
References: <cover.1295049240.git.jessica.zhang@intel.com>
From: Jessica Zhang <jessica.zhang@intel.com>
Date: Fri, 14 Jan 2011 15:45:51 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] change the tar ball name from toolchain-sdk to toolchain-gmae, which is more accurate to what meta-toolchain-sdk generates
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
X-List-Received-Date: Fri, 14 Jan 2011 23:33:52 -0000

Signed-off-by: Jessica Zhang <jessica.zhang@intel.com>
---
 meta/recipes-core/meta/meta-toolchain-sdk.bb |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-core/meta/meta-toolchain-sdk.bb b/meta/recipes-core/meta/meta-toolchain-sdk.bb
index 8572f02..71d5b16 100644
--- a/meta/recipes-core/meta/meta-toolchain-sdk.bb
+++ b/meta/recipes-core/meta/meta-toolchain-sdk.bb
@@ -1,4 +1,4 @@
-TOOLCHAIN_TARGET_SDKTASK ?= "task-poky-standalone-gmae-sdk-target task-poky-standalone-gmae-sdk-target-dbg"
-TOOLCHAIN_TARGET_TASK = "${TOOLCHAIN_TARGET_SDKTASK}"
-TOOLCHAIN_OUTPUTNAME = "${SDK_NAME}-toolchain-sdk-${DISTRO_VERSION}"
+TOOLCHAIN_TARGET_GMAETASK ?= "task-poky-standalone-gmae-sdk-target task-poky-standalone-gmae-sdk-target-dbg"
+TOOLCHAIN_TARGET_TASK = "${TOOLCHAIN_TARGET_GMAETASK}"
+TOOLCHAIN_OUTPUTNAME = "${SDK_NAME}-toolchain-gmae-${DISTRO_VERSION}"
 require meta-toolchain.bb
-- 
1.7.0.4


