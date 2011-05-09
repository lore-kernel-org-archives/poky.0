Return-Path: <liping.ke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C141C4C80578
	for <poky@yoctoproject.org>; Mon,  9 May 2011 01:47:34 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 08 May 2011 23:47:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,339,1301900400"; d="scan'208";a="639945942"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by orsmga002.jf.intel.com with ESMTP; 08 May 2011 23:47:34 -0700
Message-Id: <1277556a583046e65c76813ad77bd769a3377d50.1304922517.git.liping.ke@intel.com>
In-Reply-To: <cover.1304922517.git.liping.ke@intel.com>
References: <cover.1304922517.git.liping.ke@intel.com>
Old-Date: Mon, 9 May 2011 13:25:38 +0800
Date: Mon, 09 May 2011 14:36:33 +0800
To: poky@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 3/4] Put extra requested fields into different cache files
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
X-List-Received-Date: Mon, 09 May 2011 06:47:34 -0000

From: Liping Ke <liping.ke@intel.com>

This patch introduces Extra required fields for image creator.
We introduce extra required fields as well as namedtuple recipeinfo
class here. We also define the data retrieving methods for this
extra recipeinfo class. This factory methods can be easily extended
for furthing expanding. The extended Hob(Image Creator) class will
be used in the following patches.

Signed-off-by: Liping Ke <Liping.ke@intel.com>
---
 bitbake/lib/bb/cache.py |   29 +++++++++++++++++++++++++++++
 1 files changed, 29 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/cache.py b/bitbake/lib/bb/cache.py
index dec8bdd..dc112ff 100644
--- a/bitbake/lib/bb/cache.py
+++ b/bitbake/lib/bb/cache.py
@@ -117,7 +117,36 @@ class RecipeRetrieve():
     def getvar(cls, var, metadata):
         return metadata.getVar(var, True) or ''
 
+# This three fields are only requested by Image Creator
+# hob_recipe_fields, HobRecipeInfo Definition are both
+# introduced by Image Creator. If a user want to introduce
+# more fields, we need to to the same thing as below:
+# 1. introduce extra recipe fields
+# 2. Define your extra named tuple class
+# 3. Add extra data loading methods in the else part of
+#    the Factory Class.
+hob_extra_recipe_fields = (
+    'summary',
+    'license',
+    'section'
+)
+
+HobExtraRecipeInfo = namedtuple('HobExtraRecipeInfo', hob_extra_recipe_fields)
+    
+class ExtraRecipeInfoFactory(RecipeRetrieve):
+    @classmethod
+    def from_metadata(cls, bitbake_mode, metadata):
+        if bitbake_mode == "hob":
+            return HobExtraRecipeInfo(
+                summary          = cls.getvar('SUMMARY', metadata),
+                license          = cls.getvar('LICENSE', metadata),
+                section          = cls.getvar('SECTION', metadata),
+            )
+
+
 class RecipeInfo(namedtuple('RecipeInfo', recipe_fields), RecipeRetrieve):
+    # Please note: fields are the static class member
+    # in namedtuple class RecipeInfo
     @classmethod
     def make_optional(cls, default=None, **kwargs):
         """Construct the namedtuple from the specified keyword arguments,
-- 
1.7.0.4


