Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A235E0094C; Sun, 22 Mar 2015 21:24:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C49AE00853
	for <poky@yoctoproject.org>; Sun, 22 Mar 2015 21:24:53 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP; 22 Mar 2015 21:24:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,449,1422950400"; d="scan'208";a="702614097"
Received: from mjobrie1-mobl2.amr.corp.intel.com (HELO localhost)
	([10.254.50.167])
	by orsmga002.jf.intel.com with ESMTP; 22 Mar 2015 21:24:52 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org
Date: Sun, 22 Mar 2015 23:24:50 -0500
Message-Id: <cover.1427082458.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.9.3
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 0/1] yocto-bsp updates for 1.8
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
X-List-Received-Date: Mon, 23 Mar 2015 04:24:57 -0000

This is the yocto-bsp update for 1.8 (to the 3.19 kernel, and removing
3.10 and 3.17 support).

BSPs were generated and build and boot-tested using core-image-sato
for all the qemu targets, and BSPs were generated and build-tested
using core-image-sato for all the non-qemu targets as well.

Important variants such as using old branches, older kernels and
custom kernels were also build and boot-tested.

The following changes since commit 0308f3101b93035ebf564a33acb00adaac108033:

  bitbake: knotty.py: fix indent (2015-03-19 14:20:14 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-1.8-updates
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-1.8-updates

Tom Zanussi (1):
  yocto-bsp: Update templates to 3.19 kernel

 .../arm/recipes-kernel/linux/kernel-list.noinstall |  4 +-
 .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
 .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
 ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
 ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
 .../target/arch/i386/conf/machine/machine.conf     |  4 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
 .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
 ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
 ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
 .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
 ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
 ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
 .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
 ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend |  8 +--
 .../linux/linux-yocto_3.19.bbappend}               |  8 +--
 .../target/arch/powerpc/conf/machine/machine.conf  |  2 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
 .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
 .../linux/linux-yocto-tiny_3.17.bbappend           | 33 ------------
 .../linux/linux-yocto-tiny_3.19.bbappend           | 33 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
 .../linux/linux-yocto_3.19.bbappend}               |  4 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-rt_3.10.bbappend             | 62 ----------------------
 .../linux/linux-yocto-tiny_3.10.bbappend           | 62 ----------------------
 ...3.4.bbappend => linux-yocto-tiny_3.14.bbappend} |  2 +-
 ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 62 ----------------------
 ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
 .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
 .../linux/linux-yocto-tiny_3.17.bbappend           | 33 ------------
 .../linux/linux-yocto-tiny_3.19.bbappend           | 33 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
 ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
 48 files changed, 114 insertions(+), 894 deletions(-)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
 rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (97%)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.10.bbappend
 rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (94%)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
 rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (97%)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.10.bbappend
 rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (94%)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
 rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (97%)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.10.bbappend
 rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (94%)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
 rename scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (97%)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.10.bbappend
 rename scripts/lib/bsp/substrate/target/arch/{powerpc/recipes-kernel/linux/linux-yocto_3.17.bbappend => mips64/recipes-kernel/linux/linux-yocto_3.19.bbappend} (89%)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.10.bbappend
 rename scripts/lib/bsp/substrate/target/arch/{mips64/recipes-kernel/linux/linux-yocto_3.17.bbappend => powerpc/recipes-kernel/linux/linux-yocto_3.19.bbappend} (94%)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{linux-yocto-tiny_3.4.bbappend => linux-yocto-tiny_3.14.bbappend} (99%)
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (99%)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.10.bbappend
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (98%)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.10.bbappend
 rename scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (94%)

-- 
1.9.3


