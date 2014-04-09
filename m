Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37162E00BA3
	for <poky@yoctoproject.org>; Tue,  8 Apr 2014 21:28:05 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 08 Apr 2014 21:28:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,823,1389772800"; d="scan'208";a="517211501"
Received: from unknown (HELO localhost) ([10.255.12.73])
	by fmsmga002.fm.intel.com with ESMTP; 08 Apr 2014 21:27:55 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue,  8 Apr 2014 23:27:53 -0500
Message-Id: <cover.1397016854.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 0/1] yocto-bsp 3.14 update
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
X-List-Received-Date: Wed, 09 Apr 2014 04:28:08 -0000

This is the 3.14 yocto-bsp update.  It doesn't make sense to update
yocto-bsp until a new versioned kernel has been merged, and with the
3.14 kernel being merged as late as it was this cycle, updates
necessarily lag since a certain amount of bsp-generation and
build-testing needs to be done before it can reasonably be submitted.

Please pull into master.

Thanks,

Tom

The following changes since commit 68a55c8ff779d8df90626e68d5d4e48660dd8027:

  ref-manual: Edits to fix up how GID and UIDs are handled. (2014-04-08 14:20:16 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-3.14-update
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-3.14-update

Tom Zanussi (1):
  yocto-bsp: Update templates to 3.14 kernel

 .../arm/recipes-kernel/linux/kernel-list.noinstall |  4 +-
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 32 -------------
 ...tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend" |  2 +-
 ...nux-yocto_3.14\": }} linux-yocto_3.14.bbappend" |  2 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  8 ++--
 .../arch/i386/conf/machine/{{=machine}}.conf       |  4 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 32 -------------
 ...tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend" |  2 +-
 ...nux-yocto_3.14\": }} linux-yocto_3.14.bbappend" |  2 +-
 .../arch/mips/conf/machine/{{=machine}}.conf       |  1 +
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 32 -------------
 ...tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend" |  2 +-
 ...nux-yocto_3.14\": }} linux-yocto_3.14.bbappend" |  2 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 32 -------------
 ...tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend" |  2 +-
 ...nux-yocto_3.14\": }} linux-yocto_3.14.bbappend" |  2 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...cto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" |  2 +-
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 55 ----------------------
 ...tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" |  2 +-
 ...-tiny_3.14\": }} linux-yocto-tiny_3.4.bbappend" |  6 +--
 ...nux-yocto_3.10\": }} linux-yocto_3.10.bbappend" |  2 +-
 ...nux-yocto_3.14\": }} linux-yocto_3.14.bbappend" |  6 +--
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 32 -------------
 ...tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend" | 32 +++++++++++++
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" | 32 -------------
 ...nux-yocto_3.14\": }} linux-yocto_3.14.bbappend" |  2 +-
 31 files changed, 69 insertions(+), 283 deletions(-)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend" (98%)
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend" (98%)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend" (98%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend" (98%)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend" (98%)
 rename "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend" (98%)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend" (98%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend" (98%)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.4.bbappend" (94%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend" (94%)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" => "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend" (98%)

-- 
1.8.3.1


