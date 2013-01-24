Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CED6E014F5
	for <poky@yoctoproject.org>; Thu, 24 Jan 2013 12:57:38 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 24 Jan 2013 12:57:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,532,1355126400"; d="scan'208";a="194843608"
Received: from unknown (HELO localhost) ([10.255.14.235])
	by AZSMGA002.ch.intel.com with ESMTP; 24 Jan 2013 12:57:37 -0800
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org,
	brian.lloyd@familyhonor.net
Date: Thu, 24 Jan 2013 14:57:35 -0600
Message-Id: <cover.1359060027.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 0/1] yocto-bsp fix
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
X-List-Received-Date: Thu, 24 Jan 2013 20:57:38 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

This patch comes from Brian A. LLoyd and fixes a problem he found in
yocto-bsp:

  https://bugzilla.yoctoproject.org/show_bug.cgi?id=3731

The original patch was for danny, which I moved over to master and added
a couple additional tweaks to, since some implementation details had
changed between danny and master (additions detailed in the commit).

The following changes since commit f0e02dc132c301c0a33a3a8cecddc867b1f0a70e:

  sample.extended: Add DISTRO_FEATURES_INITMAN (2013-01-24 20:09:46 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-user-fixes-master
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-user-fixes-master

Brian A. Lloyd (1):
  yocto-bsp: qualify user files with machine name

 scripts/lib/bsp/kernel.py                          | 28 +++++++++++-----------
 ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |  2 +-
 .../{{=machine}}-user-config.cfg"                  |  0
 .../{{=machine}}-user-patches.scc"                 |  0
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  6 ++---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  6 ++---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  6 ++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  6 ++---
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |  2 +-
 ...choice == \"custom\": }} linux-yocto-custom.bb" |  4 ++--
 .../{{=machine}}-user-config.cfg"                  |  0
 .../{{=machine}}-user-patches.scc"                 |  0
 ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |  2 +-
 .../{{=machine}}-user-config.cfg"                  |  0
 .../{{=machine}}-user-patches.scc"                 |  0
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  6 ++---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  6 ++---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  6 ++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  6 ++---
 .../{{=machine}}-user-config.cfg"                  |  0
 .../{{=machine}}-user-patches.scc"                 |  0
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  6 ++---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  6 ++---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  6 ++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  6 ++---
 .../{{=machine}}-user-config.cfg"                  |  0
 .../{{=machine}}-user-patches.scc"                 |  0
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  6 ++---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  6 ++---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  6 ++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  6 ++---
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |  2 +-
 .../{{=machine}}-user-config.cfg"                  |  0
 .../{{=machine}}-user-patches.scc"                 |  0
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  4 +++-
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  4 +++-
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  6 ++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  6 ++---
 ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |  2 +-
 .../{{=machine}}-user-config.cfg"                  |  0
 .../{{=machine}}-user-patches.scc"                 |  0
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  6 ++---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  6 ++---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  6 ++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  6 ++---
 45 files changed, 93 insertions(+), 89 deletions(-)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/user-config.cfg" => "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}-user-config.cfg" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/user-patches.scc" => "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}-user-patches.scc" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" => "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" => "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc" (100%)

-- 
1.7.11.4


