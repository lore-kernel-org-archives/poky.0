Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A389E01581
	for <poky@yoctoproject.org>; Mon, 26 Aug 2013 15:14:24 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 Aug 2013 15:14:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,962,1367996400"; d="scan'208";a="393740255"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.196.147])
	by orsmga002.jf.intel.com with ESMTP; 26 Aug 2013 15:14:05 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>
Date: Mon, 26 Aug 2013 15:18:10 -0700
Message-Id: <cover.1377555271.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/6 V2] Update genericx86 and remove atom-pc
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
X-List-Received-Date: Mon, 26 Aug 2013 22:14:25 -0000

This series updates the genericx86 BSP to use the linux-yocto 3.10
recipe and fixes some of the meta-data related to that.

It also removes the atom-pc machine in favor of genericx86 which is a
super set of atom-pc. This leaves us with no x86 linux-yocto 3.4 based
BSP, but that is standard operating procedure when introducing new BSPs.

Boot tested on the Toshiba NB305 (Pineview) netbook. Ethernet and wifi
are not currently supported and will need to be added in a SRCREV update
after the linux-yocto meta-data for genericx86 has been augmented. The
mode switching and Xorg graphics drivers work correctly, as do USB HID
devices.

V2: Include documentation and config file changes

The following changes since commit 5c2d5f69e88eb1b5eac0ff71a0394a612af4b5d4:

  meta-yocto: change default kernel to 3.10 (2013-08-26 11:22:34 -0700)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib dvhart/genericx86
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=dvhart/genericx86

Darren Hart (5):
  meta-yocto-bsp/genericx86: Update kernel, branch, KMACHINE, and SRCREV
  meta-yocto-bsp: Purge atom-pc in favor of genericx86
  local.conf.sample: Replace atom-pc with genericx86
  README.hardware: Replace atom-pc with genericx86
  documentation: Replace atom-pc with genericx86 in the manuals

Elizabeth Flanagan (1):
  layer.conf: Bumping LAYERVERSION_yoctobsp to account for atom-pc

 README.hardware                                    |   12 +++----
 documentation/dev-manual/dev-manual-model.xml      |    2 +-
 documentation/ref-manual/ref-variables.xml         |    2 +-
 documentation/ref-manual/technical-details.xml     |    2 +-
 meta-yocto-bsp/conf/layer.conf                     |    2 +-
 meta-yocto-bsp/conf/machine/atom-pc.conf           |   37 --------------------
 meta-yocto-bsp/conf/machine/genericx86.conf        |    2 +-
 .../packagegroup-core-tools-profile.bbappend       |    1 -
 .../packagegroup-core-sdk-gmae.bbappend            |    1 -
 ...egroup-core-standalone-gmae-sdk-target.bbappend |    1 -
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend |    9 +++--
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    3 --
 .../recipes-kernel/linux/linux-yocto_3.8.bbappend  |    3 --
 meta-yocto/conf/local.conf.sample                  |    2 +-
 14 files changed, 16 insertions(+), 63 deletions(-)
 delete mode 100644 meta-yocto-bsp/conf/machine/atom-pc.conf

-- 
1.7.9.5


