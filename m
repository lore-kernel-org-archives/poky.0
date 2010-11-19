Return-Path: <qing.he@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6E3184C80BD4
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 21:55:51 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Nov 2010 19:55:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,221,1288594800"; d="scan'208";a="678987710"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by orsmga001.jf.intel.com with ESMTP; 18 Nov 2010 19:55:50 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PJI06-00084O-SD; Fri, 19 Nov 2010 11:51:02 +0800
Date: Fri, 19 Nov 2010 11:51:02 +0800
From: Qing He <qing.he@intel.com>
To: poky@yoctoproject.org
Message-ID: <20101119035102.GA31016@qhe2-db>
MIME-Version: 1.0
User-Agent: Mutt/1.5.20 (2009-06-14)
Subject: [PATCH][RFC] bitbake: add task tracking
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
X-List-Received-Date: Fri, 19 Nov 2010 03:55:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Add a new option to record start and end time of every task

Signed-off-by: Qing He <qing.he@intel.com>

---
diff --git a/bitbake/bin/bitbake b/bitbake/bin/bitbake
index 797b5a8..e43568b 100755
--- a/bitbake/bin/bitbake
+++ b/bitbake/bin/bitbake
@@ -147,6 +147,9 @@ Default BBFILES are the .bb files in the current directory.""")
     parser.add_option("-P", "--profile", help = "profile the command and print a report",
                action = "store_true", dest = "profile", default = False)
 
+    parser.add_option("-t", "--track", help = "record start and end time of all tasks",
+               action = "store_true", dest = "track_tasks", default = False)
+
     parser.add_option("-u", "--ui", help = "userinterface to use",
                action = "store", dest = "ui")
 
diff --git a/bitbake/lib/bb/runqueue.py b/bitbake/lib/bb/runqueue.py
index 85ecafc..fa0b0b3 100644
--- a/bitbake/lib/bb/runqueue.py
+++ b/bitbake/lib/bb/runqueue.py
@@ -29,6 +29,7 @@ import signal
 import stat
 import fcntl
 import copy
+import time
 
 try:
     import cPickle as pickle
@@ -997,6 +998,7 @@ class RunQueueExecute:
         self.cooker = rq.cooker
         self.cfgData = rq.cfgData
         self.rqdata = rq.rqdata
+        self.track = rq.cooker.configuration.track_tasks
 
         self.number_tasks = int(bb.data.getVar("BB_NUMBER_THREADS", self.cfgData, 1) or 1)
         self.scheduler = bb.data.getVar("BB_SCHEDULER", self.cfgData, 1) or "speed"
@@ -1009,6 +1011,9 @@ class RunQueueExecute:
         self.build_procs = {}
         self.failed_fnids = []
 
+        if self.track:
+            self.tout = open("task-track.log", "w")
+
     def runqueue_process_waitpid(self):
         """
         Return none is there are no processes awaiting result collection, otherwise
@@ -1039,6 +1044,10 @@ class RunQueueExecute:
         for pipe in self.build_pipes:
             self.build_pipes[pipe].read()
 
+        if self.track and self.tout:
+            self.tout.flush()
+            self.tout.close()
+
     def finish(self):
         self.rq.state = runQueueCleanUp
 
@@ -1054,6 +1063,10 @@ class RunQueueExecute:
             self.rq.state = runQueueFailed
             return
 
+        if self.track and self.tout:
+            self.tout.flush()
+            self.tout.close()
+
         self.rq.state = runQueueComplete
         return
 
@@ -1170,6 +1183,8 @@ class RunQueueExecuteTasks(RunQueueExecute):
         self.stats.taskCompleted()
         bb.event.fire(runQueueTaskCompleted(task, self.stats, self.rq), self.cfgData)
         self.task_completeoutright(task)
+        if self.track:
+            self.tout.write("complete: %f (%s)\n" % (time.time(), self.rqdata.get_user_idstring(task)))
 
     def task_fail(self, task, exitcode):
         """
@@ -1183,6 +1198,8 @@ class RunQueueExecuteTasks(RunQueueExecute):
         bb.event.fire(runQueueTaskFailed(task, self.stats, self.rq), self.cfgData)
         if self.rqdata.taskData.abort:
             self.rq.state = runQueueCleanUp
+        if self.track:
+            self.tout.write("fail: %f (%s)\n" % (time.time(), self.rqdata.get_user_idstring(task)))
 
     def task_skip(self, task):
         self.runq_running[task] = 1
@@ -1221,6 +1238,8 @@ class RunQueueExecuteTasks(RunQueueExecute):
                                                                 self.stats.total,
                                                                 task,
                                                                 self.rqdata.get_user_idstring(task)))
+                if self.track:
+                    self.tout.write("noexec: %f (%s)\n" % (time.time(), self.rqdata.get_user_idstring(task)))
                 self.runq_running[task] = 1
                 self.stats.taskActive()
                 bb.build.make_stamp(task, self.rqdata.dataCache, fn)
@@ -1233,6 +1252,8 @@ class RunQueueExecuteTasks(RunQueueExecute):
                                                                 task,
                                                                 self.rqdata.get_user_idstring(task)))
 
+            if self.track:
+                self.tout.write("start: %f (%s)\n" % (time.time(), self.rqdata.get_user_idstring(task)))
             proc = self.fork_off_task(fn, task, taskname)
 
             self.build_pids[proc.pid] = task

