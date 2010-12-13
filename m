Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id D1F934C811AB
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 08:59:28 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Dec 2010 06:59:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,336,1288594800"; d="scan'208";a="360904867"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by azsmga001.ch.intel.com with ESMTP; 13 Dec 2010 06:59:28 -0800
Message-Id: <60012e9607ac9c7c62b63cf75e38da18e9cf3ee6.1292251971.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1292251971.git.dongxiao.xu@intel.com>
References: <cover.1292251971.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Mon, 13 Dec 2010 22:51:16 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/2] bitbake: Change the way to implement ??= operator
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
X-List-Received-Date: Mon, 13 Dec 2010 14:59:29 -0000

Previously we implement ??= operator while doing finalize(), which hurts
performance due to the large index of keys. This new method will return
getVarFlag("defaultval") if getVar returns None. This patch brings about
15% performance gain when parsing bb files.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 bitbake/lib/bb/data_smart.py |    3 +++
 bitbake/lib/bb/parse/ast.py  |    7 -------
 2 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/bitbake/lib/bb/data_smart.py b/bitbake/lib/bb/data_smart.py
index a8b179f..708f686 100644
--- a/bitbake/lib/bb/data_smart.py
+++ b/bitbake/lib/bb/data_smart.py
@@ -210,6 +210,9 @@ class DataSmart:
     def getVar(self, var, exp):
         value = self.getVarFlag(var, "content")
 
+        if value is None:
+            value = self.getVarFlag(var, "defaultval")
+
         if exp and value:
             return self.expand(value, var)
         return value
diff --git a/bitbake/lib/bb/parse/ast.py b/bitbake/lib/bb/parse/ast.py
index 870ae65..cace9ab 100644
--- a/bitbake/lib/bb/parse/ast.py
+++ b/bitbake/lib/bb/parse/ast.py
@@ -109,9 +109,6 @@ class DataNode(AstNode):
         if 'flag' in groupd and groupd['flag'] != None:
             bb.data.setVarFlag(key, groupd['flag'], val, data)
         elif groupd["lazyques"]:
-            assigned = bb.data.getVar("__lazy_assigned", data) or []
-            assigned.append(key)
-            bb.data.setVar("__lazy_assigned", assigned, data)
             bb.data.setVarFlag(key, "defaultval", val, data)
         else:
             bb.data.setVar(key, val, data)
@@ -301,10 +298,6 @@ def handleInherit(statements, m):
     statements.append(InheritNode(m.group(1)))
 
 def finalize(fn, d, variant = None):
-    for lazykey in bb.data.getVar("__lazy_assigned", d) or ():
-        if bb.data.getVar(lazykey, d) is None:
-            val = bb.data.getVarFlag(lazykey, "defaultval", d)
-            bb.data.setVar(lazykey, val, d)
 
     bb.data.expandKeys(d)
     bb.data.update_data(d)
-- 
1.6.3.3


