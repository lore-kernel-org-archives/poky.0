Return-Path: <corneliux.stoicescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B8E0E0073D; Wed, 28 May 2014 02:33:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga02.intel.com (unknown [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2B45E0070F
	for <poky@yoctoproject.org>; Wed, 28 May 2014 02:33:28 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 28 May 2014 02:33:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,927,1392192000"; d="scan'208";a="547689581"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 28 May 2014 02:33:20 -0700
Received: from localhost.localdomain (unknown [10.237.112.162])
	by linux.intel.com (Postfix) with ESMTP id A823F6A4007;
	Wed, 28 May 2014 02:32:54 -0700 (PDT)
From: Corneliu Stoicescu <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Wed, 28 May 2014 14:37:29 +0300
Message-Id: <1401277049-8410-1-git-send-email-corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.8.3.2
Subject: [PATCH V3] oeqa/controllers/beaglebonetarget.py: fix conditions for files copied to /boot
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
X-List-Received-Date: Wed, 28 May 2014 09:33:31 -0000

We need to check if the uImage file exists before copying it to /mnt/testrootfs/boot/.
Using '[ ! -e /mnt/testrootfs/boot/uImage ] && cp ~/test-kernel /mnt/testrootfs/boot/uImage' would result in exit code 1 if the first condition is not met.
Changing the code to return exit status 0 if /mnt/testrootfs/boot/uImage exists.

Without this if the file /mnt/testrootfs/boot/uImage exists then the image deploy task would stop and do_testimage would fail.

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


