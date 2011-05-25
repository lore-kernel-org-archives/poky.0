Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9CE6E4C8043A
	for <poky@yoctoproject.org>; Wed, 25 May 2011 12:34:01 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 25 May 2011 10:34:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,268,1304319600"; 
   d="scan'208";a="7492487"
Received: from unknown (HELO localhost) ([10.255.12.181])
	by fmsmga002.fm.intel.com with ESMTP; 25 May 2011 10:34:00 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 25 May 2011 10:33:55 -0700
Message-Id: <1a47266fdcdf11866c97b19e3c3983fd1eb3a724.1306344536.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1306344536.git.dvhart@linux.intel.com>
References: <cover.1306344536.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>,
	Jeff Osier-mixon <jeffrey.osier-mixon@intel.com>
Subject: [PATCH 1/1] README.hardware: update installation instructions for beagleboard
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
X-List-Received-Date: Wed, 25 May 2011 17:34:01 -0000

o Add C4 specific instructions
o Replace poky with core
o Correct a kernel version typo

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: Zhao Yi <yi.zhao@windriver.com>
Cc: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Jeff Osier-mixon <jeffrey.osier-mixon@intel.com>
---
 README.hardware |   24 ++++++++++++++----------
 1 files changed, 14 insertions(+), 10 deletions(-)

diff --git a/README.hardware b/README.hardware
index b2ce146..7d2607c 100644
--- a/README.hardware
+++ b/README.hardware
@@ -149,15 +149,19 @@ The Beagleboard is an ARM Cortex-A8 development board with USB, DVI-D, S-Video,
 faster CPU, more RAM, an ethernet port, more USB ports, microSD, and removes
 the NAND flash. The beagleboard MACHINE is tested on the following platforms:
 
-  o Beagleboard xM
+  o Beagleboard C4
+  o Beagleboard xM Rev A
 
-TODO: need someone with a Beagleboard C4 to verify these instructions.
+The Beagleboard C4 has NAND, while the xM does not. For the sake of simplicity,
+these instructions assume you have erased the NAND on the C4 so its boot
+behavior matches that of the xM. To do this, issue the following commands from
+the u-boot prompt:
 
-Due to the lack of NAND on the xM, the install and boot process varies a bit
-between boards.  The C4 can run the x-loader and u-boot binaries from NAND or
-the SD, while the xM can only run them from the SD. The following instructions
-apply to both the C4 and the xM, but the C4 can skip step 2 (as noted below),
-and may require modification of the NAND environment.
+    # nand unlock
+    # nand erase
+
+To further tailor these instructions for your board, please refer to the
+documentation at http://www.beagleboard.org.
 
   1. Partition and format an SD card:
      # fdisk -lu /dev/mmcblk0
@@ -185,7 +189,7 @@ and may require modification of the NAND environment.
      # cp u-boot-beagleboard.bin /media/boot/u-boot.bin
 
   3. Install the root filesystem
-     # tar x -C /media/root -f poky-image-$IMAGE_TYPE-beagleboard.tar.bz2
+     # tar x -C /media/root -f core-image-$IMAGE_TYPE-beagleboard.tar.bz2
      # tar x -C /media/root -f modules-$KERNEL_VERSION-beagleboard.tgz
 
   4. Install the kernel uImage
@@ -205,14 +209,14 @@ and may require modification of the NAND environment.
      boot
      EOF
      ) > serial-boot.cmd
-     # mkimage -A arm -O linux -T script -C none -a 0 -e 0 -n "Poky Minimal" -d ./serial-boot.cmd ./boot.scr
+     # mkimage -A arm -O linux -T script -C none -a 0 -e 0 -n "Core Minimal" -d ./serial-boot.cmd ./boot.scr
      # cp boot.scr /media/boot
 
    6. Unmount the SD partitions and boot the Beagleboard
 
 Note: As of the 2.6.37 linux-yocto kernel recipe, the Beagleboard uses the
       OMAP_SERIAL device (ttyO2). If you are using an older kernel, such as the
-      2.6.35 linux-yocto-stable, be sure replace ttyO2 with ttyS2 above. You
+      2.6.34 linux-yocto-stable, be sure to replace ttyO2 with ttyS2 above. You
       should also override the machine SERIAL_CONSOLE in your local.conf in
       order to setup the getty on the serial line:
 
-- 
1.7.1


