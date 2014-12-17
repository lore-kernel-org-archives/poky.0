Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51C04E00A99; Tue, 16 Dec 2014 16:41:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F416E00575
	for <poky@yoctoproject.org>; Tue, 16 Dec 2014 16:41:09 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Dec 2014 16:41:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,590,1413270000"; d="scan'208";a="648821915"
Received: from unknown (HELO localhost) ([10.255.13.117])
	by fmsmga002.fm.intel.com with ESMTP; 16 Dec 2014 16:41:07 -0800
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 16 Dec 2014 18:41:00 -0600
Message-Id: <cover.1418776404.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.9.3
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 0/9] yocto-bsp: Get rid of 'strange' filenames
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
X-List-Received-Date: Wed, 17 Dec 2014 00:41:20 -0000

This patchset implements the much-requested removal of all the
'strange' filenames under scripts/lib/bsp/substrate/target.

I've generated and build-tested multiple variations of BSP for every
architecture and boot-tested the qemu versions.

The following changes since commit fbdfe2545e2f5e656ca604e1197b4452f1eeb82f:

  yocto-bsp: Add mips64 support (2014-11-26 11:52:41 -0600)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/rm-strange-chars
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/rm-strange-chars

Tom Zanussi (9):
  yocto-bsp: Add a processing pass to get rid of 'strange' filenames
  yocto-bsp: Get rid of 'strange' filenames
  yocto-bsp: Get rid of 'strange' filenames in arm templates
  yocto-bsp: Get rid of 'strange' filenames in x86 templates
  yocto-bsp: Get rid of 'strange' filenames in mips templates
  yocto-bsp: Get rid of 'strange' filenames in mips64 templates
  yocto-bsp: Get rid of 'strange' filenames in powerpc templates
  yocto-bsp: Get rid of 'strange' filenames in x86_64 templates
  yocto-layer: Get rid of 'strange' filenames in templates

 scripts/lib/bsp/engine.py                          | 173 ++++++++++++++++++++-
 .../target/arch/arm/conf/machine/{{=machine}}.conf | 101 ------------
 .../xserver-xf86-config/machine.noinstall          |   1 +
 .../xserver-xf86-config/machine/xorg.conf          |   1 +
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |   1 +
 .../arch/arm/recipes-kernel/linux/files.noinstall  |   1 +
 .../linux/files/machine-non_hardware.cfg           |   1 +
 .../linux/files/machine-preempt-rt.scc             |   1 +
 .../linux/files/machine-standard.scc               |   1 +
 .../recipes-kernel/linux/files/machine-tiny.scc    |   1 +
 .../linux/files/machine-user-config.cfg            |   1 +
 .../linux/files/machine-user-features.scc          |   1 +
 .../linux/files/machine-user-patches.scc           |   1 +
 .../arm/recipes-kernel/linux/files/machine.cfg     |   1 +
 .../arm/recipes-kernel/linux/files/machine.scc     |   1 +
 .../recipes-kernel/linux/linux-yocto-dev.bbappend  |   1 +
 .../linux/linux-yocto-rt_3.10.bbappend             |   1 +
 .../linux/linux-yocto-rt_3.14.bbappend             |   1 +
 .../linux/linux-yocto-tiny_3.10.bbappend           |   1 +
 .../linux/linux-yocto-tiny_3.14.bbappend           |   1 +
 .../linux/linux-yocto-tiny_3.17.bbappend           |   1 +
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend |   1 +
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend |   1 +
 .../recipes-kernel/linux/linux-yocto_3.17.bbappend |   1 +
 .../{{=machine}}-user-config.cfg"                  |   0
 .../{{=machine}}-user-features.scc"                |   0
 .../{{=machine}}-user-patches.scc"                 |   0
 .../formfactor/formfactor/machine.noinstall        |   1 +
 .../{{{=machine}} => machine}/machconfig           |   0
 .../recipes-kernel/linux/linux-yocto-custom.bb     |   1 +
 .../linux/linux-yocto-custom.noinstall             |   1 +
 .../linux/linux-yocto-custom/defconfig             |   0
 .../linux-yocto-custom/machine-user-config.cfg     |   1 +
 .../linux-yocto-custom/machine-user-patches.scc    |   1 +
 .../linux/linux-yocto-custom/machine.cfg           |   1 +
 .../linux/linux-yocto-custom/machine.scc           |   1 +
 .../machine/{{{=machine}}.conf => machine.conf}    |   1 +
 .../xserver-xf86-config/machine.noinstall          |   1 +
 .../xserver-xf86-config/machine/xorg.conf          |   1 +
 .../{{ if xserver == \"y\": }} xorg.conf"          |   0
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |   1 +
 .../arch/i386/recipes-kernel/linux/files.noinstall |   1 +
 .../linux/files/machine-preempt-rt.scc             |   1 +
 .../linux/files/machine-standard.scc               |   1 +
 .../recipes-kernel/linux/files/machine-tiny.scc    |   1 +
 .../linux/files/machine-user-config.cfg            |   1 +
 .../linux/files/machine-user-features.scc          |   1 +
 .../linux/files/machine-user-patches.scc           |   1 +
 .../i386/recipes-kernel/linux/files/machine.cfg    |   1 +
 .../i386/recipes-kernel/linux/files/machine.scc    |   1 +
 .../recipes-kernel/linux/linux-yocto-dev.bbappend  |   1 +
 .../linux/linux-yocto-rt_3.10.bbappend             |   1 +
 .../linux/linux-yocto-rt_3.14.bbappend             |   1 +
 .../linux/linux-yocto-tiny_3.10.bbappend           |   1 +
 .../linux/linux-yocto-tiny_3.14.bbappend           |   1 +
 .../linux/linux-yocto-tiny_3.17.bbappend           |   1 +
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend |   1 +
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend |   1 +
 .../recipes-kernel/linux/linux-yocto_3.17.bbappend |   1 +
 .../{{=machine}}-user-config.cfg"                  |   0
 .../{{=machine}}-user-features.scc"                |   0
 .../{{=machine}}-user-patches.scc"                 |   0
 .../arch/layer/recipes-example-bbappend.noinstall  |   1 +
 .../example-bbappend-version.bbappend              |   1 +
 .../example-bbappend-version.noinstall             |   1 +
 .../example-bbappend-version/example.patch         |   0
 .../target/arch/layer/recipes-example.noinstall    |   1 +
 .../recipes-example/example/example-recipe-0.1.bb  |   1 +
 .../example/example-recipe-0.1.noinstall           |   1 +
 .../example/example-recipe-0.1/example.patch       |   0
 .../example/example-recipe-0.1/helloworld.c        |   0
 .../machine/{{{=machine}}.conf => machine.conf}    |   1 +
 .../arch/mips/recipes-kernel/linux/files.noinstall |   1 +
 .../linux/files/machine-preempt-rt.scc             |   1 +
 .../linux/files/machine-standard.scc               |   1 +
 .../recipes-kernel/linux/files/machine-tiny.scc    |   1 +
 .../linux/files/machine-user-config.cfg            |   1 +
 .../linux/files/machine-user-features.scc          |   1 +
 .../linux/files/machine-user-patches.scc           |   1 +
 .../mips/recipes-kernel/linux/files/machine.cfg    |   2 +
 .../mips/recipes-kernel/linux/files/machine.scc    |   1 +
 .../recipes-kernel/linux/linux-yocto-dev.bbappend  |   1 +
 .../linux/linux-yocto-rt_3.10.bbappend             |   1 +
 .../linux/linux-yocto-rt_3.14.bbappend             |   1 +
 .../linux/linux-yocto-tiny_3.10.bbappend           |   1 +
 .../linux/linux-yocto-tiny_3.14.bbappend           |  33 ++++
 .../linux/linux-yocto-tiny_3.17.bbappend           |  33 ++++
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend |   1 +
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend |   1 +
 .../recipes-kernel/linux/linux-yocto_3.17.bbappend |   1 +
 .../{{=machine}}-user-config.cfg"                  |   0
 .../{{=machine}}-user-features.scc"                |   0
 .../{{=machine}}-user-patches.scc"                 |   0
 .../{{=machine}}.cfg"                              |   1 -
 ...tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend" |  32 ----
 ...tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" |  32 ----
 .../machine/{{{=machine}}.conf => machine.conf}    |   1 +
 .../mips64/recipes-kernel/linux/files.noinstall    |   1 +
 .../linux/files/machine-preempt-rt.scc             |   1 +
 .../linux/files/machine-standard.scc               |   1 +
 .../recipes-kernel/linux/files/machine-tiny.scc    |   1 +
 .../linux/files/machine-user-config.cfg            |   1 +
 .../linux/files/machine-user-features.scc          |   1 +
 .../linux/files/machine-user-patches.scc           |   1 +
 .../mips64/recipes-kernel/linux/files/machine.cfg  |   1 +
 .../mips64/recipes-kernel/linux/files/machine.scc  |   1 +
 .../recipes-kernel/linux/linux-yocto-dev.bbappend  |   1 +
 .../linux/linux-yocto-rt_3.10.bbappend             |   1 +
 .../linux/linux-yocto-rt_3.14.bbappend             |   1 +
 .../linux/linux-yocto-tiny_3.10.bbappend           |   1 +
 .../linux/linux-yocto-tiny_3.14.bbappend           |  33 ++++
 .../linux/linux-yocto-tiny_3.17.bbappend           |  33 ++++
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend |   1 +
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend |  33 ++++
 .../recipes-kernel/linux/linux-yocto_3.17.bbappend |  33 ++++
 .../{{=machine}}-user-config.cfg"                  |   0
 .../{{=machine}}-user-features.scc"                |   0
 .../{{=machine}}-user-patches.scc"                 |   0
 ...tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend" |  32 ----
 ...tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" |  32 ----
 ...nux-yocto_3.14\": }} linux-yocto_3.14.bbappend" |  32 ----
 ...nux-yocto_3.17\": }} linux-yocto_3.17.bbappend" |  32 ----
 .../machine/{{{=machine}}.conf => machine.conf}    |   1 +
 .../powerpc/recipes-kernel/linux/files.noinstall   |   1 +
 .../linux/files/machine-preempt-rt.scc             |   1 +
 .../linux/files/machine-standard.scc               |   1 +
 .../recipes-kernel/linux/files/machine-tiny.scc    |   1 +
 .../linux/files/machine-user-config.cfg            |   1 +
 .../linux/files/machine-user-features.scc          |   1 +
 .../linux/files/machine-user-patches.scc           |   1 +
 .../powerpc/recipes-kernel/linux/files/machine.cfg |   1 +
 .../powerpc/recipes-kernel/linux/files/machine.scc |   1 +
 .../recipes-kernel/linux/linux-yocto-dev.bbappend  |  26 ++++
 .../linux/linux-yocto-rt_3.10.bbappend             |  33 ++++
 .../linux/linux-yocto-rt_3.14.bbappend             |  33 ++++
 .../linux/linux-yocto-tiny_3.10.bbappend           |  33 ++++
 .../linux/linux-yocto-tiny_3.14.bbappend           |   1 +
 .../linux/linux-yocto-tiny_3.17.bbappend           |   1 +
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend |   1 +
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend |   1 +
 .../recipes-kernel/linux/linux-yocto_3.17.bbappend |   1 +
 .../{{=machine}}-user-config.cfg"                  |   0
 .../{{=machine}}-user-features.scc"                |   0
 .../{{=machine}}-user-patches.scc"                 |   0
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  25 ---
 ...cto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" |  32 ----
 ...cto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" |  32 ----
 ...tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" |  32 ----
 .../machine/{{{=machine}}.conf => machine.conf}    |   1 +
 .../init-ifupdown/init-ifupdown/machine.noinstall  |   1 +
 .../{{{=machine}} => machine}/interfaces           |   0
 .../xserver-xf86-config/machine.noinstall          |   1 +
 .../{{{=machine}} => machine}/xorg.conf            |   0
 .../arch/qemu/recipes-kernel/linux/files.noinstall |   1 +
 .../linux/files/machine-preempt-rt.scc             |   1 +
 .../linux/files/machine-standard.scc               |   1 +
 .../recipes-kernel/linux/files/machine-tiny.scc    |   1 +
 .../linux/files/machine-user-config.cfg            |   1 +
 .../linux/files/machine-user-features.scc          |   1 +
 .../linux/files/machine-user-patches.scc           |   1 +
 .../qemu/recipes-kernel/linux/files/machine.cfg    |   1 +
 .../qemu/recipes-kernel/linux/files/machine.scc    |   1 +
 .../recipes-kernel/linux/linux-yocto-dev.bbappend  |   1 +
 .../linux/linux-yocto-rt_3.10.bbappend             |   1 +
 .../linux/linux-yocto-rt_3.14.bbappend             |   1 +
 .../linux/linux-yocto-tiny_3.10.bbappend           |   1 +
 .../linux/linux-yocto-tiny_3.17.bbappend           |   1 +
 .../linux/linux-yocto-tiny_3.4.bbappend            |   1 +
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend |   1 +
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend |   1 +
 .../recipes-kernel/linux/linux-yocto_3.17.bbappend |   1 +
 .../{{=machine}}-user-config.cfg"                  |   0
 .../{{=machine}}-user-features.scc"                |   0
 .../{{=machine}}-user-patches.scc"                 |   0
 .../{{=machine}}.cfg"                              |   0
 .../machine/{{{=machine}}.conf => machine.conf}    |   1 +
 .../xserver-xf86-config/machine.noinstall          |   1 +
 .../xserver-xf86-config/machine/xorg.conf          |   1 +
 .../{{ if xserver == \"y\": }} xorg.conf"          |   0
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |   1 +
 .../x86_64/recipes-kernel/linux/files.noinstall    |   1 +
 .../linux/files/machine-preempt-rt.scc             |   1 +
 .../linux/files/machine-standard.scc               |   1 +
 .../recipes-kernel/linux/files/machine-tiny.scc    |   1 +
 .../linux/files/machine-user-config.cfg            |   1 +
 .../linux/files/machine-user-features.scc          |   1 +
 .../linux/files/machine-user-patches.scc           |   1 +
 .../x86_64/recipes-kernel/linux/files/machine.cfg  |   1 +
 .../x86_64/recipes-kernel/linux/files/machine.scc  |   1 +
 .../recipes-kernel/linux/linux-yocto-dev.bbappend  |  26 ++++
 .../linux/linux-yocto-rt_3.10.bbappend             |  33 ++++
 .../linux/linux-yocto-rt_3.14.bbappend             |  33 ++++
 .../linux/linux-yocto-tiny_3.10.bbappend           |  33 ++++
 .../linux/linux-yocto-tiny_3.14.bbappend           |   1 +
 .../linux/linux-yocto-tiny_3.17.bbappend           |   1 +
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend |   1 +
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend |   1 +
 .../recipes-kernel/linux/linux-yocto_3.17.bbappend |   1 +
 .../{{=machine}}-user-config.cfg"                  |   0
 .../{{=machine}}-user-features.scc"                |   0
 .../{{=machine}}-user-patches.scc"                 |   0
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  25 ---
 ...cto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" |  32 ----
 ...cto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" |  32 ----
 ...tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" |  32 ----
 scripts/lib/bsp/tags.py                            |  12 +-
 206 files changed, 769 insertions(+), 544 deletions(-)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf" => scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/machine/xorg.conf (92%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend" => scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend (47%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files.noinstall
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-non_hardware.cfg" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-non_hardware.cfg (86%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-preempt-rt.scc (88%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-standard.scc (88%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-tiny.scc (83%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-user-config.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-user-features.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-user-patches.scc
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine.cfg (99%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine.scc (84%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-dev.bbappend (94%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.10.bbappend (94%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.14.bbappend (94%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.17.bbappend (94%)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor/machine.noinstall
 rename scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor/{{{=machine}} => machine}/machconfig (100%)
 rename "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom.bb" => scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb (96%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.noinstall
 rename "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/defconfig" => scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/defconfig (100%)
 rename "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}-user-config.cfg" => scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine-user-config.cfg (82%)
 rename "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}-user-patches.scc" => scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine-user-patches.scc (82%)
 rename "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}.cfg" => scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine.cfg (62%)
 rename "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}.scc" => scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom/machine.scc (93%)
 rename scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{{=machine}}.conf => machine.conf} (99%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/machine/xorg.conf
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf"
 rename "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend" => scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend (47%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files.noinstall
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-preempt-rt.scc (89%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-standard.scc (89%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-tiny.scc (83%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-user-config.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-user-features.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine-user-patches.scc
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.cfg (96%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/machine.scc (93%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-dev.bbappend (94%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.10.bbappend (94%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.14.bbappend (94%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend" => scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.17.bbappend (94%)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"
 create mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend.noinstall
 rename "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}_{{=example_bbappend_version}}.bbappend" => scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend/example-bbappend/example-bbappend-version.bbappend (78%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend/example-bbappend/example-bbappend-version.noinstall
 rename "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}-{{=example_bbappend_version}}/example.patch" => scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend/example-bbappend/example-bbappend-version/example.patch (100%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example.noinstall
 rename "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}_0.1.bb" => scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb (90%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.noinstall
 rename "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/example.patch" => scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1/example.patch (100%)
 rename "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/helloworld.c" => scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1/helloworld.c (100%)
 rename scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{{=machine}}.conf => machine.conf} (97%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files.noinstall
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" => scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-preempt-rt.scc (82%)
 rename "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" => scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-standard.scc (83%)
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc" => scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-tiny.scc (83%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-user-config.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-user-features.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine-user-patches.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine.cfg
 rename "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" => scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/machine.scc (81%)
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" => scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-dev.bbappend (94%)
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" => scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend (95%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.10.bbappend (94%)
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend" => scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.14.bbappend (94%)
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend" => scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.17.bbappend (94%)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
 rename scripts/lib/bsp/substrate/target/arch/mips64/conf/machine/{{{=machine}}.conf => machine.conf} (97%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files.noinstall
 rename "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" => scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-preempt-rt.scc (82%)
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" => scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-standard.scc (83%)
 rename "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc" => scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-tiny.scc (83%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-user-config.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-user-features.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine-user-patches.scc
 rename "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg" => scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine.cfg (96%)
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" => scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/files/machine.scc (81%)
 rename "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" => scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-dev.bbappend (94%)
 rename "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" => scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend (95%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.10.bbappend (94%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.14.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.17.bbappend
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"
 rename scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{{=machine}}.conf => machine.conf} (99%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files.noinstall
 rename "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" => scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-preempt-rt.scc (83%)
 rename "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" => scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-standard.scc (83%)
 rename "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc" => scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-tiny.scc (84%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-user-config.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-user-features.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine-user-patches.scc
 rename "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg" => scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine.cfg (98%)
 rename "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" => scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/machine.scc (84%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-dev.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
 rename "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend" => scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" => scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.10.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend" => scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.14.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend" => scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.17.bbappend (95%)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"
 rename scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{{=machine}}.conf => machine.conf} (98%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown/machine.noinstall
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-core/init-ifupdown/init-ifupdown/{{{=machine}} => machine}/interfaces (100%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config/{{{=machine}} => machine}/xorg.conf (100%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files.noinstall
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-preempt-rt.scc (83%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-standard.scc (92%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-tiny.scc (84%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-user-config.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-user-features.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine-user-patches.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.cfg
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.scc (75%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend (98%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend (98%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend (98%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend (98%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend (98%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.4.bbappend" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.4.bbappend (98%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.10.bbappend (98%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.14.bbappend (98%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend" => scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.17.bbappend (98%)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"
 rename scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{{=machine}}.conf => machine.conf} (98%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/machine/xorg.conf
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf"
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend" => scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend (47%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files.noinstall
 rename "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" => scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-preempt-rt.scc (89%)
 rename "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" => scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-standard.scc (89%)
 rename "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc" => scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-tiny.scc (84%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-user-config.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-user-features.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine-user-patches.scc
 rename "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg" => scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine.cfg (97%)
 rename "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" => scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/machine.scc (91%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-dev.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
 rename "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend" => scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" => scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.10.bbappend (94%)
 rename "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend" => scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.14.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend" => scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.17.bbappend (95%)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"

-- 
1.9.3


