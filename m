Return-Path: <jose.perez.carranza@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B2B9E00D9B; Tue, 30 Aug 2016 12:14:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1E73E00D92
	for <poky@yoctoproject.org>; Tue, 30 Aug 2016 12:14:19 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga104.jf.intel.com with ESMTP; 30 Aug 2016 12:14:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,258,1470726000"; 
   d="scan'208";a="2795139"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.5.37])
	by fmsmga005.fm.intel.com with ESMTP; 30 Aug 2016 12:14:18 -0700
From: Jose Perez Carranza <jose.perez.carranza@intel.com>
To: poky@yoctoproject.org
Date: Tue, 30 Aug 2016 14:22:18 -0500
Message-Id: <1472584938-12630-1-git-send-email-jose.perez.carranza@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH v2] systemdboot: Add Test to check boot file is created correctly
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
X-List-Received-Date: Tue, 30 Aug 2016 19:14:23 -0000

   Add Test case to verify Add test case to verify to Check
   if EFI bootloaderfor systemd boot is correctly build
   inside of image.

 [YOCTO #9903]

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@intel.com>
---
 meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py | 64 ++++++++++++++++++++----
 1 file changed, 55 insertions(+), 9 deletions(-)

diff --git a/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py b/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
index f7f74db..9660c87 100644
--- a/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
+++ b/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
@@ -1,20 +1,19 @@
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
         """
-        Common setup for test cases: 1445, XXXX
+        Common setup for test cases: 1445, 1528
         """
 
-        # Set EFI_PROVIDER = "gummiboot" and MACHINE = "genericx86-64" in conf/local.conf
+        # Set EFI_PROVIDER = "systemdboot" and MACHINE = "genericx86-64" in conf/local.conf
         features = 'EFI_PROVIDER = "systemd-boot"\n'
         features += 'MACHINE = "genericx86-64"'
         self.append_config(features)
@@ -24,15 +23,15 @@ class Systemdboot(oeSelfTest):
         Common build for test cases: 1445 , XXXX
         """
 
-        # Build a genericx86-64/efi gummiboot image
+        # Build a genericx86-64/efi systemdboot image
         bitbake('mtools-native core-image-minimal')
 
-
     @testcase(1445)
-    def test_efi_systemdboot_images_can_be_built(self):
+    def test_efi_image_build(self):
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
 
@@ -54,3 +54,49 @@ class Systemdboot(oeSelfTest):
 
         found = os.path.isfile(systemdbootfile)
         self.assertTrue(found, 'Systemd-Boot file %s not found' % systemdbootfile)
+
+
+    @testcase(1528)
+    @skipUnlessPassed('test_efi_image_build')
+    def test_image_efi_file(self):
+        """
+        Summary:      Check if EFI bootloader for systemd is correctly build
+        Dependencies: Image was built correctly on test case 1445
+        Steps:        1. Copy bootx64.efi file from the hddimg created
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
+        #Clean environment before start the test
+        if os.path.isfile(imagebootfile):
+            runCmd('rm -f %s' % imagebootfile)
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
+                         'checksums from %s and %s are different'
+                         % (imagebootfile, systemdbootfile))
-- 
1.9.1


