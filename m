Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E62C04C80A74
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 08:48:29 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Nov 2010 06:48:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,217,1288594800"; d="scan'208";a="678754589"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by orsmga001.jf.intel.com with ESMTP; 18 Nov 2010 06:48:28 -0800
Message-Id: <cover.1290091759.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Thu, 18 Nov 2010 22:49:19 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/7] Base lib/utils upgrade, Dongxiao, 2010/11/18
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
X-List-Received-Date: Thu, 18 Nov 2010 14:48:30 -0000

Hi Saul,

Here are some base lib/utils recipe upgrade, please help to review and pull.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/distro

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (7):
  pm-utils: Upgrade to version 1.4.1
  netbase: Upgrade to version 4.43
  mtd-utils: Upgrade to version 1.4.1
  msynctool: Upgrade to version 0.38
  polkit: Upgrade to version 0.99
  polkit-gnome: Upgrade to version 0.99
  distro_tracking: Update distro tracking fields for pm-utils, netbase,
    etc.

 .../conf/distro/include/distro_tracking_fields.inc |   56 +++++++++++++------
 meta/recipes-bsp/pm-utils/pm-utils_1.3.0.bb        |   17 ------
 meta/recipes-bsp/pm-utils/pm-utils_1.4.1.bb        |   23 ++++++++
 .../opensync/msynctool_0.37.bb                     |   14 -----
 .../opensync/msynctool_0.38.bb                     |   20 +++++++
 .../{netbase => netbase-4.43}/colinux/interfaces   |    0
 .../{netbase => netbase-4.43}/epia/interfaces      |    0
 .../netbase/{netbase => netbase-4.43}/hosts        |    0
 .../netbase/{netbase => netbase-4.43}/init         |    0
 .../netbase/{netbase => netbase-4.43}/interfaces   |    0
 .../{netbase => netbase-4.43}/mtx-1/interfaces     |    0
 .../netbase/{netbase => netbase-4.43}/nfsroot      |    0
 .../{netbase => netbase-4.43}/nokia800/interfaces  |    0
 .../netbase/{netbase => netbase-4.43}/openmn/hosts |    0
 .../{netbase => netbase-4.43}/openmn/interfaces    |    0
 .../{netbase => netbase-4.43}/qemuarm/interfaces   |    0
 .../{netbase => netbase-4.43}/qemuarmv6/interfaces |    0
 .../{netbase => netbase-4.43}/qemuarmv7/interfaces |    0
 .../qemux86-64/interfaces                          |    0
 .../{netbase => netbase-4.43}/qemux86/interfaces   |    0
 .../{netbase => netbase-4.43}/tosa/interfaces      |    0
 .../{netbase => netbase-4.43}/wrt54/interfaces     |    0
 .../{netbase => netbase-4.43}/xxs1500/interfaces   |    0
 .../netbase/{netbase_4.41.bb => netbase_4.43.bb}   |    6 ++-
 ...size-64-and-writesize-4096-as-normal-nand.patch |   24 --------
 .../add-exclusion-to-mkfs-jffs2-git-2.patch        |    0
 .../mtd/{mtd-utils_1.3.1.bb => mtd-utils_1.4.1.bb} |   13 +++--
 meta/recipes-extended/polkit/polkit-gnome_0.96.bb  |   19 -------
 meta/recipes-extended/polkit/polkit-gnome_0.99.bb  |   27 +++++++++
 .../polkit/{polkit_0.96.bb => polkit_0.99.bb}      |   14 ++++-
 30 files changed, 133 insertions(+), 100 deletions(-)
 delete mode 100644 meta/recipes-bsp/pm-utils/pm-utils_1.3.0.bb
 create mode 100644 meta/recipes-bsp/pm-utils/pm-utils_1.4.1.bb
 delete mode 100644 meta/recipes-connectivity/opensync/msynctool_0.37.bb
 create mode 100644 meta/recipes-connectivity/opensync/msynctool_0.38.bb
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/colinux/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/epia/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/hosts (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/init (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/mtx-1/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/nfsroot (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/nokia800/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/openmn/hosts (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/openmn/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/qemuarm/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/qemuarmv6/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/qemuarmv7/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/qemux86-64/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/qemux86/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/tosa/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/wrt54/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase => netbase-4.43}/xxs1500/interfaces (100%)
 rename meta/recipes-core/netbase/{netbase_4.41.bb => netbase_4.43.bb} (90%)
 delete mode 100644 meta/recipes-devtools/mtd/mtd-utils-1.3.1/add-oobsize-64-and-writesize-4096-as-normal-nand.patch
 rename meta/recipes-devtools/mtd/{mtd-utils-1.3.1 => mtd-utils-1.4.1}/add-exclusion-to-mkfs-jffs2-git-2.patch (100%)
 rename meta/recipes-devtools/mtd/{mtd-utils_1.3.1.bb => mtd-utils_1.4.1.bb} (61%)
 delete mode 100644 meta/recipes-extended/polkit/polkit-gnome_0.96.bb
 create mode 100644 meta/recipes-extended/polkit/polkit-gnome_0.99.bb
 rename meta/recipes-extended/polkit/{polkit_0.96.bb => polkit_0.99.bb} (51%)


