Return-Path: <cristian.bercaru@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06DD2E0097F; Fri,  4 Dec 2015 09:29:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 504 seconds by postgrey-1.32 at yocto-www;
	Fri, 04 Dec 2015 09:29:09 PST
Received: from laptopcb.windriver.com (unknown [86.125.12.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFC36E0090E
	for <poky@yoctoproject.org>; Fri,  4 Dec 2015 09:29:09 -0800 (PST)
Received: by laptopcb.windriver.com (Postfix, from userid 1000)
	id 6A2321C60069; Fri,  4 Dec 2015 19:20:42 +0200 (EET)
From: Cristian Bercaru <cristian.bercaru@windriver.com>
To: poky@yoctoproject.org
Date: Fri,  4 Dec 2015 19:20:42 +0200
Message-Id: <4db530774858b05a405f392b34ab11345871fbb9.1449248342.git.cristian.bercaru@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1449248342.git.cristian.bercaru@windriver.com>
References: <cover.1449248342.git.cristian.bercaru@windriver.com>
In-Reply-To: <cover.1449248342.git.cristian.bercaru@windriver.com>
References: <cover.1449248342.git.cristian.bercaru@windriver.com>
Cc: Daniel Dragomir <daniel.dragomir@windriver.com>
Subject: [PATCH] add tunings for 32-bit ARMv8-a
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
X-List-Received-Date: Fri, 04 Dec 2015 17:29:15 -0000

This patch adds tunes for 32-bit armv8 platforms. The used can select
the vector floating-point instruction set: vfpv3, vfpv4 or fp-armv8
and the Neon, crc and crypto extensions.

Signed-off-by: Cristian Bercaru <cristian.bercaru@windriver.com>
---
 meta/conf/machine/include/arm/arch-armv7a.inc      |    1 -
 meta/conf/machine/include/arm/arch-armv8a.inc      |   65 ++++++++++++++++++++
 meta/conf/machine/include/arm/feature-arm-neon.inc |    3 -
 meta/conf/machine/include/arm/feature-arm-vfp.inc  |   59 ++++++++++++++----
 4 files changed, 112 insertions(+), 16 deletions(-)
 create mode 100644 meta/conf/machine/include/arm/arch-armv8a.inc
 delete mode 100644 meta/conf/machine/include/arm/feature-arm-neon.inc

diff --git a/meta/conf/machine/include/arm/arch-armv7a.inc b/meta/conf/machine/include/arm/arch-armv7a.inc
index d3b6f64..ac85fda 100644
--- a/meta/conf/machine/include/arm/arch-armv7a.inc
+++ b/meta/conf/machine/include/arm/arch-armv7a.inc
@@ -6,7 +6,6 @@ TUNE_CCARGS .= "${@bb.utils.contains("TUNE_FEATURES", "armv7a", " -march=armv7-a
 MACHINEOVERRIDES =. "${@bb.utils.contains("TUNE_FEATURES", "armv7a", "armv7a:", "" ,d)}"
 
 require conf/machine/include/arm/arch-armv6.inc
-require conf/machine/include/arm/feature-arm-neon.inc
 
 # Little Endian base configs
 AVAILTUNES += "armv7a armv7at armv7a-vfpv3d16 armv7at-vfpv3d16 armv7a-vfpv3 armv7at-vfpv3 armv7a-neon armv7at-neon"
diff --git a/meta/conf/machine/include/arm/arch-armv8a.inc b/meta/conf/machine/include/arm/arch-armv8a.inc
new file mode 100644
index 0000000..1b062b8
--- /dev/null
+++ b/meta/conf/machine/include/arm/arch-armv8a.inc
@@ -0,0 +1,65 @@
+DEFAULTTUNE ?= "armv8a"
+
+TUNEVALID[armv8a] = "Enable instructions for ARMv8-a"
+TUNEVALID[crc] = "Enable CRC instrucitons for ARMv8-a"
+TUNECONFLICTS[armv8a] = "armv4 armv5 armv6 armv7 armv7a"
+TUNE_CCARGS .= "${@bb.utils.contains("TUNE_FEATURES", "armv8a", " -march=armv8-a", "", d)}"
+TUNE_CCARGS .= "${@bb.utils.contains("TUNE_FEATURES", "crc", "+crc", "", d)}"
+MACHINEOVERRIDES =. "${@bb.utils.contains("TUNE_FEATURES", "armv8a", "armv8a:", "" ,d)}"
+
+require conf/machine/include/arm/arch-armv7a.inc
+
+# Little Endian base configs
+AVAILTUNES += "armv8a armv8a-vfpv3 armv8a-neon armv8a-vfpv4 armv8a-neon-vfpv4 armv8a-fp-armv8 armv8a-neon-fp-armv8 armv8a-crypto-neon-fp-armv8"
+ARMPKGARCH_tune-armv8a ?= "armv8a"
+ARMPKGARCH_tune-armv8a-vfpv3 ?= "armv8a"
+ARMPKGARCH_tune-armv8a-neon ?= "armv8a"
+ARMPKGARCH_tune-armv8a-vfpv4 ?= "armv8a"
+ARMPKGARCH_tune-armv8a-neon-vfpv4 ?= "armv8a"
+ARMPKGARCH_tune-armv8a-fp-armv8 ?= "armv8a"
+ARMPKGARCH_tune-armv8a-neon-fp-armv8 ?= "armv8a"
+ARMPKGARCH_tune-armv8a-crypto-neon-fp-armv8 ?= "armv8a"
+TUNE_FEATURES_tune-armv8a ?= "arm armv8a vfp"
+TUNE_FEATURES_tune-armv8a-vfpv3 ?= "${TUNE_FEATURES_tune-armv8a} vfpv3"
+TUNE_FEATURES_tune-armv8a-neon ?= "${TUNE_FEATURES_tune-armv8a} neon"
+TUNE_FEATURES_tune-armv8a-vfpv4 ?= "${TUNE_FEATURES_tune-armv8a} vfpv4"
+TUNE_FEATURES_tune-armv8a-neon-vfpv4 ?= "${TUNE_FEATURES_tune-armv8a} neon vfpv4"
+TUNE_FEATURES_tune-armv8a-fp-armv8 ?= "${TUNE_FEATURES_tune-armv8a} fp-armv8"
+TUNE_FEATURES_tune-armv8a-neon-fp-armv8 ?= "${TUNE_FEATURES_tune-armv8a} neon fp-armv8"
+TUNE_FEATURES_tune-armv8a-crypto-neon-fp-armv8 ?= "${TUNE_FEATURES_tune-armv8a} crypto neon fp-armv8"
+PACKAGE_EXTRA_ARCHS_tune-armv8a = "${PACKAGE_EXTRA_ARCHS_tune-armv7a} armv8a armv8a-vfp"
+PACKAGE_EXTRA_ARCHS_tune-armv8a-vfpv3 = "${PACKAGE_EXTRA_ARCHS_tune-armv8a} armv8a-vfp-vfpv3"
+PACKAGE_EXTRA_ARCHS_tune-armv8a-neon = "${PACKAGE_EXTRA_ARCHS_tune-armv8a-vfpv3} armv8a-vfp-neon"
+PACKAGE_EXTRA_ARCHS_tune-armv8a-vfpv4 = "${PACKAGE_EXTRA_ARCHS_tune-armv8a-vfpv3} armv8a-vfp-vfpv4"
+PACKAGE_EXTRA_ARCHS_tune-armv8a-neon-vfpv4 = "${PACKAGE_EXTRA_ARCHS_tune-armv8a-vfpv4} armv8a-vfp-neon armv8a-vfp-neon-vfpv4"
+PACKAGE_EXTRA_ARCHS_tune-armv8a-fp-armv8 = "${PACKAGE_EXTRA_ARCHS_tune-armv8a} armv8a-vfp-fp-armv8"
+PACKAGE_EXTRA_ARCHS_tune-armv8a-neon-fp-armv8 = "${PACKAGE_EXTRA_ARCHS_tune-armv8a-fp-armv8} armv8a-vfp-neon-fp-armv8"
+PACKAGE_EXTRA_ARCHS_tune-armv8a-crypto-neon-fp-armv8 = "${PACKAGE_EXTRA_ARCHS_tune-armv8a-neon-fp-armv8} armv8a-vfp-crypto-neon-fp-armv8"
+
+# CRC configs
+AVAILTUNES += "armv8a-crc armv8a-crc-vfpv3 armv8a-crc-neon armv8a-crc-vfpv4 armv8a-crc-neon-vfpv4 armv8a-crc-fp-armv8 armv8a-crc-neon-fp-armv8 armv8a-crc-crypto-neon-fp-armv8"
+ARMPKGARCH_tune-armv8a-crc ?= "armv8a"
+ARMPKGARCH_tune-armv8a-crc-vfpv3 ?= "armv8a"
+ARMPKGARCH_tune-armv8a-crc-neon ?= "armv8a"
+ARMPKGARCH_tune-armv8a-crc-vfpv4 ?= "armv8a"
+ARMPKGARCH_tune-armv8a-crc-neon-vfpv4 ?= "armv8a"
+ARMPKGARCH_tune-armv8a-crc-fp-armv8 ?= "armv8a"
+ARMPKGARCH_tune-armv8a-crc-neon-fp-armv8 ?= "armv8a"
+ARMPKGARCH_tune-armv8a-crc-crypto-neon-fp-armv8 ?= "armv8a"
+TUNE_FEATURES_tune-armv8a-crc ?= "${TUNE_FEATURES_tune-armv8a} crc"
+TUNE_FEATURES_tune-armv8a-crc-vfpv3 ?= "${TUNE_FEATURES_tune-armv8a-vfpv3} crc"
+TUNE_FEATURES_tune-armv8a-crc-neon ?= "${TUNE_FEATURES_tune-armv8a-neon} crc"
+TUNE_FEATURES_tune-armv8a-crc-vfpv4 ?= "${TUNE_FEATURES_tune-armv8a-vfpv4} crc"
+TUNE_FEATURES_tune-armv8a-crc-neon-vfpv4 ?= "${TUNE_FEATURES_tune-armv8a-neon-vfpv4} crc"
+TUNE_FEATURES_tune-armv8a-crc-fp-armv8 ?= "${TUNE_FEATURES_tune-armv8a-fp-armv8} crc"
+TUNE_FEATURES_tune-armv8a-crc-neon-fp-armv8 ?= "${TUNE_FEATURES_tune-armv8a-neon-fp-armv8} crc"
+TUNE_FEATURES_tune-armv8a-crc-crypto-neon-fp-armv8 ?= "${TUNE_FEATURES_tune-armv8a-crypto-neon-fp-armv8} crc"
+PACKAGE_EXTRA_ARCHS_tune-armv8a-crc = "${PACKAGE_EXTRA_ARCHS_tune-armv8a} armv8a-crc-vfp"
+PACKAGE_EXTRA_ARCHS_tune-armv8a-crc-vfpv3 = "${PACKAGE_EXTRA_ARCHS_tune-armv8a-crc} armv8a-vfp-vfpv3 armv8a-crc-vfp-vfpv3"
+PACKAGE_EXTRA_ARCHS_tune-armv8a-crc-neon = "${PACKAGE_EXTRA_ARCHS_tune-armv8a-crc-vfpv3} armv8a-vfp-neon armv8a-crc-vfp-neon"
+PACKAGE_EXTRA_ARCHS_tune-armv8a-crc-vfpv4 = "${PACKAGE_EXTRA_ARCHS_tune-armv8a-crc-vfpv3} armv8a-vfp-vfpv4 armv8a-crc-vfp-vfpv4"
+PACKAGE_EXTRA_ARCHS_tune-armv8a-crc-neon-vfpv4 = "${PACKAGE_EXTRA_ARCHS_tune-armv8a-crc-vfpv4} armv8a-vfp-neon armv8a-crc-vfp-neon armv8a-vfp-neon-vfpv4 armv8a-crc-vfp-neon-vfpv4"
+PACKAGE_EXTRA_ARCHS_tune-armv8a-crc-fp-armv8 = "${PACKAGE_EXTRA_ARCHS_tune-armv8a-crc} armv8a-vfp-fp-armv8 armv8a-vfp-fp-crc-armv8"
+PACKAGE_EXTRA_ARCHS_tune-armv8a-crc-neon-fp-armv8 = "${PACKAGE_EXTRA_ARCHS_tune-armv8a-crc-fp-armv8} armv8a-vfp-neon-fp-armv8 armv8a-crc-vfp-neon-fp-armv8"
+PACKAGE_EXTRA_ARCHS_tune-armv8a-crc-crypto-neon-fp-armv8 = "${PACKAGE_EXTRA_ARCHS_tune-armv8a-crc-neon-fp-armv8} armv8a-vfp-crypto-neon-fp-armv8 armv8a-crc-vfp-crypto-neon-fp-armv8"
+
diff --git a/meta/conf/machine/include/arm/feature-arm-neon.inc b/meta/conf/machine/include/arm/feature-arm-neon.inc
deleted file mode 100644
index e8b2b85..0000000
--- a/meta/conf/machine/include/arm/feature-arm-neon.inc
+++ /dev/null
@@ -1,3 +0,0 @@
-TUNEVALID[neon] = "Enable Neon SIMD accelerator unit."
-TUNE_CCARGS .= "${@bb.utils.contains("TUNE_FEATURES", "neon", bb.utils.contains("TUNE_FEATURES", "vfpv4", " -mfpu=neon-vfpv4", " -mfpu=neon", d), "" , d)}"
-ARMPKGSFX_FPU .= "${@bb.utils.contains("TUNE_FEATURES", "neon", "-neon", "", d)}"
diff --git a/meta/conf/machine/include/arm/feature-arm-vfp.inc b/meta/conf/machine/include/arm/feature-arm-vfp.inc
index 3dfbeac..12a4e81 100644
--- a/meta/conf/machine/include/arm/feature-arm-vfp.inc
+++ b/meta/conf/machine/include/arm/feature-arm-vfp.inc
@@ -1,17 +1,52 @@
 TUNEVALID[vfp] = "Enable Vector Floating Point (vfp) unit."
-ARMPKGSFX_FPU .= "${@bb.utils.contains("TUNE_FEATURES", "vfp", "-vfp", "" ,d)}"
-
 TUNEVALID[vfpv3d16] = "Enable Vector Floating Point Version 3 with 16 registers (vfpv3-d16) unit."
-TUNE_CCARGS .= "${@bb.utils.contains("TUNE_FEATURES", "vfpv3d16", " -mfpu=vfpv3-d16", "", d)}"
-ARMPKGSFX_FPU .= "${@bb.utils.contains("TUNE_FEATURES", "vfpv3d16", "-vfpv3d16", "" ,d)}"
-
 TUNEVALID[vfpv3] = "Enable Vector Floating Point Version 3 with 32 registers (vfpv3) unit."
-TUNE_CCARGS .= "${@bb.utils.contains("TUNE_FEATURES", "vfpv3", " -mfpu=vfpv3", "", d)}"
-ARMPKGSFX_FPU .= "${@bb.utils.contains("TUNE_FEATURES", "vfpv3", "-vfpv3", "" ,d)}"
-
 TUNEVALID[vfpv4] = "Enable Vector Floating Point Version 4 (vfpv4) unit."
-ARMPKGSFX_FPU .= "${@bb.utils.contains("TUNE_FEATURES", "vfpv4", "-vfpv4", "" ,d)}"
-
+TUNEVALID[fp-armv8] = "Enable ARMv8 Vector Floating Point unit."
+TUNEVALID[neon] = "Enable vfpv3 and Neon SIMD accelerator unit."
+TUNEVALID[crypto] = "Enable ARMv8 crypto extension."
 TUNEVALID[callconvention-hard] = "Enable EABI hard float call convention, requires VFP."
-TUNE_CCARGS .= "${@bb.utils.contains("TUNE_FEATURES", "vfp", bb.utils.contains("TUNE_FEATURES", "callconvention-hard", " -mfloat-abi=hard", " -mfloat-abi=softfp", d), "" ,d)}"
-ARMPKGSFX_EABI .= "${@bb.utils.contains("TUNE_FEATURES", [ "callconvention-hard", "vfp" ], "hf", "", d)}"
+
+python () {
+	if bb.utils.contains("TUNE_FEATURES", "crc", True, False, d):
+		d.appendVar("ARMPKGSFX_FPU", "-crc")
+
+	if bb.utils.contains("TUNE_FEATURES", "vfp", True, False, d):
+		d.appendVar("ARMPKGSFX_FPU", "-vfp")
+
+	if bb.utils.contains("TUNE_FEATURES", "vfpv3d16", True, False, d):
+		d.appendVar("TUNE_CCARGS", " -mfpu=vfpv3-d16")
+		d.appendVar("ARMPKGSFX_FPU", "-vfpv3d16")
+
+	if bb.utils.contains("TUNE_FEATURES", "vfpv3", True, False, d):
+			d.appendVar("TUNE_CCARGS", " -mfpu=vfpv3")
+			d.appendVar("ARMPKGSFX_FPU", "-vfpv3")
+	elif bb.utils.contains("TUNE_FEATURES", "vfpv4", True, False, d):
+		if bb.utils.contains("TUNE_FEATURES", "neon", True, False, d):
+			d.appendVar("TUNE_CCARGS", " -mfpu=neon-vfpv4")
+			d.appendVar("ARMPKGSFX_FPU", "-neon-vfpv4")
+		else:
+			d.appendVar("TUNE_CCARGS", " -mfpu=vfpv4")
+			d.appendVar("ARMPKGSFX_FPU", "-vfpv4")
+	elif bb.utils.contains("TUNE_FEATURES", "fp-armv8", True, False, d):
+		if bb.utils.contains("TUNE_FEATURES", "neon", True, False, d):
+			if bb.utils.contains("TUNE_FEATURES", "crypto", True, False, d):
+				d.appendVar("TUNE_CCARGS", " -mfpu=crypto-neon-fp-armv8")
+				d.appendVar("ARMPKGSFX_FPU", "-crypto-neon-fp-armv8")
+			else:
+				d.appendVar("TUNE_CCARGS", " -mfpu=neon-fp-armv8")
+				d.appendVar("ARMPKGSFX_FPU", "-neon-fp-armv8")
+		else:
+			d.appendVar("TUNE_CCARGS", " -mfpu=fp-armv8")
+			d.appendVar("ARMPKGSFX_FPU", "-fp-armv8")
+	elif bb.utils.contains("TUNE_FEATURES", "neon", True, False, d):
+		d.appendVar("TUNE_CCARGS", " -mfpu=neon")
+		d.appendVar("ARMPKGSFX_FPU", "-neon")
+
+	if bb.utils.contains("TUNE_FEATURES", "callconvention-hard", True, False, d):
+		d.appendVar("TUNE_CCARGS", " -mfloat-abi=hard")
+	else:
+		d.appendVar("TUNE_CCARGS", " -mfloat-abi=softfp")
+	if bb.utils.contains("TUNE_FEATURES", [ "vfp", "callconvention-hard" ], True, False, d):
+		d.appendVar("ARMPKGSFX_EABI", "hf")
+}
-- 
1.7.9.5


