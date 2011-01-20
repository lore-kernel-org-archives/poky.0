Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 67DE54C811F6
	for <poky@pokylinux.org>; Thu, 20 Jan 2011 05:42:06 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Jan 2011 03:42:05 -0800
Message-Id: <b9dded$hn7bvd@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,350,1291622400"; d="scan'208";a="594784242"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.19])
	by orsmga002.jf.intel.com with ESMTP; 20 Jan 2011 03:42:05 -0800
From: Kevin Tian <kevin.tian@intel.com>
Old-Date: Thu, 20 Jan 2011 14:36:49 +0800
Date: Thu, 20 Jan 2011 19:24:01 +0800
To: poky@pokylinux.org
Subject: [PATCH 3/3] siggen.py: remove path in 'runtaskdeps'
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
X-List-Received-Date: Thu, 20 Jan 2011 11:42:06 -0000

the absolute path brings trouble when comparing .siginfo generated from different
src tree, since they always differ. Actually what we require is just the fn+task,
so remove path info from 'runtaskdeps' to make it relocatable.

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 bitbake/lib/bb/siggen.py |   10 +++++++---
 1 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/bitbake/lib/bb/siggen.py b/bitbake/lib/bb/siggen.py
index a101ce8..c876b3c 100644
--- a/bitbake/lib/bb/siggen.py
+++ b/bitbake/lib/bb/siggen.py
@@ -174,10 +174,14 @@ class SignatureGeneratorBasic(SignatureGenerator):
             data['varvals'][dep] = self.lookupcache[fn][dep]
 
         if runtime:
-            data['runtaskdeps'] = self.runtaskdeps[k]
+            data['runtaskdeps'] = []
             data['runtaskhashes'] = {}
-            for dep in data['runtaskdeps']:
-                data['runtaskhashes'][dep] = self.taskhash[dep]
+            for dep in self.runtaskdeps[k]:
+                # keep "virtual:native:" and "fn.task". remove the path.
+                dep1 = dep.split('/')
+                dep2 = dep1[0] + dep1[-1]
+                data['runtaskdeps'].append(dep2)
+                data['runtaskhashes'][dep2] = self.taskhash[dep]
 
         p = pickle.Pickler(file(sigfile, "wb"), -1)
         p.dump(data)
-- 
1.6.0.4


