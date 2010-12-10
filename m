Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id ABEFC4C80BCF
	for <poky@yoctoproject.org>; Tue, 14 Dec 2010 12:35:39 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 14 Dec 2010 10:35:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,343,1288594800"; d="scan'208";a="361606153"
Received: from unknown (HELO helios) ([10.255.16.81])
	by azsmga001.ch.intel.com with SMTP; 14 Dec 2010 10:35:37 -0800
Received: by helios (sSMTP sendmail emulation); Tue, 14 Dec 2010 18:35:34 +0000
Message-Id: <d55fda9e70ac8490bbd0a4aaba87fd58df8d53ef.1292351445.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1292351445.git.paul.eggleton@linux.intel.com>
References: <cover.1292351445.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Fri, 10 Dec 2010 15:30:30 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/3] bitbake: add optional expansion to getVarFlag()
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
X-List-Received-Date: Tue, 14 Dec 2010 18:35:40 -0000

Add a parameter to getVarFlag() to auto-expand the value of the flag. This
makes getVarFlag() more consistent with getVar(), and allows expansion of
vardeps and vardepsexclude (which has been done in this commit).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 bitbake/lib/bb/data.py       |    4 ++--
 bitbake/lib/bb/data_smart.py |    9 ++++++---
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/bitbake/lib/bb/data.py b/bitbake/lib/bb/data.py
index 0c95ebb..0aa8b40 100644
--- a/bitbake/lib/bb/data.py
+++ b/bitbake/lib/bb/data.py
@@ -296,8 +296,8 @@ def build_dependencies(key, keys, shelldeps, d):
             parser = d.expandWithRefs(d.getVar(key, False), key)
             deps |= parser.references
             deps = deps | (keys & parser.execs)
-        deps |= set((d.getVarFlag(key, "vardeps") or "").split())
-        deps -= set((d.getVarFlag(key, "vardepsexclude") or "").split())
+        deps |= set((d.getVarFlag(key, "vardeps", True) or "").split())
+        deps -= set((d.getVarFlag(key, "vardepsexclude", True) or "").split())
     except:
         bb.note("Error expanding variable %s" % key) 
         raise
diff --git a/bitbake/lib/bb/data_smart.py b/bitbake/lib/bb/data_smart.py
index c8cd8f8..30f9cbc 100644
--- a/bitbake/lib/bb/data_smart.py
+++ b/bitbake/lib/bb/data_smart.py
@@ -277,12 +277,15 @@ class DataSmart:
             self._makeShadowCopy(var)
         self.dict[var][flag] = flagvalue
 
-    def getVarFlag(self, var, flag):
+    def getVarFlag(self, var, flag, exp = False):
         local_var = self._findVar(var)
+        value = None
         if local_var:
             if flag in local_var:
-                return copy.copy(local_var[flag])
-        return None
+                value = copy.copy(local_var[flag])
+        if exp and value:
+            value = self.expand(value, None)
+        return value
 
     def delVarFlag(self, var, flag):
         local_var = self._findVar(var)
-- 
1.7.1


