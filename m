Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A367AE00D63; Thu, 24 Nov 2016 13:29:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D984E00D4D
	for <poky@yoctoproject.org>; Thu, 24 Nov 2016 13:29:21 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP; 24 Nov 2016 13:29:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,543,1473145200"; 
   d="scan'208";a="9041374"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.5.38])
	by orsmga002.jf.intel.com with ESMTP; 24 Nov 2016 13:29:21 -0800
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Thu, 24 Nov 2016 15:34:46 -0600
Message-Id: <e2521c31acb6e6cdf59e9d7101439035efe085be.1480022350.git.leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1480022350.git.leonardo.sandoval.gonzalez@linux.intel.com>
References: <cover.1480022350.git.leonardo.sandoval.gonzalez@linux.intel.com>
Subject: [PATCH v2 1/1] selftest: skip tests for poky-tiny distro due to incompatible kernel machine
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
X-List-Received-Date: Thu, 24 Nov 2016 21:29:24 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

The poky-tiny distro points to linux-yocto-tiny which in turns the compatible
machine is set to qemux86. Current tests are defined for just generic86 architectures
so tests are not possible for the corresponding distro.

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py    | 3 ++-
 meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py b/meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py
index 00aa36f..63643e5 100644
--- a/meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py
+++ b/meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py
@@ -25,9 +25,10 @@ class Gummiboot(oeSelfTest):
         """
 
         # Build a genericx86-64/efi gummiboot image
+        if self.distro == 'poky-tiny':
+            self.skipTest('Machine %s not compatible with linux-yocto-tiny' % get_bb_var('MACHINE'))
         bitbake('syslinux syslinux-native parted-native dosfstools-native mtools-native core-image-minimal')
 
-
     @testcase(1101)
     def test_efi_gummiboot_images_can_be_built(self):
         """
diff --git a/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py b/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
index f7f74db..52b33ed 100644
--- a/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
+++ b/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
@@ -25,9 +25,10 @@ class Systemdboot(oeSelfTest):
         """
 
         # Build a genericx86-64/efi gummiboot image
+        if self.distro == 'poky-tiny':
+            self.skipTest('Machine %s not compatible with linux-yocto-tiny' % get_bb_var('MACHINE'))
         bitbake('mtools-native core-image-minimal')
 
-
     @testcase(1445)
     def test_efi_systemdboot_images_can_be_built(self):
         """
-- 
2.1.4


