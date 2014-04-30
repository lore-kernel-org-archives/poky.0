Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31342E004EB; Wed, 30 Apr 2014 05:40:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D91DE004EB
	for <poky@yoctoproject.org>; Wed, 30 Apr 2014 05:40:13 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Apr 2014 05:39:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,958,1389772800"; d="scan'208";a="532407971"
Received: from cgwithan-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.50])
	by orsmga002.jf.intel.com with ESMTP; 30 Apr 2014 05:39:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 30 Apr 2014 13:38:59 +0100
Message-Id: <89cd8e868caf9a9b4f973e44eca12a6a552123af.1398861412.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.9.0
In-Reply-To: <cover.1398861412.git.paul.eggleton@linux.intel.com>
References: <cover.1398861412.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1398861412.git.paul.eggleton@linux.intel.com>
References: <cover.1398861412.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 2/2] meta-yocto-bsp: oeqa/controllers: add EdgeRouterTarget
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
X-List-Received-Date: Wed, 30 Apr 2014 12:40:16 -0000

Based on BeagleBoneTarget, this provides support for deploying images
and running tests on an EdgeRouter Lite (edgerouter). The device must
be set up to boot into the master image already - see the instructions
in the file.

Implements [YOCTO #6253].

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../lib/oeqa/controllers/edgeroutertarget.py       | 89 ++++++++++++++++++++++
 1 file changed, 89 insertions(+)
 create mode 100644 meta-yocto-bsp/lib/oeqa/controllers/edgeroutertarget.py

diff --git a/meta-yocto-bsp/lib/oeqa/controllers/edgeroutertarget.py b/meta-yocto-bsp/lib/oeqa/controllers/edgeroutertarget.py
new file mode 100644
index 0000000..5df9fda
--- /dev/null
+++ b/meta-yocto-bsp/lib/oeqa/controllers/edgeroutertarget.py
@@ -0,0 +1,89 @@
+# Copyright (C) 2014 Intel Corporation
+#
+# Released under the MIT license (see COPYING.MIT)
+
+# This module adds support to testimage.bbclass to deploy images and run
+# tests on a Ubiquiti Networks EdgeRouter Lite. The device must be set up
+# to boot into the master image already - the easiest way to do that is as
+# follows:
+#
+# 1. Take out the internal USB drive and plug it into your PC
+# 2. Repartition the USB drive so that you have three partitions in this
+#    order:
+#      1: vfat, labelled "boot" (it will need to be formatted with mkfs.vfat
+#         for this to be possible, since FAT partitions formatted under
+#         DOS/Windows will only support uppercase labels)
+#      2: ext3 (for master image) labelled "testmaster"
+#      3: ext3 (for image under test) labelled "testrootfs"
+# 3. Copy the kernel to be used by the master image to the FAT partition
+#    (it should be named "vmlinux.64" with the factory u-boot configuration)
+# 4. Install the master image onto the "testmaster" ext3 partition. If
+#    you do this by just extracting the contents of an image onto the
+#    partition, you will also likely need to create the master image marker
+#    file /etc/masterimage within this partition so that we can tell when
+#    we're booted into it that it is the master image.
+# 5. Put the USB drive back into the device, and ensure the console port
+#    and first ethernet port are connected before powering on
+#
+# TEST_SERIALCONTROL_CMD will need to be set in local.conf so that we can
+# interact with u-boot over the serial console port.
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
+
+class EdgeRouterTarget(MasterImageHardwareTarget):
+
+    def __init__(self, d):
+        super(EdgeRouterTarget, self).__init__(d)
+
+        self.deploy_cmds = [
+                'mount -L boot /boot',
+                'mkdir -p /mnt/testrootfs',
+                'mount -L testrootfs /mnt/testrootfs',
+                'cp ~/test-kernel /boot',
+                'rm -rf /mnt/testrootfs/*',
+                'tar xzvf ~/test-rootfs.tar.gz -C /mnt/testrootfs'
+                ]
+        if not self.serialcontrol_cmd:
+            bb.fatal("This TEST_TARGET needs a TEST_SERIALCONTROL_CMD defined in local.conf.")
+
+
+    def _deploy(self):
+        self.master.run("umount /mnt/testrootfs;")
+        self.master.ignore_status = False
+        self.master.copy_to(self.kernel, "~/test-kernel")
+        self.master.copy_to(self.rootfs, "~/test-rootfs.tar.gz")
+        for cmd in self.deploy_cmds:
+            self.master.run(cmd)
+
+    def _start(self, params=None):
+        self.power_cycle(self.master)
+        try:
+            serialconn = pexpect.spawn(self.serialcontrol_cmd, env=self.origenv, logfile=sys.stdout)
+            serialconn.expect("U-Boot")
+            serialconn.sendline("a")
+            serialconn.expect("Octeon ubnt_e100#")
+            serialconn.sendline("fatload usb 0:1 $loadaddr test-kernel")
+            serialconn.expect(" bytes read")
+            serialconn.expect("Octeon ubnt_e100#")
+            serialconn.sendline("bootoctlinux $loadaddr coremask=0x3 root=/dev/sda3 rw rootwait mtdparts=phys_mapped_flash:512k(boot0),512k(boot1),64k@3072k(eeprom)")
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
-- 
1.9.0


