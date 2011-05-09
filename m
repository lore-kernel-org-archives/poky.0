Return-Path: <liping.ke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id ABC614C8047B
	for <poky@yoctoproject.org>; Mon,  9 May 2011 01:47:32 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 08 May 2011 23:47:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,339,1301900400"; d="scan'208";a="432779923"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by azsmga001.ch.intel.com with ESMTP; 08 May 2011 23:47:31 -0700
Message-Id: <3d410df770a3999d1f33eb779c08efa00a43b735.1304922517.git.liping.ke@intel.com>
In-Reply-To: <cover.1304922517.git.liping.ke@intel.com>
References: <cover.1304922517.git.liping.ke@intel.com>
Old-Date: Mon, 9 May 2011 11:27:49 +0800
Date: Mon, 09 May 2011 14:36:31 +0800
To: poky@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 1/4] Put extra requested fields into different cache files
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
X-List-Received-Date: Mon, 09 May 2011 06:47:32 -0000

From: Liping Ke <liping.ke@intel.com>

This patch introduce new param bitbake_mode into Cache.py.
When using ui mode, we will save ui_mode required extra cache
fields into a separate cache file. This patch firstly introduce
this bitbake_mode parameter. It will be used in the following
patches.

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 bitbake/lib/bb/cache.py  |   19 ++++++++++++++++---
 bitbake/lib/bb/cooker.py |   11 ++++++++---
 2 files changed, 24 insertions(+), 6 deletions(-)

diff --git a/bitbake/lib/bb/cache.py b/bitbake/lib/bb/cache.py
index d083c51..c86aa14 100644
--- a/bitbake/lib/bb/cache.py
+++ b/bitbake/lib/bb/cache.py
@@ -187,7 +187,10 @@ class Cache(object):
     BitBake Cache implementation
     """
 
-    def __init__(self, data):
+    def __init__(self, data, bitbake_mode=None):       
+        # Pass bitbake_mode information into Cache constructor
+        # It will be used in later for deciding whether
+        # we need separate cache file dump/load support
         self.cachedir = bb.data.getVar("CACHE", data, True)
         self.clean = set()
         self.checked = set()
@@ -196,6 +199,11 @@ class Cache(object):
         self.data_fn = None
         self.cacheclean = True
 
+        # Below three variables are used for loading extra cache
+        self.extra_depends_cache = {}        
+        self.bitbake_mode = bitbake_mode
+        self.extra_cachefile = None
+
         if self.cachedir in [None, '']:
             self.has_cache = False
             logger.info("Not using a cache. "
@@ -205,6 +213,11 @@ class Cache(object):
         self.has_cache = True
         self.cachefile = os.path.join(self.cachedir, "bb_cache.dat")
 
+        # if bitbake_mode is not None, we need to load extra cache files
+        if self.bitbake_mode:
+            self.extra_cachefile = os.path.join(self.cachedir,
+                        "bb_extracache_%s.dat" %self.bitbake_mode)
+
         logger.debug(1, "Using cache in '%s'", self.cachedir)
         bb.utils.mkdirhier(self.cachedir)
 
@@ -302,7 +315,7 @@ class Cache(object):
         return bb_data[virtual]
 
     @classmethod
-    def parse(cls, filename, appends, configdata):
+    def parse(cls, filename, appends, configdata, bitbake_mode=None):
         """Parse the specified filename, returning the recipe information"""
         infos = []
         datastores = cls.load_bbfile(filename, appends, configdata)
@@ -565,7 +578,7 @@ class CacheData(object):
     The data structures we compile from the cached data
     """
 
-    def __init__(self):
+    def __init__(self, bitbake_mode):
         # Direct cache variables
         self.providers = defaultdict(list)
         self.rproviders = defaultdict(list)
diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
index a1cd4d7..32ad96d 100644
--- a/bitbake/lib/bb/cooker.py
+++ b/bitbake/lib/bb/cooker.py
@@ -71,6 +71,10 @@ class BBCooker:
             self.server = server.BitBakeServer(self)
 
         self.configuration = configuration
+        # Cooker can get the bitbake mode information from configuration,
+        # we need to log down this information and pass it to Cache for
+        # extra cache file implementation
+        self.bitbake_mode = configuration.ui
 
         self.configuration.data = bb.data.init()
 
@@ -713,9 +717,10 @@ class BBCooker:
 
         self.buildSetVars()
 
-        self.status = bb.cache.CacheData()
+        self.status = bb.cache.CacheData(self.bitbake_mode)
         infos = bb.cache.Cache.parse(fn, self.get_file_appends(fn), \
-                                     self.configuration.data)
+                                     self.configuration.data, \
+                                     self.bitbake_mode)
         infos = dict(infos)
 
         fn = bb.cache.Cache.realfn2virtual(buildfile, cls)
@@ -859,7 +864,7 @@ class BBCooker:
                 else:
                     collectlog.info("You have disabled Psyco. This decreases performance.")
 
-            self.status = bb.cache.CacheData()
+            self.status = bb.cache.CacheData(self.bitbake_mode)
 
             ignore = bb.data.getVar("ASSUME_PROVIDED", self.configuration.data, 1) or ""
             self.status.ignored_dependencies = set(ignore.split())
-- 
1.7.0.4


