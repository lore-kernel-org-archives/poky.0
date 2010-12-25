Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B53654C81062
	for <poky@yoctoproject.org>; Fri, 24 Dec 2010 21:06:25 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 24 Dec 2010 19:06:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,226,1291622400"; d="scan'208";a="587050059"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga002.jf.intel.com with ESMTP; 24 Dec 2010 19:06:24 -0800
Message-Id: <65d3eb2f1794ce61c6f9a658e25e2d80a4898910.1293241065.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1293241065.git.dongxiao.xu@intel.com>
References: <cover.1293241065.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Sat, 25 Dec 2010 09:11:26 +0800
Date: Sat, 25 Dec 2010 11:15:43 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/2] bitbake: Introduce stamp-extra-info into build stamp file
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
X-List-Received-Date: Sat, 25 Dec 2010 03:06:26 -0000

For certain tasks, we need additional information in build stamp file
except the task name and file name. stamp-extra-info is introduced as
an flag adding to the end of stamp file name.

The code logic change contains both the stamp file creation in normal
build, and the stamp file check for prebuilt.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 bitbake/lib/bb/build.py    |   13 ++++++++++++-
 bitbake/lib/bb/cache.py    |    5 ++++-
 bitbake/lib/bb/runqueue.py |    6 +++---
 bitbake/lib/bb/siggen.py   |    7 +++++--
 4 files changed, 24 insertions(+), 7 deletions(-)

diff --git a/bitbake/lib/bb/build.py b/bitbake/lib/bb/build.py
index 18a75ed..82788ac 100644
--- a/bitbake/lib/bb/build.py
+++ b/bitbake/lib/bb/build.py
@@ -375,7 +375,18 @@ def stamp_internal(task, d, file_name):
     stamp = extract_stamp(d, file_name)
     if not stamp:
         return
-    stamp = "%s.%s" % (stamp, task)
+
+    if file_name:
+        extra_info = d.stamp_extra_info[task]
+    else:
+        extra_info = bb.data.getVarFlag(task, 'stamp-extra-info', d)
+        extra_info = data.expand(extra_info, d)
+
+    if extra_info:
+        stamp = "%s.%s.%s" % (stamp, task, extra_info)
+    else:
+        stamp = "%s.%s" % (stamp, task)
+
     bb.utils.mkdirhier(os.path.dirname(stamp))
     # Remove the file and recreate to force timestamp
     # change on broken NFS filesystems
diff --git a/bitbake/lib/bb/cache.py b/bitbake/lib/bb/cache.py
index c6f3794..ef72730 100644
--- a/bitbake/lib/bb/cache.py
+++ b/bitbake/lib/bb/cache.py
@@ -51,7 +51,7 @@ class Cache:
         self.clean = {}
         self.checked = {}
         self.depends_cache = {}
-        self.data = None
+        self.data = data
         self.data_fn = None
         self.cacheclean = True
 
@@ -380,6 +380,8 @@ class Cache:
         cacheData.tasks[file_name] = self.getVar('__BBTASKS', file_name, True)
         for t in cacheData.tasks[file_name]:
             cacheData.basetaskhash[file_name + "." + t] = self.getVar("BB_BASEHASH_task-%s" % t, file_name, True)
+            extra_info = bb.data.getVarFlag(t, 'stamp-extra-info', self.data)
+            cacheData.stamp_extra_info[t] = bb.data.expand(extra_info, self.data)
 
         # build FileName to PackageName lookup table
         cacheData.pkg_fn[file_name] = pn
@@ -548,6 +550,7 @@ class CacheData:
         self.tasks = {}
         self.basetaskhash = {}
         self.hashfn = {}
+        self.stamp_extra_info = {}
 
         """
         Indirect Cache variables
diff --git a/bitbake/lib/bb/runqueue.py b/bitbake/lib/bb/runqueue.py
index 4f988df..32c0481 100644
--- a/bitbake/lib/bb/runqueue.py
+++ b/bitbake/lib/bb/runqueue.py
@@ -878,7 +878,7 @@ class RunQueue:
         if taskname is None:
             taskname = self.rqdata.runq_task[task]
         
-        stampfile = bb.parse.siggen.stampfile(self.rqdata.dataCache.stamp[fn], taskname, self.rqdata.runq_hash[task])
+        stampfile = bb.parse.siggen.stampfile(self.rqdata.dataCache, fn, taskname, self.rqdata.runq_hash[task])
 
         # If the stamp is missing its not current
         if not os.access(stampfile, os.F_OK):
@@ -899,8 +899,8 @@ class RunQueue:
             if iscurrent:
                 fn2 = self.rqdata.taskData.fn_index[self.rqdata.runq_fnid[dep]]
                 taskname2 = self.rqdata.runq_task[dep]
-                stampfile2 = bb.parse.siggen.stampfile(self.rqdata.dataCache.stamp[fn2], taskname2, self.rqdata.runq_hash[dep])
-                stampfile3 = bb.parse.siggen.stampfile(self.rqdata.dataCache.stamp[fn2], taskname2 + "_setscene", self.rqdata.runq_hash[dep])
+                stampfile2 = bb.parse.siggen.stampfile(self.rqdata.dataCache, fn2, taskname2, self.rqdata.runq_hash[dep])
+                stampfile3 = bb.parse.siggen.stampfile(self.rqdata.dataCache, fn2, taskname2 + "_setscene", self.rqdata.runq_hash[dep])
                 t2 = get_timestamp(stampfile2)
                 t3 = get_timestamp(stampfile3)
                 if t3 and t3 > t2:
diff --git a/bitbake/lib/bb/siggen.py b/bitbake/lib/bb/siggen.py
index 48f600a..93ee50a 100644
--- a/bitbake/lib/bb/siggen.py
+++ b/bitbake/lib/bb/siggen.py
@@ -32,8 +32,11 @@ class SignatureGenerator(object):
     def finalise(self, fn, d, varient):
         return
 
-    def stampfile(self, stampbase, taskname, taskhash):
-        return "%s.%s" % (stampbase, taskname)
+    def stampfile(self, data, fn, taskname, taskhash):
+        if taskname in data.stamp_extra_info.keys() and data.stamp_extra_info[taskname]:
+            return "%s.%s.%s" % (data.stamp[fn], taskname, data.stamp_extra_info[taskname])
+        else:
+            return "%s.%s" % (data.stamp[fn], taskname)
 
 class SignatureGeneratorBasic(SignatureGenerator):
     """
-- 
1.6.3.3


