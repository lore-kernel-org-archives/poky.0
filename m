Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB3EC4C8106A
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 15:31:00 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Jan 2011 13:30:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,345,1291622400"; d="scan'208";a="698542345"
Received: from unknown (HELO localhost) ([10.255.14.100])
	by orsmga001.jf.intel.com with ESMTP; 19 Jan 2011 13:30:59 -0800
Message-Id: <cover.1295472579.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Old-Date: Wed, 19 Jan 2011 13:29:39 -0800
Date: Wed, 19 Jan 2011 13:30:51 -0800
To: poky@yoctoproject.org, jonathan@jonmasters.org,
	robert.karl.berger@gmail.com
Subject: [PATCH 0/6] Beagleboard xM support
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
X-List-Received-Date: Wed, 19 Jan 2011 21:31:01 -0000

The following patches provide initial support for the Beagleboard. They update
the x-load and u-boot recipes, modify the beagleboard machine config, and add
README.hardware documentation for the Beagleboard.

The kernel config still needs to be updated to support the onboard NIC of the
xM. Graphics and audio have not been tested. With the basic functionality in
place, hopefully others will be encouraged to participate in fleshing out
Beagleboard support in Poky.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/beagle
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/beagle

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Darren Hart (6):
  x-load: us TI upstream repository, update recipes accordingly
  u-boot: Add a new upstream u-boot recipe
  beagleboard: add x-load and u-boot depends
  overo: use the new upstream u-boot recipe
  u-boot-omap3: remove in favor of upstream u-boot
  README.hardware: add beagleboard documentation

 README.hardware                                    |   71 +++++++++++++
 .../conf/distro/include/poky-default-revisions.inc |    3 +-
 meta/conf/machine/beagleboard.conf                 |    3 +
 meta/conf/machine/overo.conf                       |    2 +-
 .../uboot/u-boot-omap3-git/beagleboard/name.patch  |   14 ---
 meta/recipes-bsp/uboot/u-boot-omap3_git.bb         |   18 ----
 meta/recipes-bsp/uboot/u-boot.inc                  |    3 +-
 meta/recipes-bsp/uboot/u-boot_git.bb               |   21 ++++
 meta/recipes-bsp/x-load/files/signGP.c             |  108 --------------------
 meta/recipes-bsp/x-load/signgp-native.bb           |   14 ---
 .../x-load/x-load-git/beagleboard/armv7-a.patch    |   11 --
 .../x-load/x-load-git/beagleboard/name.patch       |   16 ++--
 .../x-load/x-load-git/omap3evm/armv7-a.patch       |   11 --
 .../x-load/x-load-git/overo/armv7-a.patch          |   11 --
 meta/recipes-bsp/x-load/x-load.inc                 |    5 +-
 meta/recipes-bsp/x-load/x-load_git.bb              |   19 ++--
 16 files changed, 118 insertions(+), 212 deletions(-)
 delete mode 100644 meta/recipes-bsp/uboot/u-boot-omap3-git/beagleboard/name.patch
 delete mode 100644 meta/recipes-bsp/uboot/u-boot-omap3_git.bb
 create mode 100644 meta/recipes-bsp/uboot/u-boot_git.bb
 delete mode 100644 meta/recipes-bsp/x-load/files/signGP.c
 delete mode 100644 meta/recipes-bsp/x-load/signgp-native.bb
 delete mode 100644 meta/recipes-bsp/x-load/x-load-git/beagleboard/armv7-a.patch
 delete mode 100644 meta/recipes-bsp/x-load/x-load-git/omap3evm/armv7-a.patch
 delete mode 100644 meta/recipes-bsp/x-load/x-load-git/overo/armv7-a.patch


