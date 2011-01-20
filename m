Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A5ED54C811F5
	for <poky@pokylinux.org>; Thu, 20 Jan 2011 05:42:04 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 20 Jan 2011 03:42:04 -0800
Message-Id: <b7da2f$q6go20@fmsmga001.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,350,1291622400"; d="scan'208";a="879255618"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.19])
	by fmsmga001.fm.intel.com with ESMTP; 20 Jan 2011 03:42:03 -0800
From: Kevin Tian <kevin.tian@intel.com>
Old-Date: Thu, 20 Jan 2011 13:54:51 +0800
Date: Thu, 20 Jan 2011 19:23:59 +0800
To: poky@pokylinux.org
Subject: [PATCH 2/3] siggen.py: better print for task hash comparison
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
X-List-Received-Date: Thu, 20 Jan 2011 11:42:04 -0000

current bitbake-diffsigs simply print out the whole 'runtaskdeps' when there's mismatch, which
is not very readable. On the other hand, 'runtaskhashes' comparison is broken which assumes
same key existing in two sides. This commit provides better output by figuring out differences
from addition, removal or hash change.

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 bitbake/lib/bb/siggen.py |   17 ++++++++++++-----
 1 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/bitbake/lib/bb/siggen.py b/bitbake/lib/bb/siggen.py
index 2d28ecf..a101ce8 100644
--- a/bitbake/lib/bb/siggen.py
+++ b/bitbake/lib/bb/siggen.py
@@ -255,13 +255,20 @@ def compare_sigfiles(a, b):
     if changed:
         for dep in changed:
             print "Variable %s value changed from %s to %s" % (dep, a_data['varvals'][dep], b_data['varvals'][dep])
-    if 'runtaskdeps' in a_data and 'runtaskdeps' in b_data and sorted(a_data['runtaskdeps']) != sorted(b_data['runtaskdeps']):
-        print "Tasks this task depends on changed from %s to %s" % (sorted(a_data['runtaskdeps']), sorted(b_data['runtaskdeps']))
 
-    if 'runtaskhashes' in a_data:
-        for dep in a_data['runtaskhashes']:
-            if a_data['runtaskhashes'][dep] != b_data['runtaskhashes'][dep]:
+    if 'runtaskhashes' in a_data and 'runtaskhashes' in b_data:
+        changed, added, removed = dict_diff(a_data['runtaskhashes'], b_data['runtaskhashes'])
+        if added:
+            for dep in added:
+                print "Dependency on task %s was added" % (dep)
+        if removed:
+            for dep in removed:
+                print "Dependency on task %s was removed" % (dep)
+        if changed:
+            for dep in changed:
                 print "Hash for dependent task %s changed from %s to %s" % (dep, a_data['runtaskhashes'][dep], b_data['runtaskhashes'][dep])
+    elif 'runtaskdeps' in a_data and 'runtaskdeps' in b_data and sorted(a_data['runtaskdeps']) != sorted(b_data['runtaskdeps']):
+        print "Tasks this task depends on changed from %s to %s" % (sorted(a_data['runtaskdeps']), sorted(b_data['runtaskdeps']))
 
 def dump_sigfile(a):
     p1 = pickle.Unpickler(file(a, "rb"))
-- 
1.6.0.4


