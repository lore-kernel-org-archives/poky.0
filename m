Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB1AB4C811D9
	for <poky@pokylinux.org>; Tue, 14 Dec 2010 08:14:32 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Dec 2010 06:14:32 -0800
Message-Id: <b9dded$hci36m@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,342,1288594800"; d="scan'208";a="583601366"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.126])
	by orsmga002.jf.intel.com with ESMTP; 14 Dec 2010 06:14:31 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Tue, 14 Dec 2010 19:21:24 +0800
To: poky@pokylinux.org,paul.eggleton@linux.intel.com,rpurdie@linux.intel.com
Subject: [PATCH 1/1] runqueue.py: use correct task ID when checking validity of setscene tasks
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
X-List-Received-Date: Tue, 14 Dec 2010 14:14:32 -0000

sstate hash validation is done at initialization of RunQueueExecuteScenequeue.
However the index of 'valid' list returned from the validation doesn't
correspond to setscene task ID. It's just an intermediate namespace between
runqueue and sstate hash func. Use it as setscene task ID fully mess the flow.
Previously this doesn't cause trouble because all setscene tasks are passed. Commit
58396a5d24c62710fd0a9f3780d84ac8a95d8e7c add 'noexec' concept to setscene
tasks which grabs some tasks out of the list and thus trigger this problem

Without this fix there're ~50 recipes (gzip-native, glib, ...) rebuilt weirdly
with a minimal build, even though existing sstate packages could accelerate them.

there's another typo using wrong task ID in a debug message which further hide
this issue

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 bitbake/lib/bb/runqueue.py |   16 +++++++++++-----
 1 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/bitbake/lib/bb/runqueue.py b/bitbake/lib/bb/runqueue.py
index e26aa4e..d605b31 100644
--- a/bitbake/lib/bb/runqueue.py
+++ b/bitbake/lib/bb/runqueue.py
@@ -1358,6 +1358,7 @@ class RunQueueExecuteScenequeue(RunQueueExecute):
             sq_hash = []
             sq_hashfn = []
             sq_fn = []
+            sq_taskname = []
             sq_task = []
             noexec = []
             for task in range(len(self.sq_revdeps)):
@@ -1372,14 +1373,19 @@ class RunQueueExecuteScenequeue(RunQueueExecute):
                 sq_fn.append(fn)
                 sq_hashfn.append(self.rqdata.dataCache.hashfn[fn])
                 sq_hash.append(self.rqdata.runq_hash[realtask])
-                sq_task.append(taskname)
-
+                sq_taskname.append(taskname)
+                sq_task.append(task)
             call = self.rq.hashvalidate + "(sq_fn, sq_task, sq_hash, sq_hashfn, d)"
-            locs = { "sq_fn" : sq_fn, "sq_task" : sq_task, "sq_hash" : sq_hash, "sq_hashfn" : sq_hashfn, "d" : self.cooker.configuration.data }
+            locs = { "sq_fn" : sq_fn, "sq_task" : sq_taskname, "sq_hash" : sq_hash, "sq_hashfn" : sq_hashfn, "d" : self.cooker.configuration.data }
             valid = bb.utils.better_eval(call, locs)
+
+            valid_new = []
+            for v in valid:
+                valid_new.append(sq_task[v])
+
             for task in range(len(self.sq_revdeps)):
-                if task not in valid and task not in noexec:
-                    bb.msg.debug(2, bb.msg.domain.RunQueue, "No package found so skipping setscene task %s" % (self.rqdata.get_user_idstring(task)))
+                if task not in valid_new and task not in noexec:
+                    bb.msg.debug(2, bb.msg.domain.RunQueue, "No package found so skipping setscene task %s" % (self.rqdata.get_user_idstring(self.rqdata.runq_setscene[task])))
                     self.task_failoutright(task)
 
             #print(str(valid))
-- 
1.6.0.4


