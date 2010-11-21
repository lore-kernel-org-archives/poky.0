Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7ECE94C80BD4
	for <poky@yoctoproject.org>; Sun, 21 Nov 2010 09:16:39 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 21 Nov 2010 07:16:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,231,1288594800"; d="scan'208";a="351440697"
Received: from unknown (HELO localhost) ([10.255.13.147])
	by azsmga001.ch.intel.com with ESMTP; 21 Nov 2010 07:16:38 -0800
Message-Id: <d83bc7d38fcff2bfdb8621b654efffe5e622d766.1290351524.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1290351524.git.tom.zanussi@intel.com>
References: <cover.1290351524.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@intel.com>
Date: Sun, 21 Nov 2010 08:50:12 -0600
To: poky@yoctoproject.org
Subject: [PATCH 1/1] emenlow: fix linux-yocto .bbappend
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
X-List-Received-Date: Sun, 21 Nov 2010 15:16:39 -0000

The recent WR rename missed a WRMACHINE change for emenlow, fix it.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes/linux/linux-yocto_git.bbappend         |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-emenlow/recipes/linux/linux-yocto_git.bbappend b/meta-emenlow/recipes/linux/linux-yocto_git.bbappend
index ed7e850..9fa2937 100644
--- a/meta-emenlow/recipes/linux/linux-yocto_git.bbappend
+++ b/meta-emenlow/recipes/linux/linux-yocto_git.bbappend
@@ -1,3 +1,3 @@
 FILESEXTRAPATHS := "${THISDIR}/${PN}"
 COMPATIBLE_MACHINE_emenlow = "emenlow"
-WRMACHINE_emenlow  = "emenlow"
+KMACHINE_emenlow  = "emenlow"
-- 
1.7.0.4


