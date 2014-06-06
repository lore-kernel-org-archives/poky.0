Return-Path: <corneliux.stoicescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76981E00BA0; Fri,  6 Jun 2014 09:20:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3094DE009E7
	for <poky@yoctoproject.org>; Fri,  6 Jun 2014 09:20:36 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 06 Jun 2014 09:15:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,990,1392192000"; d="scan'208";a="552925417"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 06 Jun 2014 09:20:35 -0700
Received: from localhost.localdomain (unknown [10.237.112.162])
	by linux.intel.com (Postfix) with ESMTP id DDADF6A408D;
	Fri,  6 Jun 2014 09:20:07 -0700 (PDT)
From: Corneliu Stoicescu <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Fri,  6 Jun 2014 21:24:43 +0300
Message-Id: <1402079083-10096-4-git-send-email-corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1402079083-10096-1-git-send-email-corneliux.stoicescu@intel.com>
References: <1402079083-10096-1-git-send-email-corneliux.stoicescu@intel.com>
Subject: [PATCH 3/3] controllers/edgeroutertarget.py: enable dynamical determination of rootfs type
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
X-List-Received-Date: Fri, 06 Jun 2014 16:20:42 -0000

YB: #6375

Signed-off-by: Corneliu Stoicescu <corneliux.stoicescu@intel.com>
---
 meta-yocto-bsp/lib/oeqa/controllers/edgeroutertarget.py | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/meta-yocto-bsp/lib/oeqa/controllers/edgeroutertarget.py b/meta-yocto-bsp/lib/oeqa/controllers/edgeroutertarget.py
index 5df9fda..b3338ca 100644
--- a/meta-yocto-bsp/lib/oeqa/controllers/edgeroutertarget.py
+++ b/meta-yocto-bsp/lib/oeqa/controllers/edgeroutertarget.py
@@ -44,13 +44,14 @@ class EdgeRouterTarget(MasterImageHardwareTarget):
     def __init__(self, d):
         super(EdgeRouterTarget, self).__init__(d)
 
+	self.image_fstype = self.get_image_fstype(d)
         self.deploy_cmds = [
                 'mount -L boot /boot',
                 'mkdir -p /mnt/testrootfs',
                 'mount -L testrootfs /mnt/testrootfs',
                 'cp ~/test-kernel /boot',
                 'rm -rf /mnt/testrootfs/*',
-                'tar xzvf ~/test-rootfs.tar.gz -C /mnt/testrootfs'
+                'tar xvf ~/test-rootfs.%s -C /mnt/testrootfs' % self.image_fstype
                 ]
         if not self.serialcontrol_cmd:
             bb.fatal("This TEST_TARGET needs a TEST_SERIALCONTROL_CMD defined in local.conf.")
@@ -60,7 +61,7 @@ class EdgeRouterTarget(MasterImageHardwareTarget):
         self.master.run("umount /mnt/testrootfs;")
         self.master.ignore_status = False
         self.master.copy_to(self.kernel, "~/test-kernel")
-        self.master.copy_to(self.rootfs, "~/test-rootfs.tar.gz")
+        self.master.copy_to(self.rootfs, "~/test-rootfs.%s" % self.image_fstype)
         for cmd in self.deploy_cmds:
             self.master.run(cmd)
 
-- 
1.8.3.2


