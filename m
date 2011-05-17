Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 539944C80AB8
	for <poky@yoctoproject.org>; Tue, 17 May 2011 03:42:09 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 May 2011 01:42:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,224,1304319600"; d="scan'208";a="643684873"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by orsmga002.jf.intel.com with ESMTP; 17 May 2011 01:42:08 -0700
Message-Id: <e05fe13c20b83a0706ce7d8f86170e05dbbd5668.1305622072.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305622072.git.dongxiao.xu@intel.com>
References: <cover.1305622072.git.dongxiao.xu@intel.com>
Old-Date: Tue, 17 May 2011 16:15:15 +0800
Date: Tue, 17 May 2011 16:48:53 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 1/8] gypsy: Add upstream status information for gypsy's patch
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
X-List-Received-Date: Tue, 17 May 2011 08:42:09 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../fix-unused-but-set-variable-warning.patch      |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-connectivity/gypsy/files/fix-unused-but-set-variable-warning.patch b/meta/recipes-connectivity/gypsy/files/fix-unused-but-set-variable-warning.patch
index d826970..8dbf3ef 100644
--- a/meta/recipes-connectivity/gypsy/files/fix-unused-but-set-variable-warning.patch
+++ b/meta/recipes-connectivity/gypsy/files/fix-unused-but-set-variable-warning.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: gypsy-0.8/gypsy/gypsy-time.c
 ===================================================================
 --- gypsy-0.8.orig/gypsy/gypsy-time.c
-- 
1.7.1


