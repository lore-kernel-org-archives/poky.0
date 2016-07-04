Return-Path: <jose.perez.carranza@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8548E00D5E; Mon,  4 Jul 2016 14:08:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82C55E00D55
	for <poky@yoctoproject.org>; Mon,  4 Jul 2016 14:08:50 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 04 Jul 2016 14:08:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,576,1459839600"; d="scan'208";a="989088390"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.5.37])
	by orsmga001.jf.intel.com with ESMTP; 04 Jul 2016 14:08:50 -0700
From: Jose Perez Carranza <jose.perez.carranza@intel.com>
To: poky@yoctoproject.org
Date: Mon,  4 Jul 2016 16:15:07 -0500
Message-Id: <1467666907-21677-1-git-send-email-jose.perez.carranza@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH] systemd_boot: Enable module to test systemd bootloader
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
X-List-Received-Date: Mon, 04 Jul 2016 21:08:53 -0000

 Module systemd_boot created wtih a class "Systemdboot"
 and a test case "test_efi_systemdboot_images_can_be_built"
 to test new systemd bootloader.

 [YOCTO #9706]

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@intel.com>
---
 meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py | 56 ++++++++++++++++++++++++
 1 file changed, 56 insertions(+)
 create mode 100644 meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py

diff --git a/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py b/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
new file mode 100644
index 0000000..f7f74db
--- /dev/null
+++ b/meta-yocto-bsp/lib/oeqa/selftest/systemd_boot.py
@@ -0,0 +1,56 @@
+from oeqa.selftest.base import oeSelfTest
+from oeqa.utils.commands import runCmd, bitbake, get_bb_var, runqemu
+from oeqa.utils.decorators import testcase
+import re
+import os
+import sys
+import logging
+
+
+class Systemdboot(oeSelfTest):
+
+    def _common_setup(self):
+        """
+        Common setup for test cases: 1445, XXXX
+        """
+
+        # Set EFI_PROVIDER = "gummiboot" and MACHINE = "genericx86-64" in conf/local.conf
+        features = 'EFI_PROVIDER = "systemd-boot"\n'
+        features += 'MACHINE = "genericx86-64"'
+        self.append_config(features)
+
+    def _common_build(self):
+        """
+        Common build for test cases: 1445 , XXXX
+        """
+
+        # Build a genericx86-64/efi gummiboot image
+        bitbake('mtools-native core-image-minimal')
+
+
+    @testcase(1445)
+    def test_efi_systemdboot_images_can_be_built(self):
+        """
+        Summary:     Check if systemd-boot images can be built correctly
+        Expected:    1. File systemd-boot.efi should be available in $poky/build/tmp/deploy/images/genericx86-64
+                     2. 'systemd-boot" can be built correctly
+        Product:     oe-core
+        Author:      Jose Perez Carranza <jose.perez.carranza@intel.com>
+        AutomatedBy: Jose Perez Carranza <jose.perez.carranza@intel.com>
+        """
+
+        # We'd use DEPLOY_DIR_IMAGE here, except that we need its value for
+        # MACHINE="genericx86-64 which is probably not the one configured
+        systemdbootfile = os.path.join(get_bb_var('DEPLOY_DIR'), 'images', 'genericx86-64', 'systemd-bootx64.efi')
+
+        self._common_setup()
+
+        # Ensure we're actually testing that this gets built and not that
+        # it was around from an earlier build
+        bitbake('-c cleansstate systemd-boot')
+        runCmd('rm -f %s' % systemdbootfile)
+
+        self._common_build()
+
+        found = os.path.isfile(systemdbootfile)
+        self.assertTrue(found, 'Systemd-Boot file %s not found' % systemdbootfile)
--
1.9.1


