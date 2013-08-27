Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2EAAE01570
	for <poky@yoctoproject.org>; Tue, 27 Aug 2013 13:16:33 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Aug 2013 13:13:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,970,1367996400"; d="scan'208";a="394318739"
Received: from dvhart-mobl4.jf.intel.com (HELO localhost) ([10.7.201.55])
	by orsmga002.jf.intel.com with ESMTP; 27 Aug 2013 13:16:32 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>, Tom Zanussi <tom.zanussi@intel.com>,
	Ross Burton <ross.burton@intel.com>,
	Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Tue, 27 Aug 2013 13:16:15 -0700
Message-Id: <a581b9f7cd9a40cdeb2d4615cb3bcaf267539ab6.1377634165.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <cover.1377634165.git.dvhart@linux.intel.com>
References: <cover.1377634165.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1377634165.git.dvhart@linux.intel.com>
References: <cover.1377634165.git.dvhart@linux.intel.com>
Subject: [PATCH 3/3] atom-pc: Purge straggling configuration files
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

A few atom-pc configuration files escaped the last purge of atom-pc.
Clean them up.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../formfactor/formfactor/atom-pc/machconfig       |  6 --
 .../uclibc/uclibc/atom-pc/uClibc.machine           | 69 ----------------------
 .../xserver-xf86-config/atom-pc/xorg.conf          |  0
 3 files changed, 75 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-bsp/formfactor/formfactor/atom-pc/machconfig
 delete mode 100644 meta-yocto-bsp/recipes-core/uclibc/uclibc/atom-pc/uClibc.machine
 delete mode 100644 meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/atom-pc/xorg.conf

diff --git a/meta-yocto-bsp/recipes-bsp/formfactor/formfactor/atom-pc/machconfig b/meta-yocto-bsp/recipes-bsp/formfactor/formfactor/atom-pc/machconfig
deleted file mode 100644
index bef4ce3..0000000
--- a/meta-yocto-bsp/recipes-bsp/formfactor/formfactor/atom-pc/machconfig
+++ /dev/null
@@ -1,6 +0,0 @@
-HAVE_TOUCHSCREEN=0
-HAVE_KEYBOARD=1
- 
-DISPLAY_CAN_ROTATE=0
-DISPLAY_ORIENTATION=0
-DISPLAY_DPI=133
diff --git a/meta-yocto-bsp/recipes-core/uclibc/uclibc/atom-pc/uClibc.machine b/meta-yocto-bsp/recipes-core/uclibc/uclibc/atom-pc/uClibc.machine
deleted file mode 100644
index 5df15f9..0000000
--- a/meta-yocto-bsp/recipes-core/uclibc/uclibc/atom-pc/uClibc.machine
+++ /dev/null
@@ -1,69 +0,0 @@
-#
-# Automatically generated make config: don't edit
-# Fri Nov 23 15:49:33 2007
-#
-# TARGET_alpha is not set
-# TARGET_arm is not set
-# TARGET_bfin is not set
-# TARGET_cris is not set
-# TARGET_e1 is not set
-# TARGET_frv is not set
-# TARGET_h8300 is not set
-# TARGET_hppa is not set
-TARGET_i386=y
-# TARGET_i960 is not set
-# TARGET_ia64 is not set
-# TARGET_m68k is not set
-# TARGET_microblaze is not set
-# TARGET_mips is not set
-# TARGET_nios is not set
-# TARGET_nios2 is not set
-# TARGET_powerpc is not set
-# TARGET_sh is not set
-# TARGET_sh64 is not set
-# TARGET_sparc is not set
-# TARGET_v850 is not set
-# TARGET_vax is not set
-# TARGET_x86_64 is not set
-
-#
-# Target Architecture Features and Options
-#
-TARGET_ARCH="i386"
-FORCE_OPTIONS_FOR_ARCH=y
-CONFIG_GENERIC_386=y
-# CONFIG_386 is not set
-# CONFIG_486 is not set
-# CONFIG_586 is not set
-# CONFIG_586MMX is not set
-# CONFIG_686 is not set
-# CONFIG_PENTIUMII is not set
-# CONFIG_PENTIUMIII is not set
-# CONFIG_PENTIUM4 is not set
-# CONFIG_K6 is not set
-# CONFIG_K7 is not set
-# CONFIG_ELAN is not set
-# CONFIG_CRUSOE is not set
-# CONFIG_WINCHIPC6 is not set
-# CONFIG_WINCHIP2 is not set
-# CONFIG_CYRIXIII is not set
-# CONFIG_NEHEMIAH is not set
-TARGET_SUBARCH=""
-
-#
-# Using ELF file format
-#
-ARCH_LITTLE_ENDIAN=y
-
-#
-# Using Little Endian
-#
-ARCH_HAS_MMU=y
-ARCH_USE_MMU=y
-UCLIBC_HAS_FLOATS=y
-UCLIBC_HAS_FPU=y
-DO_C99_MATH=y
-KERNEL_HEADERS="/usr/include"
-HAVE_DOT_CONFIG=y
-
-UCLIBC_HAS_FENV=y
diff --git a/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/atom-pc/xorg.conf b/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/atom-pc/xorg.conf
deleted file mode 100644
index e69de29..0000000
-- 
1.8.3.1


