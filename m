Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC8BEE00B59
	for <poky@yoctoproject.org>; Fri,  4 Apr 2014 07:26:45 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Apr 2014 07:26:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,795,1389772800"; d="scan'208";a="514498784"
Received: from davidllo-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.87])
	by fmsmga002.fm.intel.com with ESMTP; 04 Apr 2014 07:26:33 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri,  4 Apr 2014 15:26:23 +0100
Message-Id: <5175ea063ba821f370bb393484ca3a2cabb0ec12.1396621532.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.9.0
In-Reply-To: <cover.1396621532.git.paul.eggleton@linux.intel.com>
References: <cover.1396621532.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1396621532.git.paul.eggleton@linux.intel.com>
References: <cover.1396621532.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 1/4] routerstationpro: drop
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
X-List-Received-Date: Fri, 04 Apr 2014 14:26:46 -0000

This has been moved to meta-yocto-bsp-old; edgerouter replaces it as the
MIPS reference platform going forward.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto-bsp/conf/machine/routerstationpro.conf  | 27 ----------------------
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend |  6 -----
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |  5 ----
 3 files changed, 38 deletions(-)
 delete mode 100644 meta-yocto-bsp/conf/machine/routerstationpro.conf

diff --git a/meta-yocto-bsp/conf/machine/routerstationpro.conf b/meta-yocto-bsp/conf/machine/routerstationpro.conf
deleted file mode 100644
index 281d3f6..0000000
--- a/meta-yocto-bsp/conf/machine/routerstationpro.conf
+++ /dev/null
@@ -1,27 +0,0 @@
-#@TYPE: Machine
-#@NAME: mti_malta32_be MIPS
-#@DESCRIPTION: mti_malta32_be
-
-require conf/machine/include/tune-mips32.inc
-
-MACHINE_FEATURES = "screen keyboard pci usbhost ext2 ext3 serial"
-
-KERNEL_IMAGETYPE = "vmlinux"
-KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
-KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
-
-PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "3.10%"
-
-PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
-XSERVER ?= "xserver-xorg \
-            xf86-input-evdev \
-            xf86-video-fbdev"
-
-SERIAL_CONSOLE = "115200 ttyS0"
-USE_VT ?= "0"
-
-MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
-
-IMAGE_FSTYPES ?= "jffs2 tar.bz2"
-
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
index c24ffb8..41fd575 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
@@ -1,6 +1,5 @@
 KBRANCH_genericx86  = "standard/common-pc/base"
 KBRANCH_genericx86-64  = "standard/common-pc-64/base"
-KBRANCH_routerstationpro = "standard/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 KMACHINE_genericx86 ?= "common-pc"
@@ -8,13 +7,8 @@ KMACHINE_genericx86-64 ?= "common-pc-64"
 
 SRCREV_machine_genericx86 ?= "2ee37bfe732c73f7d39af55875ce8d30b282471c"
 SRCREV_machine_genericx86-64 ?= "2ee37bfe732c73f7d39af55875ce8d30b282471c"
-SRCREV_machine_routerstationpro ?= "628fb65e665a4179b6df049563f47f521f9dfb4e"
 SRCREV_machine_mpc8315e-rdb ?= "2688f74bf2bb01ec355bbdd4b6fa00a0d39302de"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
-COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-
-# routerstationpro has a flash size of 16mb
-KERNEL_IMAGE_MAXSIZE_routerstationpro = "16777216"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
index 0ff485f..13aa5d9 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -1,12 +1,7 @@
-KBRANCH_routerstationpro = "standard/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86 ?= "cdd7a546922ca1c46c94adeec3b9c90dc9aaad2d"
-SRCREV_machine_routerstationpro ?= "62b86dc8ac794cd97c61a99418d7429e6a83ec1a"
 SRCREV_machine_mpc8315e-rdb ?= "b2f78892b3ff6cc940e4661f7b2017a73b289c73"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
-COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
 
-# routerstationpro has a flash size of 16mb
-KERNEL_IMAGE_MAXSIZE_append_routerstationpro = "16777216"
-- 
1.9.0


