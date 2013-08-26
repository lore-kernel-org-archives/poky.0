Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4A08E0155B
	for <poky@yoctoproject.org>; Mon, 26 Aug 2013 14:22:16 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 Aug 2013 14:22:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,962,1367996400"; d="scan'208";a="393712698"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.196.147])
	by orsmga002.jf.intel.com with ESMTP; 26 Aug 2013 14:22:15 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>
Date: Mon, 26 Aug 2013 14:26:19 -0700
Message-Id: <c8d44d43e68a20099bdecb7277f3771fbcd300c0.1377552185.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1377552381-20138-1-git-send-email-dvhart@linux.intel.com>
References: <1377552381-20138-1-git-send-email-dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/3] meta-yocto-bsp/genericx86: Update kernel, branch, KMACHINE, and SRCREV
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
X-List-Received-Date: Mon, 26 Aug 2013 21:22:16 -0000

For the genericx86 machine:
o Update the PREFERRED_VERSION for linux-yocto to 3.10
o Change the KBRANCH to common-pc/base
o Change the SRCREV to the HEAD
o Change the KMACHINE to a valid linux-yocto BSP name

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: Ross Burton <ross.burton@intel.com>
---
 meta-yocto-bsp/conf/machine/genericx86.conf        |    2 +-
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend |    6 ++++--
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
index 042f206..ff5cbc9 100644
--- a/meta-yocto-bsp/conf/machine/genericx86.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86.conf
@@ -10,7 +10,7 @@ MACHINE_FEATURES = "screen keyboard pci usbhost ext2 ext3 x86 wifi acpi alsa"
 KERNEL_IMAGETYPE = "bzImage"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "3.8%"
+PREFERRED_VERSION_linux-yocto ?= "3.10%"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
            xserver-xorg-extension-glx \
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
index 1ac014e..9639a56 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
@@ -1,11 +1,13 @@
 KBRANCH_atom-pc  = "standard/common-pc/atom-pc"
-KBRANCH_genericx86  = "standard/common-pc/atom-pc"
+KBRANCH_genericx86  = "standard/common-pc/base"
 KBRANCH_routerstationpro = "standard/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/beagleboard"
 
+KMACHINE_genericx86 ?= "common-pc"
+
 SRCREV_machine_atom-pc ?= "6c1528b2b78d1ec7e75bb7a9880074ec35aa1aa0"
-SRCREV_machine_genericx86 ?= "f20047520a57322f05d95a18a5fbd082fb15cb87"
+SRCREV_machine_genericx86 ?= "6c1528b2b78d1ec7e75bb7a9880074ec35aa1aa0"
 SRCREV_machine_routerstationpro ?= "3991d03bd450e9363d5b6e97ede0628ba073db79"
 SRCREV_machine_mpc8315e-rdb ?= "8d8339af518104db03f9c36b82f4372569e55b0a"
 SRCREV_machine_beagleboard ?= "6c1528b2b78d1ec7e75bb7a9880074ec35aa1aa0"
-- 
1.7.9.5


