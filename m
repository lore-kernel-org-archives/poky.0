Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id F42074C810B6
	for <poky@yoctoproject.org>; Tue, 28 Dec 2010 10:46:00 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 28 Dec 2010 08:45:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,239,1291622400"; d="scan'208";a="641131241"
Received: from unknown (HELO localhost) ([10.255.13.217])
	by fmsmga002.fm.intel.com with ESMTP; 28 Dec 2010 08:45:55 -0800
Message-Id: <f176ac9827d68b757645181fb77313734d332956.1293522033.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1293522033.git.tom.zanussi@intel.com>
References: <cover.1293522033.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@intel.com>
Old-Date: Sat, 25 Dec 2010 13:15:15 -0600
Date: Tue, 28 Dec 2010 10:45:30 -0600
To: poky@yoctoproject.org
Subject: [PATCH 1/4] meta-emenlow: remove 2.6.33.2 kernel support
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
X-List-Received-Date: Tue, 28 Dec 2010 16:46:01 -0000

meta-emenlow now uses the official yocto kernel, and there's no reason
to provide a 2.6.33.2 alternative, so remove the .bbappend and
defconfig for 2.6.33.2 kernel support.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-kernel/linux/linux-2.6.33.2/defconfig  |   68 --------------------
 .../recipes-kernel/linux/linux_2.6.33.2.bbappend   |    3 -
 2 files changed, 0 insertions(+), 71 deletions(-)
 delete mode 100644 meta-emenlow/recipes-kernel/linux/linux-2.6.33.2/defconfig
 delete mode 100644 meta-emenlow/recipes-kernel/linux/linux_2.6.33.2.bbappend

diff --git a/meta-emenlow/recipes-kernel/linux/linux-2.6.33.2/defconfig b/meta-emenlow/recipes-kernel/linux/linux-2.6.33.2/defconfig
deleted file mode 100644
index a516dc9..0000000
--- a/meta-emenlow/recipes-kernel/linux/linux-2.6.33.2/defconfig
+++ /dev/null
@@ -1,68 +0,0 @@
-CONFIG_X86_32=y
-CONFIG_PRINTK=y
-
-# Basic hardware support for the box - network, USB, PCI, sound
-CONFIG_NETDEVICES=y
-CONFIG_NETDEV_1000=y
-CONFIG_ATA=y
-CONFIG_ATA_GENERIC=y
-CONFIG_ATA_SFF=y
-CONFIG_PCI=y
-CONFIG_MMC=y
-CONFIG_MMC_SDHCI=y
-CONFIG_USB_SUPPORT=y
-CONFIG_USB=y
-CONFIG_USB_ARCH_HAS_EHCI=y
-CONFIG_E1000E=y
-CONFIG_R8169=y
-CONFIG_PATA_SCH=y
-CONFIG_MMC_SDHCI_PCI=y
-CONFIG_USB_EHCI_HCD=y
-CONFIG_PCIEPORTBUS=y
-CONFIG_NET=y
-CONFIG_USB_UHCI_HCD=y
-CONFIG_BLK_DEV_SD=y
-CONFIG_CHR_DEV_SG=y
-CONFIG_SOUND=y
-CONFIG_SND=y
-CONFIG_SND_HDA_INTEL=y
-
-# Make sure these are on, otherwise the bootup won't be fun
-CONFIG_EXT3_FS=y
-CONFIG_UNIX=y
-CONFIG_INET=y
-CONFIG_MODULES=y
-CONFIG_SHMEM=y
-CONFIG_TMPFS=y
-CONFIG_PACKET=y
-
-# These are needed for the Poulsbo kernel modules
-CONFIG_I2C=y
-CONFIG_AGP=y
-CONFIG_VFAT_FS=y
-CONFIG_PM=y
-CONFIG_ACPI=y
-CONFIG_FB=y
-CONFIG_BACKLIGHT_LCD_SUPPORT=y
-CONFIG_BACKLIGHT_CLASS_DEVICE=y
-CONFIG_INPUT=y
-CONFIG_VIDEO_V4L2=y
-CONFIG_VIDEO_IVTV=y
-CONFIG_MEDIA_SUPPORT=y
-CONFIG_VIDEO_CAPTURE_DRIVERS=y
-CONFIG_VIDEO_DEV=y
-CONFIG_VIDEO_V4L2_COMMON=y
-CONFIG_I2C_ALGOBIT=y
-CONFIG_FB_CFB_COPYAREA=y
-CONFIG_FB_CFB_IMAGEBLIT=y
-CONFIG_FB_CFB_FILLRECT=y
-CONFIG_VIDEO_FB_IVTV=y
-
-# Needed for booting (and using) USB memory sticks
-CONFIG_USB_STORAGE=y
-CONFIG_BLK_DEV_RAM=y
-CONFIG_BLK_DEV_LOOP=y
-CONFIG_BLK_DEV_INITRD=y
-CONFIG_RD_GZIP=y
-CONFIG_NLS_CODEPAGE_437=y
-CONFIG_NLS_ISO8859_1=y
diff --git a/meta-emenlow/recipes-kernel/linux/linux_2.6.33.2.bbappend b/meta-emenlow/recipes-kernel/linux/linux_2.6.33.2.bbappend
deleted file mode 100644
index fac0921..0000000
--- a/meta-emenlow/recipes-kernel/linux/linux_2.6.33.2.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-FILESPATH := "${FILESPATH}:${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-SRC_URI += "file://defconfig"
-COMPATIBLE_MACHINE_emenlow = "emenlow"
-- 
1.7.0.4


