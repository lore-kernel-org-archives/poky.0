Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D96BCE006D9
	for <poky@yoctoproject.org>; Mon, 25 Jun 2012 10:07:28 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 25 Jun 2012 10:07:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="115827469"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.12.180])
	by AZSMGA002.ch.intel.com with ESMTP; 25 Jun 2012 10:07:28 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 25 Jun 2012 10:07:15 -0700
Message-Id: <cover.1340643949.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
Subject: [Consolidated Poky Pull 0/7] Poky Kernel, Tiny and scripts updates
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
X-List-Received-Date: Mon, 25 Jun 2012 17:07:29 -0000

Richard,

This pulls together a number of changes pending for meta-yocto
in Poky Master.

Sau!


The following changes since commit 5e3a61b40b7b697d83b41e7e247cd1f94eb7673c:

  bblayers.conf.sample: Fix empty BBPATH entry warnings (2012-06-25 16:35:55 +0100)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib sgw/stage
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgw/stage

Bruce Ashfield (2):
  linux-libc-headers-yocto: use kernel-arch to set ARCH
  linux-libc-headers-yocto: update to v3.4 and remove unecessary code

Darren Hart (2):
  busybox: Introduce poky-tiny defconfig override
  tiny-init: Basic init mechanism for poky-tiny

Saul Wold (1):
  upstream_tracking: Update Upgraded and Manual Checked upstream

Tom Zanussi (2):
  yocto-bsp: update yocto-bsp machine.conf template
  yocto-bsp: update yocto-bsp xorg.conf templates

 .../conf/distro/include/upstream_tracking.inc      |   61 +-
 meta-yocto/conf/distro/poky-tiny.conf              |    2 +-
 .../busybox/busybox-1.19.4/poky-tiny/defconfig     | 1009 ++++++++++++++++++++
 .../recipes-core/busybox/busybox_1.19.4.bbappend   |    2 +
 meta-yocto/recipes-core/tiny-init/files/init       |   21 +
 .../recipes-core/tiny-init/files/rc.local.sample   |   23 +
 meta-yocto/recipes-core/tiny-init/tiny-init.bb     |   28 +
 .../linux-libc-headers-yocto_git.bb                |   45 +-
 .../arch/qemu/conf/machine/{{=machine}}.conf       |    7 +-
 .../xserver-xf86-config/{{=machine}}/xorg.conf     |    8 +
 ..."x86_64\": }} xserver-xf86-config_0.1.bbappend" |    2 -
 11 files changed, 1132 insertions(+), 76 deletions(-)
 create mode 100644 meta-yocto/recipes-core/busybox/busybox-1.19.4/poky-tiny/defconfig
 create mode 100644 meta-yocto/recipes-core/busybox/busybox_1.19.4.bbappend
 create mode 100644 meta-yocto/recipes-core/tiny-init/files/init
 create mode 100644 meta-yocto/recipes-core/tiny-init/files/rc.local.sample
 create mode 100644 meta-yocto/recipes-core/tiny-init/tiny-init.bb
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/{{ if qemuarch == \"i386\" or qemuarch == \"x86_64\": }} xserver-xf86-config_0.1.bbappend"

-- 
1.7.7.6


