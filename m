Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5849AE00990; Wed, 26 Nov 2014 11:49:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B7B4E008EC
	for <poky@yoctoproject.org>; Wed, 26 Nov 2014 11:49:46 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 26 Nov 2014 11:42:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="421920807"
Received: from unknown (HELO localhost) ([10.255.13.44])
	by FMSMGA003.fm.intel.com with ESMTP; 26 Nov 2014 11:39:44 -0800
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 26 Nov 2014 13:49:32 -0600
Message-Id: <cover.1417029469.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.9.3
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 0/2] yocto-bsp 3.17 updates
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
X-List-Received-Date: Wed, 26 Nov 2014 19:49:50 -0000

[Resending to correct ML]

This is the yocto-bsp 3.17 update, along with new mips64 support
addressing [YOCTO #5314].

This is currently gated on the qemu and yocto-bsp machines moving to
3.17, which is in turn still currently gated on [YOCTO #6810], but I'm
submitting what I have now for that eventuality and so that I can
continue with further yocto-bsp work that needs to go on top if this.

The following changes since commit 0bc03af7ee6112fa0af0608b02f715ec8495e4ff:

  maintainers.inc: update maintainers (2014-11-26 17:06:10 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-3.17-master-updates
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-3.17-master-updates

Tom Zanussi (2):
  yocto-bsp: Update templates to 3.17 kernel
  yocto-bsp: Add mips64 support

 scripts/lib/bsp/help.py                            |  1 +
 .../target/arch/arm/conf/machine/{{=machine}}.conf | 24 ++++----
 .../arm/recipes-kernel/linux/kernel-list.noinstall |  4 +-
 ...cto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" | 32 +++++++++++
 ...tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" | 32 +++++++++++
 ...nux-yocto_3.17\": }} linux-yocto_3.17.bbappend" | 32 +++++++++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  8 +--
 .../arch/i386/conf/machine/{{=machine}}.conf       | 20 +++++--
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...cto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" | 32 +++++++++++
 ...tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" | 32 +++++++++++
 ...nux-yocto_3.17\": }} linux-yocto_3.17.bbappend" | 32 +++++++++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...cto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" | 32 +++++++++++
 ...tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" | 32 +++++++++++
 ...nux-yocto_3.17\": }} linux-yocto_3.17.bbappend" | 32 +++++++++++
 .../bsp/substrate/target/arch/mips64/.gitignore    |  0
 .../arch/mips64/conf/machine/{{=machine}}.conf     | 38 +++++++++++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  5 ++
 .../{{=machine}}-preempt-rt.scc"                   |  9 +++
 .../{{=machine}}-standard.scc"                     |  9 +++
 .../{{=machine}}-tiny.scc"                         |  9 +++
 .../{{=machine}}-user-config.cfg"                  |  0
 .../{{=machine}}-user-features.scc"                |  0
 .../{{=machine}}-user-patches.scc"                 |  0
 .../{{=machine}}.cfg"                              | 65 ++++++++++++++++++++++
 .../{{=machine}}.scc"                              |  7 +++
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" | 25 +++++++++
 ...cto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" | 32 +++++++++++
 ...cto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" | 32 +++++++++++
 ...tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" | 32 +++++++++++
 ...tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend" | 32 +++++++++++
 ...tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" | 32 +++++++++++
 ...nux-yocto_3.10\": }} linux-yocto_3.10.bbappend" | 32 +++++++++++
 ...nux-yocto_3.14\": }} linux-yocto_3.14.bbappend" | 32 +++++++++++
 ...nux-yocto_3.17\": }} linux-yocto_3.17.bbappend" | 32 +++++++++++
 .../arch/powerpc/conf/machine/{{=machine}}.conf    | 12 ++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...cto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" | 32 +++++++++++
 ...tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" | 32 +++++++++++
 ...nux-yocto_3.17\": }} linux-yocto_3.17.bbappend" | 32 +++++++++++
 .../arch/qemu/conf/machine/{{=machine}}.conf       |  6 +-
 .../xserver-xf86-config/{{=machine}}/xorg.conf     |  4 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../{{=machine}}-standard.scc"                     |  2 +
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" | 10 +++-
 ...cto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" |  6 ++
 ...cto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" | 61 ++++++++++++++++++++
 ...tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" |  6 ++
 ...-tiny_3.14\": }} linux-yocto-tiny_3.4.bbappend" |  6 ++
 ...tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" | 61 ++++++++++++++++++++
 ...nux-yocto_3.10\": }} linux-yocto_3.10.bbappend" | 10 +++-
 ...nux-yocto_3.14\": }} linux-yocto_3.14.bbappend" | 10 +++-
 ...nux-yocto_3.17\": }} linux-yocto_3.17.bbappend" | 61 ++++++++++++++++++++
 .../arch/x86_64/conf/machine/{{=machine}}.conf     | 10 +++-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...cto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" | 32 +++++++++++
 ...tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" | 32 +++++++++++
 ...nux-yocto_3.17\": }} linux-yocto_3.17.bbappend" | 32 +++++++++++
 59 files changed, 1200 insertions(+), 45 deletions(-)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/.gitignore
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/conf/machine/{{=machine}}.conf
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/kernel-list.noinstall
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"
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
1.9.3


