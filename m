Return-Path: <jose.perez.carranza@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4112AE00C9D; Fri, 26 Aug 2016 14:27:08 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13F9EE00C1C
	for <poky@yoctoproject.org>; Fri, 26 Aug 2016 14:27:01 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga103.jf.intel.com with ESMTP; 26 Aug 2016 14:27:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,582,1464678000"; 
   d="scan'208";a="1640212"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.5.37])
	by fmsmga006.fm.intel.com with ESMTP; 26 Aug 2016 14:27:00 -0700
From: Jose Perez Carranza <jose.perez.carranza@intel.com>
To: poky@yoctoproject.org
Date: Fri, 26 Aug 2016 16:34:55 -0500
Message-Id: <1472247295-1155-1-git-send-email-jose.perez.carranza@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH] systemdboot: Add Test to check boot file is created correctly
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
X-List-Received-Date: Fri, 26 Aug 2016 21:27:08 -0000

   Add Test case to verify Add test case to verify to Check
   if EFI bootloaderfor systemd boot is correctly build
   inside of image.

 [YOCTO #9903]

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@intel.com>
---
 meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py | 51 +++++++++++++++++++++---
 1 file changed, 46 insertions(+), 5 deletions(-)

diff --git a/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py b/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
index f7f74db..7f57f66 100644
--- a/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
+++ b/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
@@ -1,12 +1,11 @@
 from oeqa.selftest.base import oeSelfTest
 from oeqa.utils.commands import runCmd, bitbake, get_bb_var, runqemu
-from oeqa.utils.decorators import testcase
+from oeqa.utils.decorators import testcase, skipUnlessPassed
 import re
 import os
 import sys
 import logging
 
-
 class Systemdboot(oeSelfTest):
 
     def _common_setup(self):
@@ -27,12 +26,12 @@ class Systemdboot(oeSelfTest):
         # Build a genericx86-64/efi gummiboot image
         bitbake('mtools-native core-image-minimal')
 
-
     @testcase(1445)
     def test_efi_systemdboot_images_can_be_built(self):
         """
         Summary:     Check if systemd-boot images can be built correctly
-        Expected:    1. File systemd-boot.efi should be available in $poky/build/tmp/deploy/images/genericx86-64
+        Expected:    1. File systemd-boot.efi should be available in:
+                         $poky/build/tmp/deploy/images/genericx86-64
                      2. 'systemd-boot" can be built correctly
         Product:     oe-core
         Author:      Jose Perez Carranza <jose.perez.carranza@intel.com>
@@ -41,7 +40,8 @@ class Systemdboot(oeSelfTest):
 
         # We'd use DEPLOY_DIR_IMAGE here, except that we need its value for
         # MACHINE="genericx86-64 which is probably not the one configured
-        systemdbootfile = os.path.join(get_bb_var('DEPLOY_DIR'), 'images', 'genericx86-64', 'systemd-bootx64.efi')
+        systemdbootfile = os.path.join(get_bb_var('DEPLOY_DIR'), 'images', 'genericx86-64',
+                                       'systemd-bootx64.efi')
 
         self._common_setup()
 
@@ -54,3 +54,44 @@ class Systemdboot(oeSelfTest):
 
         found = os.path.isfile(systemdbootfile)
         self.assertTrue(found, 'Systemd-Boot file %s not found' % systemdbootfile)
+
+
+    @testcase(1528)
+    @skipUnlessPassed('test_efi_systemdboot_images_can_be_built')
+    def test_efi_systemdboot_is_built_correctly(self):
+        """
+        Summary:      Check if EFI bootloader for systemd is correctly build
+        Dependencies: Image was built correctly on testcase 1445
+        Steps:        1. Copy bootx64.efi file form the hddimg created
+                         under build/tmp/deploy/images/genericx86-64
+                      2. Check bootx64.efi was copied form hddimg
+                      3. Verify the checksums from the copied and previously
+                         created file are equal.
+        Expected :    Systemd-bootx64.efi and bootx64.efi should be the same
+                      hence checksums should be equal.
+        Product:      oe-core
+        Author:       Jose Perez Carranza <jose.perez.carranza@intel.com>
+        AutomatedBy:  Jose Perez Carranza <jose.perez.carranza@intel.com>
+        """
+
+        systemdbootfile = os.path.join(get_bb_var('DEPLOY_DIR'), 'images', 'genericx86-64',
+                                       'systemd-bootx64.efi')
+        systemdbootimage = os.path.join(get_bb_var('DEPLOY_DIR'), 'images', 'genericx86-64',
+                                        'core-image-minimal-genericx86-64.hddimg')
+        imagebootfile = os.path.join(get_bb_var('DEPLOY_DIR'), 'images', 'genericx86-64',
+                                                'bootx64.efi')
+        mcopynative = os.path.join(get_bb_var('STAGING_BINDIR_NATIVE'), 'mcopy')
+
+        #Step 1
+        runCmd('%s -i %s ::EFI/BOOT/bootx64.efi %s' % (mcopynative ,systemdbootimage,
+               imagebootfile))
+
+        #Step 2
+        found = os.path.isfile(imagebootfile)
+        self.assertTrue(found, 'bootx64.efi file %s was not copied from image'
+                        % imagebootfile)
+
+        #Step 3
+        result = runCmd('md5sum %s %s' % (systemdbootfile, imagebootfile))
+        self.assertEqual(result.output.split()[0], result.output.split()[2],
+                         '%s was not correclty generated' % imagebootfile)
-- 
1.9.1


