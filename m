Return-Path: <cristian.iorga@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F913E00BC1; Fri, 20 Jun 2014 08:41:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1FCFE00B7B
	for <poky@yoctoproject.org>; Fri, 20 Jun 2014 08:41:07 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Jun 2014 08:41:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,514,1400050800"; d="scan'208";a="447998386"
Received: from sentry.rb.intel.com ([10.237.105.54])
	by azsmga001.ch.intel.com with ESMTP; 20 Jun 2014 08:40:32 -0700
From: Cristian Iorga <cristian.iorga@intel.com>
To: poky@yoctoproject.org
Date: Fri, 20 Jun 2014 18:44:17 +0300
Message-Id: <1403279057-22212-1-git-send-email-cristian.iorga@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH] meta-yocto-bsp: oeqa/controllers: add GrubTarget
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
X-List-Received-Date: Fri, 20 Jun 2014 15:41:10 -0000

add control for generic grub pc via serial line

Implementation [YOCTO #5615].

Signed-off-by: Cristian Iorga <cristian.iorga@intel.com>
---
 meta-yocto-bsp/lib/oeqa/controllers/grubtarget.py | 71 +++++++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 meta-yocto-bsp/lib/oeqa/controllers/grubtarget.py

diff --git a/meta-yocto-bsp/lib/oeqa/controllers/grubtarget.py b/meta-yocto-bsp/lib/oeqa/controllers/grubtarget.py
new file mode 100644
index 0000000..02ada65
--- /dev/null
+++ b/meta-yocto-bsp/lib/oeqa/controllers/grubtarget.py
@@ -0,0 +1,71 @@
+# Copyright (C) 2014 Intel Corporation
+#
+# Released under the MIT license (see COPYING.MIT)
+
+# This module adds support to testimage.bbclass to deploy images and run
+# tests on a Generic PC that boots using grub bootloader. The device must
+# be set up as per README.hardware and the master image should be deployed
+# onto the harddisk so that it boots into it by default.For booting into the
+# image under test we interact with grub over serial, so for the
+# Generic PC you will need an additional serial cable and device under test
+# needs to have a serial interface. The separate ext3
+# partition that will contain the image to be tested must be labelled
+# "testrootfs" so that the deployment code below can find it.
+
+import os
+import bb
+import time
+import subprocess
+import sys
+import pexpect
+
+import oeqa.utils.sshcontrol as sshcontrol
+from oeqa.controllers.masterimage import MasterImageHardwareTarget
+
+class GrubTarget(MasterImageHardwareTarget):
+
+    def __init__(self, d):
+        super(GrubTarget, self).__init__(d)
+        self.deploy_cmds = [
+                'mount -L boot /boot',
+                'mkdir -p /mnt/testrootfs',
+                'mount -L testrootfs /mnt/testrootfs',
+                'cp ~/test-kernel /boot',
+                'rm -rf /mnt/testrootfs/*',
+                'tar xvf ~/test-rootfs.%s -C /mnt/testrootfs' % self.image_fstype,
+                ]
+
+        if not self.serialcontrol_cmd:
+            bb.fatal("This TEST_TARGET needs a TEST_SERIALCONTROL_CMD defined in local.conf.")
+
+
+    def _deploy(self):
+        # make sure these aren't mounted
+        self.master.run("umount /boot; umount /mnt/testrootfs;")
+        self.master.ignore_status = False
+        # Kernel files may not be in the image, so copy them just in case
+        self.master.copy_to(self.rootfs, "~/test-rootfs." + self.image_fstype)
+        self.master.copy_to(self.kernel, "~/test-kernel")
+        for cmd in self.deploy_cmds:
+            self.master.run(cmd)
+
+    def _start(self, params=None):
+        self.power_cycle(self.master)
+        try:
+            serialconn = pexpect.spawn(self.serialcontrol_cmd, env=self.origenv, logfile=sys.stdout)
+            serialconn.expect("GNU GRUB  version 2.00")
+            serialconn.expect("Linux")
+            serialconn.sendline("OB\r")
+            serialconn.expect("login:", timeout=120)
+            serialconn.close()
+        except pexpect.ExceptionPexpect as e:
+            bb.fatal('Serial interaction failed: %s' % str(e))
+
+    def _wait_until_booted(self):
+        try:
+            serialconn = pexpect.spawn(self.serialcontrol_cmd, env=self.origenv, logfile=sys.stdout)
+            serialconn.expect("login:", timeout=120)
+            serialconn.close()
+        except pexpect.ExceptionPexpect as e:
+            bb.fatal('Serial interaction failed: %s' % str(e))
+
-- 
1.9.1


