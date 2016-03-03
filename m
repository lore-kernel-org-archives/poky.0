Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15523E00C02; Thu,  3 Mar 2016 15:21:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00, DATE_IN_PAST_06_12, 
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 1.5 DATE_IN_PAST_06_12 Date: is 6 to 12 hours before
	Received: date
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05CACE00BEB
	for <poky@yoctoproject.org>; Thu,  3 Mar 2016 15:21:54 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 03 Mar 2016 15:21:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,533,1449561600"; d="scan'208";a="916470842"
Received: from yctb01.ostc.intel.com (HELO yctb01.otcr.intel.com)
	([10.54.69.55])
	by fmsmga001.fm.intel.com with ESMTP; 03 Mar 2016 15:21:53 -0800
From: mariano.lopez@linux.intel.com
To: poky@yoctoproject.org
Date: Thu,  3 Mar 2016 15:17:20 +0000
Message-Id: <cover.1457017690.git.mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 2.6.2
Cc: saul.wold@intel.com
Subject: [PATCHv2 0/1] Update yocto-bsp templates to 4.4 kernel
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
X-List-Received-Date: Thu, 03 Mar 2016 23:21:56 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

This patch superseeds patch "yocto-bsp: Set linux-yocto-4.1 as default for x86-64"

The link in the mailing list is:

http://lists.openembedded.org/pipermail/openembedded-core/2016-March/118427.html

The following changes since commit 4006a7f2762ccd5dcbc6cdff49482d4387a73261:

  sanity: Fix int verses string reference (2016-02-28 22:54:09 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib mariano/bug9047v2
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=mariano/bug9047v2

Mariano Lopez (1):
  yocto-bsp: Update templates to 4.4 kernel

 .../arm/recipes-kernel/linux/kernel-list.noinstall |  4 +-
 .../linux/linux-yocto-tiny_4.4.bbappend            | 33 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_4.4.bbappend  | 32 +++++++++++
 .../target/arch/i386/conf/machine/machine.conf     |  4 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-tiny_4.4.bbappend            | 33 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_4.4.bbappend  | 32 +++++++++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-tiny_4.4.bbappend            | 33 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_4.4.bbappend  | 32 +++++++++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-tiny_4.4.bbappend            | 33 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_4.4.bbappend  | 32 +++++++++++
 .../target/arch/powerpc/conf/machine/machine.conf  |  2 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-tiny_4.4.bbappend            | 33 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_4.4.bbappend  | 32 +++++++++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-tiny_4.4.bbappend            | 62 ++++++++++++++++++++++
 .../recipes-kernel/linux/linux-yocto_4.4.bbappend  | 61 +++++++++++++++++++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-tiny_4.4.bbappend            | 33 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_4.4.bbappend  | 32 +++++++++++
 23 files changed, 530 insertions(+), 17 deletions(-)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend

-- 
2.6.2


