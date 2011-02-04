Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B5ECB4C800D7
	for <poky@yoctoproject.org>; Fri,  4 Feb 2011 02:53:32 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 04 Feb 2011 00:53:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,425,1291622400"; d="scan'208";a="599427244"
Received: from unknown (HELO localhost) ([10.255.16.164])
	by orsmga002.jf.intel.com with ESMTP; 04 Feb 2011 00:53:31 -0800
Message-Id: <b73dbd15bcc6e747550f8b0dec0b4c95a5a0361d.1296808673.git.josh@linux.intel.com>
In-Reply-To: <cover.1296808673.git.josh@linux.intel.com>
References: <cover.1296808673.git.josh@linux.intel.com>
Old-Date: Tue, 4 Jan 2011 20:08:51 +0000
Date: Fri, 04 Feb 2011  8:53:25 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 02/13] bitbake: implement command to get all possible targets and their dependencies
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
X-List-Received-Date: Fri, 04 Feb 2011 08:53:32 -0000

From: Joshua Lock <josh@linux.intel.com>

Add a new command generateTargetsTree() which returns a dependency tree of
possible targets (tasks and recipes) as well as their dependency information.

Optional parameter 'klass' also ensures any recipes which inherit the
specified class path (i.e. 'classes/image.bbclass') are included in the model

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/command.py |   10 ++++++++++
 bitbake/lib/bb/cooker.py  |   25 +++++++++++++++++++++++++
 bitbake/lib/bb/event.py   |    9 +++++++++
 3 files changed, 44 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/command.py b/bitbake/lib/bb/command.py
index b880892..42b5b06 100644
--- a/bitbake/lib/bb/command.py
+++ b/bitbake/lib/bb/command.py
@@ -222,6 +222,16 @@ class CommandsAsync:
         command.finishAsyncCommand()
     generateDotGraph.needcache = True
 
+    def generateTargetsTree(self, command, params):
+        """
+        Generate a tree of all buildable targets.
+        """
+        klass = params[0]
+
+        command.cooker.generateTargetsTree(klass)
+        command.finishAsyncCommand()
+    generateTargetsTree.needcache = True
+
     def showVersions(self, command, params):
         """
         Show the currently selected versions
diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
index e524db7..ccb67a1 100644
--- a/bitbake/lib/bb/cooker.py
+++ b/bitbake/lib/bb/cooker.py
@@ -430,6 +430,31 @@ class BBCooker:
             if not regex in matched:
                 collectlog.warn("No bb files matched BBFILE_PATTERN_%s '%s'" % (collection, pattern))
 
+    def checkInheritsClass(self, klass):
+        pkg_list = []
+        for pfn in self.status.pkg_fn:
+            inherits = self.status.inherits.get(pfn, None)
+            if inherits and inherits.count(klass) > 0:
+                pkg_list.append(self.status.pkg_fn[pfn])
+
+        return pkg_list
+
+    def generateTargetsTree(self, klass):
+        """
+        Generate a dependency tree of buildable targets
+        Generate an event with the result
+        """
+        pkgs = ['world']
+        # if inherited_class passed ensure all recipes which inherit the
+        # specified class are included in pkgs
+        if klass:
+            extra_pkgs = self.checkInheritsClass(klass)
+            pkgs = pkgs + extra_pkgs
+
+        # generate a dependency tree for all our packages
+        tree = self.generateDepTreeData(pkgs, 'build')
+        bb.event.fire(bb.event.TargetsTreeGenerated(tree), self.configuration.data)
+
     def buildWorldTargetList(self):
         """
          Build package list for "bitbake world"
diff --git a/bitbake/lib/bb/event.py b/bitbake/lib/bb/event.py
index bd2042a..0777b42 100644
--- a/bitbake/lib/bb/event.py
+++ b/bitbake/lib/bb/event.py
@@ -352,6 +352,15 @@ class DepTreeGenerated(Event):
         Event.__init__(self)
         self._depgraph = depgraph
 
+class TargetsTreeGenerated(Event):
+    """
+    Event when a set of buildable targets has been generated
+    """
+
+    def __init__(self, model):
+        Event.__init__(self)
+        self._model = model
+
 class MsgBase(Event):
     """Base class for messages"""
 
-- 
1.7.4


