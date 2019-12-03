Received: from mga05.intel.com (mga05.intel.com [])
 by mx.groups.io with SMTP id smtpd.web09.2136.1575351362201440723
 for <poky@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 21:36:02 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: chee.yang.lee@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Dec 2019 21:36:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,271,1571727600"; 
   d="scan'208";a="385177373"
Received: from andromeda02.png.intel.com ([10.221.183.11])
  by orsmga005.jf.intel.com with ESMTP; 02 Dec 2019 21:36:01 -0800
From: "Lee Chee Yang" <chee.yang.lee@intel.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto-bsp][PATCH 2/2] selftest/systemd-boot: test against wic image
Date: Tue,  3 Dec 2019 13:35:59 +0800
Message-Id: <1575351359-45850-2-git-send-email-chee.yang.lee@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575351359-45850-1-git-send-email-chee.yang.lee@intel.com>
References: <1575351359-45850-1-git-send-email-chee.yang.lee@intel.com>

From: Chee Yang Lee <chee.yang.lee@intel.com>

effort to remove live for x86 from default image
see https://bugzilla.yoctoproject.org/show_bug.cgi?id=11291

reduce dependency on hddimg, change the test to based on wic image.

Signed-off-by: Chee Yang Lee <chee.yang.lee@intel.com>
---
 meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
index 0a3a2cd..b3db226d 100644
--- a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
+++ b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
@@ -38,9 +38,9 @@ class Systemdboot(OESelftestTestCase):
         """
         Summary:      Check if EFI bootloader for systemd is correctly build
         Dependencies: Image was built correctly on testcase 1445
-        Steps:        1. Copy bootx64.efi file form the hddimg created
+        Steps:        1. Copy bootx64.efi file from the wic created
                       under build/tmp/deploy/images/genericx86-64
-                      2. Check bootx64.efi was copied form hddimg
+                      2. Check bootx64.efi was copied from wic
                       3. Verify the checksums from the copied and previously
                       created file are equal.
         Expected :    Systemd-bootx64.efi and bootx64.efi should be the same
@@ -50,15 +50,14 @@ class Systemdboot(OESelftestTestCase):
         AutomatedBy:  Jose Perez Carranza <jose.perez.carranza at linux-intel.com>
         """
 
-        systemdbootimage = os.path.join(deploydir, 'core-image-minimal-genericx86-64.hddimg')
+        systemdbootimage = os.path.join(deploydir, 'core-image-minimal-genericx86-64.wic')
         imagebootfile = os.path.join(deploydir, 'bootx64.efi')
-        mcopynative = os.path.join(get_bb_var('STAGING_BINDIR_NATIVE', "core-image-minimal"), 'mcopy')
 
         # Clean environment before start the test
         if os.path.isfile(imagebootfile):
             runCmd('rm -f %s' % imagebootfile)
 
-        runCmd('%s -i %s ::EFI/BOOT/bootx64.efi %s' % (mcopynative ,systemdbootimage,
+        runCmd('wic cp %s:1/EFI/BOOT/bootx64.efi %s' % (systemdbootimage,
                                                            imagebootfile))
 
         found = os.path.isfile(imagebootfile)
-- 
2.7.4

