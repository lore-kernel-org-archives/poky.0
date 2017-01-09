Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14095E00826; Mon,  9 Jan 2017 12:39:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78BA7E007C2
	for <poky@yoctoproject.org>; Mon,  9 Jan 2017 12:39:14 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 09 Jan 2017 12:39:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,341,1477983600"; d="scan'208";a="1081052065"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga001.jf.intel.com with ESMTP; 09 Jan 2017 12:39:13 -0800
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.38])
	by linux.intel.com (Postfix) with ESMTP id 914B36A4080;
	Mon,  9 Jan 2017 12:38:19 -0800 (PST)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon,  9 Jan 2017 22:16:53 +0200
Message-Id: <1483993013-18761-1-git-send-email-ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] README.hardware: update MPC8315E-RDB section
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 09 Jan 2017 20:39:15 -0000

Added instructions to flash and boot device from USB stick.

[YOCTO #8719]

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 README.hardware | 69 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/README.hardware b/README.hardware
index 562f196..e6ccf78 100644
--- a/README.hardware
+++ b/README.hardware
@@ -203,6 +203,75 @@ linux/arch/powerpc/boot/dts/mpc8315erdb.dts within the kernel source). If
 you have left them at the factory default then you shouldn't need to do
 anything here.
 
+Note: To boot from USB disk you need u-boot that supports 'ext2load usb'
+command. You need to setup TFTP server, load u-boot from there and
+flash it to NOR flash.
+
+Beware! Flashing bootloader is potentially dangerous operation that can
+brick your device if done incorrectly. Please, make sure you understand
+what below commands mean before executing them.
+
+Load the new u-boot.bin from TFTP server to memory address 200000
+=> tftp 200000 u-boot.bin
+
+Disable flash protection
+=> protect off all
+
+Erase the old u-boot from fe000000 to fe06ffff in NOR flash.
+The size is 0x70000 (458752 bytes)
+=> erase fe000000 fe06ffff
+
+Copy the new u-boot from address 200000 to fe000000
+the size is 0x70000. It has to be greater or equal to u-boot.bin size
+=> cp.b 200000 fe000000 70000
+
+Enable flash protection again
+=> protect on all
+
+Reset the board
+=> reset
+
+--- Booting from USB disk ---
+
+ 1. Flash partitioned image to the USB disk
+
+    # dd if=core-image-minimal-mpc8315e-rdb.wic of=/dev/sdb
+
+ 2. Plug USB disk into the MPC8315 board
+
+ 3. Connect the board's first serial port to your workstation and then start up
+    your favourite serial terminal so that you will be able to interact with
+    the serial console. If you don't have a favourite, picocom is suggested:
+
+  $ picocom /dev/ttyUSB0 -b 115200
+
+ 4. Power up or reset the board and press a key on the terminal when prompted
+    to get to the U-Boot command line
+
+ 5. Optional. Load the u-boot.bin from the USB disk:
+
+ => usb start
+ => ext2load usb 0:1 200000 u-boot.bin
+
+    and flash it to NOR flash as described above.
+
+ 6. Set fdtaddr and loadaddr. This is not necessary if you set them before.
+
+ => setenv fdtaddr a00000
+ => setenv loadaddr 1000000
+
+ 7. Load the kernel and dtb from first partition of the USB disk:
+
+ => usb start
+ => ext2load usb 0:1 $loadaddr uImage
+ => ext2load usb 0:1 $fdtaddr dtb
+
+ 8. Set bootargs and boot up the device
+
+ => setenv bootargs root=/dev/sdb2 rw rootwait console=ttyS0,115200
+ => bootm $loadaddr - $fdtaddr
+
+
 --- Booting from NFS root ---
 
 Load the kernel and dtb (device tree blob), and boot the system as follows:
-- 
2.1.4


