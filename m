Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id DE7E64C8112C
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 15:31:04 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 19 Jan 2011 13:31:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,345,1291622400"; d="scan'208";a="648908760"
Received: from unknown (HELO localhost) ([10.255.14.100])
	by fmsmga002.fm.intel.com with ESMTP; 19 Jan 2011 13:31:04 -0800
Message-Id: <256005fe834711ea093deeabdc29b9fc668f5c71.1295472579.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1295472579.git.dvhart@linux.intel.com>
References: <cover.1295472579.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Old-Date: Wed, 19 Jan 2011 11:25:43 -0800
Date: Wed, 19 Jan 2011 13:30:56 -0800
To: poky@yoctoproject.org, jonathan@jonmasters.org,
	robert.karl.berger@gmail.com
Subject: [PATCH 6/6] README.hardware: add beagleboard documentation
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
X-List-Received-Date: Wed, 19 Jan 2011 21:31:05 -0000

Document the install and boot process for the Beagleboard xM with
provisions for the C4. I need someone with a C4 board to validate
the steps.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
CC: Bruce Ashfield <bruce.ashfield@windriver.com>
CC: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 README.hardware |   71 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 71 insertions(+), 0 deletions(-)

diff --git a/README.hardware b/README.hardware
index fe384b3..4698441 100644
--- a/README.hardware
+++ b/README.hardware
@@ -26,6 +26,7 @@ The following boards are supported by Poky:
   * Marvell PXA3xx Zylonite (zylonite)
   * Logic iMX31 Lite Kit (mx31litekit)
   * Phytec phyCORE-iMX31 (mx31phy)
+  * Texas Instruments Beagleboard (beagleboard)
 
 For more information see board's section below. The Poky MACHINE setting
 corresponding to the board is given in brackets.
@@ -509,3 +510,73 @@ USB Device:
 
   For more details on the USB-ZIP scenario, see the syslinux documentation:
   http://git.kernel.org/?p=boot/syslinux/syslinux.git;a=blob_plain;f=doc/usbkey.txt;hb=HEAD
+
+
+Texas Instruments Beagleboard (beagleboard)
+===========================================
+
+The Beagleboard is an ARM Cortex-A8 development board with USB, DVI-D, S-Video,
+2D/3D accelerated graphics, audio, serial, JTAG, and SD/MMC. The xM adds a
+faster CPU, more RAM, an ethernet port, more USB ports, microSD, and removes
+the NAND flash. The beagleboard MACHINE is tested on the following platforms:
+
+  o Beagleboard xM
+
+TODO: need someone with a Beagleboard C4 to verify these instructions.
+
+Due to the lack of NAND on the xM, the install and boot process varies a bit
+between boards.  The C4 can run the x-loader and u-boot binaries from NAND or
+the SD, while the xM can only run them from the SD. The following instructions
+apply to both the C4 and the xM, but te C4 can skip step 2 (as noted below),
+and may require modification of the NAND environment.
+
+  1. Partition and format an SD card:
+     # fdisk -lu /dev/mmcblk0
+     
+     Disk /dev/mmcblk0: 3951 MB, 3951034368 bytes
+     255 heads, 63 sectors/track, 480 cylinders, total 7716864 sectors
+     Units = sectors of 1 * 512 = 512 bytes
+     
+             Device Boot      Start         End      Blocks  Id System
+     /dev/mmcblk0p1   *          63      144584       72261   c Win95 FAT32 (LBA)
+     /dev/mmcblk0p2          144585      465884      160650  83 Linux
+
+     # mkfs.vfat -F 16 -n "boot" /dev/mmcblk0p1
+     # mke2fs -j -L "root" /dev/mmcblk0p2
+
+   The following assumes the SD card partition 1 and 2 are mounted at
+   /media/boot and /media/root respectively. The files referenced here
+   are made available after the build in build/tmp/deploy/images.
+
+  2. Install the boot loaders
+     This step can be omitted for the C4 as it can have the x-loader and
+     u-boot installed in NAND.
+
+     # cp MLO-beagleboard /media/boot/MLO
+     # cp u-boot-beagleboard.bin /media/boot/u-boot.bin
+
+  3. Install the root filesystem
+     # tar x -C /media/root -f poky-image-$IMAGE_TYPE-beagleboard.tar.bz2
+     # tar x -C /media/root -f modules-$KERNEL_VERSION-beagleboard.tgz
+
+  4. Install the kernel uImage
+     # cp uImage-beagleboard.bin /media/boot/uImage
+
+  5. Prepare a u-boot script to simplify the boot process
+     The Beagleboard can be made to boot at this point from the u-boot command
+     shell. To automate this process, generate a user.scr script as follows.
+
+     Install uboot-mkimage (from uboot-mkimage on Ubuntu or uboot-tools on Fedora).
+
+     Prepare a script config:
+
+     # (cat << EOF
+     setenv bootcmd 'mmc init; fatload mmc 0:1 0x80300000 uImage; bootm 0x80300000'
+     setenv bootargs 'console=tty0 console=ttyS2,115200n8 root=/dev/mmcblk0p2 rootwait rootfstype=ext3 ro'
+     boot
+     EOF
+     ) > serial-boot.cmd
+     # mkimage -A arm -O linux -T script -C none -a 0 -e 0 -n "Poky Minimal" -d ./serial-boot.cmd ./user.scr
+     # cp user.scr /media/boot
+
+   6. Unmount the SD partitions and boot the Beagleboard
-- 
1.7.1


