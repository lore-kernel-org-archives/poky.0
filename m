Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3654E4C80A78
	for <poky@yoctoproject.org>; Fri, 15 Jul 2011 10:12:09 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Jul 2011 08:12:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,536,1304319600"; d="scan'208";a="28104735"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.17.182])
	by orsmga001.jf.intel.com with ESMTP; 15 Jul 2011 08:12:08 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 15 Jul 2011 16:12:05 +0100
Message-Id: <73c8a10546d1fda3359c6090e1a87c7dd0d8eeaa.1310741956.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1310741956.git.paul.eggleton@linux.intel.com>
References: <cover.1310741956.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1310741956.git.paul.eggleton@linux.intel.com>
References: <cover.1310741956.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 2/2] README.hardware: update MPC8315E-RDB instructions
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
X-List-Received-Date: Fri, 15 Jul 2011 15:12:09 -0000

Update the instructions for setting up the MPC8315E-RDB so that they are
clearer, use correct filenames, match the other board instructions more
closely, and include a note about dealing with non-default MAC addresses.
Additionally, add a note about ordering MPC8315E-RDBA.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 README.hardware |   55 +++++++++++++++++++++++++++++++++++++++++--------------
 1 files changed, 41 insertions(+), 14 deletions(-)

diff --git a/README.hardware b/README.hardware
index 3602957..d4f7b47 100644
--- a/README.hardware
+++ b/README.hardware
@@ -239,30 +239,57 @@ software development of network attached storage (NAS) and digital media server
 applications. The MPC8315E-RDB features the PowerQUICC II Pro processor, which
 includes a built-in security accelerator.
 
+(Note: you may find it easier to order MPC8315E-RDBA; this appears to be the
+same board in an enclosure with accessories. In any case it is fully
+compatible with the instructions given here.)
+
 Setup instructions
 ------------------
 
 You will need the following:
-* nfs root setup on your workstation
-* tftp server installed on your workstation
+* NFS root setup on your workstation
+* TFTP server installed on your workstation
+* Null modem cable connected from your workstation to the first serial port
+  on the board
+* Ethernet connected to the first ethernet port on the board
+
+--- Preparation ---
+
+Note: if you have altered your board's ethernet MAC address(es) from the
+defaults, or you need to do so because you want multiple boards on the same
+network, then you will need to change the values in the dts file (patch
+linux/arch/powerpc/boot/dts/mpc8315erdb.dts within the kernel source). If
+you have left them at the factory default then you shouldn't need to do
+anything here.
 
-Load the kernel and boot it as follows:
+--- Booting from NFS root ---
+
+Load the kernel and dtb (device tree blob), and boot the system as follows:
+
+ 1. Get the kernel (uImage-mpc8315e-rdb.bin) and dtb (uImage-mpc8315e-rdb.dtb)
+    files from the Poky build tmp/deploy directory, and make them available on
+    your TFTP server.
+
+ 2. Connect the board's first serial port to your workstation and then start up
+    your favourite serial terminal so that you will be able to interact with
+    the serial console. If you don't have a favourite, picocom is suggested:
+
+  $ picocom /dev/ttyUSB0 -b 115200
 
- 1. Get the kernel (uImage.mpc8315erdb) and dtb (mpc8315erdb.dtb) files from
-    the Poky build tmp/deploy directory, and make them available on your tftp
-    server.
+ 3. Power up or reset the board and press a key on the terminal when prompted
+    to get to the U-Boot command line
 
- 2. Set up the environment in U-Boot:
+ 4. Set up the environment in U-Boot:
 
- =>setenv ipaddr <board ip>
- =>setenv serverip <tftp server ip>
- =>setenv bootargs root=/dev/nfs rw nfsroot=<nfsroot ip>:<rootfs path> ip=<board ip>:<server ip>:<gateway ip>:255.255.255.0:mpc8315e:eth0:off console=ttyS0,115200
+ => setenv ipaddr <board ip>
+ => setenv serverip <tftp server ip>
+ => setenv bootargs root=/dev/nfs rw nfsroot=<nfsroot ip>:<rootfs path> ip=<board ip>:<server ip>:<gateway ip>:255.255.255.0:mpc8315e:eth0:off console=ttyS0,115200
 
- 3. Download kernel and dtb to boot kernel.
+ 5. Download the kernel and dtb, and boot:
 
- =>tftp 800000 uImage.mpc8315erdb
- =>tftp 780000 mpc8315erdb.dtb
- =>bootm 800000 - 780000
+ => tftp 800000 uImage-mpc8315e-rdb.bin
+ => tftp 780000 uImage-mpc8315e-rdb.dtb
+ => bootm 800000 - 780000
 
 
 Ubiquiti Networks RouterStation Pro (routerstationpro)
-- 
1.7.4.1


