Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E46EE00344
	for <poky@yoctoproject.org>; Thu, 27 Sep 2012 15:12:49 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Sep 2012 15:12:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,498,1344236400"; d="scan'208";a="214702436"
Received: from unknown (HELO localhost) ([10.255.13.148])
	by orsmga002.jf.intel.com with ESMTP; 27 Sep 2012 15:12:48 -0700
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Thu, 27 Sep 2012 17:12:42 -0500
Message-Id: <31d67a1ef904171740b7f6b2003ea352f6f672e2.1348777841.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <ea5dcf2328e246090501b10eff47107cdf2a9339.1348777841.git.tom.zanussi@intel.com>
References: <ea5dcf2328e246090501b10eff47107cdf2a9339.1348777841.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1348777841.git.tom.zanussi@intel.com>
References: <cover.1348777841.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] yocto-bsp: fix dmaengine feature inclusion
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
X-List-Received-Date: Thu, 27 Sep 2012 22:12:49 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The cfg/dmaengine/dmaengine feature changed location to cfg/dmaengine
in the 3.4 yocto kernel's meta branch.  Add template code to include
the appropriate version.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc
index ec46ec1..1585fa4 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc
@@ -6,7 +6,7 @@ include cfg/vfat.scc
 {{ if kernel_choice == "linux-yocto_3.4": }}
 include cfg/fs/vfat.scc
 
-include cfg/dmaengine/dmaengine.scc
+include cfg/dmaengine.scc
 
 kconf hardware user-config.cfg
 include user-patches.scc
-- 
1.7.11.4


