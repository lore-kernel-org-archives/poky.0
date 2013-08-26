Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F586E01358
	for <poky@yoctoproject.org>; Mon, 26 Aug 2013 14:22:16 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 Aug 2013 14:22:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,962,1367996400"; d="scan'208";a="393712700"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.196.147])
	by orsmga002.jf.intel.com with ESMTP; 26 Aug 2013 14:22:15 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>
Date: Mon, 26 Aug 2013 14:26:20 -0700
Message-Id: <3eed367a4bcae6b93f737272e3c7f32524b4e3d5.1377552185.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1377552381-20138-1-git-send-email-dvhart@linux.intel.com>
References: <1377552381-20138-1-git-send-email-dvhart@linux.intel.com>
In-Reply-To: <c8d44d43e68a20099bdecb7277f3771fbcd300c0.1377552185.git.dvhart@linux.intel.com>
References: <c8d44d43e68a20099bdecb7277f3771fbcd300c0.1377552185.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 2/3] meta-yocto-bsp: Purge atom-pc in favor of genericx86
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
X-List-Received-Date: Mon, 26 Aug 2013 21:22:17 -0000

genericx86 is a superset of atom-pc, so remove all references to
atom-pc.

Note that genericx86 only has 3.10 linux-yocto support, that leaves us
with no x86 BSP in meta-yocto-bsp for the 3.4 kernel. As a general rule,
new BSPs are targeted at the current kernel version, so this is normal,
but something worth noting.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: Ross Burton <ross.burton@intel.com>
---
 meta-yocto-bsp/conf/machine/atom-pc.conf           |   37 --------------------
 .../packagegroup-core-tools-profile.bbappend       |    1 -
 .../packagegroup-core-sdk-gmae.bbappend            |    1 -
 ...egroup-core-standalone-gmae-sdk-target.bbappend |    1 -
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend |    3 --
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    3 --
 .../recipes-kernel/linux/linux-yocto_3.8.bbappend  |    3 --
 7 files changed, 49 deletions(-)
 delete mode 100644 meta-yocto-bsp/conf/machine/atom-pc.conf

diff --git a/meta-yocto-bsp/conf/machine/atom-pc.conf b/meta-yocto-bsp/conf/machine/atom-pc.conf
deleted file mode 100644
index 6318d60..0000000
--- a/meta-yocto-bsp/conf/machine/atom-pc.conf
+++ /dev/null
@@ -1,37 +0,0 @@
-#@TYPE: Machine
-#@NAME: Atom-PC
-
-#@DESCRIPTION: Machine configuration for Intel Atom based PCs. Currently supported machines are the Asus eee901, Acer Aspire One, Toshiba NB305, and Intel BlackSand development board.
-
-include conf/machine/include/tune-atom.inc
-
-MACHINE_FEATURES = "screen keyboard pci usbhost ext2 ext3 x86 wifi acpi alsa"
-
-KERNEL_IMAGETYPE = "bzImage"
-
-PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "3.8%"
-PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
-XSERVER ?= "xserver-xorg \
-           xserver-xorg-extension-glx \
-           xf86-input-mouse \
-           xf86-input-keyboard \
-           xf86-input-evdev \
-           xf86-input-synaptics \
-           xf86-video-intel \
-           mesa-driver-i915 \
-           mesa-driver-i965"
-
-#MACHINE_EXTRA_RDEPENDS = "rt2860"
-
-MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
-
-IMAGE_FSTYPES ?= "ext3 cpio.gz live"
-
-APPEND += "usbcore.autosuspend=1"
-
-GLIBC_ADDONS = "nptl"
-
-EXTRA_OECONF_append_pn-matchbox-panel-2 = " --with-battery=acpi"
-
-ROOTLESS_X = "1"
diff --git a/meta-yocto-bsp/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend b/meta-yocto-bsp/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
index e3aa5e8..f86595c 100644
--- a/meta-yocto-bsp/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
+++ b/meta-yocto-bsp/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
@@ -1,3 +1,2 @@
-RDEPENDS_${PN}_append_atom-pc = " lttng-ust systemtap"
 RDEPENDS_${PN}_append_genericx86 = " lttng-ust systemtap"
 
diff --git a/meta-yocto-bsp/recipes-gnome/packagegroups/packagegroup-core-sdk-gmae.bbappend b/meta-yocto-bsp/recipes-gnome/packagegroups/packagegroup-core-sdk-gmae.bbappend
index d7de19f..ddc54bb 100644
--- a/meta-yocto-bsp/recipes-gnome/packagegroups/packagegroup-core-sdk-gmae.bbappend
+++ b/meta-yocto-bsp/recipes-gnome/packagegroups/packagegroup-core-sdk-gmae.bbappend
@@ -1,2 +1 @@
-SDK-EXTRAS_atom-pc ?= " lttng-ust-dev"
 SDK-EXTRAS_genericx86 ?= " lttng-ust-dev"
diff --git a/meta-yocto-bsp/recipes-gnome/packagegroups/packagegroup-core-standalone-gmae-sdk-target.bbappend b/meta-yocto-bsp/recipes-gnome/packagegroups/packagegroup-core-standalone-gmae-sdk-target.bbappend
index d7de19f..ddc54bb 100644
--- a/meta-yocto-bsp/recipes-gnome/packagegroups/packagegroup-core-standalone-gmae-sdk-target.bbappend
+++ b/meta-yocto-bsp/recipes-gnome/packagegroups/packagegroup-core-standalone-gmae-sdk-target.bbappend
@@ -1,2 +1 @@
-SDK-EXTRAS_atom-pc ?= " lttng-ust-dev"
 SDK-EXTRAS_genericx86 ?= " lttng-ust-dev"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
index 9639a56..5756e4c 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
@@ -1,4 +1,3 @@
-KBRANCH_atom-pc  = "standard/common-pc/atom-pc"
 KBRANCH_genericx86  = "standard/common-pc/base"
 KBRANCH_routerstationpro = "standard/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
@@ -6,7 +5,6 @@ KBRANCH_beagleboard = "standard/beagleboard"
 
 KMACHINE_genericx86 ?= "common-pc"
 
-SRCREV_machine_atom-pc ?= "6c1528b2b78d1ec7e75bb7a9880074ec35aa1aa0"
 SRCREV_machine_genericx86 ?= "6c1528b2b78d1ec7e75bb7a9880074ec35aa1aa0"
 SRCREV_machine_routerstationpro ?= "3991d03bd450e9363d5b6e97ede0628ba073db79"
 SRCREV_machine_mpc8315e-rdb ?= "8d8339af518104db03f9c36b82f4372569e55b0a"
@@ -15,7 +13,6 @@ SRCREV_machine_beagleboard ?= "6c1528b2b78d1ec7e75bb7a9880074ec35aa1aa0"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
 COMPATIBLE_MACHINE_beagleboard = "beagleboard"
-COMPATIBLE_MACHINE_atom-pc = "atom-pc"
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 
 # routerstationpro has a flash size of 16mb
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
index 160bcbb..7c2bd67 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -1,9 +1,7 @@
-KBRANCH_atom-pc  = "standard/common-pc/atom-pc"
 KBRANCH_routerstationpro = "standard/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/beagleboard"
 
-SRCREV_machine_atom-pc ?= "cdd7a546922ca1c46c94adeec3b9c90dc9aaad2d"
 SRCREV_machine_genericx86 ?= "cdd7a546922ca1c46c94adeec3b9c90dc9aaad2d"
 SRCREV_machine_routerstationpro ?= "62b86dc8ac794cd97c61a99418d7429e6a83ec1a"
 SRCREV_machine_mpc8315e-rdb ?= "b2f78892b3ff6cc940e4661f7b2017a73b289c73"
@@ -12,7 +10,6 @@ SRCREV_machine_beagleboard ?= "cdd7a546922ca1c46c94adeec3b9c90dc9aaad2d"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
 COMPATIBLE_MACHINE_beagleboard = "beagleboard"
-COMPATIBLE_MACHINE_atom-pc = "atom-pc"
 
 # routerstationpro has a flash size of 16mb
 KERNEL_IMAGE_MAXSIZE_append_routerstationpro = "16777216"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
index 51c3736..216b384 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
@@ -1,10 +1,8 @@
-KBRANCH_atom-pc  = "standard/common-pc/atom-pc"
 KBRANCH_genericx86  = "standard/common-pc/base"
 KBRANCH_routerstationpro = "standard/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/beagleboard"
 
-SRCREV_machine_atom-pc ?= "f20047520a57322f05d95a18a5fbd082fb15cb87"
 SRCREV_machine_genericx86 ?= "f20047520a57322f05d95a18a5fbd082fb15cb87"
 SRCREV_machine_routerstationpro ?= "4a94f39d429fa284ce69b13bb635b29b1319e372"
 SRCREV_machine_mpc8315e-rdb ?= "f467c72937de0e4a2a66e21b9855c4aee844f936"
@@ -13,7 +11,6 @@ SRCREV_machine_beagleboard ?= "f20047520a57322f05d95a18a5fbd082fb15cb87"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
 COMPATIBLE_MACHINE_beagleboard = "beagleboard"
-COMPATIBLE_MACHINE_atom-pc = "atom-pc"
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 
 # routerstationpro has a flash size of 16mb
-- 
1.7.9.5


