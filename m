Return-Path: <stefanx.stanacar@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25D7BE00726
	for <poky@yoctoproject.org>; Sun,  9 Mar 2014 11:49:23 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 Mar 2014 11:49:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,619,1389772800"; d="scan'208";a="496685858"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 09 Mar 2014 11:49:22 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.156])
	by linux.intel.com (Postfix) with ESMTP id BF6596A4083
	for <poky@yoctoproject.org>; Sun,  9 Mar 2014 11:49:10 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: poky@yoctoproject.org
Date: Sun,  9 Mar 2014 20:49:19 +0200
Message-Id: <1fb5767785260a0c16e1a2632fb9a9b8f698b135.1394390131.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.5.3
In-Reply-To: <cover.1394390131.git.stefanx.stanacar@intel.com>
References: <cover.1394390131.git.stefanx.stanacar@intel.com>
In-Reply-To: <cover.1394390131.git.stefanx.stanacar@intel.com>
References: <cover.1394390131.git.stefanx.stanacar@intel.com>
Subject: [RFC PATCH 4/4] meta-yocto-bsp: add a controller for EFI targets where a master image is running
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
X-List-Received-Date: Sun, 09 Mar 2014 18:49:23 -0000

A bit of background:
- testimage.bbclass has the ability to allow a layer to provide
it's own TEST_TARGET. OE-core has a QemuTarget and a SimpleRemoteTarget
(ssh into an already up and running machine and run tests)
- basically testimage does something like:
  - target.deploy()
  - target.start()
  - runTests()
  - target.stop()

This module assumes a running EFI (and gummiboot as bootloader) machine with
core-image-testmaster installed (or similar).

In order to use this Master Image mechanism there are some hard requirements:
 - it only works for EFI-enabled hardware with the gummiboot patch series applied (see OE-core)
 - your hardware under test has to be in DHCP-enabled network that gives it the same IP for each reboot
 - the IP address of the machine under test needs to be set in local.conf before running the tests.

One time setup:
- build core-image-testmaster with EFI_PROVIDER = "gummiboot"
- install the image on the target

Test image setup:
 - build your test image, e.g core-image-sato as you usually do, but with these in local.conf:
    EFI_PROVIDER = "gummiboot"
    IMAGE_FSTYPES += "tar.gz"
 - Now run the tests:
    INHERIT += "testimage"
    TEST_TARGET = "GenericEfi"
    TEST_TARGET_IP = "192.168.2.3"
    bitbake core-image-sato -c testimage

Other notes:
 - TEST_POWERCONTROL_CMD can be a command that runs on the host and does power cycling.
The test code passes one argument to that command: off/on and nothing more. In my case I use something like
TEST_POWERCONTROL_CMD="/my/expect/script label-for-${MACHINE}" in local.conf.
That expect script connects to the power control equiment, that has custom labels assigned for ports
(I used some variation of MACHINE).
  - if no command is defined it would use classic shutdown/reboot. This is fine as long as the machine
actually reboots, but it's useful for "simple-setup-with-one-board-on-the-desk" scenario, where
some manual interaction is okay from time to time.

[YOCTO #5614]

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 meta-yocto-bsp/lib/oeqa/controllers/__init__.py    |  0
 meta-yocto-bsp/lib/oeqa/controllers/masterimage.py | 88 ++++++++++++++++++++++
 meta/lib/oeqa/runtime/ssh.py                       |  2 +
 3 files changed, 90 insertions(+)
 create mode 100644 meta-yocto-bsp/lib/oeqa/controllers/__init__.py
 create mode 100644 meta-yocto-bsp/lib/oeqa/controllers/masterimage.py

diff --git a/meta-yocto-bsp/lib/oeqa/controllers/__init__.py b/meta-yocto-bsp/lib/oeqa/controllers/__init__.py
new file mode 100644
index 0000000..e69de29
diff --git a/meta-yocto-bsp/lib/oeqa/controllers/masterimage.py b/meta-yocto-bsp/lib/oeqa/controllers/masterimage.py
new file mode 100644
index 0000000..f72372b
--- /dev/null
+++ b/meta-yocto-bsp/lib/oeqa/controllers/masterimage.py
@@ -0,0 +1,88 @@
+import os
+import bb
+import traceback
+import time
+
+import oeqa.targetcontrol
+import oeqa.utils.sshcontrol as sshcontrol
+import oeqa.utils.commands as commands
+
+class GenericEfi(oeqa.targetcontrol.SimpleRemoteTarget):
+
+    def __init__(self, d):
+        super(GenericEfi, self).__init__(d)
+        if "tar.gz" not in (d.getVar('IMAGE_FSTYPES', True) or "").split():
+            bb.fatal('This TEST_TARGET requires a tar.gz rootfs for deployment so please ensure that IMAGE_FSTYPES contains "tar.gz". \
+                    (adding IMAGE_FSTYPES += "tar.gz" in local.conf is one way of doing that)')
+        self.rootfs = os.path.join(d.getVar("DEPLOY_DIR_IMAGE", True), d.getVar("IMAGE_LINK_NAME", True) + '.tar.gz')
+        self.kernel = os.path.join(d.getVar("DEPLOY_DIR_IMAGE", True), d.getVar("KERNEL_IMAGETYPE"))
+        if not os.path.isfile(self.rootfs) or not os.path.isfile(self.kernel):
+                bb.fatal("No rootfs or kernel found. Did you build the image?")
+        cmds = d.getVar("TEST_DEPLOY_CMDS", True)
+        if cmds:
+            self.deploy_cmds = cmds.split(",")
+        else:
+            self.deploy_cmds = [
+                'mount -L boot /boot',
+                'mkdir -p /mnt/testrootfs',
+                'mount -L testrootfs /mnt/testrootfs',
+                'rm -rf /mnt/testrootfs/*',
+                'tar xzvf ~/test-rootfs.tar.gz -C /mnt/testrootfs',
+                'cp ~/test-kernel /boot',
+                'mount -t efivarfs efivarfs /sys/firmware/efi/efivars',
+                r'printf "\x07\x00\x00\x00\x74\x00\x65\x00\x73\x00\x74\x00\x00\x00" > /sys/firmware/efi/efivars/LoaderEntryOneShot-4a67b082-0a4c-41cf-b6c7-440b29bb8c4f'
+                ]
+        # this is the name of the command that controls the power for a board
+        # e.g: TEST_POWERCONTROL_CMD = "/home/user/myscripts/powercontrol.py ${MACHINE}"
+        self.powercontrol_cmd = d.getVar("TEST_POWERCONTROL_CMD", True) or ""
+        # master ssh connection
+        self.master = None
+
+
+    def _deploy(self):
+        # make sure we are in the right image
+        self.master.ignore_status = True
+        status = self.master.run("test -f /etc/masterimage")[0]
+        if status != 0:
+            raise Exception("Target doesn't appear to be running a master image now - no /etc/masterimage found")
+        # make sure these aren't mounted
+        self.master.run("umount /boot; umount /mnt/testrootfs")
+
+        # from now on, every deploy cmd should return 0
+        self.master.ignore_status = False
+        self.master.copy_to(self.rootfs, "~/test-rootfs.tar.gz")
+        self.master.copy_to(self.kernel, "~/test-kernel")
+        for cmd in self.deploy_cmds:
+            self.master.run(cmd)
+
+    def deploy(self):
+        super(GenericEfi, self).deploy()
+        self.master = sshcontrol.SSHControl(ip=self.ip, logfile=self.sshlog, timeout=600)
+        self.master.ignore_status = False
+        try:
+            # ssh connectivity check
+            self.master.run("uname -a")
+            self._deploy()
+        except Exception:
+            bb.fatal("Failed deploying test image: %s"  % traceback.format_exc())
+
+    def start(self, params=None):
+        if self.powercontrol_cmd:
+            self.master.run('shutdown -h now')
+            commands.runCmd(self.powercontrol_cmd + " off")
+            commands.runCmd(self.powercontrol_cmd + " on")
+        else:
+            self.master.run('reboot')
+        # assuming the reboot worked, we need to
+        # wait a bit - there are better ways than a timeout
+        # but this should works for my purpose for now
+        time.sleep(90)
+        self.connection = sshcontrol.SSHControl(self.ip, logfile=self.sshlog)
+
+    def stop(self):
+        if self.powercontrol_cmd:
+            commands.runCmd(self.powercontrol_cmd + " off")
+            commands.runCmd(self.powercontrol_cmd + " on")
+        else:
+           self.connection.run('reboot')
+        time.sleep(30)
diff --git a/meta/lib/oeqa/runtime/ssh.py b/meta/lib/oeqa/runtime/ssh.py
index 8c96020..e648660 100644
--- a/meta/lib/oeqa/runtime/ssh.py
+++ b/meta/lib/oeqa/runtime/ssh.py
@@ -14,3 +14,5 @@ class SshTest(oeRuntimeTest):
     def test_ssh(self):
         (status, output) = self.target.run('uname -a')
         self.assertEqual(status, 0, msg="SSH Test failed: %s" % output)
+        (status, output) = self.target.run('cat /etc/masterimage')
+        self.assertEqual(status, 1, msg="This isn't the right image  - /etc/masterimage shouldn't be here %s" % output)
-- 
1.8.5.3


