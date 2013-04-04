Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88553E0051D
	for <poky@yoctoproject.org>; Thu,  4 Apr 2013 15:09:23 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Apr 2013 15:09:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,411,1363158000"; d="scan'208";a="281004714"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by azsmga001.ch.intel.com with ESMTP; 04 Apr 2013 15:09:22 -0700
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Thu,  4 Apr 2013 17:09:20 -0500
Message-Id: <cover.1365112661.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 0/8] yocto-bsp 3.8-rt support and related fixes
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
X-List-Received-Date: Thu, 04 Apr 2013 22:09:23 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

This adds 3.8-rt support to yocto-bsp along with other assorted fixes
that it exposed in a cascading way; basically when testing BSPs with
3.8-rt, the problem described in YOCTO #4145 showed up, which I tracked
down to a missing close() in the script, but once that was fixed, it
showed a problem in the kernel tools when checking out an existing
branch, and once that was fixed, it showed a problem that was tracked
down to a problem that was fixed in the -rt2 patchset, both of which
were subsequently pulled into the oe-core and kernel repos.

But I didn't stop there, and the rest of the patches here deal with
smaller changes mainly due to the need to reflect changes in the main
metadata and kernel repos.

The following changes since commit 5444db05034e5e693846ccb5543732e790b1d4c7:

  ref-manual: Added preliminary migration raw text. (2013-04-04 14:13:46 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-3.8-rt-and-fixes
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-3.8-rt-and-fixes

Tom Zanussi (8):
  yocto-bsp: add KBRANCH for existing kbranch cases
  yocto-bsp: add linux-yocto-3.8-rt to templates
  yocto-bsp: have replace_file() close file before copying
  yocto-bsp: pass in file object to replace_file()
  yocto-bsp: use specific bsp metadata for qemu machines
  yocto-bsp: qemu machine template updates
  yocto-bsp: set SRCREV for arm-based qemu machines
  yocto-bsp: change qemu-based mips BSP default branch

 scripts/lib/bsp/engine.py                          |  3 +-
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  3 ++
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  3 ++
 ...yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend" | 32 +++++++++++++
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" |  3 ++
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  3 ++
 ...linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" |  3 ++
 .../defconfig"                                     |  2 +-
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  3 ++
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  3 ++
 ...yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend" | 32 +++++++++++++
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" |  3 ++
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  3 ++
 ...linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" |  3 ++
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  3 ++
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  3 ++
 ...yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend" | 32 +++++++++++++
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" |  3 ++
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  3 ++
 ...linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" |  3 ++
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  3 ++
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  3 ++
 ...yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend" | 32 +++++++++++++
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" |  3 ++
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  3 ++
 ...linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" |  3 ++
 .../arch/qemu/conf/machine/{{=machine}}.conf       |  8 ++--
 .../{{=machine}}-standard.scc"                     |  7 +++
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  5 +-
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  3 ++
 ...yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend" | 55 ++++++++++++++++++++++
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" |  3 ++
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  5 +-
 ...linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" |  8 +++-
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  3 ++
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  3 ++
 ...yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend" | 32 +++++++++++++
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" |  3 ++
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  3 ++
 ...linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" |  3 ++
 40 files changed, 324 insertions(+), 10 deletions(-)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend"

-- 
1.7.11.4


