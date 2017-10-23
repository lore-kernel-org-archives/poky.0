Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A213BE00D05; Mon, 23 Oct 2017 09:34:29 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D8EBE00CF2
	for <poky@yoctoproject.org>; Mon, 23 Oct 2017 09:34:29 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Oct 2017 09:34:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,423,1503385200"; 
   d="scan'208";a="1151360"
Received: from jlock-mobl3.ld.intel.com ([10.103.239.29])
	by orsmga002.jf.intel.com with ESMTP; 23 Oct 2017 09:34:28 -0700
From: Joshua Lock <joshua.g.lock@intel.com>
To: poky@yoctoproject.org
Date: Mon, 23 Oct 2017 17:34:19 +0100
Message-Id: <ca668732882da0e543df7100c62aab4e351a7ac8.1508776260.git.joshua.g.lock@intel.com>
X-Mailer: git-send-email 2.13.6
In-Reply-To: <cover.1508776260.git.joshua.g.lock@intel.com>
References: <cover.1508776260.git.joshua.g.lock@intel.com>
Subject: [PATCH 2/5] meta-yocto-bsp/lib/oeqa: remove yoctobsp selftest
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
X-List-Received-Date: Mon, 23 Oct 2017 16:34:29 -0000

The yocto-bsp script has been removed, thus there's no need for this test
for the script.

Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
---
 meta-yocto-bsp/lib/oeqa/yoctobsp.py | 39 -------------------------------------
 1 file changed, 39 deletions(-)
 delete mode 100644 meta-yocto-bsp/lib/oeqa/yoctobsp.py

diff --git a/meta-yocto-bsp/lib/oeqa/yoctobsp.py b/meta-yocto-bsp/lib/oeqa/yoctobsp.py
deleted file mode 100644
index 4c539a1..0000000
--- a/meta-yocto-bsp/lib/oeqa/yoctobsp.py
+++ /dev/null
@@ -1,39 +0,0 @@
-import unittest
-import os
-import logging
-import tempfile
-import shutil
-
-from oeqa.selftest.base import oeSelfTest
-from oeqa.utils.commands import runCmd
-from oeqa.utils.decorators import skipUnlessPassed
-
-class YoctoBSP(oeSelfTest):
-
-    @classmethod
-    def setUpClass(self):
-        result = runCmd("yocto-bsp list karch")
-        self.karchs = [karch.lstrip() for karch in result.output.splitlines()][1:]
-
-    def test_yoctobsp_listproperties(self):
-        for karch in self.karchs:
-            result = runCmd("yocto-bsp list %s properties" % karch)
-            self.assertEqual(0, result.status, msg="Properties from %s architecture could not be listed" % karch)
-
-    def test_yoctobsp_create(self):
-        # Generate a temporal file and folders for each karch
-        json = "{\"use_default_kernel\":\"yes\"}\n"
-        fd = tempfile.NamedTemporaryFile(delete=False)
-        fd.write(json)
-        fd.close()
-        tmpfolders = dict([(karch, tempfile.mkdtemp()) for karch in self.karchs])
-        # Create BSP
-        for karch in self.karchs:
-            result = runCmd("yocto-bsp create test %s -o %s -i %s" % (karch, "%s/unitest" % tmpfolders[karch], fd.name))
-            self.assertEqual(0, result.status, msg="Could not create a BSP with architecture %s using %s " % (karch, fd.name))
-        # Remove tmp file/folders
-        os.unlink(fd.name)
-        self.assertFalse(os.path.exists(fd.name), msg = "Temporal file %s could not be removed" % fd.name)
-        for tree in tmpfolders.values():
-            shutil.rmtree(tree)
-            self.assertFalse(os.path.exists(tree), msg = "Temporal folder %s could not be removed" % tree)
-- 
2.13.6


