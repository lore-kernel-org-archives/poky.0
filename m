Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C97F24C80BD8
	for <poky@pokylinux.org>; Tue, 21 Dec 2010 01:27:47 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Dec 2010 23:27:47 -0800
Message-Id: <0d30dc$kh8l3j@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,207,1291622400"; d="scan'208";a="689198200"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.131])
	by orsmga001.jf.intel.com with ESMTP; 20 Dec 2010 23:27:46 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Tue, 21 Dec 2010 15:02:22 +0800
To: poky@pokylinux.org
Subject: [PATCH 1/1] runqueue.py: set BB_TASKHASH approriately after moving to fork()
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 21 Dec 2010 07:27:48 -0000

In previous exec() model, cooker is re-initialized from scratch with environmental
variable exported accordingly. Now in fork() model, environmental variables are
not exported again, and thus original method to export BB_TASKHASH doesn't apply
now which breaks all sstate packages. Now we can set data variable directly instead.

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 bitbake/lib/bb/runqueue.py |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/runqueue.py b/bitbake/lib/bb/runqueue.py
index b4134f8..ab0e873 100644
--- a/bitbake/lib/bb/runqueue.py
+++ b/bitbake/lib/bb/runqueue.py
@@ -1072,7 +1072,6 @@ class RunQueueExecute:
                 bb.mkdirhier(p)
             bb.msg.debug(2, bb.msg.domain.RunQueue, "Running %s:%s under fakeroot, state dir is %s" % (fn, taskname, fakedirs))
 
-        env['BB_TASKHASH'] = self.rqdata.runq_hash[task]
         env['PATH'] = self.cooker.configuration.initial_path
 
         envbackup = os.environ.copy()
@@ -1120,6 +1119,8 @@ class RunQueueExecute:
             for h in self.rqdata.hashdata["deps"]:
                 bb.data.setVar("BBHASHDEPS_%s" % h, self.rqdata.hashdata["deps"][h], the_data)
 
+            bb.data.setVar("BB_TASKHASH", self.rqdata.runq_hash[task], the_data)
+
             ret = 0
             try:
                 if not self.cooker.configuration.dry_run:
-- 
1.6.0.4


