Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A35B4E00839; Tue,  4 Oct 2016 14:50:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74C6FE00563
	for <poky@yoctoproject.org>; Tue,  4 Oct 2016 14:49:55 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga105.fm.intel.com with ESMTP; 04 Oct 2016 14:49:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,445,1473145200"; d="scan'208";a="16225372"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.5.48])
	by fmsmga005.fm.intel.com with ESMTP; 04 Oct 2016 14:49:55 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Tue,  4 Oct 2016 16:53:32 -0500
Message-Id: <cover.1475617525.git.leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH 0/8] yocto-bsp: linux-yocto recipes updates to 4.8
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
X-List-Received-Date: Tue, 04 Oct 2016 21:50:00 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

This time, the update was done by architecture so if something go wrong,
we can have more control on the commit introducing the issue. In other hand,
the commit is much more atomic.

NOTE: when building the the kernel with MIPS architecture, there is a QA
issue, apparently the kernel assumes 64 bits even thought kernel is intended
for 32 bits. This sugggests that some kernel fragment is missing. The same
approach as [1] was tried without success. Once fully confirmed on 4.4,
a bug will be filed.

[YOCTO #10301]

[1] https://lists.yoctoproject.org/pipermail/poky/2016-September/010727.html

The following changes since commit 5d8a968ecdf40babe452b0ac63d94a7a163710ae:

  dev-manual: Applied review changes to GNU debugging section. (2016-09-28 15:02:33 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib lsandov1/yocto-bsp-update-4.8
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=lsandov1/yocto-bsp-update-4.8

Leonardo Sandoval (8):
  yocto-bsp: linux-yocto recipes update (4.4 to 4.8) for qemu arch
  yocto-bsp: linux-yocto recipes update (4.4 to 4.8) for arm arch
  machine.conf: Remove duplicate xserver choices
  yocto-bsp: linux-yocto recipes update (4.4 to 4.8) for i386 arch
  yocto-bsp: linux-yocto recipes update (4.4 to 4.8) for MIPS arch
  yocto-bsp: linux-yocto recipes update (4.4 to 4.8) for MIPS64 arch
  yocto-bsp: linux-yocto recipes update (4.4 to 4.8) for PowerPC arch
  yocto-bsp: linux-yocto recipes update (4.4 to 4.8) for x86-64 arch

 .../arm/recipes-kernel/linux/kernel-list.noinstall |  4 +-
 .../linux/linux-yocto-tiny_4.8.bbappend            | 33 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_4.8.bbappend  | 32 +++++++++++
 .../target/arch/i386/conf/machine/machine.conf     | 12 +----
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-tiny_4.8.bbappend            | 33 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_4.8.bbappend  | 32 +++++++++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-tiny_4.8.bbappend            | 33 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_4.8.bbappend  | 32 +++++++++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-tiny_4.8.bbappend            | 33 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_4.8.bbappend  | 32 +++++++++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-tiny_4.8.bbappend            | 33 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_4.8.bbappend  | 32 +++++++++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-tiny_4.8.bbappend            | 62 ++++++++++++++++++++++
 .../recipes-kernel/linux/linux-yocto_4.8.bbappend  | 61 +++++++++++++++++++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-tiny_4.8.bbappend            | 33 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_4.8.bbappend  | 32 +++++++++++
 22 files changed, 529 insertions(+), 24 deletions(-)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend

-- 
2.1.4


