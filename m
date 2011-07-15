Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 543BE4C800C1
	for <poky@yoctoproject.org>; Fri, 15 Jul 2011 10:12:08 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Jul 2011 08:12:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,536,1304319600"; d="scan'208";a="28104732"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.17.182])
	by orsmga001.jf.intel.com with ESMTP; 15 Jul 2011 08:12:07 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 15 Jul 2011 16:12:04 +0100
Message-Id: <cda7004942b3590fefb021f66a12c4333e1a6a84.1310741956.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1310741956.git.paul.eggleton@linux.intel.com>
References: <cover.1310741956.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1310741956.git.paul.eggleton@linux.intel.com>
References: <cover.1310741956.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 1/2] linux-yocto: fix ethernet at boot time on MPC8315E-RDB
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
X-List-Received-Date: Fri, 15 Jul 2011 15:12:08 -0000

The default MAC address in the device tree source for the two ethernet
ports on the MPC8315E-RDB is 00:00:00:00:00:00, however with the version of
u-boot supplied from the factory, the value in the device tree blob must
match the hardware or configuring the network at boot time will fail, and
thus booting from an NFS root will not work.

Newer versions of U-Boot support passing MAC address values through and
would not need this fix; however in the absence of a safe established
procedure for updating U-Boot on these boards this workaround will suffice
(and won't need to be backed out when we are able to upgrade U-Boot).

Addresses [YOCTO #1227]

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../linux/linux-yocto/mpc8315e-rdb-dts.patch       |   27 ++++++++++++++++++++
 .../linux/linux-yocto_2.6.37.bbappend              |    4 +++
 2 files changed, 31 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto/mpc8315e-rdb-dts.patch

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto/mpc8315e-rdb-dts.patch b/meta-yocto/recipes-kernel/linux/linux-yocto/mpc8315e-rdb-dts.patch
new file mode 100644
index 0000000..000fbb8
--- /dev/null
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto/mpc8315e-rdb-dts.patch
@@ -0,0 +1,27 @@
+Set the default MAC addresses for the two ethernet ports on the
+MPC8315E-RDB to the factory default values, allowing ethernet to come up
+correctly during boot without upgrading U-Boot.
+
+Upstream-status: Pending
+Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
+
+--- linux/arch/powerpc/boot/dts/mpc8315erdb.dts
++++ linux/arch/powerpc/boot/dts/mpc8315erdb.dts
+@@ -205,7 +205,7 @@
+ 			compatible = "gianfar";
+ 			reg = <0x24000 0x1000>;
+ 			ranges = <0x0 0x24000 0x1000>;
+-			local-mac-address = [ 00 00 00 00 00 00 ];
++			local-mac-address = [ 04 00 00 00 00 0A ];
+ 			interrupts = <32 0x8 33 0x8 34 0x8>;
+ 			interrupt-parent = <&ipic>;
+ 			tbi-handle = <&tbi0>;
+@@ -248,7 +248,7 @@
+ 			compatible = "gianfar";
+ 			reg = <0x25000 0x1000>;
+ 			ranges = <0x0 0x25000 0x1000>;
+-			local-mac-address = [ 00 00 00 00 00 00 ];
++			local-mac-address = [ 04 00 00 00 00 0B ];
+ 			interrupts = <35 0x8 36 0x8 37 0x8>;
+ 			interrupt-parent = <&ipic>;
+ 			tbi-handle = <&tbi1>;
diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
index b12dcef..445ab92 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
@@ -13,3 +13,7 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
 COMPATIBLE_MACHINE_beagleboard = "beagleboard"
 COMPATIBLE_MACHINE_atom-pc = "atom-pc"
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+SRC_URI_append_mpc8315e-rdb = " file://mpc8315e-rdb-dts.patch"
+
-- 
1.7.4.1


