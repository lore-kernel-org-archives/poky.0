Return-Path: <adrian.freihofer@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2279C83030
	for <webhook@archiver.kernel.org>; Mon,  7 Jul 2025 20:38:28 +0000 (UTC)
Received: from mta-64-228.siemens.flowmailer.net (mta-64-228.siemens.flowmailer.net [185.136.64.228])
 by mx.groups.io with SMTP id smtpd.web10.2911.1751920708363289760
 for <poky@lists.yoctoproject.org>;
 Mon, 07 Jul 2025 13:38:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=adrian.freihofer@siemens.com header.s=fm1 header.b=jepQcGBw;
 spf=pass (domain: rts-flowmailer.siemens.com, ip: 185.136.64.228, mailfrom: fm-1329275-2025070720382649e65923286c2bb62d-o9kiwn@rts-flowmailer.siemens.com)
Received: by mta-64-228.siemens.flowmailer.net with ESMTPSA id 2025070720382649e65923286c2bb62d
        for <poky@lists.yoctoproject.org>;
        Mon, 07 Jul 2025 22:38:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=adrian.freihofer@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=jbYXkq6BwdWm0WyhQ1yV35D3vZtQRmwCN8qhGg+JisI=;
 b=jepQcGBwzyFEwqHpwbQ0VmJF8WLvwnSRbg0ZzaaAbEhoFKbxU5Bru2IrA+CDr5PvoOD6kR
 omHkJ5QFPcDeag+gyrZDb2pRue/1FaSdGJqvfcymxqFSH8PcTCMETaqRK5hY8DqJrIM2Xhdc
 JOIcakYz7IzP3gz/zo2FUU02c2NTcUftOBvWkNl+7xumSOZMe9znYaxaNHz9LdQXkcWHE5hN
 5kiJMuQ3572raY4xKRu/TprAkc6GREer0VisZqGcAL3oEhPCy/1AckfFFvbKWRrBPx2rbpBy
 mD6XhU9suflScyCGKMvGncj5FoHRwdYzO/ryUs6QuH3mgU855TY9lGuA==;
From: AdrianF <adrian.freihofer@siemens.com>
To: poky@lists.yoctoproject.org
Cc: Adrian Freihofer <adrian.freihofer@siemens.com>
Subject: [PATCH v2 2/5] beaglebone-yocto: support FIT images
Date: Mon,  7 Jul 2025 22:37:55 +0200
Message-ID: <20250707203820.2554184-3-adrian.freihofer@siemens.com>
In-Reply-To: <20250707203820.2554184-1-adrian.freihofer@siemens.com>
References: <20250707203820.2554184-1-adrian.freihofer@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1329275:519-21489:flowmailer
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 07 Jul 2025 20:38:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13696

From: Adrian Freihofer <adrian.freihofer@siemens.com>

Introduce the FIT_IMAGE_KERNEL variable, which allows switching from the
zImage kernel to a FIT image kernel. This variable is not intended to be
officially documented; the goal is for the beaglebone-yocto MACHINE to
serve as an example for both use cases: zImage and FIT image.

The following tests have been performed on a beaglebone-black device
with poky and core-image-minimal running from SDCard:

* MACHINE = "beaglebone-yocto"
  Still boots the zImage kernel as before this commit

* MACHINE = "beaglebone-yocto"
  FIT_IMAGE_KERNEL = "1"
  Boots a FIT image kernel as expected

* MACHINE = "beaglebone-yocto"
  INITRAMFS_IMAGE = "core-image-initramfs-boot"
  FIT_IMAGE_KERNEL = "1"
  Boots a FIT image kernel with initramfs as expected

  Also booting like that behaves as expected:
   fatload mmc 0:1 $loadaddr /kernel
   iminfo $loadaddr
   setenv bootargs console=ttyS0,115200n8 root=/dev/mmcblk0p2 ro \
          rootfstype=ext4 rootwait shell_debug=true
   bootm ${loadaddr}#conf-am335x-boneblack.dtb

All the tested configurations just boot from the SDCard without manual
tweaks.

Signed-off-by: Adrian Freihofer <adrian.freihofer@siemens.com>
---
 .../conf/machine/beaglebone-yocto.conf        | 31 +++++++++++++++++--
 1 file changed, 28 insertions(+), 3 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index d4b72361650..321d2c27c2a 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -14,8 +14,20 @@ include conf/machine/include/arm/armv7a/tune-cortexa8.inc
 IMAGE_FSTYPES += "tar.bz2 jffs2 wic wic.bmap"
 EXTRA_IMAGECMD:jffs2 = "-lnp "
 WKS_FILE ?= "beaglebone-yocto.wks"
-MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "kernel-image kernel-devicetree"
-do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do_populate_sysroot virtual/bootloader:do_deploy"
+
+# Setting this variable to "1" switches from zImage kernel to FIT image kernel
+FIT_IMAGE_KERNEL ?= "0"
+
+# Note: This is redundant if wic creates a separate /boot partition
+MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "${@'linux-yocto-fitimage' if d.getVar('FIT_IMAGE_KERNEL') == '1' else 'kernel-image kernel-devicetree'}"
+
+KERNEL_CLASSES += "${@'kernel-fit-extra-artifacts' if d.getVar('FIT_IMAGE_KERNEL') == '1' else ''}"
+do_image_wic[depends] += "\
+    mtools-native:do_populate_sysroot \
+    dosfstools-native:do_populate_sysroot \
+    virtual/bootloader:do_deploy \
+    ${@'linux-yocto-fitimage:do_deploy' if d.getVar('FIT_IMAGE_KERNEL') == '1' else ''} \
+"
 
 SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0 115200;ttyAMA0"
 
@@ -26,15 +38,28 @@ KERNEL_IMAGETYPE = "zImage"
 DTB_FILES = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
 KERNEL_DEVICETREE = '${@' '.join('ti/omap/%s' % d for d in '${DTB_FILES}'.split())}'
 
+# Configure the image.bbclass to depend on the fitImage instead of only
+# the kernel to ensure the fitImage is built with the image
+KERNEL_DEPLOY_DEPEND = "${@'linux-yocto-fitimage:do_deploy' if d.getVar('FIT_IMAGE_KERNEL') == '1' else 'virtual/kernel:do_deploy'}"
+
 PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
 
 SPL_BINARY = "MLO"
 UBOOT_SUFFIX = "img"
 UBOOT_MACHINE = "am335x_evm_defconfig"
+UBOOT_ENTRYPOINT = "0x80008000"
+UBOOT_LOADADDRESS = "0x80008000"
+UBOOT_DTB_LOADADDRESS = "0x88000000"
+UBOOT_DTBO_LOADADDRESS = "0x88080000"
+UBOOT_RD_LOADADDRESS = "0x89000000"
+UBOOT_RD_ENTRYPOINT = "0x89000000"
 
 MACHINE_FEATURES = "usbgadget usbhost vfat alsa"
 
-IMAGE_BOOT_FILES ?= "u-boot.${UBOOT_SUFFIX} ${SPL_BINARY} ${KERNEL_IMAGETYPE} ${DTB_FILES}"
+# Configure wic to create a /boot partition with either zImage or fitImage
+IMAGE_BOOT_FILES ?= "u-boot.${UBOOT_SUFFIX} ${SPL_BINARY} \
+    ${@'fitImage' if d.getVar('FIT_IMAGE_KERNEL') == '1' else '${KERNEL_IMAGETYPE} ${DTB_FILES}'} \
+"
 
 # support runqemu
 EXTRA_IMAGEDEPENDS += "qemu-native qemu-helper-native"
-- 
2.50.0


