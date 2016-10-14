Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5F12E00444; Fri, 14 Oct 2016 09:53:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4996E00404
	for <poky@yoctoproject.org>; Fri, 14 Oct 2016 09:53:50 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga104.fm.intel.com with ESMTP; 14 Oct 2016 09:53:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,493,1473145200"; d="scan'208";a="19654354"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.5.48])
	by fmsmga005.fm.intel.com with ESMTP; 14 Oct 2016 09:53:48 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Fri, 14 Oct 2016 11:57:56 -0500
Message-Id: <18c0c42f271f0b8ca6a4f358f29d8df431bf3ae2.1476463434.git.leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1476463434.git.leonardo.sandoval.gonzalez@linux.intel.com>
References: <cover.1476463434.git.leonardo.sandoval.gonzalez@linux.intel.com>
In-Reply-To: <cover.1476463434.git.leonardo.sandoval.gonzalez@linux.intel.com>
References: <cover.1476463434.git.leonardo.sandoval.gonzalez@linux.intel.com>
Subject: [PATCH 1/1] selftest: skip tests for poky-tiny distro due to incompatible kernel machine
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
X-List-Received-Date: Fri, 14 Oct 2016 16:53:53 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

The poky-tiny distro points to linux-yocto-tiny which in turns the compatible
machine is set to qemux86. Current tests are defined for just generic86 architectures
so tests are not possible for the corresponding distro.

[YOCTO #8525]

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py    | 6 +++++-
 meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py | 5 +++++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py b/meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py
index 00aa36f..ced6b15 100644
--- a/meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py
+++ b/meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py
@@ -9,6 +9,11 @@ import logging
 
 class Gummiboot(oeSelfTest):
 
+    def setUpLocal(self):
+        if self.distro == 'poky-tiny':
+            if get_bb_var('MACHINE') != 'qemux86':
+                self.skipTest('Machine %s not compatible with linux-yocto-tiny' % self.machine)
+
     def _common_setup(self):
         """
         Common setup for test cases: 1101, 1103
@@ -27,7 +32,6 @@ class Gummiboot(oeSelfTest):
         # Build a genericx86-64/efi gummiboot image
         bitbake('syslinux syslinux-native parted-native dosfstools-native mtools-native core-image-minimal')
 
-
     @testcase(1101)
     def test_efi_gummiboot_images_can_be_built(self):
         """
diff --git a/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py b/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
index f7f74db..0980a0e 100644
--- a/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
+++ b/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
@@ -9,6 +9,11 @@ import logging
 
 class Systemdboot(oeSelfTest):
 
+    def setUpLocal(self):
+        if self.distro == 'poky-tiny':
+            if get_bb_var('MACHINE') != 'qemux86':
+                self.skipTest('Machine %s not compatible with linux-yocto-tiny' % self.machine)
+
     def _common_setup(self):
         """
         Common setup for test cases: 1445, XXXX
-- 
2.1.4


