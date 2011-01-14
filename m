Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9F9644C80039
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 16:01:16 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 Jan 2011 14:01:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,324,1291622400"; d="scan'208";a="697002591"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga001.jf.intel.com with ESMTP; 14 Jan 2011 14:01:15 -0800
Message-Id: <dab30a6f860cf8ef3b2ed29925e312e7d6749539.1295042140.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1295042138.git.dongxiao.xu@intel.com>
References: <cover.1295042138.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Wed, 12 Jan 2011 22:57:21 +0800
Date: Sat, 15 Jan 2011  6:14:34 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/5] bitbake: Introduce stamp-extra-info into build stamp file
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
X-List-Received-Date: Fri, 14 Jan 2011 22:01:17 -0000

For certain tasks, we need additional information in build stamp file
except the task name and file name. stamp-extra-info is introduced as
an flag adding to the end of stamp file name.

Besides, if we need to add common flags for tasks, we can set value for
macro BB_STAMP_EXTRA.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 bitbake/lib/bb/build.py    |   14 +++++---------
 bitbake/lib/bb/cache.py    |   19 ++++++++++++++++++-
 bitbake/lib/bb/runqueue.py |   12 ++++++------
 bitbake/lib/bb/siggen.py   |   20 ++++++++++++++++++--
 meta/classes/base.bbclass  |    2 +-
 5 files changed, 48 insertions(+), 19 deletions(-)

diff --git a/bitbake/lib/bb/build.py b/bitbake/lib/bb/build.py
index f127796..2175d54 100644
--- a/bitbake/lib/bb/build.py
+++ b/bitbake/lib/bb/build.py
@@ -383,15 +383,11 @@ def stamp_internal(taskname, d, file_name):
     When called in task context, d will be a data store, file_name will not be set
     """
     if file_name:
-        stamp = d.stamp[file_name]
+        is_dict = False
     else:
-        stamp = d.getVar('STAMP', True)
-        file_name = d.getVar('BB_FILENAME', True)
+        is_dict = True
 
-    if not stamp:
-        return
-
-    stamp = bb.parse.siggen.stampfile(stamp, file_name, taskname)
+    stamp = bb.parse.siggen.stampfile(d, file_name, taskname, is_dict)
 
     bb.utils.mkdirhier(os.path.dirname(stamp))
 
@@ -420,8 +416,8 @@ def del_stamp(task, d, file_name = None):
     if os.access(stamp, os.F_OK):
         os.remove(stamp)
 
-def stampfile(taskname, d):
-    return stamp_internal(taskname, d, None)
+def stampfile(taskname, d, file_name):
+    return stamp_internal(taskname, d, file_name)
 
 def add_tasks(tasklist, d):
     task_deps = data.getVar('_task_deps', d)
diff --git a/bitbake/lib/bb/cache.py b/bitbake/lib/bb/cache.py
index 9a2e2d5..2437d4a 100644
--- a/bitbake/lib/bb/cache.py
+++ b/bitbake/lib/bb/cache.py
@@ -55,6 +55,8 @@ recipe_fields = (
     'provides',
     'task_deps',
     'stamp',
+    'stamp_extra',
+    'stamp_extra_info',
     'broken',
     'not_world',
     'skipped',
@@ -102,6 +104,11 @@ class RecipeInfo(namedtuple('RecipeInfo', recipe_fields)):
                     for task in tasks)
 
     @classmethod
+    def stampvar(cls, var, tasks, stamp, metadata):
+        return dict((stamp + '.' + task, metadata.getVarFlag(task, var, True))
+                    for task in tasks)
+
+    @classmethod
     def getvar(cls, var, metadata):
         return metadata.getVar(var, True) or ''
 
@@ -126,6 +133,7 @@ class RecipeInfo(namedtuple('RecipeInfo', recipe_fields)):
         if not pn in packages:
             packages.append(pn)
 
+        stamp = cls.getvar('STAMP', metadata)
         return RecipeInfo(
             tasks            = tasks,
             basetaskhashes   = cls.taskvar('BB_BASEHASH', tasks, metadata),
@@ -147,7 +155,9 @@ class RecipeInfo(namedtuple('RecipeInfo', recipe_fields)):
             defaultpref      = cls.intvar('DEFAULT_PREFERENCE', metadata),
             broken           = cls.getvar('BROKEN', metadata),
             not_world        = cls.getvar('EXCLUDE_FROM_WORLD', metadata),
-            stamp            = cls.getvar('STAMP', metadata),
+            stamp            = stamp,
+            stamp_extra      = cls.getvar('BB_STAMP_EXTRA', metadata),
+            stamp_extra_info = cls.stampvar('stamp-extra-info', tasks, stamp, metadata),
             packages_dynamic = cls.listvar('PACKAGES_DYNAMIC', metadata),
             depends          = cls.depvar('DEPENDS', metadata),
             provides         = cls.depvar('PROVIDES', metadata),
@@ -562,6 +572,8 @@ class CacheData(object):
         self.task_queues = {}
         self.task_deps = {}
         self.stamp = {}
+        self.stamp_extra = {}
+        self.stamp_extra_info = {}
         self.preferred = {}
         self.tasks = {}
         self.basetaskhash = {}
@@ -577,12 +589,17 @@ class CacheData(object):
         self.bbfile_config_priorities = []
 
     def add_from_recipeinfo(self, fn, info):
+        tasks = info.tasks
         self.task_deps[fn] = info.task_deps
         self.pkg_fn[fn] = info.pn
         self.pkg_pn[info.pn].append(fn)
         self.pkg_pepvpr[fn] = (info.pe, info.pv, info.pr)
         self.pkg_dp[fn] = info.defaultpref
         self.stamp[fn] = info.stamp
+        self.stamp_extra[fn] = info.stamp_extra
+
+        for task in tasks:
+            self.stamp_extra_info[self.stamp[fn] + '.' + task] = info.stamp_extra_info[self.stamp[fn] + '.' + task]
 
         provides = [info.pn]
         for provide in info.provides:
diff --git a/bitbake/lib/bb/runqueue.py b/bitbake/lib/bb/runqueue.py
index a465275..b9d89ec 100644
--- a/bitbake/lib/bb/runqueue.py
+++ b/bitbake/lib/bb/runqueue.py
@@ -794,7 +794,7 @@ class RunQueue:
                 continue
             fn = self.rqdata.taskData.fn_index[self.rqdata.runq_fnid[task]]
             taskname = self.rqdata.runq_task[task]
-            stampfile = bb.parse.siggen.stampfile(self.rqdata.dataCache.stamp[fn], fn, taskname)
+            stampfile = bb.build.stampfile(taskname, self.rqdata.dataCache, fn)
             # If the stamp is missing its not current
             if not os.access(stampfile, os.F_OK):
                 del unchecked[task]
@@ -815,7 +815,7 @@ class RunQueue:
                 if task in unchecked:
                     fn = self.taskData.fn_index[self.rqdata.runq_fnid[task]]
                     taskname = self.rqdata.runq_task[task]
-                    stampfile = bb.parse.siggen.stampfile(self.rqdata.dataCache.stamp[fn], fn, taskname)
+                    stampfile = bb.build.stampfile(taskname, self.rqdata.dataCache, fn)
                     iscurrent = True
 
                     t1 = os.stat(stampfile)[stat.ST_MTIME]
@@ -823,7 +823,7 @@ class RunQueue:
                         if iscurrent:
                             fn2 = self.taskData.fn_index[self.rqdata.runq_fnid[dep]]
                             taskname2 = self.rqdata.runq_task[dep]
-                            stampfile2 = bb.parse.siggen.stampfile(self.rqdata.dataCache.stamp[fn2], fn2, taskname2)
+                            stampfile2 = bb.build.stampfile(taskname2, self.rqdata.dataCache, fn2)
                             if fn == fn2 or (fulldeptree and fn2 not in stampwhitelist):
                                 if dep in notcurrent:
                                     iscurrent = False
@@ -875,7 +875,7 @@ class RunQueue:
         if taskname is None:
             taskname = self.rqdata.runq_task[task]
 
-        stampfile = bb.parse.siggen.stampfile(self.rqdata.dataCache.stamp[fn], fn, taskname)
+        stampfile = bb.build.stampfile(taskname, self.rqdata.dataCache, fn)
 
         # If the stamp is missing its not current
         if not os.access(stampfile, os.F_OK):
@@ -896,8 +896,8 @@ class RunQueue:
             if iscurrent:
                 fn2 = self.rqdata.taskData.fn_index[self.rqdata.runq_fnid[dep]]
                 taskname2 = self.rqdata.runq_task[dep]
-                stampfile2 = bb.parse.siggen.stampfile(self.rqdata.dataCache.stamp[fn2], fn2, taskname2)
-                stampfile3 = bb.parse.siggen.stampfile(self.rqdata.dataCache.stamp[fn2], fn2, taskname2 + "_setscene")
+                stampfile2 = bb.build.stampfile(taskname2, self.rqdata.dataCache, fn2)
+                stampfile3 = bb.build.stampfile(taskname2 + "_setscene", self.rqdata.dataCache, fn2)
                 t2 = get_timestamp(stampfile2)
                 t3 = get_timestamp(stampfile3)
                 if t3 and t3 > t2:
diff --git a/bitbake/lib/bb/siggen.py b/bitbake/lib/bb/siggen.py
index 4dc09b3..48fe6af 100644
--- a/bitbake/lib/bb/siggen.py
+++ b/bitbake/lib/bb/siggen.py
@@ -42,8 +42,24 @@ class SignatureGenerator(object):
     def set_taskdata(self, hashes, deps):
         return
 
-    def stampfile(self, stampbase, file_name, taskname):
-        return "%s.%s" % (stampbase, taskname)
+    def stampfile(self, d, file_name, taskname, is_dict):
+        if is_dict:
+            stamp = d.getVar('STAMP', True)
+            file_name = d.getVar('BB_FILENAME', True)
+            extra_info = taskname + '.' + (bb.data.getVarFlag(taskname, 'stamp-extra-info', d) or bb.data.getVar('BB_STAMP_EXTRA', d, True) or "")
+            extra_info = bb.data.expand(extra_info, d)
+        else:
+            stamp = d.stamp[file_name]
+            if stamp + "." + taskname in d.stamp_extra_info.keys():
+                extra_info = taskname + '.' + (d.stamp_extra_info[stamp + "." + taskname] or d.stamp_extra[file_name] or "")
+            else:
+                extra_info = taskname + '.' + (d.stamp_extra[file_name] or "")
+
+        if not stamp:
+            return
+
+        return "%s.%s" % (stamp, extra_info.rstrip('.'))
+
 
 class SignatureGeneratorBasic(SignatureGenerator):
     """
diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclass
index f1ffb45..58913d7 100644
--- a/meta/classes/base.bbclass
+++ b/meta/classes/base.bbclass
@@ -107,7 +107,7 @@ python base_scenefunction () {
 python base_do_setscene () {
 	for f in (bb.data.getVar('SCENEFUNCS', d, 1) or '').split():
 		bb.build.exec_func(f, d)
-	if not os.path.exists(bb.build.stampfile("do_setscene", d)):
+	if not os.path.exists(bb.build.stampfile("do_setscene", d, None)):
 		bb.build.make_stamp("do_setscene", d)
 }
 do_setscene[selfstamp] = "1"
-- 
1.6.3.3


