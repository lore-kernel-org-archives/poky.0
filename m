Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CE6AE014CC
	for <poky@yoctoproject.org>; Tue,  9 Apr 2013 07:22:07 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 Apr 2013 07:22:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,439,1363158000"; d="scan'208";a="225057657"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.13.195])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Apr 2013 07:22:06 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue,  9 Apr 2013 15:22:00 +0100
Message-Id: <a3d069841016877f0843620a139f8b440e3a9cf0.1365517250.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1365517250.git.paul.eggleton@linux.intel.com>
References: <cover.1365517250.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1365517250.git.paul.eggleton@linux.intel.com>
References: <cover.1365517250.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 3/3] README.hardware: bring up-to-date
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
X-List-Received-Date: Tue, 09 Apr 2013 14:22:07 -0000

* Fix Yocto Project documentation URL
* Indicate physical reference hardware support comes from meta-yocto-bsp
* Remove/replace references to Poky where appropriate

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 README.hardware |   51 +++++++++++++++++++++++++++++----------------------
 1 file changed, 29 insertions(+), 22 deletions(-)

diff --git a/README.hardware b/README.hardware
index d48c953..ad2fe89 100644
--- a/README.hardware
+++ b/README.hardware
@@ -1,28 +1,34 @@
                           Poky Hardware README
                           ====================
 
-This file gives details about using Poky with different hardware reference
-boards and consumer devices. A full list of target machines can be found by
-looking in the meta/conf/machine/ directory. If in doubt about using Poky with
-your hardware, consult the documentation for your board/device.
+This file gives details about using Poky with the reference machines
+supported out of the box. A full list of supported reference target machines
+can be found by looking in the following directories:
+
+   meta/conf/machine/
+   meta-yocto-bsp/conf/machine/
+
+If you are in doubt about using Poky/OpenEmbedded with your hardware, consult
+the documentation for your board/device.
 
 Support for additional devices is normally added by creating BSP layers - for
 more information please see the Yocto Board Support Package (BSP) Developer's
 Guide - documentation source is in documentation/bspguide or download the PDF
 from:
 
-   http://yoctoproject.org/community/documentation
+   http://yoctoproject.org/documentation
 
-Support for machines other than QEMU may be moved out to separate BSP layers in
-future versions.
+Support for physical reference hardware has now been split out into a
+meta-yocto-bsp layer which can be removed separately from other layers if not
+needed.
 
 
 QEMU Emulation Targets
 ======================
 
-To simplify development Poky supports building images to work with the QEMU
-emulator in system emulation mode. Several architectures are currently
-supported:
+To simplify development, the build system supports building images to
+work with the QEMU emulator in system emulation mode. Several architectures
+are currently supported:
 
   * ARM (qemuarm)
   * x86 (qemux86)
@@ -30,32 +36,33 @@ supported:
   * PowerPC (qemuppc)
   * MIPS (qemumips)
 
-Use of the QEMU images is covered in the Poky Reference Manual. The Poky
-MACHINE setting corresponding to the target is given in brackets.
+Use of the QEMU images is covered in the Yocto Project Reference Manual.
+The appropriate MACHINE variable value corresponding to the target is given
+in brackets.
 
 
 Hardware Reference Boards
 =========================
 
-The following boards are supported by Poky's core layer:
+The following boards are supported by the meta-yocto-bsp layer:
 
   * Texas Instruments Beagleboard (beagleboard)
   * Freescale MPC8315E-RDB (mpc8315e-rdb)
   * Ubiquiti Networks RouterStation Pro (routerstationpro)
 
-For more information see the board's section below. The Poky MACHINE setting
-corresponding to the board is given in brackets.
+For more information see the board's section below. The appropriate MACHINE
+variable value corresponding to the board is given in brackets.
 
 
 Consumer Devices
 ================
 
-The following consumer devices are supported by Poky's core layer:
+The following consumer devices are supported by the meta-yocto-bsp layer:
 
   * Intel Atom based PCs and devices (atom-pc)
 
-For more information see the device's section below. The Poky MACHINE setting
-corresponding to the device is given in brackets.
+For more information see the device's section below. The appropriate MACHINE
+variable value corresponding to the device is given in brackets.
 
 
 
@@ -78,7 +85,7 @@ supports ethernet, wifi, sound, and i915 graphics by default in addition to
 common PC input devices, busses, and so on.
 
 Depending on the device, it can boot from a traditional hard-disk, a USB device,
-or over the network. Writing poky generated images to physical media is
+or over the network. Writing generated images to physical media is
 straightforward with a caveat for USB devices. The following examples assume the
 target boot device is /dev/sdb, be sure to verify this and use the correct
 device as the following commands are run as root and are not reversable.
@@ -131,7 +138,7 @@ USB Device:
      device stops flashing, remove and reinsert the device to allow the
      kernel to detect the new partition layout.
 
-     c. Copy the contents of the poky image to the USB-ZIP mode device:
+     c. Copy the contents of the image to the USB-ZIP mode device:
 
      # mkdir /tmp/image
      # mkdir /tmp/usbkey
@@ -281,8 +288,8 @@ anything here.
 Load the kernel and dtb (device tree blob), and boot the system as follows:
 
  1. Get the kernel (uImage-mpc8315e-rdb.bin) and dtb (uImage-mpc8315e-rdb.dtb)
-    files from the Poky build tmp/deploy directory, and make them available on
-    your TFTP server.
+    files from the tmp/deploy directory, and make them available on your TFTP
+    server.
 
  2. Connect the board's first serial port to your workstation and then start up
     your favourite serial terminal so that you will be able to interact with
-- 
1.7.10.4


