Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCA4EE01404
	for <poky@yoctoproject.org>; Wed, 12 Dec 2012 20:56:43 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 Dec 2012 20:55:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,272,1355126400"; d="scan'208";a="233209795"
Received: from unknown (HELO localhost) ([10.255.13.197])
	by orsmga001.jf.intel.com with ESMTP; 12 Dec 2012 20:56:40 -0800
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Wed, 12 Dec 2012 22:56:38 -0600
Message-Id: <cover.1355373343.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 00/12] BSP tools: add support for custom kernel
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
X-List-Received-Date: Thu, 13 Dec 2012 04:56:44 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This pathset implements 'custom kernel' support in the yocto-bsp and
yocto-kernel tools.  This work is tracked by [YOCTO #3166] 'yocto-bsp:
add support for linux-yocto-custom kernels'.

For yocto-bsp it adds a new 'custom' item to the kernel choices presented
by the 'menu-driven' interface.  It allows users to point the kernel
recipe at an arbitrary git-based kernel repo located either remotely or
locally.  It checks that the repo is a valid git repo that it can connect
to and won't allow the user to continue further until a valid repo is
specified.  It also allows the user to specify various other important
pieces of information needed to generate a functional kernel including
any special (non-master) branch it may need, and an optional user-specified
defconfig.  The kernel recipe it's based on is the linux-yocto-custom.bb in
meta-skeleton/recipes-kernel/linux.

The menu-driven interface has been set up with defaults that have been
verified to work, but that were mainly chosen to provide examples that
would allow users to easily substitute their own values.

yocto-kernel has also been enhanced to work with the custom kernel recipe
and a significant amount of cleanup has been done as well, mainly because
patch management has been made much easier.

It's been tested on local and remote kernel repos, with and without
non-master branches, with and without defconfigs, etc, and has produced
BSPs that boot fine into saton on qemux86 and actual crownbay hardware.

The following changes since commit 45915123a727f86b106da7ccb761b23067b1ff88:

  Documentation: poky-ref-manual - Updates to WORKDIR structure (2012-12-11 16:17:57 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-custom
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-custom

Tom Zanussi (12):
  yocto-bsp: add custom kernel support
  yocto-bsp: add 'custom' choice to kernels()
  yocto-bsp: update existing templates for linux-yocto-custom
  yocto-bsp: add 'edit-git-repo' input line
  yocto-bsp: add 'edit-file' input line
  yocto-bsp: add replace_file()
  yocto-kernel: create open_user_file() wrapper function
  yocto-kernel: don't list comments in config and patch listings
  yocto-kernel: remove assumption that kernel has a version
  yocto-kernel: handle SRC_URIs in .bb files
  yocto-bsp: remove patch-related SRC_URI processing
  yocto-kernel: add support for PRs of the form rN to pr_inc()

 scripts/lib/bsp/engine.py                          | 151 ++++++++++-
 scripts/lib/bsp/kernel.py                          | 293 ++++++---------------
 .../target/arch/arm/conf/machine/{{=machine}}.conf |   9 +-
 .../arm/recipes-kernel/linux/kernel-list.noinstall |   3 +-
 .../user-config.cfg"                               |   0
 .../user-patches.scc"                              |   0
 .../{{=machine}}-non_hardware.cfg"                 |   0
 .../{{=machine}}-preempt-rt.scc"                   |   0
 .../{{=machine}}-standard.scc"                     |   0
 .../{{=machine}}.cfg"                              |   0
 .../{{=machine}}.scc"                              |   0
 .../recipes-kernel/linux/kernel-list.noinstall     |  26 ++
 ...choice == \"custom\": }} linux-yocto-custom.bb" |  57 ++++
 .../defconfig"                                     |   5 +
 .../user-config.cfg"                               |   8 +
 .../user-patches.scc"                              |   8 +
 .../{{=machine}}.cfg"                              |   3 +
 .../{{=machine}}.scc"                              |  17 ++
 .../arch/i386/conf/machine/{{=machine}}.conf       |  16 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |   3 +-
 .../user-config.cfg"                               |   0
 .../user-patches.scc"                              |   0
 .../{{=machine}}-preempt-rt.scc"                   |   0
 .../{{=machine}}-standard.scc"                     |   0
 .../{{=machine}}.cfg"                              |   0
 .../{{=machine}}.scc"                              |   0
 .../arch/mips/conf/machine/{{=machine}}.conf       |   9 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |   3 +-
 .../user-config.cfg"                               |   0
 .../user-patches.scc"                              |   0
 .../{{=machine}}-preempt-rt.scc"                   |   0
 .../{{=machine}}-standard.scc"                     |   0
 .../{{=machine}}.cfg"                              |   0
 .../{{=machine}}.scc"                              |   0
 .../arch/powerpc/conf/machine/{{=machine}}.conf    |   9 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |   3 +-
 .../user-config.cfg"                               |   0
 .../user-patches.scc"                              |   0
 .../{{=machine}}-preempt-rt.scc"                   |   0
 .../{{=machine}}-standard.scc"                     |   0
 .../{{=machine}}.cfg"                              |   0
 .../{{=machine}}.scc"                              |   0
 .../arch/qemu/conf/machine/{{=machine}}.conf       |   9 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |   3 +-
 .../user-config.cfg"                               |   0
 .../user-patches.scc"                              |   0
 .../{{=machine}}-preempt-rt.scc"                   |   0
 .../{{=machine}}-standard.scc"                     |   0
 .../{{=machine}}.cfg"                              |   0
 .../{{=machine}}.scc"                              |   0
 .../arch/x86_64/conf/machine/{{=machine}}.conf     |   9 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |   3 +-
 .../user-config.cfg"                               |   0
 .../user-patches.scc"                              |   0
 .../{{=machine}}-preempt-rt.scc"                   |   0
 .../{{=machine}}-standard.scc"                     |   0
 .../{{=machine}}.cfg"                              |   0
 .../{{=machine}}.scc"                              |   0
 scripts/lib/bsp/tags.py                            |   2 +-
 59 files changed, 418 insertions(+), 231 deletions(-)
 rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/user-config.cfg => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/user-patches.scc => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-non_hardware.cfg => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-non_hardware.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-standard.scc => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.cfg => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.scc => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" (100%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/kernel-list.noinstall
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom.bb"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/defconfig"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/user-config.cfg"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/user-patches.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}.cfg"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}.scc"
 rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/user-config.cfg => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/user-patches.scc => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.cfg => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/user-config.cfg => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/user-patches.scc => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-standard.scc => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.cfg => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.scc => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-config.cfg => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-patches.scc => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-standard.scc => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.cfg => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-config.cfg => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-patches.scc => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-standard.scc => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.cfg => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.scc => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/user-config.cfg => "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/user-patches.scc => "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc => "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc => "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.cfg => "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.scc => "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" (100%)

-- 
1.7.11.4


