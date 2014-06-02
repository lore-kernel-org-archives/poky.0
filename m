Return-Path: <corneliux.stoicescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12C69E00B0B; Sun,  1 Jun 2014 23:33:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7411E009C1
	for <poky@yoctoproject.org>; Sun,  1 Jun 2014 23:33:29 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Jun 2014 23:33:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,955,1392192000"; d="scan'208";a="521281015"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 01 Jun 2014 23:33:28 -0700
Received: from localhost.localdomain (unknown [10.237.112.162])
	by linux.intel.com (Postfix) with ESMTP id 7A3336A4007;
	Sun,  1 Jun 2014 23:33:01 -0700 (PDT)
From: Corneliu Stoicescu <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Mon,  2 Jun 2014 11:37:33 +0300
Message-Id: <1401698253-24927-1-git-send-email-corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.8.3.2
Subject: [PATCH V4] oeqa/controllers/beaglebonetarget.py: fix conditions for files copied to /boot
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
X-List-Received-Date: Mon, 02 Jun 2014 06:33:32 -0000

Using '[ ! -e /mnt/testrootfs/boot/uImage ] && cp ~/test-kernel /mnt/testrootfs/boot/uImage' would result in exit code 1 if the first condition is not met.
Changing the code to return exit status 0 if /mnt/testrootfs/boot/uImage exists.

Also adding this change to dtb files check.

Signed-off-by: Corneliu Stoicescu <corneliux.stoicescu@intel.com>
---
 meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py b/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py
index 53f454b..0d148d7 100644
--- a/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py
+++ b/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py
@@ -41,12 +41,12 @@ class BeagleBoneTarget(MasterImageHardwareTarget):
                 'mount -L testrootfs /mnt/testrootfs',
                 'rm -rf /mnt/testrootfs/*',
                 'tar xzvf ~/test-rootfs.tar.gz -C /mnt/testrootfs',
-                '[ ! -e /mnt/testrootfs/boot/uImage ] && cp ~/test-kernel /mnt/testrootfs/boot/uImage',
+                '[ -e /mnt/testrootfs/boot/uImage ] || cp ~/test-kernel /mnt/testrootfs/boot/uImage',
                 ]
 
         for _, dtbfn in self.dtbs:
             # Kernel and dtb files may not be in the image, so copy them if not
-            self.deploy_cmds.append('[ ! -e /mnt/testrootfs/boot/{0} ] && cp ~/{0} /mnt/testrootfs/boot/'.format(dtbfn))
+            self.deploy_cmds.append('[ -e /mnt/testrootfs/boot/{0} ] || cp ~/{0} /mnt/testrootfs/boot/'.format(dtbfn))
 
         if not self.serialcontrol_cmd:
             bb.fatal("This TEST_TARGET needs a TEST_SERIALCONTROL_CMD defined in local.conf.")
-- 
1.8.3.2


