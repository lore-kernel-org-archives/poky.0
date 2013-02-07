Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0005E00740
	for <poky@yoctoproject.org>; Thu,  7 Feb 2013 06:49:33 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 07 Feb 2013 06:49:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,622,1355126400"; d="scan'208";a="253815414"
Received: from unknown (HELO localhost) ([10.255.12.217])
	by azsmga001.ch.intel.com with ESMTP; 07 Feb 2013 06:49:32 -0800
From: tom.zanussi@linux.intel.com
To: ross.burton@intel.com,
	poky@yoctoproject.org
Date: Thu,  7 Feb 2013 08:49:31 -0600
Message-Id: <593fc6ab641090afef56be13304020a3a2a8bc83.1360247978.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1360247978.git.tom.zanussi@linux.intel.com>
References: <cover.1360247978.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 1/1][danny] yocto-bsp: prepend includes in machine.scc files with machine
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
X-List-Received-Date: Thu, 07 Feb 2013 14:49:34 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

The names of the -user files were changed to have the machine
prepended, but the includes weren't - fix the includes.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../target/arch/arm/recipes-kernel/linux/files/{{=machine}}.scc       | 4 ++--
 .../target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc      | 4 ++--
 .../target/arch/mips/recipes-kernel/linux/files/{{=machine}}.scc      | 4 ++--
 .../target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc   | 4 ++--
 .../target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.scc      | 4 ++--
 .../target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.scc    | 4 ++--
 6 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.scc b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.scc
index 39f87f5..24196e6 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.scc
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.scc
@@ -3,5 +3,5 @@ kconf non-hardware {{machine}}-non_hardware.cfg
 
 include features/usb-net/usb-net.scc
 
-kconf hardware user-config.cfg
-include user-patches.scc
+kconf hardware {{=machine}}-user-config.cfg
+include {{=machine}}-user-patches.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc
index d8d28ce..41e1635 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc
@@ -19,5 +19,5 @@ include cfg/usb-mass-storage.scc
 include cfg/boot-live.scc
 include features/power/intel.scc
 
-kconf hardware user-config.cfg
-include user-patches.scc
+kconf hardware {{=machine}}-user-config.cfg
+include {{=machine}}-user-patches.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.scc b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.scc
index e3daafb..1ebbc32 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.scc
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.scc
@@ -6,5 +6,5 @@ include cfg/vfat.scc
 {{ if kernel_choice == "linux-yocto_3.4": }}
 include cfg/fs/vfat.scc
 
-kconf hardware user-config.cfg
-include user-patches.scc
+kconf hardware {{=machine}}-user-config.cfg
+include {{=machine}}-user-patches.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc
index 1585fa4..0d64f58 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc
@@ -8,5 +8,5 @@ include cfg/fs/vfat.scc
 
 include cfg/dmaengine.scc
 
-kconf hardware user-config.cfg
-include user-patches.scc
+kconf hardware {{=machine}}-user-config.cfg
+include {{=machine}}-user-patches.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.scc b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.scc
index 0f20dcd..f3739be 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.scc
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.scc
@@ -1,4 +1,4 @@
 kconf hardware {{=machine}}.cfg
 
-kconf hardware user-config.cfg
-include user-patches.scc
+kconf hardware {{=machine}}-user-config.cfg
+include {{=machine}}-user-patches.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.scc b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.scc
index d8d3d35..6189931 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.scc
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.scc
@@ -8,5 +8,5 @@ include features/i915/i915.scc
 include cfg/usb-mass-storage.scc
 include features/power/intel.scc
 
-kconf hardware user-config.cfg
-include user-patches.scc
+kconf hardware {{=machine}}-user-config.cfg
+include {{=machine}}-user-patches.scc
-- 
1.7.11.4


