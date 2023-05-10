Return-Path: <paulg@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B435C77B7C
	for <webhook@archiver.kernel.org>; Wed, 10 May 2023 01:37:46 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by mx.groups.io with SMTP id smtpd.web10.6590.1683682658688722021
 for <poky@lists.yoctoproject.org>;
 Tue, 09 May 2023 18:37:38 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@kernel.org header.s=k20201202 header.b=WfM0K3eu;
 spf=pass (domain: kernel.org, ip: 139.178.84.217, mailfrom: paulg@kernel.org)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2344E62F2F
	for <poky@lists.yoctoproject.org>; Wed, 10 May 2023 01:37:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C748C433EF;
	Wed, 10 May 2023 01:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683682657;
	bh=9ZcUohDVHez7i+ODereMbp/qZYBA0iQi7kKIus+vSV8=;
	h=From:To:Cc:Subject:Date:From;
	b=WfM0K3euxRoDJsJ4thjjdsBbNUcgOYX+1JP1vyG5Ym0Y6NUNJus3IxfXLskEJJKO4
	 3GUMc2aAcUiFRtQLzumQK+WC6tzt6MdwO79v+jVIJhXT917NWdyA2dGozmFTrfrl+S
	 PFjdQVJhREetp8Jg238UUuyRxtPKIyhWg8N7n+sWH7A11tRIxr94WOVyfxYiacosBG
	 SU1420fAseQPIUA3gPoYgKeqnDXuSEo7s0/SVdYYPxeVyJ06AOVSfV9F1aH8dByAVC
	 aH57ZuRDvGfQ+3lXRxHHw13ID9Ejbm4qWBLwFzHxkRxG4b0FWwfgFhwO+q+WcXtZ39
	 GEOSaIu90bjkA==
From: paulg@kernel.org
To: poky@lists.yoctoproject.org
Cc: Paul Gortmaker <paulg@kernel.org>
Subject: [PATCH] yocto-bsp: drop MIPS Edgerouter support
Date: Tue,  9 May 2023 21:37:32 -0400
Message-Id: <20230510013732.441109-1-paulg@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 10 May 2023 01:37:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13064

From: Paul Gortmaker <paulg@kernel.org>

As per ongoing discussions, there is a general desire to try and update
our hardware reference platforms when an appropriate (newer) substitute
is available.  However, in the case of MIPS, there isn't an obvious one
to choose.  But continuing to maintain support for an old board that
hasn't been available for purchase for years doesn't make sense either.

So we are dropping support for the Edgerouter for future releases.  The
MIPS architecture will still get coverage via QEMU build/boot testing.

Signed-off-by: Paul Gortmaker <paulg@kernel.org>

diff --git a/meta-yocto-bsp/README.hardware.md b/meta-yocto-bsp/README.ha=
rdware.md
index 44dbb35b930c..8ea0ef14614c 100644
--- a/meta-yocto-bsp/README.hardware.md
+++ b/meta-yocto-bsp/README.hardware.md
@@ -28,7 +28,6 @@ Hardware Reference Boards
 The following boards are supported by the meta-yocto-bsp layer:
=20
   * Texas Instruments Beaglebone (beaglebone-yocto)
-  * Ubiquiti Networks EdgeRouter Lite (edgerouter)
   * General IA platforms (genericx86 and genericx86-64)
=20
 For more information see the board's section below. The appropriate MACH=
INE
@@ -48,7 +47,6 @@ Consumer Devices
 The following consumer devices are supported by the meta-yocto-bsp layer=
:
=20
   * Intel x86 based PCs and devices (genericx86)
-  * Ubiquiti Networks EdgeRouter Lite (edgerouter)
=20
 For more information see the device's section below. The appropriate MAC=
HINE
 variable value corresponding to the device is given in brackets.
@@ -153,113 +151,3 @@ From a Linux system with access to the image files =
perform the following steps:
      # dd if=3Dcore-image-minimal-beaglebone-yocto.wic of=3D/dev/sdb
=20
   3. Insert the SD card into the Beaglebone and boot the board.
-
-Ubiquiti Networks EdgeRouter Lite (edgerouter)
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
-
-The EdgeRouter Lite is part of the EdgeMax series. It is a MIPS64 router
-(based on the Cavium Octeon processor) with 512MB of RAM, which uses an
-internal USB pendrive for storage.
-
-Setup instructions
-------------------
-
-You will need the following:
-* RJ45 -> serial ("rollover") cable connected from your PC to the CONSOL=
E
-  port on the device
-* Ethernet connected to the first ethernet port on the board
-
-If using NFS as part of the setup process, you will also need:
-* NFS root setup on your workstation
-* TFTP server installed on your workstation (if fetching the kernel from
-  TFTP, see below).
-
---- Preparation ---
-
-Build an image (e.g. core-image-minimal) using "edgerouter" as the MACHI=
NE.
-In the following instruction it is based on core-image-minimal. Another =
target
-may be similiar with it.
-
---- Booting from NFS root / kernel via TFTP ---
-
-Load the kernel, and boot the system as follows:
-
- 1. Get the kernel (vmlinux) file from the tmp/deploy/images/edgerouter
-    directory, and make them available on your TFTP server.
-
- 2. Connect the board's first serial port to your workstation and then s=
tart up
-    your favourite serial terminal so that you will be able to interact =
with
-    the serial console. If you don't have a favourite, picocom is sugges=
ted:
-
-  $ picocom /dev/ttyS0 -b 115200
-
- 3. Power up or reset the board and press a key on the terminal when pro=
mpted
-    to get to the U-Boot command line
-
- 4. Set up the environment in U-Boot:
-
- =3D> setenv ipaddr <board ip>
- =3D> setenv serverip <tftp server ip>
-
- 5. Download the kernel and boot:
-
- =3D> tftp $loadaddr vmlinux
- =3D> bootoctlinux $loadaddr coremask=3D0x3 root=3D/dev/nfs rw nfsroot=3D=
<nfsroot ip>:<rootfs path> ip=3D<board ip>:<server ip>:<gateway ip>:<netm=
ask>:edgerouter:eth0:off mtdparts=3Dphys_mapped_flash:512k(boot0),512k(bo=
ot1),64k@3072k(eeprom)
-
---- Booting from USB disk ---
-
-To boot from the USB disk, you either need to remove it from the edgerou=
ter
-box and populate it from another computer, or use a previously booted NF=
S
-image and populate from the edgerouter itself.
-
-Type 1: Use partitioned image
------------------------------
-
-Steps:
-
- 1. Remove the USB disk from the edgerouter and insert it into a compute=
r
-    that has access to your build artifacts.
-
- 2. Flash the image.
-
-    # dd if=3Dcore-image-minimal-edgerouter.wic of=3D/dev/sdb
-
- 3. Insert USB disk into the edgerouter and boot it.
-
-Type 2: NFS
------------
-
-Note: If you place the kernel on the ext3 partition, you must re-create =
the
-      ext3 filesystem, since the factory u-boot can only handle 128 byte=
 inodes and
-      cannot read the partition otherwise.
-
-      These boot instructions assume that you have recreated the ext3 fi=
lesystem with
-      128 byte inodes, you have an updated uboot or you are running and =
image capable
-      of making the filesystem on the board itself.
-
-
- 1. Boot from NFS root
-
- 2. Mount the USB disk partition 2 and then extract the contents of
-    tmp/deploy/core-image-XXXX.tar.bz2 into it.
-
-    Before starting, copy core-image-minimal-xxx.tar.bz2 and vmlinux int=
o
-    rootfs path on your workstation.
-
-    and then,
- =20
-      # mount /dev/sda2 /media/sda2
-      # tar -xvjpf core-image-minimal-XXX.tar.bz2 -C /media/sda2
-      # cp vmlinux /media/sda2/boot/vmlinux
-      # umount /media/sda2
-      # reboot
-
- 3. Reboot the board and press a key on the terminal when prompted to ge=
t to the U-Boot
-    command line:
-
-    # reboot
-
- 4. Load the kernel and boot:
-
-      =3D> ext2load usb 0:2 $loadaddr boot/vmlinux
-      =3D> bootoctlinux $loadaddr coremask=3D0x3 root=3D/dev/sda2 rw roo=
twait mtdparts=3Dphys_mapped_flash:512k(boot0),512k(boot1),64k@3072k(eepr=
om)
diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp=
/conf/machine/edgerouter.conf
deleted file mode 100644
index ffdcf55f02b1..000000000000
--- a/meta-yocto-bsp/conf/machine/edgerouter.conf
+++ /dev/null
@@ -1,26 +0,0 @@
-#@TYPE: Machine
-#@NAME: Edgerouter
-#@DESCRIPTION: Machine configuration for a generic edgerouter
-
-require conf/machine/include/mips/tune-mips64.inc
-
-MACHINE_FEATURES =3D "pci ext2 ext3 serial"
-
-KERNEL_IMAGETYPE =3D "vmlinux"
-KERNEL_ALT_IMAGETYPE =3D "vmlinux.bin"
-KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  =3D ".comment"
-
-PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?=3D "6.1%"
-
-SERIAL_CONSOLES =3D "115200;ttyS0"
-USE_VT ?=3D "0"
-
-MACHINE_EXTRA_RRECOMMENDS =3D "kernel-modules"
-
-IMAGE_FSTYPES ?=3D "jffs2 tar.bz2 wic wic.bmap"
-JFFS2_ERASEBLOCK =3D "0x10000"
-
-WKS_FILE ?=3D "edgerouter.wks"
-IMAGE_BOOT_FILES ?=3D "vmlinux;vmlinux.64"
-do_image_wic[depends] +=3D "mtools-native:do_populate_sysroot dosfstools=
-native:do_populate_sysroot"
diff --git a/meta-yocto-bsp/lib/oeqa/controllers/edgeroutertarget.py b/me=
ta-yocto-bsp/lib/oeqa/controllers/edgeroutertarget.py
deleted file mode 100644
index e31670db484a..000000000000
--- a/meta-yocto-bsp/lib/oeqa/controllers/edgeroutertarget.py
+++ /dev/null
@@ -1,89 +0,0 @@
-# Copyright (C) 2014 Intel Corporation
-#
-# Released under the MIT license (see COPYING.MIT)
-
-# This module adds support to testimage.bbclass to deploy images and run
-# tests on a Ubiquiti Networks EdgeRouter Lite. The device must be set u=
p
-# to boot into the master image already - the easiest way to do that is =
as
-# follows:
-#
-# 1. Take out the internal USB drive and plug it into your PC
-# 2. Repartition the USB drive so that you have three partitions in this
-#    order:
-#      1: vfat, labelled "boot" (it will need to be formatted with mkfs.=
vfat
-#         for this to be possible, since FAT partitions formatted under
-#         DOS/Windows will only support uppercase labels)
-#      2: ext3 (for master image) labelled "testmaster"
-#      3: ext3 (for image under test) labelled "testrootfs"
-# 3. Copy the kernel to be used by the master image to the FAT partition
-#    (it should be named "vmlinux.64" with the factory u-boot configurat=
ion)
-# 4. Install the master image onto the "testmaster" ext3 partition. If
-#    you do this by just extracting the contents of an image onto the
-#    partition, you will also likely need to create the master image mar=
ker
-#    file /etc/masterimage within this partition so that we can tell whe=
n
-#    we're booted into it that it is the master image.
-# 5. Put the USB drive back into the device, and ensure the console port
-#    and first ethernet port are connected before powering on
-#
-# TEST_SERIALCONTROL_CMD will need to be set in local.conf so that we ca=
n
-# interact with u-boot over the serial console port.
-
-import os
-import bb
-import time
-import subprocess
-import sys
-import pexpect
-
-from oeqa.controllers.controllerimage import ControllerImageHardwareTarg=
et
-
-
-class EdgeRouterTarget(ControllerImageHardwareTarget):
-
-    def __init__(self, d):
-        super(EdgeRouterTarget, self).__init__(d)
-
-        self.image_fstype =3D self.get_image_fstype(d)
-        self.deploy_cmds =3D [
-                'mount -L boot /boot',
-                'mkdir -p /mnt/testrootfs',
-                'mount -L testrootfs /mnt/testrootfs',
-                'cp ~/test-kernel /boot',
-                'rm -rf /mnt/testrootfs/*',
-                'tar xvf ~/test-rootfs.%s -C /mnt/testrootfs' % self.ima=
ge_fstype
-                ]
-        if not self.serialcontrol_cmd:
-            bb.fatal("This TEST_TARGET needs a TEST_SERIALCONTROL_CMD de=
fined in local.conf.")
-
-
-    def _deploy(self):
-        self.controller.run("umount /mnt/testrootfs;")
-        self.controller.ignore_status =3D False
-        self.controller.copy_to(self.kernel, "~/test-kernel")
-        self.controller.copy_to(self.rootfs, "~/test-rootfs.%s" % self.i=
mage_fstype)
-        for cmd in self.deploy_cmds:
-            self.controller.run(cmd)
-
-    def _start(self, params=3DNone):
-        self.power_cycle(self.controller)
-        try:
-            serialconn =3D pexpect.spawn(self.serialcontrol_cmd, env=3Ds=
elf.origenv, logfile=3Dsys.stdout)
-            serialconn.expect("U-Boot")
-            serialconn.sendline("a")
-            serialconn.expect("Octeon ubnt_e100#")
-            serialconn.sendline("fatload usb 0:1 $loadaddr test-kernel")
-            serialconn.expect(" bytes read")
-            serialconn.expect("Octeon ubnt_e100#")
-            serialconn.sendline("bootoctlinux $loadaddr coremask=3D0x3 r=
oot=3D/dev/sda3 rw rootwait mtdparts=3Dphys_mapped_flash:512k(boot0),512k=
(boot1),64k@3072k(eeprom)")
-            serialconn.expect("login:", timeout=3D120)
-            serialconn.close()
-        except pexpect.ExceptionPexpect as e:
-            bb.fatal('Serial interaction failed: %s' % str(e))
-
-    def _wait_until_booted(self):
-        try:
-            serialconn =3D pexpect.spawn(self.serialcontrol_cmd, env=3Ds=
elf.origenv, logfile=3Dsys.stdout)
-            serialconn.expect("login:", timeout=3D120)
-            serialconn.close()
-        except pexpect.ExceptionPexpect as e:
-            bb.fatal('Serial interaction failed: %s' % str(e))
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend=
 b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
index a90958f546e9..4a62ac952c46 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -1,6 +1,5 @@
 KBRANCH:genericx86  =3D "standard/base"
 KBRANCH:genericx86-64  =3D "standard/base"
-KBRANCH:edgerouter =3D "standard/edgerouter"
 KBRANCH:beaglebone-yocto =3D "standard/beaglebone"
=20
 KMACHINE:genericx86 ?=3D "common-pc"
@@ -9,5 +8,4 @@ KMACHINE:beaglebone-yocto ?=3D "beaglebone"
=20
 COMPATIBLE_MACHINE:genericx86 =3D "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 =3D "genericx86-64"
-COMPATIBLE_MACHINE:edgerouter =3D "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto =3D "beaglebone-yocto"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappen=
d b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
index 87aa38a85e5c..7a33505b55bc 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
@@ -1,6 +1,5 @@
 KBRANCH:genericx86  =3D "v5.15/standard/base"
 KBRANCH:genericx86-64  =3D "v5.15/standard/base"
-KBRANCH:edgerouter =3D "v5.15/standard/edgerouter"
 KBRANCH:beaglebone-yocto =3D "v5.15/standard/beaglebone"
=20
 KMACHINE:genericx86 ?=3D "common-pc"
@@ -9,15 +8,12 @@ KMACHINE:beaglebone-yocto ?=3D "beaglebone"
=20
 SRCREV_machine:genericx86 ?=3D "024d08fb706170a9723e9751e505681f9d4c7ab6=
"
 SRCREV_machine:genericx86-64 ?=3D "024d08fb706170a9723e9751e505681f9d4c7=
ab6"
-SRCREV_machine:edgerouter ?=3D "2ac6461adfceb54f47a756046fbdd142adce4301=
"
 SRCREV_machine:beaglebone-yocto ?=3D "26aee42556a000123129552b73de6bf2ac=
039034"
=20
 COMPATIBLE_MACHINE:genericx86 =3D "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 =3D "genericx86-64"
-COMPATIBLE_MACHINE:edgerouter =3D "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto =3D "beaglebone-yocto"
=20
 LINUX_VERSION:genericx86 =3D "5.15.103"
 LINUX_VERSION:genericx86-64 =3D "5.15.103"
-LINUX_VERSION:edgerouter =3D "5.15.103"
 LINUX_VERSION:beaglebone-yocto =3D "5.15.103"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend=
 b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend
index dc58f988eb89..b80c51848da0 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend
@@ -1,6 +1,5 @@
 KBRANCH:genericx86  =3D "v6.1/standard/base"
 KBRANCH:genericx86-64  =3D "v6.1/standard/base"
-KBRANCH:edgerouter =3D "v6.1/standard/edgerouter"
 KBRANCH:beaglebone-yocto =3D "v6.1/standard/beaglebone"
=20
 KMACHINE:genericx86 ?=3D "common-pc"
@@ -9,15 +8,12 @@ KMACHINE:beaglebone-yocto ?=3D "beaglebone"
=20
 SRCREV_machine:genericx86 ?=3D "423e1996694b61fbfc8ec3bf062fc6461d64fde1=
"
 SRCREV_machine:genericx86-64 ?=3D "423e1996694b61fbfc8ec3bf062fc6461d64f=
de1"
-SRCREV_machine:edgerouter ?=3D "423e1996694b61fbfc8ec3bf062fc6461d64fde1=
"
 SRCREV_machine:beaglebone-yocto ?=3D "423e1996694b61fbfc8ec3bf062fc6461d=
64fde1"
=20
 COMPATIBLE_MACHINE:genericx86 =3D "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 =3D "genericx86-64"
-COMPATIBLE_MACHINE:edgerouter =3D "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto =3D "beaglebone-yocto"
=20
 LINUX_VERSION:genericx86 =3D "6.1.20"
 LINUX_VERSION:genericx86-64 =3D "6.1.20"
-LINUX_VERSION:edgerouter =3D "6.1.20"
 LINUX_VERSION:beaglebone-yocto =3D "6.1.20"
diff --git a/meta-yocto-bsp/wic/edgerouter.wks b/meta-yocto-bsp/wic/edger=
outer.wks
deleted file mode 100644
index 7176fe436b47..000000000000
--- a/meta-yocto-bsp/wic/edgerouter.wks
+++ /dev/null
@@ -1,4 +0,0 @@
-# short-description: Create SD card image for Edgerouter
-# long-description: Create a partitioned SD card image for MIPS64 Edgero=
uter reference hardware.
-part /boot --source bootimg-partition --ondisk sda --fstype=3Dvfat --lab=
el boot --active --align 4 --size 16
-part / --source rootfs --ondisk sda --fstype=3Dext4 --label root --align=
 4
--=20
2.25.1


