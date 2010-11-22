Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id DACCE4C81209
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 21:06:04 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Nov 2010 19:06:04 -0800
Message-Id: <b9dded$h7k7k5@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,274,1288594800"; d="scan'208";a="578428554"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.36])
	by orsmga002.jf.intel.com with ESMTP; 28 Nov 2010 19:06:04 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Mon, 22 Nov 2010 22:17:26 +0800
To: poky@pokylinux.org
Subject: [PATCH 3/5] siggen.py: fix python error when comparing sstate generated from different srcpath
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
X-List-Received-Date: Mon, 29 Nov 2010 03:06:05 -0000

So far bitbake-diffsigs is broken when comparing two sstate packages built from
different source directories. The problem is that the key for taskhash contains
full path, such as:

/home/poky/tasks/poky/meta/recipes-kernel/linux/linux-yocto_git.bb.do_patch

This results in a key error when searching in the 2nd package.

To fix that a new key 'srcpath' is introduced, which is literally copied from
OEROOT. This info can then assist above task comparison

Two other small improvements are included too:

  - stamp directory may not be created if using "bitbake -S" in a scatch build
  - better output about changes on dependent tasks

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 bitbake/lib/bb/siggen.py |   24 ++++++++++++++++++------
 1 files changed, 18 insertions(+), 6 deletions(-)

diff --git a/bitbake/lib/bb/siggen.py b/bitbake/lib/bb/siggen.py
index 9e956ee..20f57ad 100644
--- a/bitbake/lib/bb/siggen.py
+++ b/bitbake/lib/bb/siggen.py
@@ -47,6 +47,7 @@ class SignatureGeneratorBasic(SignatureGenerator):
         self.runtaskdeps = {}
         self.gendeps = {}
         self.lookupcache = {}
+        self.srcpath = data.getVar("OEROOT", True)
         self.basewhitelist = (data.getVar("BB_HASHBASE_WHITELIST", True) or "").split()
         self.taskwhitelist = data.getVar("BB_HASHTASK_WHITELIST", True) or None
 
@@ -132,8 +133,10 @@ class SignatureGeneratorBasic(SignatureGenerator):
             sigfile = stampbase + "." + task + ".sigdata" + "." + self.taskhash[k]
         else:
             sigfile = stampbase + "." + task + ".sigbasedata" + "." + self.basehash[k]
+        bb.utils.mkdirhier(os.path.dirname(sigfile))
 
         data = {}
+        data['srcpath'] = self.srcpath
         data['basewhitelist'] = self.basewhitelist
         data['taskwhitelist'] = self.taskwhitelist
         data['taskdeps'] = self.taskdeps[fn][task]
@@ -227,13 +230,22 @@ def compare_sigfiles(a, b):
     #if removed:
     #    print "Dependency on Variable %s was removed (value %s)" % (dep, a_data['gendeps'][dep])
 
-    if 'runtaskdeps' in a_data and 'runtaskdeps' in b_data and sorted(a_data['runtaskdeps']) != sorted(b_data['runtaskdeps']):
-        print "Tasks this task depends on changed from %s to %s" % (sorted(a_data['runtaskdeps']), sorted(b_data['runtaskdeps']))
-
-    if 'runtaskhashes' in a_data:
+    if 'runtaskdeps' in a_data and 'runtaskdeps' in b_data:
+        b_data_new = [dep.replace(b_data['srcpath'], a_data['srcpath']) for dep in b_data['runtaskdeps']]
+        if sorted(a_data['runtaskdeps']) != sorted(b_data_new):
+            print "Tasks this task depends on have been changed:"
+            for dep in a_data['runtaskdeps']:
+                if not dep in b_data_new:
+                    print "-- %s" % dep
+            for dep in b_data_new:
+                if not dep in a_data['runtaskdeps']:
+                    print "++ %s" % dep.replace(a_data['srcpath'], b_data['srcpath'])
+
+    if 'runtaskhashes' in a_data and 'runtaskhashes' in b_data:
         for dep in a_data['runtaskhashes']:
-            if a_data['runtaskhashes'][dep] != b_data['runtaskhashes'][dep]:
-                print "Hash for dependent task %s changed from %s to %s" % (dep, a_data['runtaskhashes'][dep], b_data['runtaskhashes'][dep])
+            dep_b = dep.replace(a_data['srcpath'], b_data['srcpath'])
+            if dep_b in b_data['runtaskhashes'] and a_data['runtaskhashes'][dep] != b_data['runtaskhashes'][dep_b]:
+                print "Hash for dependent task %s changed from %s to %s" % (dep, a_data['runtaskhashes'][dep], b_data['runtaskhashes'][dep_b])
 
 def dump_sigfile(a):
     p1 = pickle.Unpickler(file(a, "rb"))
-- 
1.6.0.4


