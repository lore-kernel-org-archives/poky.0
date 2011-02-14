Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 676914C808E6
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 09:46:58 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 14 Feb 2011 07:46:57 -0800
Message-Id: <849307$bigift@azsmga001.ch.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,469,1291622400"; d="scan'208";a="388516363"
Received: from unknown (HELO localhost) ([10.255.14.181])
	by azsmga001.ch.intel.com with ESMTP; 14 Feb 2011 07:46:56 -0800
Old-Date: Mon, 31 Jan 2011 11:05:06 -0600
Date: Mon, 14 Feb 2011  9:46:44 -0600
To: bruce.ashfield@windriver.com,poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH] jasperforest: create initial BSP infrastructure
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
X-List-Received-Date: Mon, 14 Feb 2011 15:46:58 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../bsp/jasperforest/jasperforest-standard.scc     |    7 ++
 .../kernel-cache/bsp/jasperforest/jasperforest.cfg |   60 ++++++++++++++++++++
 .../kernel-cache/bsp/jasperforest/jasperforest.scc |    6 ++
 3 files changed, 73 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-standard.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.scc

diff --git a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-standard.scc b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-standard.scc
new file mode 100644
index 0000000..ce877f3
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest-standard.scc
@@ -0,0 +1,7 @@
+define KMACHINE jasperforest
+define KTYPE standard
+define KARCH x86_64
+
+scc_leaf bsp/common-pc-64/common-pc-64-standard jasperforest
+
+include jasperforest.scc
diff --git a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg
new file mode 100644
index 0000000..e407992
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg
@@ -0,0 +1,60 @@
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
+CONFIG_I2C=y
+CONFIG_AGP=y
+CONFIG_VFAT_FS=y
+CONFIG_PM=y
+CONFIG_ACPI=y
+CONFIG_INPUT=y
+
+# Needed for booting (and using) USB memory sticks
+CONFIG_USB_STORAGE=y
+CONFIG_BLK_DEV_RAM=y
+CONFIG_BLK_DEV_LOOP=y
+CONFIG_BLK_DEV_INITRD=y
+CONFIG_RD_GZIP=y
+CONFIG_NLS_CODEPAGE_437=y
+CONFIG_NLS_ISO8859_1=y
+
+# NUMA support
+CONFIG_NUMA=y
+CONFIG_X86_64_ACPI_NUMA=y
+CONFIG_NODES_SPAN_OTHER_NODES=y
+CONFIG_USE_PERCPU_NUMA_NODE_ID=y
+CONFIG_ACPI_NUMA=y
+
diff --git a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.scc b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.scc
new file mode 100644
index 0000000..34d208c
--- /dev/null
+++ b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.scc
@@ -0,0 +1,6 @@
+kconf hardware jasperforest.cfg
+
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
+include features/serial/8250.scc
+include features/logbuf/size-normal.scc
-- 
1.7.0.4


