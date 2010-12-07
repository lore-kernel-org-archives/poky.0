Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 508824C81069
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 01:07:51 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 06 Dec 2010 23:07:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,310,1288594800"; d="scan'208";a="581259232"
Received: from unknown (HELO [10.255.13.237]) ([10.255.13.237])
	by orsmga002.jf.intel.com with ESMTP; 06 Dec 2010 23:07:50 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Tue, 07 Dec 2010 01:08:09 -0600
Message-ID: <1291705689.2848.65.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: [PATCH 3/3] crownbay: add EG20T config
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
X-List-Received-Date: Tue, 07 Dec 2010 07:07:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hardware config options for the Platform Controller Hub EG20T.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 wrs/cfg/kernel-cache/bsp/crownbay/crownbay.scc |    1 +
 wrs/cfg/kernel-cache/bsp/crownbay/eg20t.cfg    |   36 ++++++++++++++++++++++++
 2 files changed, 37 insertions(+), 0 deletions(-)
 create mode 100644 wrs/cfg/kernel-cache/bsp/crownbay/eg20t.cfg

diff --git a/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.scc b/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.scc
index c37fcf1..89a0725 100644
--- a/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.scc
+++ b/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.scc
@@ -1,4 +1,5 @@
 kconf hardware crownbay.cfg
+kconf hardware eg20t.cfg
 
 include features/latencytop/latencytop.scc
 include features/profiling/profiling.scc
diff --git a/wrs/cfg/kernel-cache/bsp/crownbay/eg20t.cfg b/wrs/cfg/kernel-cache/bsp/crownbay/eg20t.cfg
new file mode 100644
index 0000000..0e05f70
--- /dev/null
+++ b/wrs/cfg/kernel-cache/bsp/crownbay/eg20t.cfg
@@ -0,0 +1,36 @@
+# Hardware support for the Platform Controller Hub EG20T
+
+CONFIG_DMADEVICES=y
+CONFIG_DMA_ENGINE=y
+CONFIG_PCH_UART_DMA=y
+CONFIG_SERIAL_8250_PCI=y
+CONFIG_SERIAL_8250_PCH=y
+CONFIG_SERIAL_8250_PCH_DMA=y
+
+CONFIG_SPI=y
+CONFIG_PCH_SPI=y
+CONFIG_PCH_SPI_PLATFORM_DEVICE=y
+CONFIG_PCH_SPI_PLATFORM_DEVICE_COUNT=1
+
+CONFIG_PCH_PHUB=y
+
+CONFIG_NETDEVICES=y
+CONFIG_NETDEV_1000=y
+CONFIG_PCH_GBE=y
+
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_PCH=y
+CONFIG_USB_GADGET_DUALSPEED=y
+CONFIG_PCH_USBDEV=y
+CONFIG_USB_GADGET_SELECTED=y
+
+CONFIG_PCH_I2C=y
+
+CONFIG_GPIOLIB=y
+CONFIG_PCH_GPIO=y
+
+CONFIG_PCH_IEEE1588=y
+
+CONFIG_CAN=y
+CONFIG_CAN_DEV=y
+CONFIG_PCH_CAN=y
-- 
1.7.0.4




