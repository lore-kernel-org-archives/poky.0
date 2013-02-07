Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72128E0140A
	for <poky@yoctoproject.org>; Thu,  7 Feb 2013 06:48:23 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 07 Feb 2013 06:48:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,622,1355126400"; d="scan'208";a="199719967"
Received: from unknown (HELO localhost) ([10.255.12.217])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Feb 2013 06:48:22 -0800
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Thu,  7 Feb 2013 08:48:21 -0600
Message-Id: <c363ef5000b499140cdbcb96c4ca30393fb8d26b.1360247813.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1360247813.git.tom.zanussi@linux.intel.com>
References: <cover.1360247813.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 1/1] yocto-bsp: prepend includes in machine.scc files with machine
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
X-List-Received-Date: Thu, 07 Feb 2013 14:48:23 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

The names of the -user files were changed to have the machine
prepended, but the includes weren't - fix the includes.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"     | 4 ++--
 .../{{=machine}}.scc"                                                 | 4 ++--
 .../{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"     | 4 ++--
 .../{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"     | 4 ++--
 .../{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"     | 4 ++--
 .../{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"     | 4 ++--
 .../{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"     | 4 ++--
 7 files changed, 14 insertions(+), 14 deletions(-)

diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
index 39f87f5..24196e6 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"	
@@ -3,5 +3,5 @@ kconf non-hardware {{machine}}-non_hardware.cfg
 
 include features/usb-net/usb-net.scc
 
-kconf hardware user-config.cfg
-include user-patches.scc
+kconf hardware {{=machine}}-user-config.cfg
+include {{=machine}}-user-patches.scc
diff --git "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}.scc" "b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}.scc"
index 8b94e58..2e3ca90 100644
--- "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}.scc"	
@@ -13,5 +13,5 @@ kconf hardware {{=machine}}.cfg
 # These are used by yocto-kernel to add config fragments and features.
 # Don't remove if you plan on using yocto-kernel with this BSP.
 
-kconf hardware user-config.cfg
-include user-patches.scc
+kconf hardware {{=machine}}-user-config.cfg
+include {{=machine}}-user-patches.scc
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
index d8d28ce..41e1635 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"	
@@ -19,5 +19,5 @@ include cfg/usb-mass-storage.scc
 include cfg/boot-live.scc
 include features/power/intel.scc
 
-kconf hardware user-config.cfg
-include user-patches.scc
+kconf hardware {{=machine}}-user-config.cfg
+include {{=machine}}-user-patches.scc
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
index e3daafb..1ebbc32 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"	
@@ -6,5 +6,5 @@ include cfg/vfat.scc
 {{ if kernel_choice == "linux-yocto_3.4": }}
 include cfg/fs/vfat.scc
 
-kconf hardware user-config.cfg
-include user-patches.scc
+kconf hardware {{=machine}}-user-config.cfg
+include {{=machine}}-user-patches.scc
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
index 1585fa4..0d64f58 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"	
@@ -8,5 +8,5 @@ include cfg/fs/vfat.scc
 
 include cfg/dmaengine.scc
 
-kconf hardware user-config.cfg
-include user-patches.scc
+kconf hardware {{=machine}}-user-config.cfg
+include {{=machine}}-user-patches.scc
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
index 0f20dcd..f3739be 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"	
@@ -1,4 +1,4 @@
 kconf hardware {{=machine}}.cfg
 
-kconf hardware user-config.cfg
-include user-patches.scc
+kconf hardware {{=machine}}-user-config.cfg
+include {{=machine}}-user-patches.scc
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
index d8d3d35..6189931 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"	
@@ -8,5 +8,5 @@ include features/i915/i915.scc
 include cfg/usb-mass-storage.scc
 include features/power/intel.scc
 
-kconf hardware user-config.cfg
-include user-patches.scc
+kconf hardware {{=machine}}-user-config.cfg
+include {{=machine}}-user-patches.scc
-- 
1.7.11.4


