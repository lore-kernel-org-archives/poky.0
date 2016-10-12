Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8B1BE009D8; Wed, 12 Oct 2016 04:01:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A49B3E00839
	for <poky@yoctoproject.org>; Wed, 12 Oct 2016 04:01:37 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga105.jf.intel.com with ESMTP; 12 Oct 2016 04:01:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,333,1473145200"; d="scan'208";a="889226010"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga003.jf.intel.com with ESMTP; 12 Oct 2016 04:01:36 -0700
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.68])
	by linux.intel.com (Postfix) with ESMTP id 26F1B6A4006;
	Wed, 12 Oct 2016 04:01:04 -0700 (PDT)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 12 Oct 2016 13:36:12 +0300
Message-Id: <1476268572-20425-1-git-send-email-ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] README.hardware: update Beaglebone section
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
X-List-Received-Date: Wed, 12 Oct 2016 11:01:40 -0000

Updated image creation instructions. Used wic images instead
of manually partitioning SD card.

[YOCTO #8719]

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 README.hardware | 54 ++++++------------------------------------------------
 1 file changed, 6 insertions(+), 48 deletions(-)

diff --git a/README.hardware b/README.hardware
index 6383bd7..8defba4 100644
--- a/README.hardware
+++ b/README.hardware
@@ -160,59 +160,17 @@ this, issue the following commands from the u-boot prompt:
 To further tailor these instructions for your board, please refer to the
 documentation at http://www.beagleboard.org/bone and http://www.beagleboard.org/black
 
-From a Linux system with access to the image files perform the following steps
-as root, replacing mmcblk0* with the SD card device on your machine (such as sdc
-if used via a usb card reader):
+From a Linux system with access to the image files perform the following steps:
 
-  1. Partition and format an SD card:
-     # fdisk -lu /dev/mmcblk0
+  1. Build an image. For example:
 
-     Disk /dev/mmcblk0: 3951 MB, 3951034368 bytes
-     255 heads, 63 sectors/track, 480 cylinders, total 7716864 sectors
-     Units = sectors of 1 * 512 = 512 bytes
-
-             Device Boot      Start         End      Blocks  Id System
-     /dev/mmcblk0p1   *          63      144584       72261   c Win95 FAT32 (LBA)
-     /dev/mmcblk0p2          144585      465884      160650  83 Linux
-
-     # mkfs.vfat -F 16 -n "boot" /dev/mmcblk0p1
-     # mke2fs -j -L "root" /dev/mmcblk0p2
-
-  The following assumes the SD card partitions 1 and 2 are mounted at
-  /media/boot and /media/root respectively. Removing the card and reinserting
-  it will do just that on most modern Linux desktop environments.
-
-  The files referenced below are made available after the build in
-  build/tmp/deploy/images.
-
-  2. Install the boot loaders
-     # cp MLO-beaglebone /media/boot/MLO
-     # cp u-boot-beaglebone.img /media/boot/u-boot.img
-
-  3. Install the root filesystem
-     # tar x -C /media/root -f core-image-$IMAGE_TYPE-beaglebone.tar.bz2
-
-  4. If using core-image-base or core-image-sato images, the SD card is ready
-     and rootfs already contains the kernel, modules and device tree (DTB)
-     files necessary to be booted with U-boot's default configuration, so
-     skip directly to step 8.
-     For core-image-minimal, proceed through next steps.
-
-  5. If using core-image-minimal rootfs, install the modules
-     # tar x -C /media/root -f modules-beaglebone.tgz
-
-  6. If using core-image-minimal rootfs, install the kernel zImage into /boot
-     directory of rootfs
-     # cp zImage-beaglebone.bin /media/root/boot/zImage
+     $ bitbake core-image-minimal
 
-  7. If using core-image-minimal rootfs, also install device tree (DTB) files
-     into /boot directory of rootfs
-     # cp zImage-am335x-bone.dtb /media/root/boot/am335x-bone.dtb
-     # cp zImage-am335x-boneblack.dtb /media/root/boot/am335x-boneblack.dtb
+  2. Use the "dd" utility to write the image to the SD card. For example:
 
-  8. Unmount the SD partitions, insert the SD card into the Beaglebone, and
-     boot the Beaglebone
+     # dd core-image-minimal-beaglebone.wic of=/dev/sdb
 
+  3. Insert the SD card into the Beaglebone and boot the board.
 
 Freescale MPC8315E-RDB (mpc8315e-rdb)
 =====================================
-- 
2.1.4


