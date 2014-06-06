Return-Path: <corneliux.stoicescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF8F3E00B9F; Fri,  6 Jun 2014 09:20:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E1A1E00B88
	for <poky@yoctoproject.org>; Fri,  6 Jun 2014 09:20:35 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 06 Jun 2014 09:20:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,990,1392192000"; d="scan'208";a="543654898"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 06 Jun 2014 09:20:33 -0700
Received: from localhost.localdomain (unknown [10.237.112.162])
	by linux.intel.com (Postfix) with ESMTP id DD3C06A408D;
	Fri,  6 Jun 2014 09:20:05 -0700 (PDT)
From: Corneliu Stoicescu <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Fri,  6 Jun 2014 21:24:41 +0300
Message-Id: <1402079083-10096-2-git-send-email-corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1402079083-10096-1-git-send-email-corneliux.stoicescu@intel.com>
References: <1402079083-10096-1-git-send-email-corneliux.stoicescu@intel.com>
Subject: [PATCH 1/3] beaglebonetarget.py: Add support for get_extra_files() classmethod
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

YB: #6254

Adding support for the get_extra_files() method to the BeagleBoneTarget class.

Signed-off-by: Corneliu Stoicescu <corneliux.stoicescu@intel.com>
---
 meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py b/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py
index 0d148d7..86b638c 100644
--- a/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py
+++ b/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py
@@ -30,12 +30,15 @@ from oeqa.controllers.masterimage import MasterImageHardwareTarget
 
 class BeagleBoneTarget(MasterImageHardwareTarget):
 
+    dtbs = {'uImage-am335x-bone.dtb': 'am335x-bone.dtb', 'uImage-am335x-boneblack.dtb': 'am335x-boneblack.dtb'}
+
+    @classmethod
+    def get_extra_files(self):
+        return list(self.dtbs.keys())
+
     def __init__(self, d):
         super(BeagleBoneTarget, self).__init__(d)
 
-        self.dtbs = [('uImage-am335x-bone.dtb', 'am335x-bone.dtb'),
-                     ('uImage-am335x-boneblack.dtb', 'am335x-boneblack.dtb')]
-
         self.deploy_cmds = [
                 'mkdir -p /mnt/testrootfs',
                 'mount -L testrootfs /mnt/testrootfs',
@@ -44,7 +47,7 @@ class BeagleBoneTarget(MasterImageHardwareTarget):
                 '[ -e /mnt/testrootfs/boot/uImage ] || cp ~/test-kernel /mnt/testrootfs/boot/uImage',
                 ]
 
-        for _, dtbfn in self.dtbs:
+        for _, dtbfn in self.dtbs.iteritems():
             # Kernel and dtb files may not be in the image, so copy them if not
             self.deploy_cmds.append('[ -e /mnt/testrootfs/boot/{0} ] || cp ~/{0} /mnt/testrootfs/boot/'.format(dtbfn))
 
@@ -58,7 +61,7 @@ class BeagleBoneTarget(MasterImageHardwareTarget):
         # Kernel and dtb files may not be in the image, so copy them just in case
         self.master.copy_to(self.kernel, "~/test-kernel")
         kernelpath = os.path.dirname(self.kernel)
-        for dtborig, dtbfn in self.dtbs:
+        for dtborig, dtbfn in self.dtbs.iteritems():
             dtbfile = os.path.join(kernelpath, dtborig)
             if os.path.exists(dtbfile):
                 self.master.copy_to(dtbfile, "~/%s" % dtbfn)
-- 
1.8.3.2


