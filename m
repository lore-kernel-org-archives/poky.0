Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EF2CE00344
	for <poky@yoctoproject.org>; Thu, 27 Sep 2012 15:12:49 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Sep 2012 15:12:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,498,1344236400"; d="scan'208";a="227859097"
Received: from unknown (HELO localhost) ([10.255.13.148])
	by fmsmga002.fm.intel.com with ESMTP; 27 Sep 2012 15:12:46 -0700
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Thu, 27 Sep 2012 17:12:41 -0500
Message-Id: <ea5dcf2328e246090501b10eff47107cdf2a9339.1348777841.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1348777841.git.tom.zanussi@intel.com>
References: <cover.1348777841.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2] yocto-bsp: make vfat feature inclusion conditional on kernel version
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

The linux-yocto-3.2 cfg/vfat feature changed location to cfg/fs/vfat
in the 3.4 yocto kernel's meta branch.  Add template code to include
the appropriate version depending on kernel version.

Fixes [YOCTO #3178].

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../target/arch/mips/recipes-kernel/linux/files/{{=machine}}.scc      | 4 +++-
 .../target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc   | 4 ++++
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.scc b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.scc
index 7d29541..e3daafb 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.scc
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.scc
@@ -1,8 +1,10 @@
 kconf hardware {{=machine}}.cfg
 
 include cfg/usb-mass-storage.scc
+{{ if kernel_choice == "linux-yocto_3.2": }}
 include cfg/vfat.scc
+{{ if kernel_choice == "linux-yocto_3.4": }}
+include cfg/fs/vfat.scc
 
 kconf hardware user-config.cfg
 include user-patches.scc
-
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc
index 8a04ddd..ec46ec1 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc
@@ -1,7 +1,11 @@
 kconf hardware {{=machine}}.cfg
 
 include cfg/usb-mass-storage.scc
+{{ if kernel_choice == "linux-yocto_3.2": }}
 include cfg/vfat.scc
+{{ if kernel_choice == "linux-yocto_3.4": }}
+include cfg/fs/vfat.scc
+
 include cfg/dmaengine/dmaengine.scc
 
 kconf hardware user-config.cfg
-- 
1.7.11.4


