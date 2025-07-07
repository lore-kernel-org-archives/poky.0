Return-Path: <adrian.freihofer@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBCD0C8303C
	for <webhook@archiver.kernel.org>; Mon,  7 Jul 2025 20:38:28 +0000 (UTC)
Received: from mta-64-226.siemens.flowmailer.net (mta-64-226.siemens.flowmailer.net [185.136.64.226])
 by mx.groups.io with SMTP id smtpd.web11.2854.1751920708385963342
 for <poky@lists.yoctoproject.org>;
 Mon, 07 Jul 2025 13:38:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=adrian.freihofer@siemens.com header.s=fm1 header.b=iErDS6Mr;
 spf=pass (domain: rts-flowmailer.siemens.com, ip: 185.136.64.226, mailfrom: fm-1329275-20250707203826ce6647314e72c9fcf2-rxlnuq@rts-flowmailer.siemens.com)
Received: by mta-64-226.siemens.flowmailer.net with ESMTPSA id 20250707203826ce6647314e72c9fcf2
        for <poky@lists.yoctoproject.org>;
        Mon, 07 Jul 2025 22:38:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=adrian.freihofer@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=EqRy/RpD7Zaq2Q3B52JOrXre4FZMKAkqA/nMCPniu94=;
 b=iErDS6MrlbWzwGiloneOu0V8Kz7DAe40svBIPVkthpgzNrEVUgqj4DR0lDRebGe468vW0C
 nULGU9Xw9qNLz3qjkf8rLeOYGv56q61pTUS7Qiu7sR+zPhoM9FFtOOHWBYu4F16y3z3yz3Bp
 hhT5EckvoBRfXimzf/mb7pTLcdxTAgjc20yJ9aCJaxBDSOgOFiOWZ0a6Zn/0wyQLD/gHVhMJ
 QKFX08eKMd/BcxxaV2/EP/iL42pItYPWa5u/SfylSGlc8j+LytG54JYv9xqTeEPIXpjUUFKI
 NtuGHVMD5cewys4tkr0nQxXxZ9vd25rnje7lLrJMJDG2tsi7FpxJ8mwg==;
From: AdrianF <adrian.freihofer@siemens.com>
To: poky@lists.yoctoproject.org
Cc: Adrian Freihofer <adrian.freihofer@siemens.com>
Subject: [PATCH v2 4/5] oe-selftest: add a beaglebone-yocto fitimage Qemu test
Date: Mon,  7 Jul 2025 22:37:57 +0200
Message-ID: <20250707203820.2554184-5-adrian.freihofer@siemens.com>
In-Reply-To: <20250707203820.2554184-1-adrian.freihofer@siemens.com>
References: <20250707203820.2554184-1-adrian.freihofer@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1329275:519-21489:flowmailer
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 07 Jul 2025 20:38:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13697

From: Adrian Freihofer <adrian.freihofer@siemens.com>

The kernel configuration of the beaglebone-yocto MACHINE supports booting
on real hardware as well as in Qemu. Add an oe-selftest which tests that
booting in Qemu is possible even when the kernel is a FIT image kernel
with a RAM disk.
Since Qemu does not support FIT images, Qemu boots the zImage in direct
kernel mode. This works with or without initramfs.

Signed-off-by: Adrian Freihofer <adrian.freihofer@siemens.com>
---
 .../selftest/cases/beaglebone_yocto_qemu.py   | 41 +++++++++++++++++++
 1 file changed, 41 insertions(+)
 create mode 100644 meta-yocto-bsp/lib/oeqa/selftest/cases/beaglebone_yocto_qemu.py

diff --git a/meta-yocto-bsp/lib/oeqa/selftest/cases/beaglebone_yocto_qemu.py b/meta-yocto-bsp/lib/oeqa/selftest/cases/beaglebone_yocto_qemu.py
new file mode 100644
index 00000000000..de7697d6585
--- /dev/null
+++ b/meta-yocto-bsp/lib/oeqa/selftest/cases/beaglebone_yocto_qemu.py
@@ -0,0 +1,41 @@
+
+from oeqa.selftest.case import OESelftestTestCase
+from oeqa.utils.commands import runCmd, bitbake, runqemu, runqemu_check_taps
+from oeqa.core.decorator import OETestTag
+
+
+class BeagleboneYoctoQemuTests(OESelftestTestCase):
+
+    @OETestTag("runqemu")
+    def test_fit_image_initramfs_qemu(self):
+        """
+        Summary:     Verify building an image including a FIT image kernel and booting in Qemu works.
+        Expected:    1. core-image-minimal including a FIT image in /boot gets built
+                     2. Qemu can boot the zImage and initramfs with direct kernel boot
+                        since Qemu does not support FIT images
+        """
+
+        config = """
+DISTRO = "poky"
+MACHINE = "beaglebone-yocto"
+INITRAMFS_IMAGE = "core-image-initramfs-boot"
+FIT_IMAGE_KERNEL = "1"
+# Do not override kernel command line network configuration
+BAD_RECOMMENDATIONS:append:pn-oe-selftest-image = " init-ifupdown"
+# This is only compatible with Qemu* MACHINEs
+COMPATIBLE_MACHINE:beaglebone-yocto:pn-ssh-pregen-hostkeys = "^beaglebone-yocto$"
+"""
+        self.write_config(config)
+        if not runqemu_check_taps():
+            self.skipTest('No tap devices found - you must set up tap devices with scripts/runqemu-gen-tapdevs before running this test')
+        testimage = "oe-selftest-image"
+        bitbake(testimage)
+        # Boot the image
+        with runqemu(testimage) as qemu:
+            # Run a test command to see if it was installed properly
+            sshargs = '-o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
+            result = runCmd('ssh %s root@%s %s' % (sshargs, qemu.ip, "ls -1 /boot"))
+            self.logger.debug("ls -1 /boot: %s" % str(result.output))
+            boot_files = result.output.splitlines()
+            self.assertIn("fitImage", boot_files)
+            self.assertNotIn("zImage", boot_files)
-- 
2.50.0


