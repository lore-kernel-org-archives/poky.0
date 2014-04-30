Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 159EFE006C0; Wed, 30 Apr 2014 05:40:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70E30E00478
	for <poky@yoctoproject.org>; Wed, 30 Apr 2014 05:40:13 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Apr 2014 05:39:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,958,1389772800"; d="scan'208";a="532407955"
Received: from cgwithan-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.50])
	by orsmga002.jf.intel.com with ESMTP; 30 Apr 2014 05:39:08 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 30 Apr 2014 13:38:58 +0100
Message-Id: <e0662bf8649d714e1c817fbcebcce643ebf89e21.1398861412.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.9.0
In-Reply-To: <cover.1398861412.git.paul.eggleton@linux.intel.com>
References: <cover.1398861412.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1398861412.git.paul.eggleton@linux.intel.com>
References: <cover.1398861412.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 1/2] meta-yocto-bsp: oeqa/controllers: add BeagleBoneTarget
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
X-List-Received-Date: Wed, 30 Apr 2014 12:40:14 -0000

From: Stefan Stanacar <stefanx.stanacar@intel.com>

With a serial connection and beaglebone setup correctly as per
README.hardware (nand erased, default uboot config assumed, etc) and a
correctly deployed core-image-testmaster, we could actually deploy and
test AB built images.
In the default configuration u-boot will do the right thing and will
always boot into the master image (rootfs on second fs on the card,
kernel in /boot on the same partition). We just need to tell it for the
test image to use the third partition and update the kernel cmdline.
Pexpect is used to interact with whatever serial connection we have
(which for this target is mandatory).

There is some handling for images that don't contain the kernel and
dtb files as needed (such as core-image-minimal).

Implements [YOCTO #6252].

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto-bsp/lib/oeqa/controllers/__init__.py    |  0
 .../lib/oeqa/controllers/beaglebonetarget.py       | 94 ++++++++++++++++++++++
 2 files changed, 94 insertions(+)
 create mode 100644 meta-yocto-bsp/lib/oeqa/controllers/__init__.py
 create mode 100644 meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py

diff --git a/meta-yocto-bsp/lib/oeqa/controllers/__init__.py b/meta-yocto-bsp/lib/oeqa/controllers/__init__.py
new file mode 100644
index 0000000..e69de29
diff --git a/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py b/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py
new file mode 100644
index 0000000..53f454b
--- /dev/null
+++ b/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py
@@ -0,0 +1,94 @@
+# Copyright (C) 2014 Intel Corporation
+#
+# Released under the MIT license (see COPYING.MIT)
+
+# This module adds support to testimage.bbclass to deploy images and run
+# tests on a BeagleBone (original "white" or Black models). The device must
+# be set up as per README.hardware and the master image should be deployed
+# onto the card so that it boots into it by default. For booting into the
+# image under test we interact with u-boot over serial, so for the
+# BeagleBone Black you will need an additional TTL serial cable since a
+# serial interface isn't automatically provided over the USB connection as
+# it is on the original BeagleBone ("white") version. The separate ext3
+# partition that will contain the image to be tested must be labelled
+# "testrootfs" so that the deployment code below can find it.
+#
+# NOTE: for the BeagleBone "white" (original version) you may need to use
+# a script which handles the serial device disappearing on power down, such
+# as scripts/contrib/serdevtry in OE-Core.
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
+class BeagleBoneTarget(MasterImageHardwareTarget):
+
+    def __init__(self, d):
+        super(BeagleBoneTarget, self).__init__(d)
+
+        self.dtbs = [('uImage-am335x-bone.dtb', 'am335x-bone.dtb'),
+                     ('uImage-am335x-boneblack.dtb', 'am335x-boneblack.dtb')]
+
+        self.deploy_cmds = [
+                'mkdir -p /mnt/testrootfs',
+                'mount -L testrootfs /mnt/testrootfs',
+                'rm -rf /mnt/testrootfs/*',
+                'tar xzvf ~/test-rootfs.tar.gz -C /mnt/testrootfs',
+                '[ ! -e /mnt/testrootfs/boot/uImage ] && cp ~/test-kernel /mnt/testrootfs/boot/uImage',
+                ]
+
+        for _, dtbfn in self.dtbs:
+            # Kernel and dtb files may not be in the image, so copy them if not
+            self.deploy_cmds.append('[ ! -e /mnt/testrootfs/boot/{0} ] && cp ~/{0} /mnt/testrootfs/boot/'.format(dtbfn))
+
+        if not self.serialcontrol_cmd:
+            bb.fatal("This TEST_TARGET needs a TEST_SERIALCONTROL_CMD defined in local.conf.")
+
+
+    def _deploy(self):
+        self.master.run("umount /boot; umount /mnt/testrootfs;")
+        self.master.ignore_status = False
+        # Kernel and dtb files may not be in the image, so copy them just in case
+        self.master.copy_to(self.kernel, "~/test-kernel")
+        kernelpath = os.path.dirname(self.kernel)
+        for dtborig, dtbfn in self.dtbs:
+            dtbfile = os.path.join(kernelpath, dtborig)
+            if os.path.exists(dtbfile):
+                self.master.copy_to(dtbfile, "~/%s" % dtbfn)
+        self.master.copy_to(self.rootfs, "~/test-rootfs.tar.gz")
+        for cmd in self.deploy_cmds:
+            self.master.run(cmd)
+
+    def _start(self, params=None):
+        self.power_cycle(self.master)
+        try:
+            serialconn = pexpect.spawn(self.serialcontrol_cmd, env=self.origenv, logfile=sys.stdout)
+            # We'd wait for "U-Boot" here but sometimes we connect too late on BeagleBone white to see it
+            serialconn.expect("NAND:")
+            serialconn.expect("MMC:")
+            serialconn.sendline("a")
+            serialconn.expect("U-Boot#")
+            serialconn.sendline("setenv bootpart 0:3")
+            serialconn.expect("U-Boot#")
+            serialconn.sendline("setenv mmcroot /dev/mmcblk0p3 ro")
+            serialconn.expect("U-Boot#")
+            serialconn.sendline("boot")
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


