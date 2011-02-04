Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 887C24C800C0
	for <poky@yoctoproject.org>; Fri,  4 Feb 2011 02:53:39 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 04 Feb 2011 00:53:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,425,1291622400"; d="scan'208";a="884279708"
Received: from unknown (HELO localhost) ([10.255.16.164])
	by fmsmga001.fm.intel.com with ESMTP; 04 Feb 2011 00:53:38 -0800
Message-Id: <e54e8b28d65f25f3134d6144f1ad35dde898a59e.1296808673.git.josh@linux.intel.com>
In-Reply-To: <cover.1296808673.git.josh@linux.intel.com>
References: <cover.1296808673.git.josh@linux.intel.com>
Old-Date: Tue, 4 Jan 2011 20:28:20 +0000
Date: Fri, 04 Feb 2011  8:53:32 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 03/13] bitbake: implement command to find configuration files for a config variable
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
X-List-Received-Date: Fri, 04 Feb 2011 08:53:39 -0000

From: Joshua Lock <josh@linux.intel.com>

Some configuration variables (MACHINE, MACHINE-SDK and DISTRO) set which
confguration files bitbake should use.
The added command , findConfigFiles, enables a UI to query which files are
suitable values for a specified parameter.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/command.py |   11 +++++++++++
 bitbake/lib/bb/cooker.py  |   24 ++++++++++++++++++++++++
 bitbake/lib/bb/event.py   |   10 ++++++++++
 3 files changed, 45 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/command.py b/bitbake/lib/bb/command.py
index 42b5b06..e83751a 100644
--- a/bitbake/lib/bb/command.py
+++ b/bitbake/lib/bb/command.py
@@ -232,6 +232,17 @@ class CommandsAsync:
         command.finishAsyncCommand()
     generateTargetsTree.needcache = True
 
+    def findConfigFiles(self, command, params):
+        """
+        Find config files which provide appropriate values
+        for the passed configuration variable. i.e. MACHINE
+        """
+        varname = params[0]
+
+        command.cooker.findConfigFiles(varname)
+        command.finishAsyncCommand()
+    findConfigFiles.needcache = True
+
     def showVersions(self, command, params):
         """
         Show the currently selected versions
diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
index ccb67a1..e6643ec 100644
--- a/bitbake/lib/bb/cooker.py
+++ b/bitbake/lib/bb/cooker.py
@@ -430,8 +430,32 @@ class BBCooker:
             if not regex in matched:
                 collectlog.warn("No bb files matched BBFILE_PATTERN_%s '%s'" % (collection, pattern))
 
+    def findConfigFiles(self, varname):
+        """
+        Find config files which are appropriate values for varname.
+        i.e. MACHINE, DISTRO
+        """
+        possible = []
+        var = varname.lower()
+
+        data = self.configuration.data
+        # iterate configs
+        bbpaths = bb.data.getVar('BBPATH', data, True).split(':')
+        for path in bbpaths:
+            confpath = os.path.join(path, "conf", var)
+            if os.path.exists(confpath):
+                for root, dirs, files in os.walk(confpath):
+                    # get all child files, these are appropriate values
+                    for f in files:
+                        val, sep, end = f.rpartition('.')
+                        if end == 'conf':
+                            possible.append(val)
+
+        bb.event.fire(bb.event.ConfigFilesFound(var, possible), self.configuration.data)
+
     def checkInheritsClass(self, klass):
         pkg_list = []
+
         for pfn in self.status.pkg_fn:
             inherits = self.status.inherits.get(pfn, None)
             if inherits and inherits.count(klass) > 0:
diff --git a/bitbake/lib/bb/event.py b/bitbake/lib/bb/event.py
index 0777b42..176eeb8 100644
--- a/bitbake/lib/bb/event.py
+++ b/bitbake/lib/bb/event.py
@@ -361,6 +361,16 @@ class TargetsTreeGenerated(Event):
         Event.__init__(self)
         self._model = model
 
+class ConfigFilesFound(Event):
+    """
+    Event when a list of appropriate config files has been generated
+    """
+
+    def __init__(self, variable, values):
+        Event.__init__(self)
+        self._variable =  variable
+        self._values = values
+
 class MsgBase(Event):
     """Base class for messages"""
 
-- 
1.7.4


