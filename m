Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E30B04C80A1D
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 18:36:22 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 18 Feb 2011 16:36:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,190,1297065600"; d="scan'208";a="604376613"
Received: from fear.jf.intel.com (HELO localhost) ([10.7.201.75])
	by orsmga002.jf.intel.com with ESMTP; 18 Feb 2011 16:36:22 -0800
Message-Id: <cover.1298076091.git.dvhart@linux.intel.com>
Old-Date: Fri, 18 Feb 2011 16:41:31 -0800
Date: Fri, 18 Feb 2011 16:46:03 -0800
To: poky@yoctoproject.org, richard.purdie@linuxfoundation.org,
	tom.zanussi@intel.com, bruce.ashfield@windriver.com
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/4] recipes-kernel: follow-up cleanup
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
X-List-Received-Date: Sat, 19 Feb 2011 00:36:23 -0000

From: Darren Hart <dvhart@linux.intel.com>

The following patches perform some additional cleanup of the kernel metadata.
Obsolete kernel recipes are removed. Unused machine config fragments are
removed. Finally, linux.inc is removed.

This cleans the slate and prepares the way for the next stage of kernel recipe
cleanup which will include refactoring the kernel.bbclass and reworking
linux-dummy to provide a good current example of how to create a custom linux
kernel recipe.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/linux
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/linux

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Darren Hart (4):
  zaurus: remove zaurus linux includes
  linux-2.6.23: remove the linux-2.6.23 recipe
  linux-2.6.33.2: remove linux-2.6.33.2 recipe
  linux.inc: remove the obsolete linux.inc kernel recipe include

 meta/conf/machine/include/zaurus-2.6.inc           |   72 -
 meta/conf/machine/include/zaurus-clamshell.inc     |   15 -
 ...x-gcc-4.3-false-modulo-optimization.patch.patch |   48 -
 .../linux/linux-2.6.23/binutils-buildid-arm.patch  |   16 -
 .../linux-2.6.23/cm-x270/0001-cm-x270-base2.patch  | 2851 -----
 .../cm-x270/0002-cm-x270-match-type.patch          |   25 -
 .../linux-2.6.23/cm-x270/0003-cm-x270-ide.patch    |  186 -
 .../linux-2.6.23/cm-x270/0004-cm-x270-it8152.patch |  496 -
 .../linux-2.6.23/cm-x270/0005-cm-x270-pcmcia.patch |  228 -
 .../linux-2.6.23/cm-x270/0006-ramdisk_load.patch   |   80 -
 .../cm-x270/0007-mmcsd_large_cards-r0.patch        |   36 -
 .../cm-x270/0008-cm-x270-nand-simplify-name.patch  |   25 -
 .../linux/linux-2.6.23/cm-x270/16bpp.patch         |   13 -
 .../linux/linux-2.6.23/cm-x270/defconfig           | 1204 --
 .../linux/linux-2.6.23/em-x270/defconfig           | 1354 ---
 .../em-x270/em-x270-battery-sysfs-fix.patch        |   40 -
 .../linux/linux-2.6.23/em-x270/em-x270.patch       |12063 --------------------
 .../linux/linux-2.6.33.2/mpc8313erdb/defconfig     | 1780 ---
 .../linux/linux-2.6.33.2/qemuarm/defconfig         | 1837 ---
 .../linux/linux-2.6.33.2/qemumips/defconfig        | 1825 ---
 .../linux/linux-2.6.33.2/qemuppc/defconfig         | 1780 ---
 .../linux/linux-2.6.33.2/qemux86/defconfig         | 2160 ----
 meta/recipes-kernel/linux/linux.inc                |   95 -
 meta/recipes-kernel/linux/linux_2.6.23.bb          |   83 -
 meta/recipes-kernel/linux/linux_2.6.33.2.bb        |   15 -
 25 files changed, 0 insertions(+), 28327 deletions(-)
 delete mode 100644 meta/conf/machine/include/zaurus-2.6.inc
 delete mode 100644 meta/conf/machine/include/zaurus-clamshell.inc
 delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/1300-fix-gcc-4.3-false-modulo-optimization.patch.patch
 delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/binutils-buildid-arm.patch
 delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/cm-x270/0001-cm-x270-base2.patch
 delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/cm-x270/0002-cm-x270-match-type.patch
 delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/cm-x270/0003-cm-x270-ide.patch
 delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/cm-x270/0004-cm-x270-it8152.patch
 delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/cm-x270/0005-cm-x270-pcmcia.patch
 delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/cm-x270/0006-ramdisk_load.patch
 delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/cm-x270/0007-mmcsd_large_cards-r0.patch
 delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/cm-x270/0008-cm-x270-nand-simplify-name.patch
 delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/cm-x270/16bpp.patch
 delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/cm-x270/defconfig
 delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/em-x270/defconfig
 delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/em-x270/em-x270-battery-sysfs-fix.patch
 delete mode 100644 meta/recipes-kernel/linux/linux-2.6.23/em-x270/em-x270.patch
 delete mode 100644 meta/recipes-kernel/linux/linux-2.6.33.2/mpc8313erdb/defconfig
 delete mode 100644 meta/recipes-kernel/linux/linux-2.6.33.2/qemuarm/defconfig
 delete mode 100644 meta/recipes-kernel/linux/linux-2.6.33.2/qemumips/defconfig
 delete mode 100644 meta/recipes-kernel/linux/linux-2.6.33.2/qemuppc/defconfig
 delete mode 100644 meta/recipes-kernel/linux/linux-2.6.33.2/qemux86/defconfig
 delete mode 100644 meta/recipes-kernel/linux/linux.inc
 delete mode 100644 meta/recipes-kernel/linux/linux_2.6.23.bb
 delete mode 100644 meta/recipes-kernel/linux/linux_2.6.33.2.bb


