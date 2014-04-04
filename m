Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50AF0E00BF2
	for <poky@yoctoproject.org>; Fri,  4 Apr 2014 07:26:49 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Apr 2014 07:26:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,795,1389772800"; d="scan'208";a="514498859"
Received: from davidllo-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.87])
	by fmsmga002.fm.intel.com with ESMTP; 04 Apr 2014 07:26:39 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri,  4 Apr 2014 15:26:26 +0100
Message-Id: <400510bfcac5e2c89f44f27c0508c4eede28861e.1396621532.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.9.0
In-Reply-To: <cover.1396621532.git.paul.eggleton@linux.intel.com>
References: <cover.1396621532.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1396621532.git.paul.eggleton@linux.intel.com>
References: <cover.1396621532.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 4/4] README.hardware: tweak edgerouter instructions
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
X-List-Received-Date: Fri, 04 Apr 2014 14:26:49 -0000

* You need a rollover cable for the serial port
* Some minor grammar / typo / formatting fixes

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 README.hardware | 32 ++++++++++++++++++--------------
 1 file changed, 18 insertions(+), 14 deletions(-)

diff --git a/README.hardware b/README.hardware
index 3cdb7a2..7d2b0f8 100644
--- a/README.hardware
+++ b/README.hardware
@@ -240,11 +240,12 @@ Load the kernel and dtb (device tree blob), and boot the system as follows:
  => bootm 1000000 - 2000000
 
 
-EdgeRouter Lite(edgerouter)
-=====================================
+Ubiquiti Networks EdgeRouter Lite (edgerouter)
+==============================================
 
-The EdgeRouter Lite is part of the EdgeMax series. It is an MIPS64 router(Cavium Octeon)
-with 512MB of RAM, which uses a USB pendrive for storage.
+The EdgeRouter Lite is part of the EdgeMax series. It is a MIPS64 router
+(based on the Cavium Octeon processor) with 512MB of RAM, which uses an
+internal USB pendrive for storage.
 
 Setup instructions
 ------------------
@@ -252,8 +253,8 @@ Setup instructions
 You will need the following:
 * NFS root setup on your workstation
 * TFTP server installed on your workstation
-* Straight-thru 9-conductor serial cable (DB9, M/F) connected from your 
-  PC to UART1
+* RJ45 -> serial ("rollover") cable connected from your PC to the CONSOLE
+  port on the board
 * Ethernet connected to the first ethernet port on the board
 
 --- Preparation ---
@@ -290,16 +291,17 @@ Load the kernel, and boot the system as follows:
 
 --- Booting from USB root ---
 
-NOTE: Since the USB disk is inside the edgerouter box, its inconvenient for us to
-      plug and unplug the USB disk. So in the following instructions I assume that
-	  you already boot the box from NFS. Additionally, since vmlinux is not installed
-	  to core-minal-image-xxx by default, so its neccessary for us to copy it to USB
-	  disk.
+NOTE: Since the USB disk is inside the edgerouter box, it's inconvenient to
+      plug and unplug the USB disk. So in the following instructions it is
+      assumed that you have already booted the device from NFS. Additionally,
+      since vmlinux is not contained in core-image-xxx by default, it is
+      necessary to copy it to the USB disk separately.
 
 Load the kernel, and boot the system as follows:
- 1. Booting from NFS root
 
- 2. Mount usb disk partition 2 and then extract the contens of
+ 1. Boot from NFS root
+
+ 2. Mount the USB disk partition 2 and then extract the contents of
     tmp/deploy/core-image-XXXX.tar.bz2 into it.
 
     Before starting, copy core-image-minimal-xxx.tar.bz2 and vmlinux into
@@ -314,10 +316,12 @@ Load the kernel, and boot the system as follows:
     # reboot
 
  3. Reboot the board and press a key on the terminal when prompted to get to the U-Boot
-    command line
+    command line:
+
     # reboot
 
  4. Load the kernel and boot:
 
  => ext2load usb 0:2 $loadaddr boot/vmlinux
  => bootoctlinux $loadaddr coremask=0x3 root=/dev/sda2 rw rootwait mtdparts=phys_mapped_flash:512k(boot0),512k(boot1),64k@3072k(eeprom)
+
-- 
1.9.0


