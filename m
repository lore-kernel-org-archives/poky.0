Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BC7BE002FB
	for <poky@yoctoproject.org>; Tue, 27 Aug 2013 13:16:34 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Aug 2013 13:16:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,970,1367996400"; d="scan'208";a="369362516"
Received: from dvhart-mobl4.jf.intel.com (HELO localhost) ([10.7.201.55])
	by orsmga001.jf.intel.com with ESMTP; 27 Aug 2013 13:16:32 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>, Tom Zanussi <tom.zanussi@intel.com>,
	Ross Burton <ross.burton@intel.com>,
	Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Tue, 27 Aug 2013 13:16:13 -0700
Message-Id: <3b9d7dc8c9ff99aa0c1ceb2684872c23047da18c.1377634165.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <cover.1377634165.git.dvhart@linux.intel.com>
References: <cover.1377634165.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1377634165.git.dvhart@linux.intel.com>
References: <cover.1377634165.git.dvhart@linux.intel.com>
Subject: [PATCH 1/3] meta-yocto-bsp: Add genericx86-64 machine
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
X-List-Received-Date: Tue, 27 Aug 2013 20:16:35 -0000

Duplicate the genericx86 machine, but select x86_64 tunables and use the
common-pc-64 linux-yocto KMACHINE and config.

This has been boot tested with core-image-sato on a Lenovo x220
(Core-i5) and a Supermicro MBD-X8DTL-iF-O (dual-socket Xeon 5680).

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: Ross Burton <ross.burton@intel.com>
Cc: Tom Zanussi <tom.zanussi@intel.com>
Cc: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/conf/machine/genericx86-64.conf     | 34 +++++++++++
 .../formfactor/formfactor/genericx86-64/machconfig |  6 ++
 .../uclibc/uclibc/genericx86-64/uClibc.machine     | 69 ++++++++++++++++++++++
 .../xserver-xf86-config/genericx86-64/xorg.conf    |  0
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend |  6 +-
 5 files changed, 114 insertions(+), 1 deletion(-)
 create mode 100644 meta-yocto-bsp/conf/machine/genericx86-64.conf
 create mode 100644 meta-yocto-bsp/recipes-bsp/formfactor/formfactor/genericx86-64/machconfig
 create mode 100644 meta-yocto-bsp/recipes-core/uclibc/uclibc/genericx86-64/uClibc.machine
 create mode 100644 meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/genericx86-64/xorg.conf

diff --git a/meta-yocto-bsp/conf/machine/genericx86-64.conf b/meta-yocto-bsp/conf/machine/genericx86-64.conf
new file mode 100644
index 0000000..7825bae
--- /dev/null
+++ b/meta-yocto-bsp/conf/machine/genericx86-64.conf
@@ -0,0 +1,34 @@
+#@TYPE: Machine
+#@NAME: Generic X86_64.
+
+#@DESCRIPTION: Machine configuration for generic X86_64 (64-bit) PCs and servers. Supports a moderately wide range of drivers that should boot and be usable on "typical" hardware.
+
+include conf/machine/include/tune-x86_64.inc
+
+MACHINE_FEATURES = "screen keyboard pci usbhost ext2 ext3 x86 wifi acpi alsa efi pcbios"
+
+KERNEL_IMAGETYPE = "bzImage"
+
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+PREFERRED_VERSION_linux-yocto ?= "3.10%"
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
+           xserver-xorg-extension-glx \
+           xf86-input-mouse \
+           xf86-input-keyboard \
+           xf86-input-evdev \
+           xf86-input-synaptics \
+           xf86-video-fbdev \
+           xf86-video-modesetting \
+           xf86-video-vesa \
+           xf86-video-intel \
+           mesa-driver-i915 \
+           mesa-driver-i965"
+
+MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts linux-firmware v86d"
+
+IMAGE_FSTYPES ?= "ext3 cpio.gz live"
+
+GLIBC_ADDONS = "nptl"
+
+EXTRA_OECONF_append_pn-matchbox-panel-2 = " --with-battery=acpi"
diff --git a/meta-yocto-bsp/recipes-bsp/formfactor/formfactor/genericx86-64/machconfig b/meta-yocto-bsp/recipes-bsp/formfactor/formfactor/genericx86-64/machconfig
new file mode 100644
index 0000000..a81a23b
--- /dev/null
+++ b/meta-yocto-bsp/recipes-bsp/formfactor/formfactor/genericx86-64/machconfig
@@ -0,0 +1,6 @@
+HAVE_TOUCHSCREEN=0
+HAVE_KEYBOARD=1
+
+DISPLAY_CAN_ROTATE=0
+DISPLAY_ORIENTATION=0
+DISPLAY_DPI=133
diff --git a/meta-yocto-bsp/recipes-core/uclibc/uclibc/genericx86-64/uClibc.machine b/meta-yocto-bsp/recipes-core/uclibc/uclibc/genericx86-64/uClibc.machine
new file mode 100644
index 0000000..305dc64
--- /dev/null
+++ b/meta-yocto-bsp/recipes-core/uclibc/uclibc/genericx86-64/uClibc.machine
@@ -0,0 +1,69 @@
+#
+# Automatically generated make config: don't edit
+# Fri Nov 23 15:49:33 2007
+#
+# TARGET_alpha is not set
+# TARGET_arm is not set
+# TARGET_bfin is not set
+# TARGET_cris is not set
+# TARGET_e1 is not set
+# TARGET_frv is not set
+# TARGET_h8300 is not set
+# TARGET_hppa is not set
+# TARGET_i386=y
+# TARGET_i960 is not set
+# TARGET_ia64 is not set
+# TARGET_m68k is not set
+# TARGET_microblaze is not set
+# TARGET_mips is not set
+# TARGET_nios is not set
+# TARGET_nios2 is not set
+# TARGET_powerpc is not set
+# TARGET_sh is not set
+# TARGET_sh64 is not set
+# TARGET_sparc is not set
+# TARGET_v850 is not set
+# TARGET_vax is not set
+TARGET_x86_64=y
+
+#
+# Target Architecture Features and Options
+#
+TARGET_ARCH="x86_64"
+FORCE_OPTIONS_FOR_ARCH=y
+# CONFIG_GENERIC_386 is not set
+# CONFIG_386 is not set
+# CONFIG_486 is not set
+# CONFIG_586 is not set
+# CONFIG_586MMX is not set
+# CONFIG_686 is not set
+# CONFIG_PENTIUMII is not set
+# CONFIG_PENTIUMIII is not set
+# CONFIG_PENTIUM4 is not set
+# CONFIG_K6 is not set
+# CONFIG_K7 is not set
+# CONFIG_ELAN is not set
+# CONFIG_CRUSOE is not set
+# CONFIG_WINCHIPC6 is not set
+# CONFIG_WINCHIP2 is not set
+# CONFIG_CYRIXIII is not set
+# CONFIG_NEHEMIAH is not set
+TARGET_SUBARCH=""
+
+#
+# Using ELF file format
+#
+ARCH_LITTLE_ENDIAN=y
+
+#
+# Using Little Endian
+#
+ARCH_HAS_MMU=y
+ARCH_USE_MMU=y
+UCLIBC_HAS_FLOATS=y
+UCLIBC_HAS_FPU=y
+DO_C99_MATH=y
+KERNEL_HEADERS="/usr/include"
+HAVE_DOT_CONFIG=y
+
+UCLIBC_HAS_FENV=y
diff --git a/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/genericx86-64/xorg.conf b/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/genericx86-64/xorg.conf
new file mode 100644
index 0000000..e69de29
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
index 5756e4c..c3968ef 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
@@ -1,19 +1,23 @@
 KBRANCH_genericx86  = "standard/common-pc/base"
+KBRANCH_genericx86-64  = "standard/common-pc-64/base"
 KBRANCH_routerstationpro = "standard/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/beagleboard"
 
 KMACHINE_genericx86 ?= "common-pc"
+KMACHINE_genericx86-64 ?= "common-pc-64"
 
 SRCREV_machine_genericx86 ?= "6c1528b2b78d1ec7e75bb7a9880074ec35aa1aa0"
+SRCREV_machine_genericx86-64 ?= "6c1528b2b78d1ec7e75bb7a9880074ec35aa1aa0"
 SRCREV_machine_routerstationpro ?= "3991d03bd450e9363d5b6e97ede0628ba073db79"
 SRCREV_machine_mpc8315e-rdb ?= "8d8339af518104db03f9c36b82f4372569e55b0a"
 SRCREV_machine_beagleboard ?= "6c1528b2b78d1ec7e75bb7a9880074ec35aa1aa0"
 
+COMPATIBLE_MACHINE_genericx86 = "genericx86"
+COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
 COMPATIBLE_MACHINE_beagleboard = "beagleboard"
-COMPATIBLE_MACHINE_genericx86 = "genericx86"
 
 # routerstationpro has a flash size of 16mb
 KERNEL_IMAGE_MAXSIZE_routerstationpro = "16777216"
-- 
1.8.3.1


