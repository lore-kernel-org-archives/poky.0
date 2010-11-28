Return-Path: <richard@tim.rpsys.net>
Received: from smtp.elevenwireless.com (smtp.elevenwireless.com
	[69.48.211.177])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7E51B4C81202
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 16:16:43 -0600 (CST)
Received: from [216.151.15.131] (helo=rex)
	by smtp.elevenwireless.com with esmtp (Exim 4.63)
	(envelope-from <richard@tim.rpsys.net>) id 1PMpV0-00019z-Hn
	for poky@pokylinux.org; Sun, 28 Nov 2010 14:13:35 -0800
Received: by rex (Postfix, from userid 1000)
	id 98C442AB15; Sun, 28 Nov 2010 14:16:10 -0800 (PST)
Message-Id: <58396a5d24c62710fd0a9f3780d84ac8a95d8e7c.1290982058.git.rpurdie@linux.intel.com>
In-Reply-To: <cover.1290982058.git.rpurdie@linux.intel.com>
References: <cover.1290982058.git.rpurdie@linux.intel.com>
From: Richard Purdie <rpurdie@linux.intel.com>
Date: Sun, 28 Nov 2010 15:59:16 +0000
To: poky@pokylinux.org
Subject: [PATCH 14/16] bitbake/runqueue: Teach scenequeue about noexec tasks (since they don't do anything we can assume they're always successful
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
X-List-Received-Date: Sun, 28 Nov 2010 22:16:43 -0000

Signed-off-by: Richard Purdie <rpurdie@linux.intel.com>
---
 bitbake/lib/bb/runqueue.py |   11 +++++++++--
 1 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/runqueue.py b/bitbake/lib/bb/runqueue.py
index d5c9565..3300db7 100644
--- a/bitbake/lib/bb/runqueue.py
+++ b/bitbake/lib/bb/runqueue.py
@@ -1358,19 +1358,26 @@ class RunQueueExecuteScenequeue(RunQueueExecute):
             sq_hashfn = []
             sq_fn = []
             sq_task = []
+            noexec = []
             for task in range(len(self.sq_revdeps)):
                 realtask = self.rqdata.runq_setscene[task]
                 fn = self.rqdata.taskData.fn_index[self.rqdata.runq_fnid[realtask]]
+                taskname = self.rqdata.runq_task[realtask]
+                taskdep = self.rqdata.dataCache.task_deps[fn]
+                if 'noexec' in taskdep and taskname in taskdep['noexec']:
+                    noexec.append(task)
+                    self.task_skip(task)
+                    continue
                 sq_fn.append(fn)
                 sq_hashfn.append(self.rqdata.dataCache.hashfn[fn])
                 sq_hash.append(self.rqdata.runq_hash[realtask])
-                sq_task.append(self.rqdata.runq_task[realtask])
+                sq_task.append(taskname)
 
             call = self.rq.hashvalidate + "(sq_fn, sq_task, sq_hash, sq_hashfn, d)"
             locs = { "sq_fn" : sq_fn, "sq_task" : sq_task, "sq_hash" : sq_hash, "sq_hashfn" : sq_hashfn, "d" : self.cooker.configuration.data }
             valid = bb.utils.better_eval(call, locs)
             for task in range(len(self.sq_revdeps)):
-                if task not in valid:
+                if task not in valid and task not in noexec:
                     bb.msg.debug(2, bb.msg.domain.RunQueue, "No package found so skipping setscene task %s" % (self.rqdata.get_user_idstring(task)))
                     self.task_failoutright(task)
 
-- 
1.7.0.4


