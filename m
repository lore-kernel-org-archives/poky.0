Return-Path: <liping.ke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3BAB84C808D8
	for <poky@yoctoproject.org>; Tue, 31 May 2011 03:27:55 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 31 May 2011 01:27:54 -0700
X-ExtLoop1: 1
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by orsmga002.jf.intel.com with ESMTP; 31 May 2011 01:27:54 -0700
From: Ke Liping <liping.ke@intel.com>
To: poky@yoctoproject.org
Date: Tue, 31 May 2011 16:15:58 +0800
Message-Id: <9a9ad58487bde70a8ce6d3ebdcd3c0511fbbacd8.1306829495.git.liping.ke@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1306829495.git.liping.ke@intel.com>
References: <cover.1306829495.git.liping.ke@intel.com>
In-Reply-To: <cover.1306829495.git.liping.ke@intel.com>
References: <cover.1306829495.git.liping.ke@intel.com>
Subject: [PATCH 2/4][Image Creator]Introduce extra cache class for image creator
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
X-List-Received-Date: Tue, 31 May 2011 08:27:55 -0000

From: Liping Ke <liping.ke@intel.com>

Extra RecipeInfo will be all defined in this file. Currently,
Only Hob (Image Creator) Requests some extra fields. So
HobRecipeInfo is defined. It's named HobRecipeInfo because it
is introduced by 'hob'. Users could also introduce other
RecipeInfo or simply use those already defined RecipeInfo.
In the following patch, this newly defined new extra RecipeInfo
will be dynamically loaded and used for loading/saving the extra
cache fields.

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 bitbake/lib/bb/cache_extra.py |   54 +++++++++++++++++++++++++++++++++++++++++
 1 files changed, 54 insertions(+), 0 deletions(-)
 create mode 100644 bitbake/lib/bb/cache_extra.py

diff --git a/bitbake/lib/bb/cache_extra.py b/bitbake/lib/bb/cache_extra.py
new file mode 100644
index 0000000..6a402d5
--- /dev/null
+++ b/bitbake/lib/bb/cache_extra.py
@@ -0,0 +1,54 @@
+# ex:ts=4:sw=4:sts=4:et
+# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
+#
+# Extra RecipeInfo will be all defined in this file. Currently,
+# Only Hob (Image Creator) Requests some extra fields. So
+# HobRecipeInfo is defined. It's named HobRecipeInfo because it
+# is introduced by 'hob'. Users could also introduce other
+# RecipeInfo or simply use those already defined RecipeInfo.
+# In the following patch, this newly defined new extra RecipeInfo
+# will be dynamically loaded and used for loading/saving the extra
+# cache fields  
+
+# Copyright (C) 2011        Liping Ke
+
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+
+from bb.cache import RecipeInfoCommon
+
+class HobRecipeInfo(RecipeInfoCommon):
+    __slots__ = ()
+
+    classname = "HobRecipeInfo"
+    # please override this member with the correct data cache file
+    # such as (bb_cache.dat, bb_extracache_hob.dat) 
+    cachefile = "bb_extracache_" + classname +".dat"        
+
+    def __init__(self, filename, metadata):
+
+        self.summary = self.getvar('SUMMARY', metadata)
+        self.license = self.getvar('LICENSE', metadata)
+        self.section = self.getvar('SECTION', metadata)
+
+    @classmethod
+    def init_cacheData(cls, cachedata):
+        # CacheData in Hob RecipeInfo Class
+        cachedata.summary = {}
+        cachedata.license = {}
+        cachedata.section = {}
+
+    def add_cacheData(self, cachedata, fn):
+        cachedata.summary[fn] = self.summary
+        cachedata.license[fn] = self.license
+        cachedata.section[fn] = self.section
-- 
1.7.0.4


