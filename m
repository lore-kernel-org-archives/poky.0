Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B14684C80B71
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 22:47:08 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Nov 2010 20:47:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,209,1288594800"; d="scan'208";a="858414335"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.22])
	by fmsmga001.fm.intel.com with ESMTP; 16 Nov 2010 20:47:07 -0800
Message-Id: <fa09979bfc38e15dc4b9ab199c11302284583a18.1289969353.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1289969353.git.dongxiao.xu@intel.com>
References: <cover.1289969353.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Wed, 17 Nov 2010 12:10:54 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] bitbake: optimize file parsing speed
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
X-List-Received-Date: Wed, 17 Nov 2010 04:47:08 -0000

build some data cache for generate_dependencies() on hand, and later
each time when parsing the bb file, we do not need to build them again
and again.

This optimization could get about 50% speed gain when parsing all ~800
bb files.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 bitbake/lib/bb/cooker.py |    2 ++
 bitbake/lib/bb/data.py   |   11 ++++++-----
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
index 33eb65e..05e6c16 100644
--- a/bitbake/lib/bb/cooker.py
+++ b/bitbake/lib/bb/cooker.py
@@ -76,6 +76,8 @@ class BBCooker:
 
         self.configuration.data = bb.data.init()
 
+        bb.data.init_data_cache(self.configuration.data)
+
         if not server:
             bb.data.setVar("BB_WORKERCONTEXT", "1", self.configuration.data)
 
diff --git a/bitbake/lib/bb/data.py b/bitbake/lib/bb/data.py
index fee10cc..a9e539f 100644
--- a/bitbake/lib/bb/data.py
+++ b/bitbake/lib/bb/data.py
@@ -296,17 +296,18 @@ def build_dependencies(key, keys, shelldeps, d):
     #bb.note("Variable %s references %s and calls %s" % (key, str(deps), str(execs)))
     #d.setVarFlag(key, "vardeps", deps)
 
-def generate_dependencies(d):
+def init_data_cache(d):
+    bb.data.keylist = set(key for key in d.keys() if not key.startswith("__"))
+    bb.data.shelldeps = set(key for key in bb.data.keylist if d.getVarFlag(key, "export") and not d.getVarFlag(key, "unexport"))
 
-    keys = set(key for key in d.keys() if not key.startswith("__"))
-    shelldeps = set(key for key in keys if d.getVarFlag(key, "export") and not d.getVarFlag(key, "unexport"))
+def generate_dependencies(d):
 
     deps = {}
     taskdeps = {}
 
     tasklist = bb.data.getVar('__BBTASKS', d) or []
     for task in tasklist:
-        deps[task] = build_dependencies(task, keys, shelldeps, d)
+        deps[task] = build_dependencies(task, bb.data.keylist, bb.data.shelldeps, d)
 
         newdeps = deps[task]
         seen = set()
@@ -316,7 +317,7 @@ def generate_dependencies(d):
             newdeps = set()
             for dep in nextdeps:
                 if dep not in deps:
-                    deps[dep] = build_dependencies(dep, keys, shelldeps, d)
+                    deps[dep] = build_dependencies(dep, bb.data.keylist, bb.data.shelldeps, d)
                 newdeps |=  deps[dep]
             newdeps -= seen
         taskdeps[task] = seen | newdeps
-- 
1.6.3.3


