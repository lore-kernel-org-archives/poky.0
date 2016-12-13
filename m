Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25C4CE00B93; Tue, 13 Dec 2016 12:34:26 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8D90E00890
	for <poky@yoctoproject.org>; Tue, 13 Dec 2016 12:34:24 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 13 Dec 2016 12:34:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,342,1477983600"; d="scan'208";a="1081406626"
Received: from jgperezc.zpn.intel.com ([10.219.5.150])
	by fmsmga001.fm.intel.com with ESMTP; 13 Dec 2016 12:34:23 -0800
From: jose.perez.carranza@linux.intel.com
To: poky@yoctoproject.org
Date: Tue, 13 Dec 2016 14:45:15 -0600
Message-Id: <1481661915-22645-1-git-send-email-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.1.4
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
X-List-Received-Date: Tue, 13 Dec 2016 20:34:26 -0000

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

 Add Test case to verify if EFI bootloader for
 systemd boot is correctly build inside of image.

[YOCTO #9903]

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py | 63 +++++++++++++++++++++---
 1 file changed, 55 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py b/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
index f7f74db..7c19ae3 100644
--- a/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
+++ b/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
@@ -1,6 +1,6 @@
 from oeqa.selftest.base import oeSelfTest
 from oeqa.utils.commands import runCmd, bitbake, get_bb_var, runqemu
-from oeqa.utils.decorators import testcase
+from oeqa.utils.decorators import testcase, skipUnlessPassed
 import re
 import os
 import sys
@@ -11,28 +11,29 @@ class Systemdboot(oeSelfTest):
 
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
 
     def _common_build(self):
         """
-        Common build for test cases: 1445 , XXXX
+        Common setup for test cases: 1445, 1528
         """
 
-        # Build a genericx86-64/efi gummiboot image
+        # Build a genericx86-64/efi systemdboot image
         bitbake('mtools-native core-image-minimal')
 
 
     @testcase(1445)
-    def test_efi_systemdboot_images_can_be_built(self):
+    def test_efi_image_build(self):
         """
         Summary:     Check if systemd-boot images can be built correctly
-        Expected:    1. File systemd-boot.efi should be available in $poky/build/tmp/deploy/images/genericx86-64
+        Expected:    1. File systemd-boot.efi should be available in
+                         $poky/build/tmp/deploy/images/genericx86-64
                      2. 'systemd-boot" can be built correctly
         Product:     oe-core
         Author:      Jose Perez Carranza <jose.perez.carranza@intel.com>
@@ -41,7 +42,8 @@ class Systemdboot(oeSelfTest):
 
         # We'd use DEPLOY_DIR_IMAGE here, except that we need its value for
         # MACHINE="genericx86-64 which is probably not the one configured
-        systemdbootfile = os.path.join(get_bb_var('DEPLOY_DIR'), 'images', 'genericx86-64', 'systemd-bootx64.efi')
+        systemdbootfile = os.path.join(get_bb_var('DEPLOY_DIR'), 'images', 'genericx86-64',
+                                       'systemd-bootx64.efi')
 
         self._common_setup()
 
@@ -54,3 +56,48 @@ class Systemdboot(oeSelfTest):
 
         found = os.path.isfile(systemdbootfile)
         self.assertTrue(found, 'Systemd-Boot file %s not found' % systemdbootfile)
+
+
+    @testcase(1528)
+    @skipUnlessPassed('test_efi_image_build')
+    def test_image_efi_file(self):
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
+                         '%s was not correclty generated' % imagebootfile)
-- 
2.1.4


