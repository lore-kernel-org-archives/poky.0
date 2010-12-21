Return-Path: <qing.he@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5E2174C808B0
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 11:25:46 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 21 Dec 2010 09:25:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,208,1291622400"; d="scan'208";a="364757570"
Received: from qhe2-db.sh.intel.com ([10.239.13.38])
	by azsmga001.ch.intel.com with ESMTP; 21 Dec 2010 09:25:43 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PV5sq-0007yv-SS; Wed, 22 Dec 2010 01:20:20 +0800
Message-Id: <bbe0dacce8f1e12a97cb60af10b0ea4ad4bfb0d1.1292950145.git.qing.he@intel.com>
In-Reply-To: <cover.1292950144.git.qing.he@intel.com>
References: <cover.1292950144.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Wed, 22 Dec 2010 00:38:50 +0800
To: poky@yoctoproject.org
Subject: [PATCH 4/4] socket based worker data
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
X-List-Received-Date: Tue, 21 Dec 2010 17:25:46 -0000

This patch tries to enable exec'd process to access bitbake data from
a UNIX socket.

It's a PoC version.

Signed-off-by: Qing He <qing.he@intel.com>
---
 bitbake/bin/bitbake-runtask |   80 ++++++++++++++++++++++++++++++++++--------
 bitbake/lib/bb/runqueue.py  |   68 ++++++++++++++++++++++++++++++++----
 2 files changed, 125 insertions(+), 23 deletions(-)

diff --git a/bitbake/bin/bitbake-runtask b/bitbake/bin/bitbake-runtask
index bee0f42..4699490 100755
--- a/bitbake/bin/bitbake-runtask
+++ b/bitbake/bin/bitbake-runtask
@@ -3,6 +3,7 @@
 import os
 import sys
 import warnings
+import re
 sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(sys.argv[0])), 'lib'))
 
 try:
@@ -71,8 +72,7 @@ bb.event.useStdout = False
 hashfile = sys.argv[1]
 buildfile = sys.argv[2]
 taskname = sys.argv[3]
-
-import bb.cooker
+socketname = sys.argv[5] or None
 
 p = pickle.Unpickler(file(hashfile, "rb"))
 hashdata = p.load()
@@ -83,25 +83,68 @@ verbose = hashdata["verbose"]
 
 bb.utils.init_logger(bb.msg, verbose, debug, debug_domains)
 
-cooker = bb.cooker.BBCooker(BBConfiguration(debug, debug_domains), None)
-cooker.parseConfiguration()
+if socketname:
+    import bb, bb.data, bb.parse, socket
+    import time
+
+    fn = buildfile
+
+    configuration = BBConfiguration(debug, debug_domains)
+
+    try:
+        the_data = bb.data.init()
+        datasock = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
+        datasock.connect(socketname)
+        bb.data.setVar("_remote_data", datasock, the_data)
+    except:
+        socketname = ""
+
+if socketname:
+    bb.codeparser.parser_cache_init(the_data)
+    bb.parse.init_parser(the_data, configuration.dump_signatures)
+
+    datasock.send("_cmd_parsed_fns")
+    l = int(datasock.recv(4), 16)
+    parsed = pickle.loads(datasock.recv(l))
+    for key in parsed.keys():
+        funcname = re.sub('_', '-', key)
+        f = bb.data.getVar(funcname, the_data, False)
+        if f:
+            bb.methodpool.check_insert_method(key, f, fn)
+
+    for var in bb.data.getVar('__BBHANDLERS', the_data) or []:
+        bb.event.register(var, bb.data.getVar(var, the_data))
 
-cooker.bb_cache = bb.cache.init(cooker)
-cooker.status = bb.cache.CacheData()
+    if not bb.data.getVar("BUILDNAME", the_data):
+        bb.data.setVar("BUILDNAME", time.strftime('%Y%m%d%H%M'), the_data)
+    bb.data.setVar("BUILDSTART", time.strftime('%m/%d/%Y %H:%M:%S', time.gmtime()), the_data)
 
-(fn, cls) = cooker.bb_cache.virtualfn2realfn(buildfile)
-buildfile = cooker.matchFile(fn)
-fn = cooker.bb_cache.realfn2virtual(buildfile, cls)
 
-cooker.buildSetVars()
+    bb.data.setVar("BB_WORKERCONTEXT", "1", the_data)
+    bb.event.fire(bb.event.ConfigParsed(), the_data)
 
-# Load data into the cache for fn and parse the loaded cache data
-the_data = cooker.bb_cache.loadDataFull(fn, cooker.get_file_appends(fn), cooker.configuration.data)
-cooker.bb_cache.setData(fn, buildfile, the_data)
-cooker.bb_cache.handle_data(fn, cooker.status)
+else:
+    import bb.cooker
 
-#exportlist = bb.utils.preserved_envvars_export_list()
-#bb.utils.filter_environment(exportlist)
+    cooker = bb.cooker.BBCooker(BBConfiguration(debug, debug_domains), None)
+    cooker.parseConfiguration()
+
+    cooker.bb_cache = bb.cache.init(cooker)
+    cooker.status = bb.cache.CacheData()
+
+    (fn, cls) = cooker.bb_cache.virtualfn2realfn(buildfile)
+    buildfile = cooker.matchFile(fn)
+    fn = cooker.bb_cache.realfn2virtual(buildfile, cls)
+
+    cooker.buildSetVars()
+
+    # Load data into the cache for fn and parse the loaded cache data
+    the_data = cooker.bb_cache.loadDataFull(fn, cooker.get_file_appends(fn), cooker.configuration.data)
+    cooker.bb_cache.setData(fn, buildfile, the_data)
+    cooker.bb_cache.handle_data(fn, cooker.status)
+
+    #exportlist = bb.utils.preserved_envvars_export_list()
+    #bb.utils.filter_environment(exportlist)
 
 if taskname.endswith("_setscene"):
     the_data.setVarFlag(taskname, "quieterrors", "1")
@@ -116,5 +159,10 @@ for h in hashdata["deps"]:
 ret = 0
 if sys.argv[4] != "True":
     ret = bb.build.exec_task(fn, taskname, the_data)
+
+if socketname:
+    datasock.send("_cmd_end")
+    datasock.close()
+
 sys.exit(ret)
 
diff --git a/bitbake/lib/bb/runqueue.py b/bitbake/lib/bb/runqueue.py
index e26aa4e..d520d1f 100644
--- a/bitbake/lib/bb/runqueue.py
+++ b/bitbake/lib/bb/runqueue.py
@@ -24,7 +24,7 @@ Handles preparation and execution of a queue of tasks
 
 import bb, os, sys
 import subprocess
-from bb import msg, data, event
+from bb import msg, data, event, parse
 import signal
 import stat
 import fcntl
@@ -1007,6 +1007,8 @@ class RunQueueExecute:
         self.build_pids = {}
         self.build_pipes = {}
         self.build_procs = {}
+        self.build_sockpids = {}
+        self.build_sockfiles = {}
         self.failed_fnids = []
 
     def runqueue_process_waitpid(self):
@@ -1019,10 +1021,16 @@ class RunQueueExecute:
             proc.poll()
             if proc.returncode is not None:
                 task = self.build_pids[pid]
+                sockfile = self.build_sockfiles[pid]
+                sockpid = self.build_sockpids[pid]
+                os.waitpid(sockpid, 0)
+                os.unlink(sockfile)
                 del self.build_pids[pid]
                 self.build_pipes[pid].close()
                 del self.build_pipes[pid]
                 del self.build_procs[pid]
+                del self.build_sockpids[pid]
+                del self.build_sockfiles[pid]
                 if proc.returncode != 0:
                     self.task_fail(task, proc.returncode)
                 else:
@@ -1058,9 +1066,51 @@ class RunQueueExecute:
         return
 
     def fork_off_task(self, fn, task, taskname):
-        try:
-            the_data = self.cooker.bb_cache.loadDataFull(fn, self.cooker.get_file_appends(fn), self.cooker.configuration.data)
+        the_data = self.cooker.bb_cache.loadDataFull(fn, self.cooker.get_file_appends(fn), self.cooker.configuration.data)
+
+        sockfile = os.tempnam("/tmp", "sock-")
+        sockpid = os.fork()
+        if sockpid == 0:
+            import socket
+
+            try:
+                #si = file("/dev/null", 'r')
+                #os.dup2(si.fileno( ), sys.stdin.fileno( ))
+                #so = file("/dev/null", 'w')
+                #os.dup2(so.fileno( ), sys.stdout.fileno( ))
+                #os.dup2(so.fileno( ), sys.stderr.fileno( ))
+
+                os.setpgrp()
+                signal.signal(signal.SIGPIPE, signal.SIG_DFL)
+                signal.signal(signal.SIGINT, signal.SIG_DFL)
+
+                bb.event.worker_pid = 0
+
+                s = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
+                s.bind(sockfile)
+                s.listen(1)
+                conn, _ = s.accept()
+
+                while 1:
+                    k = conn.recv(1024)
+                    if k == "_cmd_end":
+                        conn.flush()
+                        conn.close()
+                        os._exit(os.EX_OK)
+                    elif k == "_cmd_parsed_fns":
+                        dump = pickle.dumps(bb.methodpool.get_parsed_fns())
+                    elif k == "_cmd_keys":
+                        dump = pickle.dumps(the_data.keys())
+                    else:
+                        dump = pickle.dumps(the_data._findVar(k))
+
+                    conn.send("%04x" % len(dump))
+                    conn.sendall(dump)
+            except:
+                pass
+            os._exit(os.EX_OK)
 
+        try:
             env = bb.data.export_vars(the_data)
             env = bb.data.export_envvars(env, the_data)
 
@@ -1082,14 +1132,14 @@ class RunQueueExecute:
             sys.stderr.flush()
 
             runtask = the_data.getVar("BB_RUNTASK", True) or "bitbake-runtask"
-            proc = subprocess.Popen([runtask, self.rqdata.hashfile, fn, taskname, str(self.cooker.configuration.dry_run)], env=env, stdout=subprocess.PIPE, stdin=subprocess.PIPE)
+            proc = subprocess.Popen([runtask, self.rqdata.hashfile, fn, taskname, str(self.cooker.configuration.dry_run), sockfile], env=env, stdout=subprocess.PIPE, stdin=subprocess.PIPE)
             pipein = proc.stdout
             pipeout = proc.stdin
             pid = proc.pid
         except OSError as e: 
             bb.msg.fatal(bb.msg.domain.RunQueue, "fork failed: %d (%s)" % (e.errno, e.strerror))
 
-        return proc
+        return proc, sockpid, sockfile
 
 class RunQueueExecuteDummy(RunQueueExecute):
     def __init__(self, rq):
@@ -1234,11 +1284,13 @@ class RunQueueExecuteTasks(RunQueueExecute):
                                                                 task,
                                                                 self.rqdata.get_user_idstring(task)))
 
-            proc = self.fork_off_task(fn, task, taskname)
+            proc, sockpid, sockfile = self.fork_off_task(fn, task, taskname)
 
             self.build_pids[proc.pid] = task
             self.build_procs[proc.pid] = proc
             self.build_pipes[proc.pid] = runQueuePipe(proc.stdout, proc.stdin, self.cfgData)
+            self.build_sockpids[proc.pid] = sockpid
+            self.build_sockfiles[proc.pid] = sockfile
             self.runq_running[task] = 1
             self.stats.taskActive()
             if self.stats.active < self.number_tasks:
@@ -1476,11 +1528,13 @@ class RunQueueExecuteScenequeue(RunQueueExecute):
                         "Running setscene task %d of %d (%s:%s)" % (self.stats.completed + self.stats.active + self.stats.failed + 1,
                                                                          self.stats.total, fn, taskname))
 
-            proc = self.fork_off_task(fn, realtask, taskname)
+            proc, sockpid, sockfile = self.fork_off_task(fn, realtask, taskname)
 
             self.build_pids[proc.pid] = task
             self.build_procs[proc.pid] = proc
             self.build_pipes[proc.pid] = runQueuePipe(proc.stdout, proc.stdin, self.cfgData)
+            self.build_sockpids[proc.pid] = sockpid
+            self.build_sockfiles[proc.pid] = sockfile
             self.runq_running[task] = 1
             self.stats.taskActive()
             if self.stats.active < self.number_tasks:
-- 
1.7.0


