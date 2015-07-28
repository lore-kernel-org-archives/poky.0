Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B2BCE00A3B; Tue, 28 Jul 2015 03:19:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10EEBE00902
	for <poky@yoctoproject.org>; Tue, 28 Jul 2015 03:19:29 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 28 Jul 2015 03:19:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,562,1432623600"; d="scan'208";a="737021896"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.9.210])
	by orsmga001.jf.intel.com with ESMTP; 28 Jul 2015 03:19:19 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 28 Jul 2015 11:19:02 +0100
Message-Id: <078cc6b847f08aa1dcda61b70246ddd99867b6f1.1438078723.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <cover.1438078723.git.paul.eggleton@linux.intel.com>
References: <cover.1438078723.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1438078723.git.paul.eggleton@linux.intel.com>
References: <cover.1438078723.git.paul.eggleton@linux.intel.com>
Subject: [meta-yocto-bsp][PATCH 1/1] oe-selftest: restore gummiboot tests
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
X-List-Received-Date: Tue, 28 Jul 2015 10:19:33 -0000

These are the gummiboot tests recently removed from OE-Core, with the
following changes:

* Make them use MACHINE = "genericx86-64" instead of "nuc" and remove
  all usage of meta-intel

* Use DEPLOY_DIR instead of assuming build directory will be in the
  default path relative to COREBASE

* Fix build test to actually check if the file was created as part of
  the test instead of possibly being around from a previous build

* Fix wic test to actually check the output to find the name of the
  .direct file that wic has created, instead of passing if any .direct
  file happens to exist in /var/tmp/wic

(We can now add these in this layer courtesy of Chris Larson's OE-Core
commit 182b8ed9f26ed8b6a8eb6dcaec82db9aca14b010).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto-bsp/lib/oeqa/selftest/__init__.py  |  0
 meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py | 83 +++++++++++++++++++++++++++
 2 files changed, 83 insertions(+)
 create mode 100644 meta-yocto-bsp/lib/oeqa/selftest/__init__.py
 create mode 100644 meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py

diff --git a/meta-yocto-bsp/lib/oeqa/selftest/__init__.py b/meta-yocto-bsp/lib/oeqa/selftest/__init__.py
new file mode 100644
index 0000000..e69de29
diff --git a/meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py b/meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py
new file mode 100644
index 0000000..00aa36f
--- /dev/null
+++ b/meta-yocto-bsp/lib/oeqa/selftest/gummiboot.py
@@ -0,0 +1,83 @@
+from oeqa.selftest.base import oeSelfTest
+from oeqa.utils.commands import runCmd, bitbake, get_bb_var, runqemu
+from oeqa.utils.decorators import testcase
+import re
+import os
+import sys
+import logging
+
+
+class Gummiboot(oeSelfTest):
+
+    def _common_setup(self):
+        """
+        Common setup for test cases: 1101, 1103
+        """
+
+        # Set EFI_PROVIDER = "gummiboot" and MACHINE = "genericx86-64" in conf/local.conf
+        features = 'EFI_PROVIDER = "gummiboot"\n'
+        features += 'MACHINE = "genericx86-64"'
+        self.append_config(features)
+
+    def _common_build(self):
+        """
+        Common build for test cases: 1101, 1103
+        """
+
+        # Build a genericx86-64/efi gummiboot image
+        bitbake('syslinux syslinux-native parted-native dosfstools-native mtools-native core-image-minimal')
+
+
+    @testcase(1101)
+    def test_efi_gummiboot_images_can_be_built(self):
+        """
+        Summary:     Check if efi/gummiboot images can be built
+        Expected:    1. File gummibootx64.efi should be available in build/tmp/deploy/images/genericx86-64
+                     2. Efi/gummiboot images can be built
+        Product:     oe-core
+        Author:      Ionut Chisanovici <ionutx.chisanovici@intel.com>
+        AutomatedBy: Daniel Istrate <daniel.alexandrux.istrate@intel.com>
+        """
+
+        # We'd use DEPLOY_DIR_IMAGE here, except that we need its value for
+        # MACHINE="genericx86-64 which is probably not the one configured
+        gummibootfile = os.path.join(get_bb_var('DEPLOY_DIR'), 'images', 'genericx86-64', 'gummibootx64.efi')
+
+        self._common_setup()
+
+        # Ensure we're actually testing that this gets built and not that
+        # it was around from an earlier build
+        bitbake('-c cleansstate gummiboot')
+        runCmd('rm -f %s' % gummibootfile)
+
+        self._common_build()
+
+        found = os.path.isfile(gummibootfile)
+        self.assertTrue(found, 'Gummiboot file %s not found' % gummibootfile)
+
+    @testcase(1103)
+    def test_wic_command_can_create_efi_gummiboot_installation_images(self):
+        """
+        Summary:     Check that wic command can create efi/gummiboot installation images
+        Expected:    A .direct file in folder /var/tmp/wic/ must be created.
+        Product:     oe-core
+        Author:      Ionut Chisanovici <ionutx.chisanovici@intel.com>
+        AutomatedBy: Daniel Istrate <daniel.alexandrux.istrate@intel.com>
+        """
+
+        self._common_setup()
+        self._common_build()
+
+        # Create efi/gummiboot installation images
+        wic_create_cmd = 'wic create mkgummidisk -e core-image-minimal'
+        result = runCmd(wic_create_cmd)
+
+        # Find file written by wic from output
+        res = re.search('(/var/tmp/wic/.*\.direct)', result.output)
+        if res:
+            direct_file = res.group(1)
+            # Check it actually exists
+            if not os.path.exists(direct_file):
+                self.fail('wic reported direct file "%s" does not exist; wic output:\n%s' % (direct_file, result.output))
+        else:
+            self.fail('No .direct file reported in wic output:\n%s' % result.output)
-- 
2.1.0


