Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9FA2F4C8007E
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 16:49:38 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Feb 2011 14:49:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,470,1291622400"; d="scan'208";a="602623612"
Received: from fear.jf.intel.com (HELO localhost) ([10.7.201.75])
	by orsmga002.jf.intel.com with ESMTP; 14 Feb 2011 14:49:38 -0800
Message-Id: <0646bf8cbd7a19bfc12f4a71506428e3c0780df9.1297724276.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1297724276.git.dvhart@linux.intel.com>
References: <cover.1297724276.git.dvhart@linux.intel.com>
Old-Date: Mon, 14 Feb 2011 14:52:47 -0800
Date: Mon, 14 Feb 2011 14:59:22 -0800
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH] README.hardware: update the beagleboard serial port documentation
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
X-List-Received-Date: Mon, 14 Feb 2011 22:49:39 -0000

From: Darren Hart <dvhart@linux.intel.com>

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/beagle
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/beagle

Thanks,
    Darren Hart <dvhart@linux.intel.com>

Update the README.hardware beagleboard description to account for the use
of the OMAP_SERIAL in recent kernel recipes. Add a note documenting how to
use the old 8250 based serial devices for older kernels.

Correct a type.

Correct the boot script name from user.scr to boot.scr.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Gary Thomas <gary@mlbassoc.com>
---
 README.hardware |   16 ++++++++++++----
 1 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/README.hardware b/README.hardware
index bc5b5b8..c0df01b 100644
--- a/README.hardware
+++ b/README.hardware
@@ -519,7 +519,7 @@ TODO: need someone with a Beagleboard C4 to verify these instructions.
 Due to the lack of NAND on the xM, the install and boot process varies a bit
 between boards.  The C4 can run the x-loader and u-boot binaries from NAND or
 the SD, while the xM can only run them from the SD. The following instructions
-apply to both the C4 and the xM, but te C4 can skip step 2 (as noted below),
+apply to both the C4 and the xM, but the C4 can skip step 2 (as noted below),
 and may require modification of the NAND environment.
 
   1. Partition and format an SD card:
@@ -564,11 +564,19 @@ and may require modification of the NAND environment.
 
      # (cat << EOF
      setenv bootcmd 'mmc init; fatload mmc 0:1 0x80300000 uImage; bootm 0x80300000'
-     setenv bootargs 'console=tty0 console=ttyS2,115200n8 root=/dev/mmcblk0p2 rootwait rootfstype=ext3 ro'
+     setenv bootargs 'console=tty0 console=ttyO2,115200n8 root=/dev/mmcblk0p2 rootwait rootfstype=ext3 ro'
      boot
      EOF
      ) > serial-boot.cmd
-     # mkimage -A arm -O linux -T script -C none -a 0 -e 0 -n "Poky Minimal" -d ./serial-boot.cmd ./user.scr
-     # cp user.scr /media/boot
+     # mkimage -A arm -O linux -T script -C none -a 0 -e 0 -n "Poky Minimal" -d ./serial-boot.cmd ./boot.scr
+     # cp boot.scr /media/boot
 
    6. Unmount the SD partitions and boot the Beagleboard
+
+Note: As of the 2.6.37 linux-yocto kernel recipe, the Beagleboard uses the
+      OMAP_SERIAL device (ttyO2). If you are using an older kernel, such as the
+      2.6.35 linux-yocto-stable, be sure replace ttyO2 with ttyS2 above. You
+      should also override the machine SERIAL_CONSOLE in your local.conf in
+      order to setup the getty on the serial line:
+
+      SERIAL_CONSOLE_beagleboard = "115200 ttyS2"
-- 
1.7.0.4


