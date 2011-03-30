Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id CD1F24C8085F
	for <poky@yoctoproject.org>; Wed, 30 Mar 2011 14:49:52 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 30 Mar 2011 12:49:52 -0700
Message-Id: <b7da2f$qtqlla@fmsmga001.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,270,1299484800"; d="scan'208";a="903698098"
Received: from unknown (HELO localhost) ([10.255.12.192])
	by fmsmga001.fm.intel.com with ESMTP; 30 Mar 2011 12:49:52 -0700
Old-Date: Sat, 26 Mar 2011 02:16:48 -0500
Date: Wed, 30 Mar 2011 14:49:35 -0500
To: bruce.ashfield@windriver.com,poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/2][KERNEL] crownbay: update eg20t config
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
X-List-Received-Date: Wed, 30 Mar 2011 19:49:53 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/crownbay/eg20t.cfg |   21 +++++++++++++--------
 1 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/crownbay/eg20t.cfg b/meta/cfg/kernel-cache/bsp/crownbay/eg20t.cfg
index 0e05f70..6d4a9fc 100644
--- a/meta/cfg/kernel-cache/bsp/crownbay/eg20t.cfg
+++ b/meta/cfg/kernel-cache/bsp/crownbay/eg20t.cfg
@@ -1,33 +1,38 @@
 # Hardware support for the Platform Controller Hub EG20T
 
 CONFIG_DMADEVICES=y
+CONFIG_PCH_DMA=y
 CONFIG_DMA_ENGINE=y
 CONFIG_PCH_UART_DMA=y
 CONFIG_SERIAL_8250_PCI=y
 CONFIG_SERIAL_8250_PCH=y
 CONFIG_SERIAL_8250_PCH_DMA=y
 
-CONFIG_SPI=y
-CONFIG_PCH_SPI=y
-CONFIG_PCH_SPI_PLATFORM_DEVICE=y
-CONFIG_PCH_SPI_PLATFORM_DEVICE_COUNT=1
+CONFIG_SERIAL_PCH_UART=y
+CONFIG_SERIAL_CORE=y
 
+CONFIG_SPI=y
+CONFIG_SPI_BITBANG=y
+CONFIG_SPI_GPIO=y
+CONFIG_SPI_TOPCLIFF_PCH=y
+ 
+CONFIG_MISC_DEVICES=y
 CONFIG_PCH_PHUB=y
 
 CONFIG_NETDEVICES=y
 CONFIG_NETDEV_1000=y
 CONFIG_PCH_GBE=y
 
+CONFIG_PCH_USBDEV=y
 CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_PCH=y
+CONFIG_USB_GADGET_EG20T=y
 CONFIG_USB_GADGET_DUALSPEED=y
-CONFIG_PCH_USBDEV=y
 CONFIG_USB_GADGET_SELECTED=y
 
-CONFIG_PCH_I2C=y
+CONFIG_I2C_EG20T=y
 
 CONFIG_GPIOLIB=y
-CONFIG_PCH_GPIO=y
+CONFIG_GPIO_PCH=y
 
 CONFIG_PCH_IEEE1588=y
 
-- 
1.7.0.4


