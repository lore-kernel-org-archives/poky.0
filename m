Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FA9EE00D86; Fri,  2 Dec 2016 08:13:36 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54EFAE00CA6
	for <poky@yoctoproject.org>; Fri,  2 Dec 2016 08:13:33 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga102.jf.intel.com with ESMTP; 02 Dec 2016 08:13:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,287,1477983600"; d="scan'208";a="38238248"
Received: from gvillega-mobl2.amr.corp.intel.com (HELO
	aehernan-MOBL1.amr.corp.intel.com) ([10.252.250.236])
	by fmsmga005.fm.intel.com with ESMTP; 02 Dec 2016 08:13:32 -0800
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri,  2 Dec 2016 10:13:31 -0600
Message-Id: <20161202161331.1874-1-alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.10.1
Subject: [PATCH] gummiboot: Remove gummiboot tests
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
X-List-Received-Date: Fri, 02 Dec 2016 16:13:36 -0000

Since we replaced gummiboot with systemd-boot
along with its tests, the gummiboot tests are
no longer necessary.

[YOCTO #10332]

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py | 83 ---------------------------
 1 file changed, 83 deletions(-)
 delete mode 100644 meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py

diff --git a/meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py b/meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py
deleted file mode 100644
index 00aa36f..0000000
--- a/meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py
+++ /dev/null
@@ -1,83 +0,0 @@
-from oeqa.selftest.base import oeSelfTest
-from oeqa.utils.commands import runCmd, bitbake, get_bb_var, runqemu
-from oeqa.utils.decorators import testcase
-import re
-import os
-import sys
-import logging
-
-
-class Gummiboot(oeSelfTest):
-
-    def _common_setup(self):
-        """
-        Common setup for test cases: 1101, 1103
-        """
-
-        # Set EFI_PROVIDER = "gummiboot" and MACHINE = "genericx86-64" in conf/local.conf
-        features = 'EFI_PROVIDER = "gummiboot"\n'
-        features += 'MACHINE = "genericx86-64"'
-        self.append_config(features)
-
-    def _common_build(self):
-        """
-        Common build for test cases: 1101, 1103
-        """
-
-        # Build a genericx86-64/efi gummiboot image
-        bitbake('syslinux syslinux-native parted-native dosfstools-native mtools-native core-image-minimal')
-
-
-    @testcase(1101)
-    def test_efi_gummiboot_images_can_be_built(self):
-        """
-        Summary:     Check if efi/gummiboot images can be built
-        Expected:    1. File gummibootx64.efi should be available in build/tmp/deploy/images/genericx86-64
-                     2. Efi/gummiboot images can be built
-        Product:     oe-core
-        Author:      Ionut Chisanovici <ionutx.chisanovici@intel.com>
-        AutomatedBy: Daniel Istrate <daniel.alexandrux.istrate@intel.com>
-        """
-
-        # We'd use DEPLOY_DIR_IMAGE here, except that we need its value for
-        # MACHINE="genericx86-64 which is probably not the one configured
-        gummibootfile = os.path.join(get_bb_var('DEPLOY_DIR'), 'images', 'genericx86-64', 'gummibootx64.efi')
-
-        self._common_setup()
-
-        # Ensure we're actually testing that this gets built and not that
-        # it was around from an earlier build
-        bitbake('-c cleansstate gummiboot')
-        runCmd('rm -f %s' % gummibootfile)
-
-        self._common_build()
-
-        found = os.path.isfile(gummibootfile)
-        self.assertTrue(found, 'Gummiboot file %s not found' % gummibootfile)
-
-    @testcase(1103)
-    def test_wic_command_can_create_efi_gummiboot_installation_images(self):
-        """
-        Summary:     Check that wic command can create efi/gummiboot installation images
-        Expected:    A .direct file in folder /var/tmp/wic/ must be created.
-        Product:     oe-core
-        Author:      Ionut Chisanovici <ionutx.chisanovici@intel.com>
-        AutomatedBy: Daniel Istrate <daniel.alexandrux.istrate@intel.com>
-        """
-
-        self._common_setup()
-        self._common_build()
-
-        # Create efi/gummiboot installation images
-        wic_create_cmd = 'wic create mkgummidisk -e core-image-minimal'
-        result = runCmd(wic_create_cmd)
-
-        # Find file written by wic from output
-        res = re.search('(/var/tmp/wic/.*\.direct)', result.output)
-        if res:
-            direct_file = res.group(1)
-            # Check it actually exists
-            if not os.path.exists(direct_file):
-                self.fail('wic reported direct file "%s" does not exist; wic output:\n%s' % (direct_file, result.output))
-        else:
-            self.fail('No .direct file reported in wic output:\n%s' % result.output)
-- 
2.10.1


