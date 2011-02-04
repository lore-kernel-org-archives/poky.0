Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 03B184C800C0
	for <poky@yoctoproject.org>; Fri,  4 Feb 2011 02:53:53 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 04 Feb 2011 00:53:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,425,1291622400"; d="scan'208";a="703976235"
Received: from unknown (HELO localhost) ([10.255.16.164])
	by orsmga001.jf.intel.com with ESMTP; 04 Feb 2011 00:53:52 -0800
Message-Id: <1939f7ff003c1faadcd62b1e0c3aa7c4fa2781c6.1296808673.git.josh@linux.intel.com>
In-Reply-To: <cover.1296808673.git.josh@linux.intel.com>
References: <cover.1296808673.git.josh@linux.intel.com>
Old-Date: Fri, 7 Jan 2011 12:00:09 +0000
Date: Fri, 04 Feb 2011  8:53:46 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 05/13] bitbake/cooker: reduce code duplication
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
X-List-Received-Date: Fri, 04 Feb 2011 08:53:54 -0000

From: Joshua Lock <josh@linux.intel.com>

Move runqueua and taskdata initialisation into a new function,
prepareTreeData(), so that generateDepTreeData() and
generateTargetsTreeData() are not duplicating the same logic.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/cooker.py |   37 +++++++++++--------------------------
 1 files changed, 11 insertions(+), 26 deletions(-)

diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
index c7c8ad6..b3158ff 100644
--- a/bitbake/lib/bb/cooker.py
+++ b/bitbake/lib/bb/cooker.py
@@ -237,11 +237,10 @@ class BBCooker:
             if data.getVarFlag( e, 'python', envdata ):
                 logger.plain("\npython %s () {\n%s}\n", e, data.getVar(e, envdata, 1))
 
-    def generateDepTreeData(self, pkgs_to_build, task):
+    def prepareTreeData(self, pkgs_to_build, task):
         """
-        Create a dependency tree of pkgs_to_build, returning the data.
+        Prepare a runqueue and taskdata object for iteration over pkgs_to_build
         """
-
         # Need files parsed
         self.updateCache()
 
@@ -265,6 +264,14 @@ class BBCooker:
         rq = bb.runqueue.RunQueue(self, self.configuration.data, self.status, taskdata, runlist)
         rq.rqdata.prepare()
 
+        return taskdata, rq
+
+    def generateDepTreeData(self, pkgs_to_build, task):
+        """
+        Create a dependency tree of pkgs_to_build, returning the data.
+        """
+        taskdata, rq = self.prepareTreeData(pkgs_to_build, task)
+
         seen_fnids = []
         depend_tree = {}
         depend_tree["depends"] = {}
@@ -470,29 +477,7 @@ class BBCooker:
         """
         Create a tree of pkgs_to_build metadata, returning the data.
         """
-
-        # Need files parsed
-        self.updateCache()
-
-        # If we are told to do the None task then query the default task
-        if (task == None):
-            task = self.configuration.cmd
-
-        pkgs_to_build = self.checkPackages(pkgs_to_build)
-
-        localdata = data.createCopy(self.configuration.data)
-        bb.data.update_data(localdata)
-        bb.data.expandKeys(localdata)
-        taskdata = bb.taskdata.TaskData(self.configuration.abort)
-
-        runlist = []
-        for k in pkgs_to_build:
-            taskdata.add_provider(localdata, self.status, k)
-            runlist.append([k, "do_%s" % task])
-        taskdata.add_unresolved(localdata, self.status)
-
-        rq = bb.runqueue.RunQueue(self, self.configuration.data, self.status, taskdata, runlist)
-        rq.rqdata.prepare()
+        taskdata, rq = self.prepareTreeData(pkgs_to_build, task)
 
         seen_fnids = []
         target_tree = {}
-- 
1.7.4


