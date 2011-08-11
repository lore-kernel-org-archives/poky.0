Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CB95E00767
	for <poky@yoctoproject.org>; Thu, 11 Aug 2011 12:15:58 -0700 (PDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7BJG3fv009374;
	Thu, 11 Aug 2011 12:16:04 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Thu, 11 Aug 2011 15:16:30 -0400
Message-Id: <606861a92864cb728203fdf5db286d684d2537eb.1313090099.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1313090099.git.bruce.ashfield@windriver.com>
References: <cover.1313090099.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1313090099.git.bruce.ashfield@windriver.com>
References: <cover.1313090099.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] meta-yocto: remove apm from beagleboard MACHINE_FEATURES
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
X-List-Received-Date: Thu, 11 Aug 2011 19:15:58 -0000

Fixes [YOCTO: #916]

apm is not something that we require in our yocto reference beagleboard
BSP. It currently is listed in the MACHINE_FEATURES for the board, which
leads to the runtime message:

  Starting advanced power management daemon: No APM support in kernel

Since "/proc/apm" is not present. The board config we are targeting does
not have the hardware to back this, so adding the emulation support
wouldn't yield useful data. We'll leave this extended functionality for
other more appropriate beagleboard configs.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto/conf/machine/beagleboard.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/conf/machine/beagleboard.conf b/meta-yocto/conf/machine/beagleboard.conf
index 0b3cebc..fc0ecc7 100644
--- a/meta-yocto/conf/machine/beagleboard.conf
+++ b/meta-yocto/conf/machine/beagleboard.conf
@@ -36,4 +36,4 @@ UBOOT_MACHINE = "omap3_beagle_config"
 UBOOT_ENTRYPOINT = "0x80008000"
 UBOOT_LOADADDRESS = "0x80008000"
 
-MACHINE_FEATURES = "kernel26 apm usbgadget usbhost vfat alsa"
+MACHINE_FEATURES = "kernel26 usbgadget usbhost vfat alsa"
-- 
1.7.0.4


