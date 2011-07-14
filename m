Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7B6294C800A1
	for <poky@yoctoproject.org>; Thu, 14 Jul 2011 10:13:07 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 Jul 2011 08:13:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,529,1304319600"; d="scan'208";a="27946056"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.17.207])
	by fmsmga002.fm.intel.com with ESMTP; 14 Jul 2011 08:13:06 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 14 Jul 2011 16:13:02 +0100
Message-Id: <ba97d44dfd74473c3b790c0dedcaf362a4acf844.1310656158.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1310656158.git.paul.eggleton@linux.intel.com>
References: <cover.1310656158.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1310656158.git.paul.eggleton@linux.intel.com>
References: <cover.1310656158.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 1/2] linux-yocto: allow configuration of MAC addresses for mpc8315e-rdb
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
X-List-Received-Date: Thu, 14 Jul 2011 15:13:07 -0000

Add MPC8315ERDB_MAC0 and MPC8315ERDB_MAC1 variables to allow specifying
the MAC addresses to be used in the dtb. The default is 00:00:00:00:00:00,
however with the version of u-boot supplied from the factory, these must
match the hardware or configuring the network at boot time will fail, and
thus booting from an NFS root will not work.

Newer versions of u-boot support passing MAC address values through and
would not need this fix; however in the absence of a safe established
procedure for updating u-boot on these boards this workaround will have
to suffice.

Addresses [YOCTO #1227]

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../linux/linux-yocto/mpc8315e-rdb-dts.patch       |   28 ++++++++++++++++++++
 .../linux/linux-yocto_2.6.37.bbappend              |   16 +++++++++++
 2 files changed, 44 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto/mpc8315e-rdb-dts.patch

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto/mpc8315e-rdb-dts.patch b/meta-yocto/recipes-kernel/linux/linux-yocto/mpc8315e-rdb-dts.patch
new file mode 100644
index 0000000..d575d01
--- /dev/null
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto/mpc8315e-rdb-dts.patch
@@ -0,0 +1,28 @@
+Enable configuration of the MAC addresses for the two ethernet ports on
+the MPC8315E-RDB. This modifies the dts file, do_configure will use
+sed to substitute the appropriate values in, and they will be built into
+the dtb file.
+
+Upstream-status: Inappropriate [configuration]
+Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
+
+--- linux/arch/powerpc/boot/dts/mpc8315erdb.dts
++++ linux/arch/powerpc/boot/dts/mpc8315erdb.dts
+@@ -205,7 +205,7 @@
+ 			compatible = "gianfar";
+ 			reg = <0x24000 0x1000>;
+ 			ranges = <0x0 0x24000 0x1000>;
+-			local-mac-address = [ 00 00 00 00 00 00 ];
++			local-mac-address = [ SED_MAC_ADDRESS_0 ];
+ 			interrupts = <32 0x8 33 0x8 34 0x8>;
+ 			interrupt-parent = <&ipic>;
+ 			tbi-handle = <&tbi0>;
+@@ -248,7 +248,7 @@
+ 			compatible = "gianfar";
+ 			reg = <0x25000 0x1000>;
+ 			ranges = <0x0 0x25000 0x1000>;
+-			local-mac-address = [ 00 00 00 00 00 00 ];
++			local-mac-address = [ SED_MAC_ADDRESS_1 ];
+ 			interrupts = <35 0x8 36 0x8 37 0x8>;
+ 			interrupt-parent = <&ipic>;
+ 			tbi-handle = <&tbi1>;
diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
index b12dcef..a1c50a2 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
@@ -13,3 +13,19 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
 COMPATIBLE_MACHINE_beagleboard = "beagleboard"
 COMPATIBLE_MACHINE_atom-pc = "atom-pc"
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+SRC_URI_append_mpc8315e-rdb = " file://mpc8315e-rdb-dts.patch"
+
+do_configure_prepend_mpc8315e-rdb() {
+	if [ -z "${MPC8315ERDB_MAC0}" -o -z "${MPC8315ERDB_MAC1}" ] ; then
+		echo "Please set MPC8315ERDB_MAC0 and MPC8315ERDB_MAC1 in your local.conf (based on"
+		echo "the MAC addresses from your hardware, you can use the bdinfo command in u-boot)"
+		exit 1
+	fi
+	MAC0=`echo ${MPC8315ERDB_MAC0} | sed 's/:/ /g'`
+	MAC1=`echo ${MPC8315ERDB_MAC1} | sed 's/:/ /g'`
+	sed -i -e "s/SED_MAC_ADDRESS_0/$MAC0/g" ${WORKDIR}/linux/arch/powerpc/boot/dts/mpc8315erdb.dts
+	sed -i -e "s/SED_MAC_ADDRESS_1/$MAC1/g" ${WORKDIR}/linux/arch/powerpc/boot/dts/mpc8315erdb.dts
+}
+
-- 
1.7.4.1


