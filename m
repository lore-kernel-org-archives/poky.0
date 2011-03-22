Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id AD7924C804D9
	for <poky@yoctoproject.org>; Tue, 22 Mar 2011 12:25:38 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 22 Mar 2011 10:25:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,225,1299484800"; d="scan'208";a="406583674"
Received: from unknown (HELO helios) ([10.255.12.173])
	by azsmga001.ch.intel.com with SMTP; 22 Mar 2011 10:25:36 -0700
Received: by helios (sSMTP sendmail emulation); Tue, 22 Mar 2011 17:25:32 +0000
Message-Id: <410264264fc326b6ad7a9782763fba858bb5cd52.1300814586.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1300814586.git.paul.eggleton@linux.intel.com>
References: <cover.1300814586.git.paul.eggleton@linux.intel.com>
Old-Date: Tue, 22 Mar 2011 17:14:26 +0000
Date: Tue, 22 Mar 2011 17:25:32 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 1/1] README.hardware: add Freescale MPC8315E-RDB; other minor tweaks
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
X-List-Received-Date: Tue, 22 Mar 2011 17:25:38 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

* Add Freescale MPC8315E-RDB instructions (based on Wind River README passed
  on by Bruce Ashfield)
* Add short info paragraph for RouterStation Pro (to match BeagleBoard)
* Add example for connecting to RouterStation Pro serial console with picocom

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 README.hardware |   70 ++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 files changed, 69 insertions(+), 1 deletions(-)

diff --git a/README.hardware b/README.hardware
index c68ad43..79607f7 100644
--- a/README.hardware
+++ b/README.hardware
@@ -219,9 +219,75 @@ Note: As of the 2.6.37 linux-yocto kernel recipe, the Beagleboard uses the
       SERIAL_CONSOLE_beagleboard = "115200 ttyS2"
 
 
+Freescale MPC8315E-RDB (mpc8315e-rdb)
+=====================================
+
+The MPC8315 PowerPC reference platform (MPC8315E-RDB) is aimed at hardware and
+software development of network attached storage (NAS) and digital media server
+applications. The MPC8315E-RDB features the PowerQUICC II Pro processor, which
+includes a built-in security accelerator.
+
+Setup instructions
+------------------
+
+You will need the following:
+* nfs root setup on your workstation
+* tftp server installed on your workstation
+
+The original U-Boot image on board can't boot kernel versions 2.6.34 or later
+successfully, so the U-Boot image should be upgraded to the latest U-Boot.
+
+ 1. First build a new U-Boot image for mpc8315e-rdb, u-boot.bin.mpc8315erdb,
+    then make it available on your tftp server. To compile the new u-boot:
+
+ $ git clone git://git.denx.de/u-boot.git
+ $ cd u-boot
+ $ git checkout -b v2010.09-mpc8315erdb v2010.09
+ $ make ARCH=powerpc CROSS_COMPILE=<powerpc cross compiler path> MPC8315ERDB_config
+ $ make ARCH=powerpc CROSS_COMPILE=<powerpc cross compiler path> all
+ $ cp u-boot.bin u-boot.bin.mpc8315erdb
+
+ 2. Set up the environment in U-Boot:
+
+ =>setenv ipaddr <board ip>
+ =>setenv serverip <tftp server ip>
+
+ 3. Flash the new U-Boot image:
+
+ =>tftp 200000 u-boot.bin.mpc8315erdb
+ =>protect off all
+ =>erase fe000000 +60000
+ =>cp.b 200000 fe000000 60000
+
+Then the kernel can be booted successfully:
+
+ 1. Get the kernel (uImage.mpc8315erdb) and dtb (mpc8315erdb.dtb) files from
+    the Poky build tmp/deploy directory, and make them available on your tftp
+    server.
+
+ 2. Set up the environment in U-Boot:
+
+ =>setenv bootargs root=/dev/nfs rw nfsroot=<nfsroot ip>:<rootfs path> ip=<board ip>:<server ip>:<gateway ip>:255.255.255.0:mpc8315e:eth0:off console=ttyS0,115200
+
+ 3. Download kernel and dtb to boot kernel.
+
+ =>tftp 800000 uImage.mpc8315erdb
+ =>tftp 780000 mpc8315erdb.dtb
+ =>bootm 800000 - 780000
+
+
 Ubiquiti Networks RouterStation Pro (routerstationpro)
 ======================================================
 
+The RouterStation Pro is an Atheros AR7161 MIPS-based board. Geared towards
+networking applications, it has all of the usual features as well as three
+type IIIA mini-PCI slots and an on-board 3-port 10/100/1000 Ethernet switch,
+in addition to the 10/100/1000 Ethernet WAN port which supports
+Power-over-Ethernet.
+
+Setup instructions
+------------------
+
 You will need the following:
 * A serial cable - female to female (or female to male + gender changer)
   NOTE: cable must be straight through, *not* a null modem cable.
@@ -271,7 +337,9 @@ tmp/deploy/images/poky-image-XXXX.tar.bz2 into it (preserving permissions).
 
 6) Connect the board's serial port to your workstation and then start up
 your favourite serial terminal so that you will be able to interact with
-the serial console. (If you don't have a favourite, picocom is suggested.)
+the serial console. If you don't have a favourite, picocom is suggested:
+
+  $ picocom /dev/ttyUSB0 -b 115200
 
 7) Connect the network into eth0 (the one that is NOT the 3 port switch). If
 you are using power-over-ethernet then the board will power up at this point.
-- 
1.7.1


