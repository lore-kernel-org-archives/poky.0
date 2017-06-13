Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC223E00ACF; Tue, 13 Jun 2017 12:48:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68D99E00888
	for <poky@yoctoproject.org>; Tue, 13 Jun 2017 12:48:21 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Jun 2017 12:48:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,339,1493708400"; d="scan'208";a="97613586"
Received: from yctb05.ostc.intel.com ([10.54.69.59])
	by orsmga004.jf.intel.com with ESMTP; 13 Jun 2017 12:48:21 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Tue, 13 Jun 2017 12:48:18 -0700
Message-Id: <20170613194818.28140-1-leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.12.0
Subject: [PATCH] linux-yocto: remove user-specific description/config files from machine description
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
X-List-Received-Date: Tue, 13 Jun 2017 19:48:24 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

Remove user-specific descrition files and config fragments from main machine
description file otherwise double patch/config inclusion may happen. These
files/fragments are already included on the SRC_URI (see poky commit 2db8f3),
so no need to reference these inside machine.scc files.

[YOCTO #11586]

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 .../substrate/target/arch/arm/recipes-kernel/linux/files/machine.scc    | 2 --
 .../arch/common/recipes-kernel/linux/linux-yocto-custom/machine.scc     | 2 --
 .../substrate/target/arch/i386/recipes-kernel/linux/files/machine.scc   | 2 --
 .../substrate/target/arch/mips/recipes-kernel/linux/files/machine.scc   | 2 --
 .../substrate/target/arch/mips64/recipes-kernel/linux/files/machine.scc | 2 --
 .../target/arch/powerpc/recipes-kernel/linux/files/machine.scc          | 2 --
 .../substrate/target/arch/qemu/recipes-kernel/linux/files/machine.scc   | 2 --
 .../substrate/target/arch/x86_64/recipes-kernel/linux/files/machine.scc | 2 --
 8 files changed, 16 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine.scc b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine.scc
index 828400df40..fb3866f119 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine.scc
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine.scc
@@ -4,5 +4,3 @@ kconf non-hardware {{machine}}-non_hardware.cfg
 
 include features/usb-net/usb-net.scc
 
-kconf hardware {{=machine}}-user-config.cfg
-include {{=machine}}-user-patches.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine.scc b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine.scc
index 0b6b413377..64d3ed181b 100644
--- a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine.scc
+++ b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine.scc
@@ -14,5 +14,3 @@ kconf hardware {{=machine}}.cfg
 # These are used by yocto-kernel to add config fragments and features.
 # Don't remove if you plan on using yocto-kernel with this BSP.
 
-kconf hardware {{=machine}}-user-config.cfg
-include {{=machine}}-user-patches.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.scc
index 3d32f111b0..3e4c54fcf5 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.scc
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.scc
@@ -17,5 +17,3 @@ include cfg/usb-mass-storage.scc
 include cfg/boot-live.scc
 include features/power/intel.scc
 
-kconf hardware {{=machine}}-user-config.cfg
-include {{=machine}}-user-patches.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine.scc b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine.scc
index f39dc3edf1..792fdc94a4 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine.scc
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine.scc
@@ -4,5 +4,3 @@ kconf hardware {{=machine}}.cfg
 include cfg/usb-mass-storage.scc
 include cfg/fs/vfat.scc
 
-kconf hardware {{=machine}}-user-config.cfg
-include {{=machine}}-user-patches.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine.scc b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine.scc
index f39dc3edf1..792fdc94a4 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine.scc
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine.scc
@@ -4,5 +4,3 @@ kconf hardware {{=machine}}.cfg
 include cfg/usb-mass-storage.scc
 include cfg/fs/vfat.scc
 
-kconf hardware {{=machine}}-user-config.cfg
-include {{=machine}}-user-patches.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine.scc b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine.scc
index 7aac8b0801..89bb97efd6 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine.scc
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine.scc
@@ -6,5 +6,3 @@ include cfg/fs/vfat.scc
 
 include cfg/dmaengine.scc
 
-kconf hardware {{=machine}}-user-config.cfg
-include {{=machine}}-user-patches.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.scc b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.scc
index 8301e05f7d..d25d0a0377 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.scc
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.scc
@@ -1,5 +1,3 @@
 # yocto-bsp-filename {{=machine}}.scc
 kconf hardware {{=machine}}.cfg
 
-kconf hardware {{=machine}}-user-config.cfg
-include {{=machine}}-user-patches.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine.scc b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine.scc
index 9b7c291a8f..9d20d199b2 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine.scc
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine.scc
@@ -10,5 +10,3 @@ include features/i915/i915.scc
 include cfg/usb-mass-storage.scc
 include features/power/intel.scc
 
-kconf hardware {{=machine}}-user-config.cfg
-include {{=machine}}-user-patches.scc
-- 
2.12.0


