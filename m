Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 273C4E00CD4; Mon, 23 Oct 2017 09:34:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5E5EE00CD4
	for <poky@yoctoproject.org>; Mon, 23 Oct 2017 09:34:27 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Oct 2017 09:34:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,423,1503385200"; 
   d="scan'208";a="1151344"
Received: from jlock-mobl3.ld.intel.com ([10.103.239.29])
	by orsmga002.jf.intel.com with ESMTP; 23 Oct 2017 09:34:25 -0700
From: Joshua Lock <joshua.g.lock@intel.com>
To: poky@yoctoproject.org
Date: Mon, 23 Oct 2017 17:34:17 +0100
Message-Id: <cover.1508776260.git.joshua.g.lock@intel.com>
X-Mailer: git-send-email 2.13.6
Subject: [PATCH 0/5] Remove no longer maintained scripts
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
X-List-Received-Date: Mon, 23 Oct 2017 16:34:31 -0000

The yocto-bsp, yocto-layer and yocto-kernel scripts are no longer actively
maintained. bitbake-layers provides a more complete alternative to
yocto-layer, any missing features can be filed as enhancement requests.

Joshua

The following changes since commit 2d8a572df7498ce8eb3a78f05384f0f7dd5ecb91:

  poky: add debian-9 to SANITY_TESTED_DISTROS (2017-10-09 10:04:17 +0100)

are available in the git repository at:

  git://github.com/incandescant/meta-yocto joshuagl/removescripts

for you to fetch changes up to 04d7535f0016c58f7c3623c0649cf43d7c87a415:

  scripts/lib/bsp: delete, all users have been removed (2017-10-23 17:26:19 +0100)

----------------------------------------------------------------
Joshua Lock (5):
      yocto-bsp: remove this tool
      meta-yocto-bsp/lib/oeqa: remove yoctobsp selftest
      yocto-layer: remove this tool
      yocto-kernel: remove this tool
      scripts/lib/bsp: delete, all users have been removed

 meta-yocto-bsp/lib/oeqa/yoctobsp.py                |   39 -
 scripts/lib/bsp/__init__.py                        |   22 -
 scripts/lib/bsp/engine.py                          | 1931 --------------------
 scripts/lib/bsp/help.py                            | 1054 -----------
 scripts/lib/bsp/kernel.py                          | 1069 -----------
 .../lib/bsp/substrate/target/arch/arm/.gitignore   |    0
 .../target/arch/arm/conf/machine/machine.conf      |  100 -
 .../xserver-xf86-config/machine.noinstall          |    1 -
 .../xserver-xf86-config/machine/xorg.conf          |   34 -
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    2 -
 .../arch/arm/recipes-kernel/linux/files.noinstall  |    1 -
 .../linux/files/machine-non_hardware.cfg           |   31 -
 .../linux/files/machine-preempt-rt.scc             |   15 -
 .../linux/files/machine-standard.scc               |   15 -
 .../recipes-kernel/linux/files/machine-tiny.scc    |   11 -
 .../linux/files/machine-user-config.cfg            |    1 -
 .../linux/files/machine-user-features.scc          |    1 -
 .../linux/files/machine-user-patches.scc           |    1 -
 .../arm/recipes-kernel/linux/files/machine.cfg     |  321 ----
 .../arm/recipes-kernel/linux/files/machine.scc     |    6 -
 .../arm/recipes-kernel/linux/kernel-list.noinstall |    5 -
 .../recipes-kernel/linux/linux-yocto-dev.bbappend  |   28 -
 .../linux/linux-yocto-tiny_4.10.bbappend           |   37 -
 .../linux/linux-yocto-tiny_4.12.bbappend           |   37 -
 .../linux/linux-yocto-tiny_4.4.bbappend            |   37 -
 .../recipes-kernel/linux/linux-yocto_4.10.bbappend |   37 -
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend |   37 -
 .../recipes-kernel/linux/linux-yocto_4.4.bbappend  |   37 -
 .../bsp/substrate/target/arch/common/COPYING.MIT   |   17 -
 .../lib/bsp/substrate/target/arch/common/README    |  118 --
 .../substrate/target/arch/common/README.sources    |   17 -
 .../substrate/target/arch/common/binary/.gitignore |    0
 .../substrate/target/arch/common/conf/layer.conf   |   10 -
 .../formfactor/formfactor/machine.noinstall        |    1 -
 .../formfactor/formfactor/machine/machconfig       |    5 -
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 -
 .../recipes-kernel/linux/kernel-list.noinstall     |   26 -
 .../recipes-kernel/linux/linux-yocto-custom.bb     |   58 -
 .../linux/linux-yocto-custom.noinstall             |    1 -
 .../linux/linux-yocto-custom/defconfig             |    5 -
 .../linux-yocto-custom/machine-user-config.cfg     |    9 -
 .../linux-yocto-custom/machine-user-features.scc   |    1 -
 .../linux-yocto-custom/machine-user-patches.scc    |    9 -
 .../linux/linux-yocto-custom/machine.cfg           |    4 -
 .../linux/linux-yocto-custom/machine.scc           |   16 -
 .../target/arch/i386/conf/machine/machine.conf     |   69 -
 .../xserver-xf86-config/machine.noinstall          |    1 -
 .../xserver-xf86-config/machine/xorg.conf          |    1 -
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    2 -
 .../arch/i386/recipes-kernel/linux/files.noinstall |    1 -
 .../linux/files/machine-preempt-rt.scc             |   17 -
 .../linux/files/machine-standard.scc               |   17 -
 .../recipes-kernel/linux/files/machine-tiny.scc    |   11 -
 .../linux/files/machine-user-config.cfg            |    1 -
 .../linux/files/machine-user-features.scc          |    1 -
 .../linux/files/machine-user-patches.scc           |    1 -
 .../i386/recipes-kernel/linux/files/machine.cfg    |   58 -
 .../i386/recipes-kernel/linux/files/machine.scc    |   19 -
 .../recipes-kernel/linux/kernel-list.noinstall     |    5 -
 .../recipes-kernel/linux/linux-yocto-dev.bbappend  |   28 -
 .../linux/linux-yocto-tiny_4.10.bbappend           |   37 -
 .../linux/linux-yocto-tiny_4.12.bbappend           |   37 -
 .../linux/linux-yocto-tiny_4.4.bbappend            |   37 -
 .../recipes-kernel/linux/linux-yocto_4.10.bbappend |   37 -
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend |   37 -
 .../recipes-kernel/linux/linux-yocto_4.4.bbappend  |   37 -
 .../bsp/substrate/target/arch/layer/COPYING.MIT    |   17 -
 scripts/lib/bsp/substrate/target/arch/layer/README |   64 -
 .../substrate/target/arch/layer/conf/layer.conf    |   10 -
 .../target/arch/layer/layer-questions.noinstall    |   14 -
 .../arch/layer/recipes-example-bbappend.noinstall  |    1 -
 .../example-bbappend-version.bbappend              |    9 -
 .../example-bbappend-version.noinstall             |    1 -
 .../example-bbappend-version/example.patch         |   12 -
 .../target/arch/layer/recipes-example.noinstall    |    1 -
 .../recipes-example/example/example-recipe-0.1.bb  |   23 -
 .../example/example-recipe-0.1.noinstall           |    1 -
 .../example/example-recipe-0.1/example.patch       |   12 -
 .../example/example-recipe-0.1/helloworld.c        |    8 -
 .../lib/bsp/substrate/target/arch/mips/.gitignore  |    0
 .../target/arch/mips/conf/machine/machine.conf     |   38 -
 .../arch/mips/recipes-kernel/linux/files.noinstall |    1 -
 .../linux/files/machine-preempt-rt.scc             |   11 -
 .../linux/files/machine-standard.scc               |   11 -
 .../recipes-kernel/linux/files/machine-tiny.scc    |   11 -
 .../linux/files/machine-user-config.cfg            |    1 -
 .../linux/files/machine-user-features.scc          |    1 -
 .../linux/files/machine-user-patches.scc           |    1 -
 .../mips/recipes-kernel/linux/files/machine.cfg    |    2 -
 .../mips/recipes-kernel/linux/files/machine.scc    |    6 -
 .../recipes-kernel/linux/kernel-list.noinstall     |    5 -
 .../recipes-kernel/linux/linux-yocto-dev.bbappend  |   28 -
 .../linux/linux-yocto-tiny_4.10.bbappend           |   37 -
 .../linux/linux-yocto-tiny_4.12.bbappend           |   37 -
 .../linux/linux-yocto-tiny_4.4.bbappend            |   37 -
 .../recipes-kernel/linux/linux-yocto_4.10.bbappend |   37 -
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend |   37 -
 .../recipes-kernel/linux/linux-yocto_4.4.bbappend  |   37 -
 .../bsp/substrate/target/arch/mips64/.gitignore    |    0
 .../target/arch/mips64/conf/machine/machine.conf   |   38 -
 .../mips64/recipes-kernel/linux/files.noinstall    |    1 -
 .../linux/files/machine-preempt-rt.scc             |   11 -
 .../linux/files/machine-standard.scc               |   11 -
 .../recipes-kernel/linux/files/machine-tiny.scc    |   11 -
 .../linux/files/machine-user-config.cfg            |    1 -
 .../linux/files/machine-user-features.scc          |    1 -
 .../linux/files/machine-user-patches.scc           |    1 -
 .../mips64/recipes-kernel/linux/files/machine.cfg  |   66 -
 .../mips64/recipes-kernel/linux/files/machine.scc  |    6 -
 .../recipes-kernel/linux/kernel-list.noinstall     |    5 -
 .../recipes-kernel/linux/linux-yocto-dev.bbappend  |   28 -
 .../linux/linux-yocto-tiny_4.10.bbappend           |   37 -
 .../linux/linux-yocto-tiny_4.12.bbappend           |   37 -
 .../linux/linux-yocto-tiny_4.4.bbappend            |   37 -
 .../recipes-kernel/linux/linux-yocto_4.10.bbappend |   37 -
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend |   37 -
 .../recipes-kernel/linux/linux-yocto_4.4.bbappend  |   37 -
 .../bsp/substrate/target/arch/powerpc/.gitignore   |    0
 .../target/arch/powerpc/conf/machine/machine.conf  |   86 -
 .../powerpc/recipes-kernel/linux/files.noinstall   |    1 -
 .../linux/files/machine-preempt-rt.scc             |   11 -
 .../linux/files/machine-standard.scc               |   11 -
 .../recipes-kernel/linux/files/machine-tiny.scc    |   11 -
 .../linux/files/machine-user-config.cfg            |    1 -
 .../linux/files/machine-user-features.scc          |    1 -
 .../linux/files/machine-user-patches.scc           |    1 -
 .../powerpc/recipes-kernel/linux/files/machine.cfg |  164 --
 .../powerpc/recipes-kernel/linux/files/machine.scc |    8 -
 .../recipes-kernel/linux/kernel-list.noinstall     |    5 -
 .../recipes-kernel/linux/linux-yocto-dev.bbappend  |   28 -
 .../linux/linux-yocto-tiny_4.10.bbappend           |   37 -
 .../linux/linux-yocto-tiny_4.12.bbappend           |   37 -
 .../linux/linux-yocto-tiny_4.4.bbappend            |   37 -
 .../recipes-kernel/linux/linux-yocto_4.10.bbappend |   37 -
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend |   37 -
 .../recipes-kernel/linux/linux-yocto_4.4.bbappend  |   37 -
 .../target/arch/qemu/conf/machine/machine.conf     |   71 -
 .../init-ifupdown/init-ifupdown/machine.noinstall  |    1 -
 .../init-ifupdown/init-ifupdown/machine/interfaces |    5 -
 .../init-ifupdown/init-ifupdown_1.0.bbappend       |    1 -
 .../xserver-xf86-config/machine.noinstall          |    1 -
 .../xserver-xf86-config/machine/xorg.conf          |   77 -
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    1 -
 .../arch/qemu/recipes-kernel/linux/files.noinstall |    1 -
 .../linux/files/machine-preempt-rt.scc             |   11 -
 .../linux/files/machine-standard.scc               |   20 -
 .../recipes-kernel/linux/files/machine-tiny.scc    |   11 -
 .../linux/files/machine-user-config.cfg            |    1 -
 .../linux/files/machine-user-features.scc          |    1 -
 .../linux/files/machine-user-patches.scc           |    1 -
 .../qemu/recipes-kernel/linux/files/machine.cfg    |    3 -
 .../qemu/recipes-kernel/linux/files/machine.scc    |    3 -
 .../recipes-kernel/linux/kernel-list.noinstall     |    5 -
 .../recipes-kernel/linux/linux-yocto-dev.bbappend  |   59 -
 .../linux/linux-yocto-tiny_4.10.bbappend           |   67 -
 .../linux/linux-yocto-tiny_4.12.bbappend           |   67 -
 .../linux/linux-yocto-tiny_4.4.bbappend            |   67 -
 .../recipes-kernel/linux/linux-yocto_4.10.bbappend |   67 -
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend |   67 -
 .../recipes-kernel/linux/linux-yocto_4.4.bbappend  |   67 -
 .../bsp/substrate/target/arch/x86_64/.gitignore    |    0
 .../target/arch/x86_64/conf/machine/machine.conf   |   65 -
 .../xserver-xf86-config/machine.noinstall          |    1 -
 .../xserver-xf86-config/machine/xorg.conf          |    1 -
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    2 -
 .../x86_64/recipes-kernel/linux/files.noinstall    |    1 -
 .../linux/files/machine-preempt-rt.scc             |   17 -
 .../linux/files/machine-standard.scc               |   17 -
 .../recipes-kernel/linux/files/machine-tiny.scc    |   11 -
 .../linux/files/machine-user-config.cfg            |    1 -
 .../linux/files/machine-user-features.scc          |    1 -
 .../linux/files/machine-user-patches.scc           |    1 -
 .../x86_64/recipes-kernel/linux/files/machine.cfg  |   48 -
 .../x86_64/recipes-kernel/linux/files/machine.scc  |   12 -
 .../recipes-kernel/linux/kernel-list.noinstall     |    5 -
 .../recipes-kernel/linux/linux-yocto-dev.bbappend  |   28 -
 .../linux/linux-yocto-tiny_4.10.bbappend           |   37 -
 .../linux/linux-yocto-tiny_4.12.bbappend           |   37 -
 .../linux/linux-yocto-tiny_4.4.bbappend            |   37 -
 .../recipes-kernel/linux/linux-yocto_4.10.bbappend |   37 -
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend |   37 -
 .../recipes-kernel/linux/linux-yocto_4.4.bbappend  |   37 -
 scripts/lib/bsp/tags.py                            |   49 -
 scripts/yocto-bsp                                  |  163 --
 scripts/yocto-kernel                               |  399 ----
 scripts/yocto-layer                                |  151 --
 186 files changed, 8996 deletions(-)
 delete mode 100644 meta-yocto-bsp/lib/oeqa/yoctobsp.py
 delete mode 100644 scripts/lib/bsp/__init__.py
 delete mode 100644 scripts/lib/bsp/engine.py
 delete mode 100644 scripts/lib/bsp/help.py
 delete mode 100644 scripts/lib/bsp/kernel.py
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/.gitignore
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/conf/machine/machine.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/machine/xorg.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-non_hardware.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-preempt-rt.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-standard.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-tiny.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-user-config.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-user-features.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-user-patches.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-dev.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/COPYING.MIT
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/README
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/README.sources
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/binary/.gitignore
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/conf/layer.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor/machine.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor/machine/machconfig
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor_0.0.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/kernel-list.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/defconfig
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine-user-config.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine-user-features.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine-user-patches.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/conf/machine/machine.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/machine/xorg.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-preempt-rt.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-standard.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-tiny.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-user-config.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-user-features.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-user-patches.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-dev.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/COPYING.MIT
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/README
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/conf/layer.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/layer-questions.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend/example-bbappend/example-bbappend-version.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend/example-bbappend/example-bbappend-version.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend/example-bbappend/example-bbappend-version/example.patch
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1/example.patch
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1/helloworld.c
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/.gitignore
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/conf/machine/machine.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-preempt-rt.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-standard.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-tiny.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-user-config.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-user-features.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-user-patches.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-dev.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/.gitignore
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/conf/machine/machine.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-preempt-rt.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-standard.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-tiny.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-user-config.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-user-features.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-user-patches.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/kernel-list.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-dev.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/.gitignore
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/machine.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-preempt-rt.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-standard.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-tiny.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-user-config.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-user-features.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-user-patches.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-dev.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/machine.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown/machine.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown/machine/interfaces
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown_1.0.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/machine/xorg.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-preempt-rt.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-standard.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-tiny.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-user-config.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-user-features.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-user-patches.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/.gitignore
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/machine.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/machine/xorg.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-preempt-rt.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-standard.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-tiny.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-user-config.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-user-features.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-user-patches.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-dev.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/tags.py
 delete mode 100755 scripts/yocto-bsp
 delete mode 100755 scripts/yocto-kernel
 delete mode 100755 scripts/yocto-layer

Joshua Lock (5):
  yocto-bsp: remove this tool
  meta-yocto-bsp/lib/oeqa: remove yoctobsp selftest
  yocto-layer: remove this tool
  yocto-kernel: remove this tool
  scripts/lib/bsp: delete, all users have been removed

 meta-yocto-bsp/lib/oeqa/yoctobsp.py                |   39 -
 scripts/lib/bsp/__init__.py                        |   22 -
 scripts/lib/bsp/engine.py                          | 1931 --------------------
 scripts/lib/bsp/help.py                            | 1054 -----------
 scripts/lib/bsp/kernel.py                          | 1069 -----------
 .../lib/bsp/substrate/target/arch/arm/.gitignore   |    0
 .../target/arch/arm/conf/machine/machine.conf      |  100 -
 .../xserver-xf86-config/machine.noinstall          |    1 -
 .../xserver-xf86-config/machine/xorg.conf          |   34 -
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    2 -
 .../arch/arm/recipes-kernel/linux/files.noinstall  |    1 -
 .../linux/files/machine-non_hardware.cfg           |   31 -
 .../linux/files/machine-preempt-rt.scc             |   15 -
 .../linux/files/machine-standard.scc               |   15 -
 .../recipes-kernel/linux/files/machine-tiny.scc    |   11 -
 .../linux/files/machine-user-config.cfg            |    1 -
 .../linux/files/machine-user-features.scc          |    1 -
 .../linux/files/machine-user-patches.scc           |    1 -
 .../arm/recipes-kernel/linux/files/machine.cfg     |  321 ----
 .../arm/recipes-kernel/linux/files/machine.scc     |    6 -
 .../arm/recipes-kernel/linux/kernel-list.noinstall |    5 -
 .../recipes-kernel/linux/linux-yocto-dev.bbappend  |   28 -
 .../linux/linux-yocto-tiny_4.10.bbappend           |   37 -
 .../linux/linux-yocto-tiny_4.12.bbappend           |   37 -
 .../linux/linux-yocto-tiny_4.4.bbappend            |   37 -
 .../recipes-kernel/linux/linux-yocto_4.10.bbappend |   37 -
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend |   37 -
 .../recipes-kernel/linux/linux-yocto_4.4.bbappend  |   37 -
 .../bsp/substrate/target/arch/common/COPYING.MIT   |   17 -
 .../lib/bsp/substrate/target/arch/common/README    |  118 --
 .../substrate/target/arch/common/README.sources    |   17 -
 .../substrate/target/arch/common/binary/.gitignore |    0
 .../substrate/target/arch/common/conf/layer.conf   |   10 -
 .../formfactor/formfactor/machine.noinstall        |    1 -
 .../formfactor/formfactor/machine/machconfig       |    5 -
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    2 -
 .../recipes-kernel/linux/kernel-list.noinstall     |   26 -
 .../recipes-kernel/linux/linux-yocto-custom.bb     |   58 -
 .../linux/linux-yocto-custom.noinstall             |    1 -
 .../linux/linux-yocto-custom/defconfig             |    5 -
 .../linux-yocto-custom/machine-user-config.cfg     |    9 -
 .../linux-yocto-custom/machine-user-features.scc   |    1 -
 .../linux-yocto-custom/machine-user-patches.scc    |    9 -
 .../linux/linux-yocto-custom/machine.cfg           |    4 -
 .../linux/linux-yocto-custom/machine.scc           |   16 -
 .../target/arch/i386/conf/machine/machine.conf     |   69 -
 .../xserver-xf86-config/machine.noinstall          |    1 -
 .../xserver-xf86-config/machine/xorg.conf          |    1 -
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    2 -
 .../arch/i386/recipes-kernel/linux/files.noinstall |    1 -
 .../linux/files/machine-preempt-rt.scc             |   17 -
 .../linux/files/machine-standard.scc               |   17 -
 .../recipes-kernel/linux/files/machine-tiny.scc    |   11 -
 .../linux/files/machine-user-config.cfg            |    1 -
 .../linux/files/machine-user-features.scc          |    1 -
 .../linux/files/machine-user-patches.scc           |    1 -
 .../i386/recipes-kernel/linux/files/machine.cfg    |   58 -
 .../i386/recipes-kernel/linux/files/machine.scc    |   19 -
 .../recipes-kernel/linux/kernel-list.noinstall     |    5 -
 .../recipes-kernel/linux/linux-yocto-dev.bbappend  |   28 -
 .../linux/linux-yocto-tiny_4.10.bbappend           |   37 -
 .../linux/linux-yocto-tiny_4.12.bbappend           |   37 -
 .../linux/linux-yocto-tiny_4.4.bbappend            |   37 -
 .../recipes-kernel/linux/linux-yocto_4.10.bbappend |   37 -
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend |   37 -
 .../recipes-kernel/linux/linux-yocto_4.4.bbappend  |   37 -
 .../bsp/substrate/target/arch/layer/COPYING.MIT    |   17 -
 scripts/lib/bsp/substrate/target/arch/layer/README |   64 -
 .../substrate/target/arch/layer/conf/layer.conf    |   10 -
 .../target/arch/layer/layer-questions.noinstall    |   14 -
 .../arch/layer/recipes-example-bbappend.noinstall  |    1 -
 .../example-bbappend-version.bbappend              |    9 -
 .../example-bbappend-version.noinstall             |    1 -
 .../example-bbappend-version/example.patch         |   12 -
 .../target/arch/layer/recipes-example.noinstall    |    1 -
 .../recipes-example/example/example-recipe-0.1.bb  |   23 -
 .../example/example-recipe-0.1.noinstall           |    1 -
 .../example/example-recipe-0.1/example.patch       |   12 -
 .../example/example-recipe-0.1/helloworld.c        |    8 -
 .../lib/bsp/substrate/target/arch/mips/.gitignore  |    0
 .../target/arch/mips/conf/machine/machine.conf     |   38 -
 .../arch/mips/recipes-kernel/linux/files.noinstall |    1 -
 .../linux/files/machine-preempt-rt.scc             |   11 -
 .../linux/files/machine-standard.scc               |   11 -
 .../recipes-kernel/linux/files/machine-tiny.scc    |   11 -
 .../linux/files/machine-user-config.cfg            |    1 -
 .../linux/files/machine-user-features.scc          |    1 -
 .../linux/files/machine-user-patches.scc           |    1 -
 .../mips/recipes-kernel/linux/files/machine.cfg    |    2 -
 .../mips/recipes-kernel/linux/files/machine.scc    |    6 -
 .../recipes-kernel/linux/kernel-list.noinstall     |    5 -
 .../recipes-kernel/linux/linux-yocto-dev.bbappend  |   28 -
 .../linux/linux-yocto-tiny_4.10.bbappend           |   37 -
 .../linux/linux-yocto-tiny_4.12.bbappend           |   37 -
 .../linux/linux-yocto-tiny_4.4.bbappend            |   37 -
 .../recipes-kernel/linux/linux-yocto_4.10.bbappend |   37 -
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend |   37 -
 .../recipes-kernel/linux/linux-yocto_4.4.bbappend  |   37 -
 .../bsp/substrate/target/arch/mips64/.gitignore    |    0
 .../target/arch/mips64/conf/machine/machine.conf   |   38 -
 .../mips64/recipes-kernel/linux/files.noinstall    |    1 -
 .../linux/files/machine-preempt-rt.scc             |   11 -
 .../linux/files/machine-standard.scc               |   11 -
 .../recipes-kernel/linux/files/machine-tiny.scc    |   11 -
 .../linux/files/machine-user-config.cfg            |    1 -
 .../linux/files/machine-user-features.scc          |    1 -
 .../linux/files/machine-user-patches.scc           |    1 -
 .../mips64/recipes-kernel/linux/files/machine.cfg  |   66 -
 .../mips64/recipes-kernel/linux/files/machine.scc  |    6 -
 .../recipes-kernel/linux/kernel-list.noinstall     |    5 -
 .../recipes-kernel/linux/linux-yocto-dev.bbappend  |   28 -
 .../linux/linux-yocto-tiny_4.10.bbappend           |   37 -
 .../linux/linux-yocto-tiny_4.12.bbappend           |   37 -
 .../linux/linux-yocto-tiny_4.4.bbappend            |   37 -
 .../recipes-kernel/linux/linux-yocto_4.10.bbappend |   37 -
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend |   37 -
 .../recipes-kernel/linux/linux-yocto_4.4.bbappend  |   37 -
 .../bsp/substrate/target/arch/powerpc/.gitignore   |    0
 .../target/arch/powerpc/conf/machine/machine.conf  |   86 -
 .../powerpc/recipes-kernel/linux/files.noinstall   |    1 -
 .../linux/files/machine-preempt-rt.scc             |   11 -
 .../linux/files/machine-standard.scc               |   11 -
 .../recipes-kernel/linux/files/machine-tiny.scc    |   11 -
 .../linux/files/machine-user-config.cfg            |    1 -
 .../linux/files/machine-user-features.scc          |    1 -
 .../linux/files/machine-user-patches.scc           |    1 -
 .../powerpc/recipes-kernel/linux/files/machine.cfg |  164 --
 .../powerpc/recipes-kernel/linux/files/machine.scc |    8 -
 .../recipes-kernel/linux/kernel-list.noinstall     |    5 -
 .../recipes-kernel/linux/linux-yocto-dev.bbappend  |   28 -
 .../linux/linux-yocto-tiny_4.10.bbappend           |   37 -
 .../linux/linux-yocto-tiny_4.12.bbappend           |   37 -
 .../linux/linux-yocto-tiny_4.4.bbappend            |   37 -
 .../recipes-kernel/linux/linux-yocto_4.10.bbappend |   37 -
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend |   37 -
 .../recipes-kernel/linux/linux-yocto_4.4.bbappend  |   37 -
 .../target/arch/qemu/conf/machine/machine.conf     |   71 -
 .../init-ifupdown/init-ifupdown/machine.noinstall  |    1 -
 .../init-ifupdown/init-ifupdown/machine/interfaces |    5 -
 .../init-ifupdown/init-ifupdown_1.0.bbappend       |    1 -
 .../xserver-xf86-config/machine.noinstall          |    1 -
 .../xserver-xf86-config/machine/xorg.conf          |   77 -
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    1 -
 .../arch/qemu/recipes-kernel/linux/files.noinstall |    1 -
 .../linux/files/machine-preempt-rt.scc             |   11 -
 .../linux/files/machine-standard.scc               |   20 -
 .../recipes-kernel/linux/files/machine-tiny.scc    |   11 -
 .../linux/files/machine-user-config.cfg            |    1 -
 .../linux/files/machine-user-features.scc          |    1 -
 .../linux/files/machine-user-patches.scc           |    1 -
 .../qemu/recipes-kernel/linux/files/machine.cfg    |    3 -
 .../qemu/recipes-kernel/linux/files/machine.scc    |    3 -
 .../recipes-kernel/linux/kernel-list.noinstall     |    5 -
 .../recipes-kernel/linux/linux-yocto-dev.bbappend  |   59 -
 .../linux/linux-yocto-tiny_4.10.bbappend           |   67 -
 .../linux/linux-yocto-tiny_4.12.bbappend           |   67 -
 .../linux/linux-yocto-tiny_4.4.bbappend            |   67 -
 .../recipes-kernel/linux/linux-yocto_4.10.bbappend |   67 -
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend |   67 -
 .../recipes-kernel/linux/linux-yocto_4.4.bbappend  |   67 -
 .../bsp/substrate/target/arch/x86_64/.gitignore    |    0
 .../target/arch/x86_64/conf/machine/machine.conf   |   65 -
 .../xserver-xf86-config/machine.noinstall          |    1 -
 .../xserver-xf86-config/machine/xorg.conf          |    1 -
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    2 -
 .../x86_64/recipes-kernel/linux/files.noinstall    |    1 -
 .../linux/files/machine-preempt-rt.scc             |   17 -
 .../linux/files/machine-standard.scc               |   17 -
 .../recipes-kernel/linux/files/machine-tiny.scc    |   11 -
 .../linux/files/machine-user-config.cfg            |    1 -
 .../linux/files/machine-user-features.scc          |    1 -
 .../linux/files/machine-user-patches.scc           |    1 -
 .../x86_64/recipes-kernel/linux/files/machine.cfg  |   48 -
 .../x86_64/recipes-kernel/linux/files/machine.scc  |   12 -
 .../recipes-kernel/linux/kernel-list.noinstall     |    5 -
 .../recipes-kernel/linux/linux-yocto-dev.bbappend  |   28 -
 .../linux/linux-yocto-tiny_4.10.bbappend           |   37 -
 .../linux/linux-yocto-tiny_4.12.bbappend           |   37 -
 .../linux/linux-yocto-tiny_4.4.bbappend            |   37 -
 .../recipes-kernel/linux/linux-yocto_4.10.bbappend |   37 -
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend |   37 -
 .../recipes-kernel/linux/linux-yocto_4.4.bbappend  |   37 -
 scripts/lib/bsp/tags.py                            |   49 -
 scripts/yocto-bsp                                  |  163 --
 scripts/yocto-kernel                               |  399 ----
 scripts/yocto-layer                                |  151 --
 186 files changed, 8996 deletions(-)
 delete mode 100644 meta-yocto-bsp/lib/oeqa/yoctobsp.py
 delete mode 100644 scripts/lib/bsp/__init__.py
 delete mode 100644 scripts/lib/bsp/engine.py
 delete mode 100644 scripts/lib/bsp/help.py
 delete mode 100644 scripts/lib/bsp/kernel.py
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/.gitignore
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/conf/machine/machine.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/machine/xorg.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-non_hardware.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-preempt-rt.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-standard.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-tiny.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-user-config.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-user-features.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-user-patches.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-dev.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/COPYING.MIT
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/README
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/README.sources
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/binary/.gitignore
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/conf/layer.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor/machine.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor/machine/machconfig
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor_0.0.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/kernel-list.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/defconfig
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine-user-config.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine-user-features.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine-user-patches.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/conf/machine/machine.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/machine/xorg.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-preempt-rt.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-standard.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-tiny.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-user-config.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-user-features.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-user-patches.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-dev.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/COPYING.MIT
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/README
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/conf/layer.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/layer-questions.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend/example-bbappend/example-bbappend-version.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend/example-bbappend/example-bbappend-version.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend/example-bbappend/example-bbappend-version/example.patch
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1/example.patch
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1/helloworld.c
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/.gitignore
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/conf/machine/machine.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-preempt-rt.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-standard.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-tiny.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-user-config.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-user-features.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-user-patches.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-dev.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/.gitignore
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/conf/machine/machine.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-preempt-rt.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-standard.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-tiny.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-user-config.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-user-features.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-user-patches.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/kernel-list.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-dev.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/.gitignore
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/machine.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-preempt-rt.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-standard.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-tiny.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-user-config.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-user-features.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-user-patches.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-dev.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/machine.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown/machine.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown/machine/interfaces
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown_1.0.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/machine/xorg.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-preempt-rt.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-standard.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-tiny.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-user-config.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-user-features.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-user-patches.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/.gitignore
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/machine.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/machine/xorg.conf
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-preempt-rt.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-standard.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-tiny.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-user-config.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-user-features.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-user-patches.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine.cfg
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine.scc
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-dev.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.12.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend
 delete mode 100644 scripts/lib/bsp/tags.py
 delete mode 100755 scripts/yocto-bsp
 delete mode 100755 scripts/yocto-kernel
 delete mode 100755 scripts/yocto-layer

-- 
2.13.6


