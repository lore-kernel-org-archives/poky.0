Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 112AEE00E0B; Fri, 30 Sep 2016 17:06:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA01AE00CD5
	for <poky@yoctoproject.org>; Fri, 30 Sep 2016 17:05:58 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga102.jf.intel.com with ESMTP; 30 Sep 2016 17:05:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,423,1473145200"; d="scan'208";a="15111818"
Received: from asooresh-mobl3.amr.corp.intel.com (HELO
	lsandov1-mobl2.amr.corp.intel.com) ([10.254.118.83])
	by fmsmga005.fm.intel.com with ESMTP; 30 Sep 2016 17:05:56 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Fri, 30 Sep 2016 19:09:35 -0500
Message-Id: <1475280575-27217-1-git-send-email-leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] machine.cfg: Unset CONFIG_64BIT for qemu i386 architecture
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
X-List-Received-Date: Sat, 01 Oct 2016 00:06:03 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

In modern kernels, ARCH=x86 defaults to 64 bits, so explicitly
unset this word length for qemu i386 architectures.

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 .../substrate/target/arch/qemu/recipes-kernel/linux/files/machine.cfg | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.cfg b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.cfg
index d560784..3fa4ed0 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.cfg
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/machine.cfg
@@ -1 +1,3 @@
-# yocto-bsp-filename {{=machine}}.cfg
\ No newline at end of file
+# yocto-bsp-filename {{=machine}}.cfg
+{{ if qemuarch == "i386": }}
+# CONFIG_64BIT is not set
-- 
2.1.4


