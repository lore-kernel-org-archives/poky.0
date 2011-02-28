Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 106A44C80510
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 08:38:09 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 28 Feb 2011 06:38:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,239,1297065600"; d="scan'208";a="891956180"
Received: from unknown (HELO helios) ([10.255.16.249])
	by fmsmga001.fm.intel.com with SMTP; 28 Feb 2011 06:38:07 -0800
Received: by helios (sSMTP sendmail emulation); Mon, 28 Feb 2011 14:38:07 +0000
Message-Id: <0b46ec5fd3f2c19c4654023cd8a7a56c2b202342.1298903625.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1298903625.git.paul.eggleton@linux.intel.com>
References: <cover.1298903625.git.paul.eggleton@linux.intel.com>
Old-Date: Mon, 28 Feb 2011 14:28:25 +0000
Date: Mon, 28 Feb 2011 14:38:07 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 3/3] bitbake/runqueue: show correct task name for setscene task failure
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
X-List-Received-Date: Mon, 28 Feb 2011 14:38:09 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

If a setscene task failed previously it was showing an incorrect task
name in the error line. This patch ensures we show the correct name, also
including the "_setscene" suffix.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 bitbake/lib/bb/runqueue.py |   14 +++++++++++---
 1 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/bitbake/lib/bb/runqueue.py b/bitbake/lib/bb/runqueue.py
index 172e591..834b9d5 100644
--- a/bitbake/lib/bb/runqueue.py
+++ b/bitbake/lib/bb/runqueue.py
@@ -204,9 +204,9 @@ class RunQueueData:
             ret.extend([nam])
         return ret
 
-    def get_user_idstring(self, task):
+    def get_user_idstring(self, task, task_name_suffix = ""):
         fn = self.taskData.fn_index[self.runq_fnid[task]]
-        taskname = self.runq_task[task]
+        taskname = self.runq_task[task] + task_name_suffix
         return "%s, %s" % (fn, taskname)
 
     def get_task_id(self, fnid, taskname):
@@ -1483,7 +1483,7 @@ class RunQueueExecuteScenequeue(RunQueueExecute):
     def task_fail(self, task, result):
         self.stats.taskFailed()
         index = self.rqdata.runq_setscene[task]
-        bb.event.fire(runQueueTaskFailed(task, self.stats, result, self), self.cfgData)
+        bb.event.fire(sceneQueueTaskFailed(index, self.stats, result, self), self.cfgData)
         self.scenequeue_notcovered.add(task)
         self.scenequeue_updatecounters(task)
 
@@ -1616,6 +1616,14 @@ class runQueueTaskFailed(runQueueEvent):
         runQueueEvent.__init__(self, task, stats, rq)
         self.exitcode = exitcode
 
+class sceneQueueTaskFailed(runQueueTaskFailed):
+    """
+    Event notifing a setscene task failed
+    """
+    def __init__(self, task, stats, exitcode, rq):
+        runQueueTaskFailed.__init__(self, task, stats, exitcode, rq)
+        self.taskstring = rq.rqdata.get_user_idstring(task, "_setscene")
+
 class runQueueTaskCompleted(runQueueEvent):
     """
     Event notifing a task completed
-- 
1.7.1


