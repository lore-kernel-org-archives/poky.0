Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.15422.1645549096185136313
 for <poky@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 08:58:16 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 13F7F106F
	for <poky@lists.yoctoproject.org>; Tue, 22 Feb 2022 08:58:15 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B2B893F70D
	for <poky@lists.yoctoproject.org>; Tue, 22 Feb 2022 08:58:14 -0800 (PST)
From: "Ross Burton" <ross@burtonini.com>
To: poky@lists.yoctoproject.org
Subject: [PATCH] oeqa/controllers: update for MasterImageHardwareTarget->Controller...
Date: Tue, 22 Feb 2022 16:58:11 +0000
Message-Id: <20220222165811.2708916-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

oe-core f87b328 renamed MasterImageHardwareTarget to
ControllerImageHardwareTarget, but these files were left out of the
updates.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 .../lib/oeqa/controllers/beaglebonetarget.py  | 19 +++++++++----------
 .../lib/oeqa/controllers/edgeroutertarget.py  | 17 ++++++++---------
 .../lib/oeqa/controllers/grubtarget.py        | 17 ++++++++---------
 3 files changed, 25 insertions(+), 28 deletions(-)

diff --git a/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py b/me=
ta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py
index 0f1aeb398f..7af3e1dac7 100644
--- a/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py
+++ b/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py
@@ -24,11 +24,10 @@ import subprocess
 import sys
 import pexpect
=20
-import oeqa.utils.sshcontrol as sshcontrol
-from oeqa.controllers.masterimage import MasterImageHardwareTarget
+from oeqa.controllers.controllerimage import ControllerImageHardwareTarg=
et
=20
=20
-class BeagleBoneTarget(MasterImageHardwareTarget):
+class BeagleBoneTarget(ControllerImageHardwareTarget):
=20
     dtbs =3D {'uImage-am335x-bone.dtb': 'am335x-bone.dtb', 'uImage-am335=
x-boneblack.dtb': 'am335x-boneblack.dtb'}
=20
@@ -57,21 +56,21 @@ class BeagleBoneTarget(MasterImageHardwareTarget):
=20
=20
     def _deploy(self):
-        self.master.run("umount /boot; umount /mnt/testrootfs;")
-        self.master.ignore_status =3D False
+        self.controller.run("umount /boot; umount /mnt/testrootfs;")
+        self.controller.ignore_status =3D False
         # Kernel and dtb files may not be in the image, so copy them jus=
t in case
-        self.master.copy_to(self.kernel, "~/test-kernel")
+        self.controller.copy_to(self.kernel, "~/test-kernel")
         kernelpath =3D os.path.dirname(self.kernel)
         for dtborig, dtbfn in self.dtbs.iteritems():
             dtbfile =3D os.path.join(kernelpath, dtborig)
             if os.path.exists(dtbfile):
-                self.master.copy_to(dtbfile, "~/%s" % dtbfn)
-        self.master.copy_to(self.rootfs, "~/test-rootfs.%s" % self.image=
_fstype)
+                self.controller.copy_to(dtbfile, "~/%s" % dtbfn)
+        self.controller.copy_to(self.rootfs, "~/test-rootfs.%s" % self.i=
mage_fstype)
         for cmd in self.deploy_cmds:
-            self.master.run(cmd)
+            self.controller.run(cmd)
=20
     def _start(self, params=3DNone):
-        self.power_cycle(self.master)
+        self.power_cycle(self.controller)
         try:
             serialconn =3D pexpect.spawn(self.serialcontrol_cmd, env=3Ds=
elf.origenv, logfile=3Dsys.stdout)
             # We'd wait for "U-Boot" here but sometimes we connect too l=
ate on BeagleBone white to see it
diff --git a/meta-yocto-bsp/lib/oeqa/controllers/edgeroutertarget.py b/me=
ta-yocto-bsp/lib/oeqa/controllers/edgeroutertarget.py
index 9c47b5b044..e31670db48 100644
--- a/meta-yocto-bsp/lib/oeqa/controllers/edgeroutertarget.py
+++ b/meta-yocto-bsp/lib/oeqa/controllers/edgeroutertarget.py
@@ -35,11 +35,10 @@ import subprocess
 import sys
 import pexpect
=20
-import oeqa.utils.sshcontrol as sshcontrol
-from oeqa.controllers.masterimage import MasterImageHardwareTarget
+from oeqa.controllers.controllerimage import ControllerImageHardwareTarg=
et
=20
=20
-class EdgeRouterTarget(MasterImageHardwareTarget):
+class EdgeRouterTarget(ControllerImageHardwareTarget):
=20
     def __init__(self, d):
         super(EdgeRouterTarget, self).__init__(d)
@@ -58,15 +57,15 @@ class EdgeRouterTarget(MasterImageHardwareTarget):
=20
=20
     def _deploy(self):
-        self.master.run("umount /mnt/testrootfs;")
-        self.master.ignore_status =3D False
-        self.master.copy_to(self.kernel, "~/test-kernel")
-        self.master.copy_to(self.rootfs, "~/test-rootfs.%s" % self.image=
_fstype)
+        self.controller.run("umount /mnt/testrootfs;")
+        self.controller.ignore_status =3D False
+        self.controller.copy_to(self.kernel, "~/test-kernel")
+        self.controller.copy_to(self.rootfs, "~/test-rootfs.%s" % self.i=
mage_fstype)
         for cmd in self.deploy_cmds:
-            self.master.run(cmd)
+            self.controller.run(cmd)
=20
     def _start(self, params=3DNone):
-        self.power_cycle(self.master)
+        self.power_cycle(self.controller)
         try:
             serialconn =3D pexpect.spawn(self.serialcontrol_cmd, env=3Ds=
elf.origenv, logfile=3Dsys.stdout)
             serialconn.expect("U-Boot")
diff --git a/meta-yocto-bsp/lib/oeqa/controllers/grubtarget.py b/meta-yoc=
to-bsp/lib/oeqa/controllers/grubtarget.py
index 7bc807d2bc..c3a98979c5 100644
--- a/meta-yocto-bsp/lib/oeqa/controllers/grubtarget.py
+++ b/meta-yocto-bsp/lib/oeqa/controllers/grubtarget.py
@@ -19,10 +19,9 @@ import subprocess
 import sys
 import pexpect
=20
-import oeqa.utils.sshcontrol as sshcontrol
-from oeqa.controllers.masterimage import MasterImageHardwareTarget
+from oeqa.controllers.controllerimage import ControllerImageHardwareTarg=
et
=20
-class GrubTarget(MasterImageHardwareTarget):
+class GrubTarget(ControllerImageHardwareTarget):
=20
     def __init__(self, d):
         super(GrubTarget, self).__init__(d)
@@ -41,16 +40,16 @@ class GrubTarget(MasterImageHardwareTarget):
=20
     def _deploy(self):
         # make sure these aren't mounted
-        self.master.run("umount /boot; umount /mnt/testrootfs;")
-        self.master.ignore_status =3D False
+        self.controller.run("umount /boot; umount /mnt/testrootfs;")
+        self.controller.ignore_status =3D False
         # Kernel files may not be in the image, so copy them just in cas=
e
-        self.master.copy_to(self.rootfs, "~/test-rootfs." + self.image_f=
stype)
-        self.master.copy_to(self.kernel, "~/test-kernel")
+        self.controller.copy_to(self.rootfs, "~/test-rootfs." + self.ima=
ge_fstype)
+        self.controller.copy_to(self.kernel, "~/test-kernel")
         for cmd in self.deploy_cmds:
-            self.master.run(cmd)
+            self.controller.run(cmd)
=20
     def _start(self, params=3DNone):
-        self.power_cycle(self.master)
+        self.power_cycle(self.controller)
         try:
             serialconn =3D pexpect.spawn(self.serialcontrol_cmd, env=3Ds=
elf.origenv, logfile=3Dsys.stdout)
             serialconn.expect("GNU GRUB  version 2.00")
--=20
2.25.1

