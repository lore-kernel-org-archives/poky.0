Return-Path: <corneliux.stoicescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B972BE00BF0; Fri,  6 Jun 2014 09:20:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F84FE00B95
	for <poky@yoctoproject.org>; Fri,  6 Jun 2014 09:20:35 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 06 Jun 2014 09:20:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,990,1392192000"; d="scan'208";a="543654946"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 06 Jun 2014 09:20:34 -0700
Received: from localhost.localdomain (unknown [10.237.112.162])
	by linux.intel.com (Postfix) with ESMTP id DD3146A4087;
	Fri,  6 Jun 2014 09:20:06 -0700 (PDT)
From: Corneliu Stoicescu <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Fri,  6 Jun 2014 21:24:42 +0300
Message-Id: <1402079083-10096-3-git-send-email-corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1402079083-10096-1-git-send-email-corneliux.stoicescu@intel.com>
References: <1402079083-10096-1-git-send-email-corneliux.stoicescu@intel.com>
Subject: [PATCH 2/3] controllers/beaglebonetarget.py: enable dynamical determination of rootfs type
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
X-List-Received-Date: Fri, 06 Jun 2014 16:20:44 -0000

YB: #6375

Signed-off-by: Corneliu Stoicescu <corneliux.stoicescu@intel.com>
---
 meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py b/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py
index 86b638c..b2e9050 100644
--- a/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py
+++ b/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py
@@ -39,11 +39,12 @@ class BeagleBoneTarget(MasterImageHardwareTarget):
     def __init__(self, d):
         super(BeagleBoneTarget, self).__init__(d)
 
+        self.image_fstype = self.get_image_fstype(d)
         self.deploy_cmds = [
                 'mkdir -p /mnt/testrootfs',
                 'mount -L testrootfs /mnt/testrootfs',
                 'rm -rf /mnt/testrootfs/*',
-                'tar xzvf ~/test-rootfs.tar.gz -C /mnt/testrootfs',
+                'tar xvf ~/test-rootfs.%s -C /mnt/testrootfs' % self.image_fstype,
                 '[ -e /mnt/testrootfs/boot/uImage ] || cp ~/test-kernel /mnt/testrootfs/boot/uImage',
                 ]
 
@@ -65,7 +66,7 @@ class BeagleBoneTarget(MasterImageHardwareTarget):
             dtbfile = os.path.join(kernelpath, dtborig)
             if os.path.exists(dtbfile):
                 self.master.copy_to(dtbfile, "~/%s" % dtbfn)
-        self.master.copy_to(self.rootfs, "~/test-rootfs.tar.gz")
+        self.master.copy_to(self.rootfs, "~/test-rootfs.%s" % self.image_fstype)
         for cmd in self.deploy_cmds:
             self.master.run(cmd)
 
-- 
1.8.3.2


