Return-Path: <liping.ke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id CB7AE4C804BD
	for <poky@yoctoproject.org>; Mon,  9 May 2011 01:47:33 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 08 May 2011 23:47:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,339,1301900400"; d="scan'208";a="639945938"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by orsmga002.jf.intel.com with ESMTP; 08 May 2011 23:47:32 -0700
Message-Id: <9ebe48510802243f283d2a76a5d660d982182b6a.1304922517.git.liping.ke@intel.com>
In-Reply-To: <cover.1304922517.git.liping.ke@intel.com>
References: <cover.1304922517.git.liping.ke@intel.com>
Old-Date: Mon, 9 May 2011 13:11:07 +0800
Date: Mon, 09 May 2011 14:36:32 +0800
To: poky@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 2/4] Put extra requested fields into different cache files
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

This patch splits Cache Data Retrieve method from Data Fields.
Data Retrive methods will be reused by Extra Cache Data fields.
It is independent Class methods for data retrieving.

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 bitbake/lib/bb/cache.py |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/cache.py b/bitbake/lib/bb/cache.py
index c86aa14..dec8bdd 100644
--- a/bitbake/lib/bb/cache.py
+++ b/bitbake/lib/bb/cache.py
@@ -83,7 +83,7 @@ recipe_fields = (
 )
 
 
-class RecipeInfo(namedtuple('RecipeInfo', recipe_fields)):
+class RecipeRetrieve():
     __slots__ = ()
 
     @classmethod
@@ -117,6 +117,7 @@ class RecipeInfo(namedtuple('RecipeInfo', recipe_fields)):
     def getvar(cls, var, metadata):
         return metadata.getVar(var, True) or ''
 
+class RecipeInfo(namedtuple('RecipeInfo', recipe_fields), RecipeRetrieve):
     @classmethod
     def make_optional(cls, default=None, **kwargs):
         """Construct the namedtuple from the specified keyword arguments,
-- 
1.7.0.4


