Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1723EE00C88; Wed,  3 Feb 2016 21:51:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE585E00C76
	for <poky@yoctoproject.org>; Wed,  3 Feb 2016 21:51:21 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga102.fm.intel.com with ESMTP; 03 Feb 2016 21:51:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,393,1449561600"; d="scan'208";a="42157785"
Received: from sghosh7-mobl1.amr.corp.intel.com (HELO swold-mobl.jf.intel.com)
	([10.254.78.200])
	by fmsmga004.fm.intel.com with ESMTP; 03 Feb 2016 21:51:20 -0800
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  3 Feb 2016 21:51:18 -0800
Message-Id: <1454565078-3315-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 2.5.0
Subject: [PATCH 0/8] Jethro/Poky Consolidated Pull
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
X-List-Received-Date: Thu, 04 Feb 2016 05:51:25 -0000

Richard,

This is the second half of the Jethro update that contains the 
kernel updates for meta-yocto-bsp and the yocto-bsp tools fixes.

This can patch set can be found in poky-contrib/sgw/jethro

ssh://git@git.yoctoproject.org/poky-contrib sgw/jethro

Sau!

Alejandro Hernandez (3):
  linux-yocto: Update SRCREV for genericx86* for 3.14, fixes
    CVE-2016-0728
  linux-yocto: Update SRCREV for genericx86* for 3.19, fixes
    CVE-2016-0728
  linux-yocto: Update SRCREV for genericx86* for 4.1, fixes
    CVE-2016-0728

Jianxun Zhang (1):
  meta-yocto-bsp: Remove uvesafb (v86d) from generic x86 features

Leonardo Sandoval (4):
  yocto-bsp: Default kernel version to 4.1 on x86_64
  yocto-bsp: Avoid duplication of user patches
    ({{=machine}}-user-patches.scc)
  yocto-bsp: Set KTYPE to user selected base branch
  yocto-bsp: Set SRCREV meta/machine revisions to AUTOREV

 meta-yocto-bsp/conf/machine/include/genericx86-common.inc          | 2 +-
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend      | 7 +++++--
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend      | 4 ++--
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend       | 7 +++++--
 .../arch/arm/recipes-kernel/linux/files/machine-preempt-rt.scc     | 3 ++-
 .../arch/arm/recipes-kernel/linux/files/machine-standard.scc       | 3 ++-
 .../target/arch/arm/recipes-kernel/linux/files/machine-tiny.scc    | 3 ++-
 .../target/arch/arm/recipes-kernel/linux/linux-yocto-dev.bbappend  | 1 -
 .../arch/arm/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend     | 6 +++---
 .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend   | 6 +++---
 .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend   | 6 +++---
 .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend    | 6 +++---
 .../target/arch/arm/recipes-kernel/linux/linux-yocto_3.14.bbappend | 7 +++----
 .../target/arch/arm/recipes-kernel/linux/linux-yocto_3.19.bbappend | 7 +++----
 .../target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend  | 7 +++----
 .../arch/i386/recipes-kernel/linux/files/machine-preempt-rt.scc    | 3 ++-
 .../arch/i386/recipes-kernel/linux/files/machine-standard.scc      | 3 ++-
 .../target/arch/i386/recipes-kernel/linux/files/machine-tiny.scc   | 3 ++-
 .../target/arch/i386/recipes-kernel/linux/linux-yocto-dev.bbappend | 1 -
 .../arch/i386/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend    | 6 +++---
 .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend  | 6 +++---
 .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend  | 6 +++---
 .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend   | 6 +++---
 .../arch/i386/recipes-kernel/linux/linux-yocto_3.14.bbappend       | 7 +++----
 .../arch/i386/recipes-kernel/linux/linux-yocto_3.19.bbappend       | 7 +++----
 .../target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend | 7 +++----
 .../arch/mips/recipes-kernel/linux/files/machine-preempt-rt.scc    | 3 ++-
 .../arch/mips/recipes-kernel/linux/files/machine-standard.scc      | 3 ++-
 .../target/arch/mips/recipes-kernel/linux/files/machine-tiny.scc   | 3 ++-
 .../target/arch/mips/recipes-kernel/linux/linux-yocto-dev.bbappend | 1 -
 .../arch/mips/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend    | 6 +++---
 .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend  | 6 +++---
 .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend  | 6 +++---
 .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend   | 6 +++---
 .../arch/mips/recipes-kernel/linux/linux-yocto_3.14.bbappend       | 7 +++----
 .../arch/mips/recipes-kernel/linux/linux-yocto_3.19.bbappend       | 7 +++----
 .../target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend | 7 +++----
 .../arch/mips64/recipes-kernel/linux/files/machine-preempt-rt.scc  | 3 ++-
 .../arch/mips64/recipes-kernel/linux/files/machine-standard.scc    | 3 ++-
 .../target/arch/mips64/recipes-kernel/linux/files/machine-tiny.scc | 3 ++-
 .../arch/mips64/recipes-kernel/linux/linux-yocto-dev.bbappend      | 1 -
 .../arch/mips64/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend  | 6 +++---
 .../mips64/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend     | 6 +++---
 .../mips64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend     | 6 +++---
 .../arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend | 6 +++---
 .../arch/mips64/recipes-kernel/linux/linux-yocto_3.14.bbappend     | 5 ++---
 .../arch/mips64/recipes-kernel/linux/linux-yocto_3.19.bbappend     | 7 +++----
 .../arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend      | 7 +++----
 .../arch/powerpc/recipes-kernel/linux/files/machine-preempt-rt.scc | 3 ++-
 .../arch/powerpc/recipes-kernel/linux/files/machine-standard.scc   | 3 ++-
 .../arch/powerpc/recipes-kernel/linux/files/machine-tiny.scc       | 3 ++-
 .../arch/powerpc/recipes-kernel/linux/linux-yocto-dev.bbappend     | 1 -
 .../arch/powerpc/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend | 6 +++---
 .../powerpc/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend    | 6 +++---
 .../powerpc/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend    | 6 +++---
 .../powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend     | 6 +++---
 .../arch/powerpc/recipes-kernel/linux/linux-yocto_3.14.bbappend    | 7 +++----
 .../arch/powerpc/recipes-kernel/linux/linux-yocto_3.19.bbappend    | 7 +++----
 .../arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend     | 7 +++----
 .../arch/qemu/recipes-kernel/linux/files/machine-preempt-rt.scc    | 3 ++-
 .../arch/qemu/recipes-kernel/linux/files/machine-standard.scc      | 3 ++-
 .../target/arch/qemu/recipes-kernel/linux/files/machine-tiny.scc   | 3 ++-
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend | 1 -
 .../arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend    | 6 +++---
 .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend  | 6 +++---
 .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend  | 6 +++---
 .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend   | 6 +++---
 .../arch/qemu/recipes-kernel/linux/linux-yocto_3.14.bbappend       | 7 +++----
 .../arch/qemu/recipes-kernel/linux/linux-yocto_3.19.bbappend       | 7 +++----
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend | 7 +++----
 .../arch/x86_64/recipes-kernel/linux/files/machine-preempt-rt.scc  | 3 ++-
 .../arch/x86_64/recipes-kernel/linux/files/machine-standard.scc    | 3 ++-
 .../target/arch/x86_64/recipes-kernel/linux/files/machine-tiny.scc | 3 ++-
 .../target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall  | 2 +-
 .../arch/x86_64/recipes-kernel/linux/linux-yocto-dev.bbappend      | 1 -
 .../arch/x86_64/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend  | 6 +++---
 .../x86_64/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend     | 6 +++---
 .../x86_64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend     | 6 +++---
 .../arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend | 6 +++---
 .../arch/x86_64/recipes-kernel/linux/linux-yocto_3.14.bbappend     | 7 +++----
 .../arch/x86_64/recipes-kernel/linux/linux-yocto_3.19.bbappend     | 7 +++----
 .../arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend      | 7 +++----
 82 files changed, 202 insertions(+), 203 deletions(-)

-- 
2.5.0


