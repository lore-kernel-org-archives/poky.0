Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C77424C800FB
	for <poky@yoctoproject.org>; Fri,  4 Feb 2011 02:54:00 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 04 Feb 2011 00:54:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,425,1291622400"; d="scan'208";a="884279732"
Received: from unknown (HELO localhost) ([10.255.16.164])
	by fmsmga001.fm.intel.com with ESMTP; 04 Feb 2011 00:53:59 -0800
Message-Id: <3411d38b6a7dfa3a161fac39aa3f280552e9c364.1296808673.git.josh@linux.intel.com>
In-Reply-To: <cover.1296808673.git.josh@linux.intel.com>
References: <cover.1296808673.git.josh@linux.intel.com>
Old-Date: Fri, 7 Jan 2011 12:57:18 +0000
Date: Fri, 04 Feb 2011  8:53:53 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 06/13] bitbake/[cooker|cache]: cache summary, license and group. Add to targets tree
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
X-List-Received-Date: Fri, 04 Feb 2011 08:54:00 -0000

From: Joshua Lock <josh@linux.intel.com>

Add summary, license and group metadata to RecipeInfo and the cache.
Unfortunately this impacts parse speed but gives us a much richer set of
metadata to expose through UI's which can be accessed via the
generateTargetsTree command.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/cache.py  |   12 ++++++++++++
 bitbake/lib/bb/cooker.py |    6 ++++++
 2 files changed, 18 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/cache.py b/bitbake/lib/bb/cache.py
index 8480f89..0bfc5dc 100644
--- a/bitbake/lib/bb/cache.py
+++ b/bitbake/lib/bb/cache.py
@@ -75,6 +75,9 @@ recipe_fields = (
     'basetaskhashes',
     'hashfilename',
     'inherits',
+    'summary',
+    'license',
+    'section',
 )
 
 
@@ -166,6 +169,9 @@ class RecipeInfo(namedtuple('RecipeInfo', recipe_fields)):
             rdepends_pkg     = cls.pkgvar('RDEPENDS', packages, metadata),
             rrecommends_pkg  = cls.pkgvar('RRECOMMENDS', packages, metadata),
             inherits         = cls.getvar('__inherit_cache', metadata),
+            summary          = cls.getvar('SUMMARY', metadata),
+            license          = cls.getvar('LICENSE', metadata),
+            section          = cls.getvar('SECTION', metadata),
         )
 
 
@@ -577,6 +583,9 @@ class CacheData(object):
         self.basetaskhash = {}
         self.hashfn = {}
         self.inherits = {}
+        self.summary = {}
+        self.license = {}
+        self.section = {}
 
         """
         Indirect Cache variables
@@ -640,3 +649,6 @@ class CacheData(object):
             self.basetaskhash[identifier] = taskhash
 
         self.inherits[fn] = info.inherits
+        self.summary[fn] = info.summary
+        self.license[fn] = info.license
+        self.section[fn] = info.section
diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
index b3158ff..39cf011 100644
--- a/bitbake/lib/bb/cooker.py
+++ b/bitbake/lib/bb/cooker.py
@@ -491,10 +491,16 @@ class BBCooker:
             fn = taskdata.fn_index[fnid]
             pn = self.status.pkg_fn[fn]
             version  = "%s:%s-%s" % self.status.pkg_pepvpr[fn]
+            summary = self.status.summary[fn]
+            license = self.status.license[fn]
+            section = self.status.section[fn]
             if pn not in target_tree["pn"]:
                 target_tree["pn"][pn] = {}
                 target_tree["pn"][pn]["filename"] = fn
                 target_tree["pn"][pn]["version"] = version
+                target_tree["pn"][pn]["summary"] = summary
+                target_tree["pn"][pn]["license"] = license
+                target_tree["pn"][pn]["section"] = section
             if fnid not in seen_fnids:
                 seen_fnids.append(fnid)
                 packages = []
-- 
1.7.4


