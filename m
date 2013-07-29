Return-Path: <ross.burton@intel.com>
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 503F7E01492
	for <poky@yoctoproject.org>; Mon, 29 Jul 2013 09:23:10 -0700 (PDT)
Received: by mail-we0-f179.google.com with SMTP id t57so4137214wes.38
	for <poky@yoctoproject.org>; Mon, 29 Jul 2013 09:23:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:x-gm-message-state;
	bh=sMsv7BKF1z6oy5wVns3XUEETWSa1oyooeQ0m8/zoGCs=;
	b=aEf/qnQKotU8LA2gMKIAhXCKMln1ePU9KAc571VZXGh0fuDaEoPvUvg6FawgOD0kWM
	KtZUODIY0buNZTbeJmhLAT+yrJfja80g1GJLJzq+kR3ZR7C8/if42uscNBFr7aIxp7OH
	HH78pQpoTqvIfNNKo1LtZs9Yfoii5je+FCLExa94S8Kv2gH8QjQ1UObOUxRBRiLEdWWX
	Z5AQ+L5vmhDZjJSBAfIpZ0x4e3B9EumtvUxviz/bhL6eAAK9nbrbD3oR5waAJdSxC7BN
	N70cKp5gNH8JtTzvrDCAptCyjDkGt9pgCkfd1L1uC9hxU9bOzI1nmaig+bP03ZlSBl85
	UIaQ==
X-Received: by 10.180.187.209 with SMTP id fu17mr7681571wic.52.1375114989691; 
	Mon, 29 Jul 2013 09:23:09 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id e7sm3679164wiy.4.2013.07.29.09.23.07
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 29 Jul 2013 09:23:08 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Mon, 29 Jul 2013 17:22:54 +0100
Message-Id: <1375114978-28831-2-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1375114978-28831-1-git-send-email-ross.burton@intel.com>
References: <1375114978-28831-1-git-send-email-ross.burton@intel.com>
X-Gm-Message-State: ALoCoQkhr8m1LPDW3yHWFF0O4Wf54TIYi7AKiG3uG71k7DmE8LPVFSEYbpgERptntdCVlaQQE8T/
Subject: [PATCH 1/5] genericx86: add new BSP
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
X-List-Received-Date: Mon, 29 Jul 2013 16:23:11 -0000

This BSP aims to support "most" contemporary x86 hardware.  It's a direct copy
of atom-pc initially.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto-bsp/conf/machine/genericx86.conf        |   37 +++++++++++
 .../formfactor/formfactor/genericx86/machconfig    |    6 ++
 .../packagegroup-core-tools-profile.bbappend       |    1 +
 .../uclibc/uclibc/genericx86/uClibc.machine        |   69 ++++++++++++++++++++
 .../packagegroup-core-sdk-gmae.bbappend            |    1 +
 ...egroup-core-standalone-gmae-sdk-target.bbappend |    1 +
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    3 +
 .../recipes-kernel/linux/linux-yocto_3.8.bbappend  |    3 +
 8 files changed, 121 insertions(+)
 create mode 100644 meta-yocto-bsp/conf/machine/genericx86.conf
 create mode 100644 meta-yocto-bsp/recipes-bsp/formfactor/formfactor/genericx86/machconfig
 create mode 100644 meta-yocto-bsp/recipes-core/uclibc/uclibc/genericx86/uClibc.machine
 create mode 100644 meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/genericx86/xorg.conf

diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
new file mode 100644
index 0000000..5cb2b5b
--- /dev/null
+++ b/meta-yocto-bsp/conf/machine/genericx86.conf
@@ -0,0 +1,37 @@
+#@TYPE: Machine
+#@NAME: Generic X86.
+
+#@DESCRIPTION: Machine configuration for generic X86 (32-bit) PCs. Supports a moderately wide range of drivers that should boot and be usable on "typical" hardware.
+
+include conf/machine/include/tune-atom.inc
+
+MACHINE_FEATURES = "screen keyboard pci usbhost ext2 ext3 x86 wifi acpi alsa"
+
+KERNEL_IMAGETYPE = "bzImage"
+
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+PREFERRED_VERSION_linux-yocto ?= "3.8%"
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
+           xserver-xorg-extension-glx \
+           xf86-input-mouse \
+           xf86-input-keyboard \
+           xf86-input-evdev \
+           xf86-input-synaptics \
+           xf86-video-intel \
+           mesa-driver-i915 \
+           mesa-driver-i965"
+
+#MACHINE_EXTRA_RDEPENDS = "rt2860"
+
+MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
+
+IMAGE_FSTYPES ?= "ext3 cpio.gz live"
+
+APPEND += "usbcore.autosuspend=1"
+
+GLIBC_ADDONS = "nptl"
+
+EXTRA_OECONF_append_pn-matchbox-panel-2 = " --with-battery=acpi"
+
+ROOTLESS_X = "1"
diff --git a/meta-yocto-bsp/recipes-bsp/formfactor/formfactor/genericx86/machconfig b/meta-yocto-bsp/recipes-bsp/formfactor/formfactor/genericx86/machconfig
new file mode 100644
index 0000000..a81a23b
--- /dev/null
+++ b/meta-yocto-bsp/recipes-bsp/formfactor/formfactor/genericx86/machconfig
@@ -0,0 +1,6 @@
+HAVE_TOUCHSCREEN=0
+HAVE_KEYBOARD=1
+
+DISPLAY_CAN_ROTATE=0
+DISPLAY_ORIENTATION=0
+DISPLAY_DPI=133
diff --git a/meta-yocto-bsp/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend b/meta-yocto-bsp/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
index 352c1f9..e3aa5e8 100644
--- a/meta-yocto-bsp/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
+++ b/meta-yocto-bsp/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
@@ -1,2 +1,3 @@
 RDEPENDS_${PN}_append_atom-pc = " lttng-ust systemtap"
+RDEPENDS_${PN}_append_genericx86 = " lttng-ust systemtap"
 
diff --git a/meta-yocto-bsp/recipes-core/uclibc/uclibc/genericx86/uClibc.machine b/meta-yocto-bsp/recipes-core/uclibc/uclibc/genericx86/uClibc.machine
new file mode 100644
index 0000000..5df15f9
--- /dev/null
+++ b/meta-yocto-bsp/recipes-core/uclibc/uclibc/genericx86/uClibc.machine
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
+TARGET_i386=y
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
+# TARGET_x86_64 is not set
+
+#
+# Target Architecture Features and Options
+#
+TARGET_ARCH="i386"
+FORCE_OPTIONS_FOR_ARCH=y
+CONFIG_GENERIC_386=y
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
diff --git a/meta-yocto-bsp/recipes-gnome/packagegroups/packagegroup-core-sdk-gmae.bbappend b/meta-yocto-bsp/recipes-gnome/packagegroups/packagegroup-core-sdk-gmae.bbappend
index 0105ade..d7de19f 100644
--- a/meta-yocto-bsp/recipes-gnome/packagegroups/packagegroup-core-sdk-gmae.bbappend
+++ b/meta-yocto-bsp/recipes-gnome/packagegroups/packagegroup-core-sdk-gmae.bbappend
@@ -1 +1,2 @@
 SDK-EXTRAS_atom-pc ?= " lttng-ust-dev"
+SDK-EXTRAS_genericx86 ?= " lttng-ust-dev"
diff --git a/meta-yocto-bsp/recipes-gnome/packagegroups/packagegroup-core-standalone-gmae-sdk-target.bbappend b/meta-yocto-bsp/recipes-gnome/packagegroups/packagegroup-core-standalone-gmae-sdk-target.bbappend
index 0105ade..d7de19f 100644
--- a/meta-yocto-bsp/recipes-gnome/packagegroups/packagegroup-core-standalone-gmae-sdk-target.bbappend
+++ b/meta-yocto-bsp/recipes-gnome/packagegroups/packagegroup-core-standalone-gmae-sdk-target.bbappend
@@ -1 +1,2 @@
 SDK-EXTRAS_atom-pc ?= " lttng-ust-dev"
+SDK-EXTRAS_genericx86 ?= " lttng-ust-dev"
diff --git a/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/genericx86/xorg.conf b/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/genericx86/xorg.conf
new file mode 100644
index 0000000..e69de29
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
index 9e3efc9..c3d1290 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -1,9 +1,11 @@
 KBRANCH_atom-pc  = "standard/common-pc/atom-pc"
+KBRANCH_genericx86  = "standard/common-pc/atom-pc"
 KBRANCH_routerstationpro = "standard/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/beagleboard"
 
 SRCREV_machine_atom-pc ?= "cdd7a546922ca1c46c94adeec3b9c90dc9aaad2d"
+SRCREV_machine_genericx86 ?= "cdd7a546922ca1c46c94adeec3b9c90dc9aaad2d"
 SRCREV_machine_routerstationpro ?= "62b86dc8ac794cd97c61a99418d7429e6a83ec1a"
 SRCREV_machine_mpc8315e-rdb ?= "b2f78892b3ff6cc940e4661f7b2017a73b289c73"
 SRCREV_machine_beagleboard ?= "cdd7a546922ca1c46c94adeec3b9c90dc9aaad2d"
@@ -12,6 +14,7 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
 COMPATIBLE_MACHINE_beagleboard = "beagleboard"
 COMPATIBLE_MACHINE_atom-pc = "atom-pc"
+COMPATIBLE_MACHINE_genericx86 = "genericx86"
 
 # routerstationpro has a flash size of 16mb
 KERNEL_IMAGE_MAXSIZE_append_routerstationpro = "16777216"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
index 0686d4b..c4c005d 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
@@ -1,9 +1,11 @@
 KBRANCH_atom-pc  = "standard/common-pc/atom-pc"
+KBRANCH_genericx86  = "standard/common-pc/atom-pc"
 KBRANCH_routerstationpro = "standard/routerstationpro"
 KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KBRANCH_beagleboard = "standard/beagleboard"
 
 SRCREV_machine_atom-pc ?= "f20047520a57322f05d95a18a5fbd082fb15cb87"
+SRCREV_machine_genericx86 ?= "f20047520a57322f05d95a18a5fbd082fb15cb87"
 SRCREV_machine_routerstationpro ?= "4a94f39d429fa284ce69b13bb635b29b1319e372"
 SRCREV_machine_mpc8315e-rdb ?= "f467c72937de0e4a2a66e21b9855c4aee844f936"
 SRCREV_machine_beagleboard ?= "f20047520a57322f05d95a18a5fbd082fb15cb87"
@@ -12,6 +14,7 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
 COMPATIBLE_MACHINE_beagleboard = "beagleboard"
 COMPATIBLE_MACHINE_atom-pc = "atom-pc"
+COMPATIBLE_MACHINE_genericx86 = "genericx86"
 
 # routerstationpro has a flash size of 16mb
 KERNEL_IMAGE_MAXSIZE_routerstationpro = "16777216"
-- 
1.7.10.4


