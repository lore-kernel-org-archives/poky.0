Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E27B9E00C24; Tue,  2 Feb 2016 10:53:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00, DATE_IN_PAST_06_12, 
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* 1.5 DATE_IN_PAST_06_12 Date: is 6 to 12 hours before Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0101E00838
	for <poky@yoctoproject.org>; Tue,  2 Feb 2016 10:53:07 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 02 Feb 2016 10:53:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,385,1449561600"; d="scan'208";a="907021105"
Received: from yctb05.ostc.intel.com ([10.54.69.59])
	by fmsmga002.fm.intel.com with ESMTP; 02 Feb 2016 10:53:07 -0800
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Tue,  2 Feb 2016 10:50:48 +0000
Message-Id: <1454410252-32098-1-git-send-email-leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.6.2
Cc: saul.wold@intel.com
Subject: [PATCH 0/4][jethro] yocto-bsp related patches backported from master
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
X-List-Received-Date: Tue, 02 Feb 2016 18:53:10 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

Set of patches that mainly fixes the do_patch issues found when creating
BSP layers with the yocto-bsp tool. More detail on each patch description.

Leonardo Sandoval (4):
  yocto-bsp: Default kernel version to 4.1 on x86_64
  yocto-bsp: Avoid duplication of user patches
    ({{=machine}}-user-patches.scc)
  yocto-bsp: Set KTYPE to user selected base branch
  yocto-bsp: Set SRCREV meta/machine revisions to AUTOREV

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
 78 files changed, 189 insertions(+), 196 deletions(-)

-- 
2.6.2


