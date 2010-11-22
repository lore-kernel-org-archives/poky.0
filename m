Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 51CC14C811D5
	for <poky@pokylinux.org>; Tue, 23 Nov 2010 01:13:18 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 22 Nov 2010 23:13:17 -0800
Message-Id: <b9dded$h5sn3a@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="576609391"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.116])
	by orsmga002.jf.intel.com with ESMTP; 22 Nov 2010 23:13:16 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Tue, 23 Nov 2010 00:35:03 +0800
To: poky@pokylinux.org
Subject: [PATCH 4/5] siggen.py: fix the wrong usage on BB_TASKHASH_WHITELIST
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
X-List-Received-Date: Tue, 23 Nov 2010 07:13:18 -0000

BB_TASKHASH_WHITELIST is expected to filter out native tasks from the
dependency list for target recipe's checksum. However current code
actually implements the opposite. All native sstate packages end up
to have empty task dependency while target sstate packages still have
native tasks counted into the checksum.

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 bitbake/lib/bb/siggen.py |   10 ++++++----
 1 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/bitbake/lib/bb/siggen.py b/bitbake/lib/bb/siggen.py
index 20f57ad..26ec5ce 100644
--- a/bitbake/lib/bb/siggen.py
+++ b/bitbake/lib/bb/siggen.py
@@ -109,11 +109,13 @@ class SignatureGeneratorBasic(SignatureGenerator):
         data = dataCache.basetaskhash[k]
         self.runtaskdeps[k] = []
         for dep in sorted(deps):
-            if self.twl and self.twl.search(dataCache.pkg_fn[fn]):
-                #bb.note("Skipping %s" % dep)
-                continue
+            if self.twl and not self.twl.search(dataCache.pkg_fn[fn]):
+                dep_fn = re.search("(?P<fn>.*)\..*", dep).group('fn')
+                if self.twl.search(dataCache.pkg_fn[dep_fn]):
+                    #bb.note("Skipping %s" % dep)
+                    continue
             if dep not in self.taskhash:
-                 bb.fatal("%s is not in taskhash, caller isn't calling in dependency order?", dep)
+                bb.fatal("%s is not in taskhash, caller isn't calling in dependency order?", dep)
             data = data + self.taskhash[dep]
             self.runtaskdeps[k].append(dep)
         h = hashlib.md5(data).hexdigest()
-- 
1.6.0.4


