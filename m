Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 884064C80889
	for <poky@yoctoproject.org>; Wed, 25 May 2011 16:49:50 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 May 2011 14:49:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,269,1304319600"; 
   d="scan'208";a="4879775"
Received: from unknown (HELO localhost) ([10.255.12.181])
	by orsmga001.jf.intel.com with ESMTP; 25 May 2011 14:49:49 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 25 May 2011 14:49:46 -0700
Message-Id: <3311129a0d1ad8e8c4137fe94b9415dbb1d8de25.1306359969.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1306359969.git.dvhart@linux.intel.com>
References: <cover.1306359969.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>,
	Jeff Osier-mixon <jeffrey.osier-mixon@intel.com>
Subject: [PATCH V2 1/1] README.hardware: update installation instructions for beagleboard
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
X-List-Received-Date: Wed, 25 May 2011 21:49:50 -0000

o Add C4 specific instructions
o Replace poky with core
o Correct a kernel version typo
o Clarify some language to avoid confusion encountered during testing

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: Zhao Yi <yi.zhao@windriver.com>
Cc: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Jeff Osier-mixon <jeffrey.osier-mixon@intel.com>
Cc: Koen Kooi <koen@dominion.thruhere.net>
---
 README.hardware |   44 ++++++++++++++++++++++++++++----------------
 1 files changed, 28 insertions(+), 16 deletions(-)

diff --git a/README.hardware b/README.hardware
index b895f8f..3602957 100644
--- a/README.hardware
+++ b/README.hardware
@@ -149,15 +149,26 @@ The Beagleboard is an ARM Cortex-A8 development board with USB, DVI-D, S-Video,
 faster CPU, more RAM, an ethernet port, more USB ports, microSD, and removes
 the NAND flash. The beagleboard MACHINE is tested on the following platforms:
 
-  o Beagleboard xM
+  o Beagleboard C4
+  o Beagleboard xM Rev A
 
-TODO: need someone with a Beagleboard C4 to verify these instructions.
+The Beagleboard C4 has NAND, while the xM does not. For the sake of simplicity,
+these instructions assume you have erased the NAND on the C4 so its boot
+behavior matches that of the xM. To do this, issue the following commands from
+the u-boot prompt (note that the unlock may be unecessary depending on the
+version of u-boot installed on your board and only one of the erase commands
+will succeed):
 
-Due to the lack of NAND on the xM, the install and boot process varies a bit
-between boards.  The C4 can run the x-loader and u-boot binaries from NAND or
-the SD, while the xM can only run them from the SD. The following instructions
-apply to both the C4 and the xM, but the C4 can skip step 2 (as noted below),
-and may require modification of the NAND environment.
+    # nand unlock
+    # nand erase
+    # nand erase.chip
+
+To further tailor these instructions for your board, please refer to the
+documentation at http://www.beagleboard.org.
+
+From a Linux system with access to the image files perform the following steps
+as root, replacing mmcblk0* with the SD card device on your machine (such as sdc
+if used via a usb card reader):
 
   1. Partition and format an SD card:
      # fdisk -lu /dev/mmcblk0
@@ -173,14 +184,14 @@ and may require modification of the NAND environment.
      # mkfs.vfat -F 16 -n "boot" /dev/mmcblk0p1
      # mke2fs -j -L "root" /dev/mmcblk0p2
 
-   The following assumes the SD card partition 1 and 2 are mounted at
-   /media/boot and /media/root respectively. The files referenced here
-   are made available after the build in build/tmp/deploy/images.
+  The following assumes the SD card partition 1 and 2 are mounted at
+  /media/boot and /media/root respectively. Removing the card and reinserting
+  it will do just that on most modern Linux desktop environments.
+  
+  The files referenced below are made available after the build in
+  build/tmp/deploy/images.
 
   2. Install the boot loaders
-     This step can be omitted for the C4 as it can have the x-loader and
-     u-boot installed in NAND.
-
      # cp MLO-beagleboard /media/boot/MLO
      # cp u-boot-beagleboard.bin /media/boot/u-boot.bin
 
@@ -205,14 +216,15 @@ and may require modification of the NAND environment.
      boot
      EOF
      ) > serial-boot.cmd
-     # mkimage -A arm -O linux -T script -C none -a 0 -e 0 -n "Poky Minimal" -d ./serial-boot.cmd ./boot.scr
+     # mkimage -A arm -O linux -T script -C none -a 0 -e 0 -n "Core Minimal" -d ./serial-boot.cmd ./boot.scr
      # cp boot.scr /media/boot
 
-   6. Unmount the SD partitions and boot the Beagleboard
+   6. Unmount the SD partitions, insert the SD card into the Beagleboard, and
+      boot the Beagleboard
 
 Note: As of the 2.6.37 linux-yocto kernel recipe, the Beagleboard uses the
       OMAP_SERIAL device (ttyO2). If you are using an older kernel, such as the
-      2.6.35 linux-yocto-stable, be sure replace ttyO2 with ttyS2 above. You
+      2.6.34 linux-yocto-stable, be sure to replace ttyO2 with ttyS2 above. You
       should also override the machine SERIAL_CONSOLE in your local.conf in
       order to setup the getty on the serial line:
 
-- 
1.7.1


