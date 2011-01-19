Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 86A614C8109B
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 15:31:18 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Jan 2011 13:31:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,345,1291622400"; d="scan'208";a="594596225"
Received: from unknown (HELO localhost) ([10.255.14.100])
	by orsmga002.jf.intel.com with ESMTP; 19 Jan 2011 13:31:01 -0800
Message-Id: <22da6f3561559134cb0456ef037cc368bb14a75c.1295472579.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1295472579.git.dvhart@linux.intel.com>
References: <cover.1295472579.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Old-Date: Wed, 19 Jan 2011 10:07:25 -0800
Date: Wed, 19 Jan 2011 13:30:53 -0800
To: poky@yoctoproject.org, jonathan@jonmasters.org,
	robert.karl.berger@gmail.com
Subject: [PATCH 2/6] u-boot: Add a new upstream u-boot recipe
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
X-List-Received-Date: Wed, 19 Jan 2011 21:31:18 -0000

uboot-omap3 appears to be fairly stale (last commit in April 2010) while
the upstream u-boot is making regular tagged releases. Add a new recipe
using the upstream u-boot repository.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
CC: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    1 +
 meta/recipes-bsp/uboot/u-boot.inc                  |    3 +-
 meta/recipes-bsp/uboot/u-boot_git.bb               |   21 ++++++++++++++++++++
 3 files changed, 24 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-bsp/uboot/u-boot_git.bb

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 9af94c6..4c7895c 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -172,6 +172,7 @@ SRCREV_pn-trace-cmd ??= ${TRACECMDREV}
 SRCREV_pn-kernelshark ??= ${TRACECMDREV}
 SRCREV_pn-tidy ??= "e25416e1293e1074bfa6727c80527dcff5b1f3cb"
 SRCREV_pn-u-boot-omap3 ??= "f40f6db278f602b55820693634a7256b0b4e4b80"
+SRCREV_pn-u-boot ??= "v2010.12"
 SRCREV_pn-ubootchart ??= "10"
 SRCREV_pn-webkit-gtk ??= "62027"
 SRCREV_pn-web-webkit ??= "130"
diff --git a/meta/recipes-bsp/uboot/u-boot.inc b/meta/recipes-bsp/uboot/u-boot.inc
index 889f621..6363474 100644
--- a/meta/recipes-bsp/uboot/u-boot.inc
+++ b/meta/recipes-bsp/uboot/u-boot.inc
@@ -9,7 +9,8 @@ inherit deploy
 
 PARALLEL_MAKE=""
 
-EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX}"
+# GCC 4.5.1 builds unusable binaries using -Os, remove it from OPTFLAGS
+EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX} OPTFLAGS=''"
 
 UBOOT_MACHINE ?= "${MACHINE}_config"
 UBOOT_IMAGE ?= "u-boot-${MACHINE}-${PV}-${PR}.bin"
diff --git a/meta/recipes-bsp/uboot/u-boot_git.bb b/meta/recipes-bsp/uboot/u-boot_git.bb
new file mode 100644
index 0000000..16a1dbe
--- /dev/null
+++ b/meta/recipes-bsp/uboot/u-boot_git.bb
@@ -0,0 +1,21 @@
+require u-boot.inc
+
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=4c6cde5df68eff615d36789dc18edd3b \
+                    file://README;beginline=1;endline=22;md5=3a00ef51d3fc96e9d6c1bc4708ccd3b5"
+
+FILESDIR = "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/u-boot-git/${MACHINE}"
+
+PV = "v2010.12+${PR}+git${SRCPV}"
+PR="r0"
+
+SRC_URI = "git://git.denx.de/u-boot.git;branch=master;protocol=git"
+
+UBOOT_MACHINE_beagleboard = "omap3_beagle_config"
+UBOOT_MACHINE_overo = "omap3_overo_config"
+
+S = "${WORKDIR}/git"
+
+PACKAGE_ARCH = "${MACHINE_ARCH}"
+
+COMPATIBLE_MACHINE = "(beagleboard|overo)"
-- 
1.7.1


