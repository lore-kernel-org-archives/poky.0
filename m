Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E2B5E0027E
	for <poky@yoctoproject.org>; Thu, 11 Oct 2012 11:43:56 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 Oct 2012 11:43:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,573,1344236400"; d="scan'208";a="204473765"
Received: from duke.jf.intel.com (HELO localhost) ([10.7.199.52])
	by orsmga001.jf.intel.com with ESMTP; 11 Oct 2012 11:43:55 -0700
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Thu, 11 Oct 2012 11:43:51 -0700
Message-Id: <c942c84406e64892fdedcd1ecf3796160df13db2.1349980878.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349980878.git.scott.a.garman@intel.com>
References: <cover.1349980878.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1349980878.git.scott.a.garman@intel.com>
References: <cover.1349980878.git.scott.a.garman@intel.com>
Subject: [PATCH 3/8] bitbake: bitbake: ensure -f causes dependent tasks to be re-run
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 11 Oct 2012 18:43:56 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

If -f is specified, force dependent tasks to be re-run next time. This
works by changing the force behaviour so that instead of deleting the
task's stamp, we write a "taint" file into the stamps directory, which
will alter the taskhash randomly and thus trigger the task to re-run
next time we evaluate whether or not that should be done as well as
influencing the taskhashes of any dependent tasks so that they are
similarly re-triggered. As a bonus because we write this file as
<stamp file name>.taskname.taint, the existing code which deletes the
stamp files in OE's do_clean will already handle removing it.

This means you can now do the following:

bitbake somepackage
[ change the source code in the package's WORKDIR ]
bitbake -c compile -f somepackage
bitbake somepackage

and the result will be that all of the tasks that depend on do_compile
(do_install, do_package, etc.) will be re-run in the last step.

Note that to operate in the manner described above you need full hashing
enabled (i.e. BB_SIGNATURE_HANDLER must be set to a signature handler
that inherits from BasicHash). If this is not the case, -f will just
delete the stamp for the specified task as it did before.

This fix is required for [YOCTO #2615] and [YOCTO #2256].

(Bitbake rev: f7b55a94226f9acd985f87946e26d01bd86a35bb)

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/build.py    |   18 ++++++++++++++++++
 bitbake/lib/bb/cooker.py   |    6 +++---
 bitbake/lib/bb/runqueue.py |   12 ++++++------
 bitbake/lib/bb/siggen.py   |   34 ++++++++++++++++++++++++++++++++++
 4 files changed, 61 insertions(+), 9 deletions(-)

diff --git a/bitbake/lib/bb/build.py b/bitbake/lib/bb/build.py
index 95f1dcf..f912a6b 100644
--- a/bitbake/lib/bb/build.py
+++ b/bitbake/lib/bb/build.py
@@ -458,6 +458,24 @@ def del_stamp(task, d, file_name = None):
     stamp = stamp_internal(task, d, file_name)
     bb.utils.remove(stamp)
 
+def write_taint(task, d, file_name = None):
+    """
+    Creates a "taint" file which will force the specified task and its
+    dependents to be re-run the next time by influencing the value of its
+    taskhash.
+    (d can be a data dict or dataCache)
+    """
+    import uuid
+    if file_name:
+        taintfn = d.stamp[file_name] + '.' + task + '.taint'
+    else:
+        taintfn = d.getVar('STAMP', True) + '.' + task + '.taint'
+    bb.utils.mkdirhier(os.path.dirname(taintfn))
+    # The specific content of the taint file is not really important,
+    # we just need it to be random, so a random UUID is used
+    with open(taintfn, 'w') as taintf:
+        taintf.write(str(uuid.uuid4()))
+
 def stampfile(taskname, d, file_name = None):
     """
     Return the stamp for a given task
diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
index 4016f3b..745f591 100644
--- a/bitbake/lib/bb/cooker.py
+++ b/bitbake/lib/bb/cooker.py
@@ -1066,10 +1066,10 @@ class BBCooker:
         self.status.rundeps[fn] = []
         self.status.runrecs[fn] = []
 
-        # Remove stamp for target if force mode active
+        # Invalidate task for target if force mode active
         if self.configuration.force:
-            logger.verbose("Remove stamp %s, %s", task, fn)
-            bb.build.del_stamp('do_%s' % task, self.status, fn)
+            logger.verbose("Invalidate task %s, %s", task, fn)
+            bb.parse.siggen.invalidate_task('do_%s' % task, self.status, fn)
 
         # Setup taskdata structure
         taskdata = bb.taskdata.TaskData(self.configuration.abort)
diff --git a/bitbake/lib/bb/runqueue.py b/bitbake/lib/bb/runqueue.py
index b870caf..c1e9e8c 100644
--- a/bitbake/lib/bb/runqueue.py
+++ b/bitbake/lib/bb/runqueue.py
@@ -705,6 +705,12 @@ class RunQueueData:
                 continue
             self.runq_setscene.append(task)
 
+        # Invalidate task if force mode active
+        if self.cooker.configuration.force:
+            for (fn, target) in self.target_pairs:
+                logger.verbose("Invalidate task %s, %s", target, fn)
+                bb.parse.siggen.invalidate_task(target, self.dataCache, fn)
+
         # Interate over the task list and call into the siggen code
         dealtwith = set()
         todeal = set(range(len(self.runq_fnid)))
@@ -731,12 +737,6 @@ class RunQueueData:
                 deps.append(depidentifier)
             self.hash_deps[identifier] = deps
 
-        # Remove stamps for targets if force mode active
-        if self.cooker.configuration.force:
-            for (fn, target) in self.target_pairs:
-                logger.verbose("Remove stamp %s, %s", target, fn)
-                bb.build.del_stamp(target, self.dataCache, fn)
-
         return len(self.runq_fnid)
 
     def dump_data(self, taskQueue):
diff --git a/bitbake/lib/bb/siggen.py b/bitbake/lib/bb/siggen.py
index 8c79b17..4a0af94 100644
--- a/bitbake/lib/bb/siggen.py
+++ b/bitbake/lib/bb/siggen.py
@@ -50,6 +50,10 @@ class SignatureGenerator(object):
     def dump_sigtask(self, fn, task, stampbase, runtime):
         return
 
+    def invalidate_task(self, task, d, fn):
+        bb.build.del_stamp(task, d, fn)
+
+
 class SignatureGeneratorBasic(SignatureGenerator):
     """
     """
@@ -148,6 +152,15 @@ class SignatureGeneratorBasic(SignatureGenerator):
                 return False
         return True
 
+    def read_taint(self, fn, task, stampbase):
+        taint = None
+        try:
+            with open(stampbase + '.' + task + '.taint', 'r') as taintf:
+                taint = taintf.read()
+        except IOError:
+            pass
+        return taint
+
     def get_taskhash(self, fn, task, deps, dataCache):
         k = fn + "." + task
         data = dataCache.basetaskhash[k]
@@ -161,6 +174,11 @@ class SignatureGeneratorBasic(SignatureGenerator):
                 bb.fatal("%s is not in taskhash, caller isn't calling in dependency order?", dep)
             data = data + self.taskhash[dep]
             self.runtaskdeps[k].append(dep)
+
+        taint = self.read_taint(fn, task, dataCache.stamp[fn])
+        if taint:
+            data = data + taint
+
         h = hashlib.md5(data).hexdigest()
         self.taskhash[k] = h
         #d.setVar("BB_TASKHASH_task-%s" % task, taskhash[task])
@@ -201,9 +219,14 @@ class SignatureGeneratorBasic(SignatureGenerator):
             for dep in data['runtaskdeps']:
                 data['runtaskhashes'][dep] = self.taskhash[dep]
 
+        taint = self.read_taint(fn, task, stampbase)
+        if taint:
+            data['taint'] = taint
+
         p = pickle.Pickler(file(sigfile, "wb"), -1)
         p.dump(data)
 
+
     def dump_sigs(self, dataCache):
         for fn in self.taskdeps:
             for task in self.taskdeps[fn]:
@@ -230,6 +253,9 @@ class SignatureGeneratorBasicHash(SignatureGeneratorBasic):
             h = self.basehash[k]
         return ("%s.%s.%s.%s" % (stampbase, taskname, h, extrainfo)).rstrip('.')
 
+    def invalidate_task(self, task, d, fn):
+        bb.build.write_taint(task, d, fn)
+
 def dump_this_task(outfile, d):
     import bb.parse
     fn = d.getVar("BB_FILENAME", True)
@@ -330,6 +356,11 @@ def compare_sigfiles(a, b):
             for dep in changed:
                 print "Hash for dependent task %s changed from %s to %s" % (dep, a[dep], b[dep])
 
+    a_taint = a_data.get('taint', None)
+    b_taint = b_data.get('taint', None)
+    if a_taint != b_taint:
+        print "Taint (by forced/invalidated task) changed from %s to %s" % (a_taint, b_taint)
+
 def dump_sigfile(a):
     p1 = pickle.Unpickler(file(a, "rb"))
     a_data = p1.load()
@@ -354,3 +385,6 @@ def dump_sigfile(a):
     if 'runtaskhashes' in a_data:
         for dep in a_data['runtaskhashes']:
             print "Hash for dependent task %s is %s" % (dep, a_data['runtaskhashes'][dep])
+
+    if 'taint' in a_data:
+        print "Tainted (by forced/invalidated task): %s" % a_data['taint']
-- 
1.7.9.5


