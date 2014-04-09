Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34012E00BF0
	for <poky@yoctoproject.org>; Wed,  9 Apr 2014 12:41:47 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s39Jfihg022007
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 9 Apr 2014 12:41:44 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.56.46) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Wed, 9 Apr 2014 12:41:44 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Wed, 9 Apr 2014 15:41:32 -0400
Message-ID: <1397072492-14995-1-git-send-email-bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH] edgerouter: clarify diskboot instructions
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
X-List-Received-Date: Wed, 09 Apr 2014 19:41:48 -0000
Content-Type: text/plain

There was some missing details in how to boot from the edgerouter USB
storage. With this update, we have the information required to boot from
either the vfat, or ext3 partition.

[YOCTO #6113]

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 README.hardware |   99 +++++++++++++++++++++++++++++++++++++++++++++++--------
 1 file changed, 85 insertions(+), 14 deletions(-)

diff --git a/README.hardware b/README.hardware
index 7d2b0f880185..68e1dd2f890d 100644
--- a/README.hardware
+++ b/README.hardware
@@ -291,13 +291,85 @@ Load the kernel, and boot the system as follows:
 
 --- Booting from USB root ---
 
-NOTE: Since the USB disk is inside the edgerouter box, it's inconvenient to
-      plug and unplug the USB disk. So in the following instructions it is
-      assumed that you have already booted the device from NFS. Additionally,
-      since vmlinux is not contained in core-image-xxx by default, it is
-      necessary to copy it to the USB disk separately.
+To boot from the USB disk, you either need to remove it from the edgerouter
+box and populate it from another computer, or use a previously booted NFS
+image and populate from the edgerouter itself.
+
+Type 1: Mounted USB disk
+------------------------
+
+To boot from the USB disk there are two available partitions on the factory
+USB storage. The rest of this guide assumes that these partitions are left
+intact. If you change the partition scheme, you must update your boot method
+appropriately.
+
+The standard partitions are:
+
+  - 1: vfat partition containing factory kernels
+  - 2: ext3 partition for the root filesystem.
+
+You can place the kernel on either partition 1, or partition 2, but the roofs
+must go on partition 2 (due to its size).
+
+Note: If you place the kernel on the ext3 partition, you must re-create the
+      ext3 filesystem, since the factory u-boot can only handle 128 byte inodes and
+      cannot read the partition otherwise.
+
+Steps:
+
+ 1. Remove the USB disk from the edgerouter and insert it into a computer
+    that has access to your build artifacts.
+
+ 2. Copy the kernel image to the USB storage (assuming discovered as 'sdb' on
+    the development machine):
+
+    2a) if booting from vfat
+ 
+        # mount /dev/sdb1 /mnt
+        # cp tmp/deploy/images/edgerouter/vmlinux /mnt
+        # umount /mnt
+
+    2b) if booting from ext3
+
+        # mkfs.ext3 -I 128 /dev/sdb2
+        # mount /dev/sdb2 /mnt
+        # mkdir /mnt/boot
+        # cp tmp/deploy/images/edgerouter/vmlinux /mnt/boot
+        # umount /mnt
+
+ 3. Extract the rootfs to the USB storage ext3 partition
+
+        # mount /dev/sdb2 /mnt
+        # tar -xvjpf core-image-minimal-XXX.tar.bz2 -C /mnt
+        # umount /mnt
+
+ 4. Reboot the board and press a key on the terminal when prompted to get to the U-Boot
+    command line:
+
+ 5. Load the kernel and boot:
+
+    5a) vfat boot
+
+         => fatload usb 0:1 $loadaddr vmlinux
+
+    5b) ext3 boot
+
+         => ext2load usb 0:2 $loadaddr boot/vmlinux
+ 
+    => bootoctlinux $loadaddr coremask=0x3 root=/dev/sda2 rw rootwait mtdparts=phys_mapped_flash:512k(boot0),512k(boot1),64k@3072k(eeprom)
+ 
+
+Type 2: NFS
+-----------
+
+Note: If you place the kernel on the ext3 partition, you must re-create the
+      ext3 filesystem, since the factory u-boot can only handle 128 byte inodes and
+      cannot read the partition otherwise.
+
+      These boot instructions assume that you have recreated the ext3 filesystem with
+      128 byte inodes, you have an updated uboot or you are running and image capable
+      of making the filesystem on the board itself.
 
-Load the kernel, and boot the system as follows:
 
  1. Boot from NFS root
 
@@ -309,11 +381,11 @@ Load the kernel, and boot the system as follows:
 
     and then,
   
-    # mount /dev/sda2 /media/sda2
-    # tar -xvjpf core-image-minimal-XXX.tar.bz2 -C /media/sda2
-    # cp vmlinux /media/sda2/boot/vmlinux
-    # umount /media/sda2
-    # reboot
+      # mount /dev/sda2 /media/sda2
+      # tar -xvjpf core-image-minimal-XXX.tar.bz2 -C /media/sda2
+      # cp vmlinux /media/sda2/boot/vmlinux
+      # umount /media/sda2
+      # reboot
 
  3. Reboot the board and press a key on the terminal when prompted to get to the U-Boot
     command line:
@@ -322,6 +394,5 @@ Load the kernel, and boot the system as follows:
 
  4. Load the kernel and boot:
 
- => ext2load usb 0:2 $loadaddr boot/vmlinux
- => bootoctlinux $loadaddr coremask=0x3 root=/dev/sda2 rw rootwait mtdparts=phys_mapped_flash:512k(boot0),512k(boot1),64k@3072k(eeprom)
-
+      => ext2load usb 0:2 $loadaddr boot/vmlinux
+      => bootoctlinux $loadaddr coremask=0x3 root=/dev/sda2 rw rootwait mtdparts=phys_mapped_flash:512k(boot0),512k(boot1),64k@3072k(eeprom)
-- 
1.7.10.4


