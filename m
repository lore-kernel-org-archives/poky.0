Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E59AE4C810C0
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 08:59:27 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Dec 2010 06:59:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,336,1288594800"; d="scan'208";a="360904861"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by azsmga001.ch.intel.com with ESMTP; 13 Dec 2010 06:59:26 -0800
Message-Id: <65dc22f0f968b02e90ea3dd984e3cf12137f9b23.1292251971.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1292251971.git.dongxiao.xu@intel.com>
References: <cover.1292251971.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Mon, 13 Dec 2010 22:50:48 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/2] bitbake: Make setVar a special case of setVarFlag
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
X-List-Received-Date: Mon, 13 Dec 2010 14:59:28 -0000

Move logic in setVar into setVarFlag, and make setVar a special case
of setVarFlag.

This can fix the bug that, if we assign foo_OVERA[bar] = "x" and foo
is never set as a variable directly, the override is never expanded
in original code.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 bitbake/lib/bb/data_smart.py |   60 +++++++++++++++++++----------------------
 1 files changed, 28 insertions(+), 32 deletions(-)

diff --git a/bitbake/lib/bb/data_smart.py b/bitbake/lib/bb/data_smart.py
index c8cd8f8..a8b179f 100644
--- a/bitbake/lib/bb/data_smart.py
+++ b/bitbake/lib/bb/data_smart.py
@@ -205,38 +205,7 @@ class DataSmart:
             self.initVar(var)
 
     def setVar(self, var, value):
-        self.expand_cache = {}
-        match  = __setvar_regexp__.match(var)
-        if match and match.group("keyword") in __setvar_keyword__:
-            base = match.group('base')
-            keyword = match.group("keyword")
-            override = match.group('add')
-            l = self.getVarFlag(base, keyword) or []
-            l.append([value, override])
-            self.setVarFlag(base, keyword, l)
-
-            # todo make sure keyword is not __doc__ or __module__
-            # pay the cookie monster
-            try:
-                self._special_values[keyword].add( base )
-            except KeyError:
-                self._special_values[keyword] = set()
-                self._special_values[keyword].add( base )
-
-            return
-
-        if not var in self.dict:
-            self._makeShadowCopy(var)
-
-        # more cookies for the cookie monster
-        if '_' in var:
-            override = var[var.rfind('_')+1:]
-            if override not in self._seen_overrides:
-                self._seen_overrides[override] = set()
-            self._seen_overrides[override].add( var )
-
-        # setting var
-        self.dict[var]["content"] = value
+        self.setVarFlag(var, "content", value)
 
     def getVar(self, var, exp):
         value = self.getVarFlag(var, "content")
@@ -273,6 +242,33 @@ class DataSmart:
         self.dict[var] = {}
 
     def setVarFlag(self, var, flag, flagvalue):
+        self.expand_cache = {}
+        match  = __setvar_regexp__.match(var)
+        if match and match.group("keyword") in __setvar_keyword__:
+            base = match.group('base')
+            keyword = match.group("keyword")
+            # todo make sure keyword is not __doc__ or __module__
+            # pay the cookie monster
+            try:
+                self._special_values[keyword].add( base )
+            except KeyError:
+                self._special_values[keyword] = set()
+                self._special_values[keyword].add( base )
+
+            if flag == "content":
+                override = match.group('add')
+                l = self.getVarFlag(base, keyword) or []
+                l.append([flagvalue, override])
+                self.setVarFlag(base, keyword, l)
+                return
+
+        # more cookies for the cookie monster
+        elif '_' in var:
+            override = var[var.rfind('_')+1:]
+            if override not in self._seen_overrides:
+                self._seen_overrides[override] = set()
+            self._seen_overrides[override].add( var )
+
         if not var in self.dict:
             self._makeShadowCopy(var)
         self.dict[var][flag] = flagvalue
-- 
1.6.3.3


