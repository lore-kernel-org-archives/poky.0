Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E9AFE00E53; Fri, 14 Oct 2016 01:45:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D498E00CCA
	for <poky@yoctoproject.org>; Fri, 14 Oct 2016 01:45:19 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga102.jf.intel.com with ESMTP; 14 Oct 2016 01:45:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,344,1473145200"; d="scan'208";a="179758945"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga004.fm.intel.com with ESMTP; 14 Oct 2016 01:45:17 -0700
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.68])
	by linux.intel.com (Postfix) with ESMTP id A1BF96A4006;
	Fri, 14 Oct 2016 01:44:45 -0700 (PDT)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 14 Oct 2016 11:19:51 +0300
Message-Id: <1476433191-32732-1-git-send-email-ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] README.hardware: update Edgerouter section
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
X-List-Received-Date: Fri, 14 Oct 2016 08:45:20 -0000

Updated image creation instructions. Used wic images instead
of manually putting rootfs and kernel to SD card.

[YOCTO #8719]

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 README.hardware | 62 ++++++---------------------------------------------------
 1 file changed, 6 insertions(+), 56 deletions(-)

diff --git a/README.hardware b/README.hardware
index 8defba4..d7e24d2 100644
--- a/README.hardware
+++ b/README.hardware
@@ -301,75 +301,25 @@ Load the kernel, and boot the system as follows:
  => tftp tftp $loadaddr vmlinux
  => bootoctlinux $loadaddr coremask=0x3 root=/dev/nfs rw nfsroot=<nfsroot ip>:<rootfs path> ip=<board ip>:<server ip>:<gateway ip>:<netmask>:edgerouter:eth0:off mtdparts=phys_mapped_flash:512k(boot0),512k(boot1),64k@3072k(eeprom)
 
---- Booting from USB root ---
+--- Booting from USB disk ---
 
 To boot from the USB disk, you either need to remove it from the edgerouter
 box and populate it from another computer, or use a previously booted NFS
 image and populate from the edgerouter itself.
 
-Type 1: Mounted USB disk
-------------------------
-
-To boot from the USB disk there are two available partitions on the factory
-USB storage. The rest of this guide assumes that these partitions are left
-intact. If you change the partition scheme, you must update your boot method
-appropriately.
-
-The standard partitions are:
-
-  - 1: vfat partition containing factory kernels
-  - 2: ext3 partition for the root filesystem.
-
-You can place the kernel on either partition 1, or partition 2, but the roofs
-must go on partition 2 (due to its size).
-
-Note: If you place the kernel on the ext3 partition, you must re-create the
-      ext3 filesystem, since the factory u-boot can only handle 128 byte inodes and
-      cannot read the partition otherwise.
+Type 1: Use partitioned image
+-----------------------------
 
 Steps:
 
  1. Remove the USB disk from the edgerouter and insert it into a computer
     that has access to your build artifacts.
 
- 2. Copy the kernel image to the USB storage (assuming discovered as 'sdb' on
-    the development machine):
-
-    2a) if booting from vfat
- 
-        # mount /dev/sdb1 /mnt
-        # cp tmp/deploy/images/edgerouter/vmlinux /mnt
-        # umount /mnt
-
-    2b) if booting from ext3
-
-        # mkfs.ext3 -I 128 /dev/sdb2
-        # mount /dev/sdb2 /mnt
-        # mkdir /mnt/boot
-        # cp tmp/deploy/images/edgerouter/vmlinux /mnt/boot
-        # umount /mnt
-
- 3. Extract the rootfs to the USB storage ext3 partition
-
-        # mount /dev/sdb2 /mnt
-        # tar -xvjpf core-image-minimal-XXX.tar.bz2 -C /mnt
-        # umount /mnt
-
- 4. Reboot the board and press a key on the terminal when prompted to get to the U-Boot
-    command line:
-
- 5. Load the kernel and boot:
-
-    5a) vfat boot
-
-         => fatload usb 0:1 $loadaddr vmlinux
+ 2. Flash the image.
 
-    5b) ext3 boot
+    # dd core-image-minimal-edgerouter.wic of=/dev/sdb
 
-         => ext2load usb 0:2 $loadaddr boot/vmlinux
- 
-    => bootoctlinux $loadaddr coremask=0x3 root=/dev/sda2 rw rootwait mtdparts=phys_mapped_flash:512k(boot0),512k(boot1),64k@3072k(eeprom)
- 
+ 3. Insert USB disk into the edgerouter and boot it.
 
 Type 2: NFS
 -----------
-- 
2.1.4


