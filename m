Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABDC1E00D14; Thu,  9 Nov 2017 06:59:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E17A4E00D07
	for <poky@yoctoproject.org>; Thu,  9 Nov 2017 06:59:18 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga105.jf.intel.com with ESMTP; 09 Nov 2017 06:59:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,370,1505804400"; 
   d="scan'208";a="3019518"
Received: from jlock-mobl3.ger.corp.intel.com ([10.252.19.59])
	by orsmga001.jf.intel.com with ESMTP; 09 Nov 2017 06:59:17 -0800
From: Joshua Lock <joshua.g.lock@intel.com>
To: poky@yoctoproject.org
Date: Thu,  9 Nov 2017 14:59:06 +0000
Message-Id: <f3a4373f9f6b9b5b21be23671210e405f4b229fa.1510239170.git.joshua.g.lock@intel.com>
X-Mailer: git-send-email 2.13.6
In-Reply-To: <cover.1510239170.git.joshua.g.lock@intel.com>
References: <cover.1510239170.git.joshua.g.lock@intel.com>
Subject: [PATCH 1/1] beaglebone-yocto: rename beaglebone machine to beaglebone-yocto
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
X-List-Received-Date: Thu, 09 Nov 2017 14:59:20 -0000

The beaglebone BSP provided in this layer is a reference implementation
usingonly mainline components available in core Yocto Project layers,
whereas Texas Instruments maintain a full-featured BSP in the meta-ti
layer.

Rename the reference machine to prevent namespace collisions with the
version maintained by the SoC vendor.

[YOCTO #12326]

Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
---
 meta-poky/conf/local.conf.sample                                 | 2 +-
 meta-yocto-bsp/README.hardware                                   | 6 +++---
 meta-yocto-bsp/conf/layer.conf                                   | 2 +-
 .../conf/machine/{beaglebone.conf => beaglebone-yocto.conf}      | 6 +++---
 .../formfactor/{beaglebone => beaglebone-yocto}/machconfig       | 0
 .../{beaglebone => beaglebone-yocto}/xorg.conf                   | 0
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend    | 9 +++++----
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend    | 9 +++++----
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend     | 9 +++++----
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend     | 9 +++++----
 meta-yocto-bsp/wic/{beaglebone.wks => beaglebone-yocto.wks}      | 0
 11 files changed, 28 insertions(+), 24 deletions(-)
 rename meta-yocto-bsp/conf/machine/{beaglebone.conf => beaglebone-yocto.conf} (85%)
 rename meta-yocto-bsp/recipes-bsp/formfactor/formfactor/{beaglebone => beaglebone-yocto}/machconfig (100%)
 rename meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/{beaglebone => beaglebone-yocto}/xorg.conf (100%)
 rename meta-yocto-bsp/wic/{beaglebone.wks => beaglebone-yocto.wks} (100%)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index b15e508..7c25b8f 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -28,7 +28,7 @@
 # There are also the following hardware board target machines included for 
 # demonstration purposes:
 #
-#MACHINE ?= "beaglebone"
+#MACHINE ?= "beaglebone-yocto"
 #MACHINE ?= "genericx86"
 #MACHINE ?= "genericx86-64"
 #MACHINE ?= "mpc8315e-rdb"
diff --git a/meta-yocto-bsp/README.hardware b/meta-yocto-bsp/README.hardware
index 84c5afa..d8d2a0c 100644
--- a/meta-yocto-bsp/README.hardware
+++ b/meta-yocto-bsp/README.hardware
@@ -27,7 +27,7 @@ Hardware Reference Boards
 
 The following boards are supported by the meta-yocto-bsp layer:
 
-  * Texas Instruments Beaglebone (beaglebone)
+  * Texas Instruments Beaglebone (beaglebone-yocto)
   * Freescale MPC8315E-RDB (mpc8315e-rdb)
   * Ubiquiti Networks EdgeRouter Lite (edgerouter)
   * General IA platforms (genericx86 and genericx86-64)
@@ -120,7 +120,7 @@ USB Device:
        dd command to write the image to a USB stick.
 
 
-Texas Instruments Beaglebone (beaglebone)
+Texas Instruments Beaglebone (beaglebone-yocto)
 =========================================
 
 The Beaglebone is an ARM Cortex-A8 development board with USB, Ethernet, 2D/3D
@@ -151,7 +151,7 @@ From a Linux system with access to the image files perform the following steps:
 
   2. Use the "dd" utility to write the image to the SD card. For example:
 
-     # dd core-image-minimal-beaglebone.wic of=/dev/sdb
+     # dd core-image-minimal-beaglebone-yocto.wic of=/dev/sdb
 
   3. Insert the SD card into the Beaglebone and boot the board.
 
diff --git a/meta-yocto-bsp/conf/layer.conf b/meta-yocto-bsp/conf/layer.conf
index 7b565f2..e10056e 100644
--- a/meta-yocto-bsp/conf/layer.conf
+++ b/meta-yocto-bsp/conf/layer.conf
@@ -8,5 +8,5 @@ BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 BBFILE_COLLECTIONS += "yoctobsp"
 BBFILE_PATTERN_yoctobsp = "^${LAYERDIR}/"
 BBFILE_PRIORITY_yoctobsp = "5"
-LAYERVERSION_yoctobsp = "3"
+LAYERVERSION_yoctobsp = "4"
 LAYERSERIES_COMPAT_yoctobsp = "rocko"
diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
similarity index 85%
rename from meta-yocto-bsp/conf/machine/beaglebone.conf
rename to meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index 1bdd4df..990c967 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -1,6 +1,6 @@
 #@TYPE: Machine
-#@NAME: Beaglebone machine
-#@DESCRIPTION: Machine configuration for http://beagleboard.org/bone and http://beagleboard.org/black boards
+#@NAME: Beaglebone-yocto machine
+#@DESCRIPTION: Reference machine configuration for http://beagleboard.org/bone and http://beagleboard.org/black boards
 
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
@@ -16,7 +16,7 @@ include conf/machine/include/tune-cortexa8.inc
 
 IMAGE_FSTYPES += "tar.bz2 jffs2 wic wic.bmap"
 EXTRA_IMAGECMD_jffs2 = "-lnp "
-WKS_FILE ?= "beaglebone.wks"
+WKS_FILE ?= "beaglebone-yocto.wks"
 IMAGE_INSTALL_append = " kernel-devicetree kernel-image-zimage"
 do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do_populate_sysroot"
 
diff --git a/meta-yocto-bsp/recipes-bsp/formfactor/formfactor/beaglebone/machconfig b/meta-yocto-bsp/recipes-bsp/formfactor/formfactor/beaglebone-yocto/machconfig
similarity index 100%
rename from meta-yocto-bsp/recipes-bsp/formfactor/formfactor/beaglebone/machconfig
rename to meta-yocto-bsp/recipes-bsp/formfactor/formfactor/beaglebone-yocto/machconfig
diff --git a/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/beaglebone/xorg.conf b/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/beaglebone-yocto/xorg.conf
similarity index 100%
rename from meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/beaglebone/xorg.conf
rename to meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/beaglebone-yocto/xorg.conf
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
index e1f359c..346a1c7 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
@@ -4,23 +4,24 @@ KBRANCH_genericx86-64  = "standard/base"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KBRANCH_edgerouter = "standard/edgerouter"
-KBRANCH_beaglebone = "standard/beaglebone"
+KBRANCH_beaglebone-yocto = "standard/beaglebone"
+KMACHINE_beaglebone-yocto = "beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "c1d8c4408b8aedd88eeb6ccc89ce834dd41b3f09"
 SRCREV_machine_genericx86-64 ?= "c1d8c4408b8aedd88eeb6ccc89ce834dd41b3f09"
 SRCREV_machine_edgerouter ?= "c1d8c4408b8aedd88eeb6ccc89ce834dd41b3f09"
-SRCREV_machine_beaglebone ?= "c1d8c4408b8aedd88eeb6ccc89ce834dd41b3f09"
+SRCREV_machine_beaglebone-yocto ?= "c1d8c4408b8aedd88eeb6ccc89ce834dd41b3f09"
 SRCREV_machine_mpc8315e-rdb ?= "c388fdfc9a1e06b22ca3533a023f4d67a6fc1e9b"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
-COMPATIBLE_MACHINE_beaglebone = "beaglebone"
+COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.10.17"
 LINUX_VERSION_genericx86-64 = "4.10.17"
 LINUX_VERSION_edgerouter = "4.10.17"
-LINUX_VERSION_beaglebone = "4.10.17"
+LINUX_VERSION_beaglebone-yocto = "4.10.17"
 LINUX_VERSION_mpc8315e-rdb = "4.10.17"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
index 06ea8f8..2609129 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
@@ -4,24 +4,25 @@ KBRANCH_genericx86-64  = "standard/base"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KBRANCH_edgerouter = "standard/edgerouter"
-KBRANCH_beaglebone = "standard/beaglebone"
+KBRANCH_beaglebone-yocto = "standard/beaglebone"
+KMACHINE_beaglebone-yocto = "beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "16de0149674ed12d983b77a453852ac2e64584b4"
 SRCREV_machine_genericx86-64 ?= "16de0149674ed12d983b77a453852ac2e64584b4"
 SRCREV_machine_edgerouter ?= "16de0149674ed12d983b77a453852ac2e64584b4"
-SRCREV_machine_beaglebone ?= "16de0149674ed12d983b77a453852ac2e64584b4"
+SRCREV_machine_beaglebone-yocto ?= "16de0149674ed12d983b77a453852ac2e64584b4"
 SRCREV_machine_mpc8315e-rdb ?= "8c360c7c3eebeb9251ddd8e9cde39908677f5850"
 
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
-COMPATIBLE_MACHINE_beaglebone = "beaglebone"
+COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.12.12"
 LINUX_VERSION_genericx86-64 = "4.12.12"
 LINUX_VERSION_edgerouter = "4.12.12"
-LINUX_VERSION_beaglebone = "4.12.12"
+LINUX_VERSION_beaglebone-yocto = "4.12.12"
 LINUX_VERSION_mpc8315e-rdb = "4.12.12"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 427af4c..5725c87 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -4,23 +4,24 @@ KBRANCH_genericx86-64  = "standard/base"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KBRANCH_edgerouter = "standard/edgerouter"
-KBRANCH_beaglebone = "standard/beaglebone"
+KBRANCH_beaglebone-yocto = "standard/beaglebone"
+KMACHINE_beaglebone-yocto = "beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "b71c7b786aed26c0a1e4eca66f1d874ec017d699"
 SRCREV_machine_genericx86-64 ?= "b71c7b786aed26c0a1e4eca66f1d874ec017d699"
 SRCREV_machine_edgerouter ?= "b71c7b786aed26c0a1e4eca66f1d874ec017d699"
-SRCREV_machine_beaglebone ?= "b71c7b786aed26c0a1e4eca66f1d874ec017d699"
+SRCREV_machine_beaglebone-yocto ?= "b71c7b786aed26c0a1e4eca66f1d874ec017d699"
 SRCREV_machine_mpc8315e-rdb ?= "b4daa4e9d68862e559d726b0b66b7be605889b9e"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
-COMPATIBLE_MACHINE_beaglebone = "beaglebone"
+COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.4.87"
 LINUX_VERSION_genericx86-64 = "4.4.87"
 LINUX_VERSION_edgerouter = "4.4.87"
-LINUX_VERSION_beaglebone = "4.4.87"
+LINUX_VERSION_beaglebone-yocto = "4.4.87"
 LINUX_VERSION_mpc8315e-rdb = "4.4.87"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
index b3b5cd5..63538de 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -4,23 +4,24 @@ KBRANCH_genericx86-64  = "standard/base"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KBRANCH_edgerouter = "standard/edgerouter"
-KBRANCH_beaglebone = "standard/beaglebone"
+KBRANCH_beaglebone-yocto = "standard/beaglebone"
+KMACHINE_beaglebone-yocto = "beaglebone"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "480ee599fb8df712c10dcf4b7aa6398b79f7d404"
 SRCREV_machine_genericx86-64 ?= "480ee599fb8df712c10dcf4b7aa6398b79f7d404"
 SRCREV_machine_edgerouter ?= "480ee599fb8df712c10dcf4b7aa6398b79f7d404"
-SRCREV_machine_beaglebone ?= "480ee599fb8df712c10dcf4b7aa6398b79f7d404"
+SRCREV_machine_beaglebone-yocto ?= "480ee599fb8df712c10dcf4b7aa6398b79f7d404"
 SRCREV_machine_mpc8315e-rdb ?= "88a703b15a7564704c3dc5d3c1237e0859897655"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
-COMPATIBLE_MACHINE_beaglebone = "beaglebone"
+COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.9.49"
 LINUX_VERSION_genericx86-64 = "4.9.49"
 LINUX_VERSION_edgerouter = "4.9.49"
-LINUX_VERSION_beaglebone = "4.9.49"
+LINUX_VERSION_beaglebone-yocto = "4.9.49"
 LINUX_VERSION_mpc8315e-rdb = "4.9.49"
diff --git a/meta-yocto-bsp/wic/beaglebone.wks b/meta-yocto-bsp/wic/beaglebone-yocto.wks
similarity index 100%
rename from meta-yocto-bsp/wic/beaglebone.wks
rename to meta-yocto-bsp/wic/beaglebone-yocto.wks
-- 
2.13.6


