Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1721DE0044E
	for <poky@yoctoproject.org>; Mon, 29 Jul 2013 23:17:27 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 29 Jul 2013 23:17:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,776,1367996400"; d="scan'208";a="338843081"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.14.47])
	by azsmga001.ch.intel.com with ESMTP; 29 Jul 2013 23:17:12 -0700
From: Saul Wold <sgw@linux.intel.com>
To: ross.burton@intel.com, paul.eggleton@linux.intel.com,
	richard.purdie@linuxfoundation.org, poky@yoctoproject.org
Date: Mon, 29 Jul 2013 23:17:11 -0700
Message-Id: <cover.1375164937.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.1.4
Subject: [CONSOLIDATED PULL (M3 rc1) 0/8] Poky changes
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
X-List-Received-Date: Tue, 30 Jul 2013 06:17:28 -0000

Ross, Paul, Richard:

This is the set of change for Poky!

Please review and ACK

Thanks
	Sau!

The following changes since commit bd1c441a210cae03fb6006c996227211cc29056b:

  bitbake: bitbake: runqueue: add warning if invalidating invalid task (2013-07-29 15:25:09 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib sgw/stage
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgw/stage

Emilia Ciobanu (1):
  package_regex.inc: Add/Update REGEX and PRSPV variable

Laszlo Papp (1):
  layer.conf: make the yocto layer dependent on oe-core

Ross Burton (5):
  genericx86: add new BSP
  local.conf.sample: add genericx86 reference
  genericx86: add fbdev, modesettings and vesa Xorg drivers
  genericx86: disable rootless X
  genericx86: ship all the driver firmware by default

Saul Wold (1):
  poky-lsb: Enable GCC Security flags by default for LSB builds

 meta-yocto-bsp/conf/machine/genericx86.conf        | 38 ++++++++++++
 .../formfactor/formfactor/genericx86/machconfig    |  6 ++
 .../packagegroup-core-tools-profile.bbappend       |  1 +
 .../uclibc/uclibc/genericx86/uClibc.machine        | 69 ++++++++++++++++++++++
 .../packagegroup-core-sdk-gmae.bbappend            |  1 +
 ...egroup-core-standalone-gmae-sdk-target.bbappend |  1 +
 .../xserver-xf86-config/genericx86/xorg.conf       |  0
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |  3 +
 .../recipes-kernel/linux/linux-yocto_3.8.bbappend  |  3 +
 meta-yocto/conf/distro/include/package_regex.inc   | 20 +++++--
 meta-yocto/conf/distro/poky-lsb.conf               |  2 +
 meta-yocto/conf/layer.conf                         |  5 ++
 meta-yocto/conf/local.conf.sample                  |  1 +
 13 files changed, 144 insertions(+), 6 deletions(-)
 create mode 100644 meta-yocto-bsp/conf/machine/genericx86.conf
 create mode 100644 meta-yocto-bsp/recipes-bsp/formfactor/formfactor/genericx86/machconfig
 create mode 100644 meta-yocto-bsp/recipes-core/uclibc/uclibc/genericx86/uClibc.machine
 create mode 100644 meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/genericx86/xorg.conf

-- 
1.8.1.4


