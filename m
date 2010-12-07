Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0F3194C811CB
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 01:07:44 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 Dec 2010 23:07:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,310,1288594800"; d="scan'208";a="684620556"
Received: from unknown (HELO [10.255.13.237]) ([10.255.13.237])
	by orsmga001.jf.intel.com with ESMTP; 06 Dec 2010 23:07:44 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Tue, 07 Dec 2010 01:08:02 -0600
Message-ID: <1291705682.2848.63.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: [PATCH 1/3] crownbay: create initial BSP infrastructure
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
X-List-Received-Date: Tue, 07 Dec 2010 07:07:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../bsp/crownbay/crownbay-standard.scc             |    7 ++
 wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg     |   68 ++++++++++++++++++++
 wrs/cfg/kernel-cache/bsp/crownbay/crownbay.scc     |    6 ++
 3 files changed, 81 insertions(+), 0 deletions(-)
 create mode 100644 wrs/cfg/kernel-cache/bsp/crownbay/crownbay-standard.scc
 create mode 100644 wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
 create mode 100644 wrs/cfg/kernel-cache/bsp/crownbay/crownbay.scc

diff --git a/wrs/cfg/kernel-cache/bsp/crownbay/crownbay-standard.scc b/wrs/cfg/kernel-cache/bsp/crownbay/crownbay-standard.scc
new file mode 100644
index 0000000..2de508c
--- /dev/null
+++ b/wrs/cfg/kernel-cache/bsp/crownbay/crownbay-standard.scc
@@ -0,0 +1,7 @@
+define WRS_BOARD crownbay
+define WRS_KERNEL standard
+define WRS_ARCH i386
+
+scc_leaf ktypes/standard crownbay-standard
+
+include crownbay.scc
diff --git a/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg b/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
new file mode 100644
index 0000000..a516dc9
--- /dev/null
+++ b/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
@@ -0,0 +1,68 @@
+CONFIG_X86_32=y
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
diff --git a/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.scc b/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.scc
new file mode 100644
index 0000000..5f4c7fa
--- /dev/null
+++ b/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.scc
@@ -0,0 +1,6 @@
+kconf hardware crownbay.cfg
+
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
+include features/serial/8250.scc
+include features/logbuf/size-normal.scc
-- 
1.7.0.4




