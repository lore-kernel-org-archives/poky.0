Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1BB7B4C8109B
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 15:31:15 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 19 Jan 2011 13:31:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,345,1291622400"; d="scan'208";a="879045464"
Received: from unknown (HELO localhost) ([10.255.14.100])
	by fmsmga001.fm.intel.com with ESMTP; 19 Jan 2011 13:31:03 -0800
Message-Id: <4e278ca0dd7d1b4574842469017ca4c3f46e1776.1295472579.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1295472579.git.dvhart@linux.intel.com>
References: <cover.1295472579.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Old-Date: Wed, 19 Jan 2011 10:17:15 -0800
Date: Wed, 19 Jan 2011 13:30:55 -0800
To: poky@yoctoproject.org, jonathan@jonmasters.org,
	robert.karl.berger@gmail.com
Subject: [PATCH 5/6] u-boot-omap3: remove in favor of upstream u-boot
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
X-List-Received-Date: Wed, 19 Jan 2011 21:31:15 -0000

This repository is stale, the u-boot_git.bb recipe uses the upstream
repository. Remaining machines using this recipe have already been
converted to using u-boot_git.bb.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
CC: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../uboot/u-boot-omap3-git/beagleboard/name.patch  |   14 --------------
 meta/recipes-bsp/uboot/u-boot-omap3_git.bb         |   18 ------------------
 2 files changed, 0 insertions(+), 32 deletions(-)
 delete mode 100644 meta/recipes-bsp/uboot/u-boot-omap3-git/beagleboard/name.patch
 delete mode 100644 meta/recipes-bsp/uboot/u-boot-omap3_git.bb

diff --git a/meta/recipes-bsp/uboot/u-boot-omap3-git/beagleboard/name.patch b/meta/recipes-bsp/uboot/u-boot-omap3-git/beagleboard/name.patch
deleted file mode 100644
index ac03e47..0000000
--- a/meta/recipes-bsp/uboot/u-boot-omap3-git/beagleboard/name.patch
+++ /dev/null
@@ -1,14 +0,0 @@
---- git/Makefile.orig	2008-07-25 16:21:22.000000000 -0700
-+++ git/Makefile	2008-07-27 06:49:08.000000000 -0700
-@@ -2582,8 +2582,8 @@ SMN42_config	:	unconfig
- #########################################################################
- ## ARM CORTEX Systems
- #########################################################################
--omap3530beagle_config :	unconfig
--	@$(MKCONFIG) $(@:_config=) arm omap3 omap3530beagle
-+beagleboard_config :	unconfig
-+	@$(MKCONFIG) omap3530beagle arm omap3 omap3530beagle
- 
- overo_config	:	unconfig
- 	@$(MKCONFIG) $(@:_config=) arm omap3 overo
-
diff --git a/meta/recipes-bsp/uboot/u-boot-omap3_git.bb b/meta/recipes-bsp/uboot/u-boot-omap3_git.bb
deleted file mode 100644
index c0a7738..0000000
--- a/meta/recipes-bsp/uboot/u-boot-omap3_git.bb
+++ /dev/null
@@ -1,18 +0,0 @@
-require u-boot.inc
-
-FILESDIR = "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/u-boot-omap3-git/${MACHINE}"
-
-PV = "2008.10-rc2+${PR}+git${SRCPV}"
-PR="r2"
-
-SRC_URI = "git://gitorious.org/u-boot-omap3/mainline.git;branch=master;protocol=git"
-
-UBOOT_MACHINE_beagleboard = "omap3_beagle_config"
-UBOOT_MACHINE_omap3evm = "omap3_evm_config"
-UBOOT_MACHINE_overo = "omap3_overo_config"
-
-S = "${WORKDIR}/git"
-
-PACKAGE_ARCH = "${MACHINE_ARCH}"
-
-COMPATIBLE_MACHINE = "(beagleboard|omap3evm|overo)"
-- 
1.7.1


