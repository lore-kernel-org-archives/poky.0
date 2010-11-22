Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7BC7F4C81205
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 21:06:03 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 28 Nov 2010 19:06:03 -0800
Message-Id: <0d30dc$ka7g81@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,274,1288594800"; d="scan'208";a="681820422"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.36])
	by orsmga001.jf.intel.com with ESMTP; 28 Nov 2010 19:06:02 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Mon, 22 Nov 2010 20:52:27 +0800
To: poky@pokylinux.org
Subject: [PATCH 2/5] siggen.py: set 'runtaskdeps' correctly
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
X-List-Received-Date: Mon, 29 Nov 2010 03:06:03 -0000

Now 'runtaskdeps' is assigned before taskhash whitelist is filtered out, and thus
always contains original task dependencies. This causes problem to diagnose sstate
related problem. So fix it by appending filtered dep to 'runtaskdeps' in the fly.

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 bitbake/lib/bb/siggen.py |    8 ++------
 1 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/bitbake/lib/bb/siggen.py b/bitbake/lib/bb/siggen.py
index 5c53a86..9e956ee 100644
--- a/bitbake/lib/bb/siggen.py
+++ b/bitbake/lib/bb/siggen.py
@@ -106,7 +106,7 @@ class SignatureGeneratorBasic(SignatureGenerator):
     def get_taskhash(self, fn, task, deps, dataCache):
         k = fn + "." + task
         data = dataCache.basetaskhash[k]
-        self.runtaskdeps[k] = deps
+        self.runtaskdeps[k] = []
         for dep in sorted(deps):
             if self.twl and self.twl.search(dataCache.pkg_fn[fn]):
                 #bb.note("Skipping %s" % dep)
@@ -114,6 +114,7 @@ class SignatureGeneratorBasic(SignatureGenerator):
             if dep not in self.taskhash:
                  bb.fatal("%s is not in taskhash, caller isn't calling in dependency order?", dep)
             data = data + self.taskhash[dep]
+            self.runtaskdeps[k].append(dep)
         h = hashlib.md5(data).hexdigest()
         self.taskhash[k] = h
         #d.setVar("BB_TASKHASH_task-%s" % task, taskhash[task])
@@ -258,8 +259,3 @@ def dump_sigfile(a):
     if 'runtaskhashes' in a_data:
         for dep in a_data['runtaskhashes']:
             print "Hash for dependent task %s is %s" % (dep, a_data['runtaskhashes'][dep])
-
-
-
-
-
-- 
1.6.0.4


