Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 92C0A4C811D7
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 15:18:38 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 31 Jan 2011 13:18:38 -0800
Message-Id: <b9dded$hqfh0i@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,405,1291622400"; d="scan'208";a="598197269"
Received: from unknown (HELO localhost) ([10.255.14.127])
	by orsmga002.jf.intel.com with ESMTP; 31 Jan 2011 13:18:37 -0800
Old-Date: Wed, 5 Jan 2011 15:34:38 -0600
Date: Mon, 31 Jan 2011 15:18:36 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/2] sugarbay: create initial BSP infrastructure
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
X-List-Received-Date: Mon, 31 Jan 2011 21:18:38 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../bsp/sugarbay/sugarbay-standard.scc             |    7 ++
 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg    |   67 ++++++++++++++++++++
 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc    |    6 ++
 3 files changed, 80 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-standard.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc

diff --git a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-standard.scc b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-standard.scc
new file mode 100644
index 0000000..f1b8138
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-standard.scc
@@ -0,0 +1,7 @@
+define WRS_BOARD sugarbay
+define WRS_KERNEL standard
+define WRS_ARCH x86_64
+
+scc_leaf bsp/common-pc-64/common-pc-64-standard sugarbay
+
+include sugarbay.scc
diff --git a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg
new file mode 100644
index 0000000..61e5506
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg
@@ -0,0 +1,67 @@
+CONFIG_PRINTK=y
+
+# Basic hardware support for the box - network, USB, PCI, sound
+CONFIG_NETDEVICES=y
+CONFIG_NETDEV_1000=y
+CONFIG_ATA=y
+CONFIG_ATA_GENERIC=y
+CONFIG_ATA_SFF=y
+CONFIG_PCI=y
+CONFIG_MMC=y
+CONFIG_MMC_SDHCI=y
+CONFIG_USB_SUPPORT=y
+CONFIG_USB=y
+CONFIG_USB_ARCH_HAS_EHCI=y
+CONFIG_E1000E=y
+CONFIG_R8169=y
+CONFIG_PATA_SCH=y
+CONFIG_MMC_SDHCI_PCI=y
+CONFIG_USB_EHCI_HCD=y
+CONFIG_PCIEPORTBUS=y
+CONFIG_NET=y
+CONFIG_USB_UHCI_HCD=y
+CONFIG_BLK_DEV_SD=y
+CONFIG_CHR_DEV_SG=y
+CONFIG_SOUND=y
+CONFIG_SND=y
+CONFIG_SND_HDA_INTEL=y
+
+# Make sure these are on, otherwise the bootup won't be fun
+CONFIG_EXT3_FS=y
+CONFIG_UNIX=y
+CONFIG_INET=y
+CONFIG_MODULES=y
+CONFIG_SHMEM=y
+CONFIG_TMPFS=y
+CONFIG_PACKET=y
+
+# These are needed for the Poulsbo kernel modules
+CONFIG_I2C=y
+CONFIG_AGP=y
+CONFIG_VFAT_FS=y
+CONFIG_PM=y
+CONFIG_ACPI=y
+CONFIG_FB=y
+CONFIG_BACKLIGHT_LCD_SUPPORT=y
+CONFIG_BACKLIGHT_CLASS_DEVICE=y
+CONFIG_INPUT=y
+CONFIG_VIDEO_V4L2=y
+CONFIG_VIDEO_IVTV=y
+CONFIG_MEDIA_SUPPORT=y
+CONFIG_VIDEO_CAPTURE_DRIVERS=y
+CONFIG_VIDEO_DEV=y
+CONFIG_VIDEO_V4L2_COMMON=y
+CONFIG_I2C_ALGOBIT=y
+CONFIG_FB_CFB_COPYAREA=y
+CONFIG_FB_CFB_IMAGEBLIT=y
+CONFIG_FB_CFB_FILLRECT=y
+CONFIG_VIDEO_FB_IVTV=y
+
+# Needed for booting (and using) USB memory sticks
+CONFIG_USB_STORAGE=y
+CONFIG_BLK_DEV_RAM=y
+CONFIG_BLK_DEV_LOOP=y
+CONFIG_BLK_DEV_INITRD=y
+CONFIG_RD_GZIP=y
+CONFIG_NLS_CODEPAGE_437=y
+CONFIG_NLS_ISO8859_1=y
diff --git a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc
new file mode 100644
index 0000000..716f9e4
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc
@@ -0,0 +1,6 @@
+kconf hardware sugarbay.cfg
+
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
+include features/serial/8250.scc
+include features/logbuf/size-normal.scc
-- 
1.7.0.4


