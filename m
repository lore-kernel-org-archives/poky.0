Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88134E00796; Fri, 10 Oct 2014 20:32:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB101E00781
	for <poky@yoctoproject.org>; Fri, 10 Oct 2014 20:32:22 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 10 Oct 2014 20:29:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,696,1406617200"; d="scan'208";a="616833170"
Received: from ccomac-mobl.ger.corp.intel.com (HELO localhost)
	([10.255.12.246])
	by orsmga002.jf.intel.com with ESMTP; 10 Oct 2014 20:32:21 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 10 Oct 2014 22:32:18 -0500
Message-Id: <cover.1412997968.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 0/1] yocto-bsp 1.7 update
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
X-List-Received-Date: Sat, 11 Oct 2014 03:32:26 -0000

This is the set of yocto-bsp updates adding support for the 3.17 kernel.

It's been extensively tested, both build and boot for all platforms
(boot for all qemu platforms using sato and minimal and x86/x86_64
sato/minimal on real hardware (the only hardware I have and can boot
test)).

The following changes since commit 0172cded27d73437784fe1578110937aede563eb:

  build-appliance-image: Update to dizzy head revision (2014-10-10 22:40:57 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-3.17-update
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-3.17-update

Tom Zanussi (1):
  yocto-bsp: Update templates to 3.17 kernel

 .../target/arch/arm/conf/machine/{{=machine}}.conf | 24 ++++------
 .../arm/recipes-kernel/linux/kernel-list.noinstall |  4 +-
 ...cto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" | 32 +++++++++++++
 ...tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" | 32 +++++++++++++
 ...nux-yocto_3.17\": }} linux-yocto_3.17.bbappend" | 32 +++++++++++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  8 ++--
 .../arch/i386/conf/machine/{{=machine}}.conf       | 20 ++++++--
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...cto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" | 32 +++++++++++++
 ...tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" | 32 +++++++++++++
 ...nux-yocto_3.17\": }} linux-yocto_3.17.bbappend" | 32 +++++++++++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...cto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" | 32 +++++++++++++
 ...tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" | 32 +++++++++++++
 ...nux-yocto_3.17\": }} linux-yocto_3.17.bbappend" | 32 +++++++++++++
 .../arch/powerpc/conf/machine/{{=machine}}.conf    | 12 +++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...cto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" | 32 +++++++++++++
 ...tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" | 32 +++++++++++++
 ...nux-yocto_3.17\": }} linux-yocto_3.17.bbappend" | 32 +++++++++++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  4 +-
 ...cto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" | 55 ++++++++++++++++++++++
 ...tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" | 55 ++++++++++++++++++++++
 ...nux-yocto_3.10\": }} linux-yocto_3.10.bbappend" |  4 +-
 ...nux-yocto_3.14\": }} linux-yocto_3.14.bbappend" |  4 +-
 ...nux-yocto_3.17\": }} linux-yocto_3.17.bbappend" | 55 ++++++++++++++++++++++
 .../arch/x86_64/conf/machine/{{=machine}}.conf     | 10 +++-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...cto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" | 32 +++++++++++++
 ...tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" | 32 +++++++++++++
 ...nux-yocto_3.17\": }} linux-yocto_3.17.bbappend" | 32 +++++++++++++
 32 files changed, 713 insertions(+), 42 deletions(-)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"

-- 
1.8.3.1


