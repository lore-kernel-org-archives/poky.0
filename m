Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id CD34E4C800A4
	for <poky@yoctoproject.org>; Fri,  4 Feb 2011 02:53:25 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 04 Feb 2011 00:53:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,425,1291622400"; d="scan'208";a="599427225"
Received: from unknown (HELO localhost) ([10.255.16.164])
	by orsmga002.jf.intel.com with ESMTP; 04 Feb 2011 00:53:24 -0800
Message-Id: <06206b71e41928bcd299fc83be78a4a13445a435.1296808673.git.josh@linux.intel.com>
In-Reply-To: <cover.1296808673.git.josh@linux.intel.com>
References: <cover.1296808673.git.josh@linux.intel.com>
Old-Date: Tue, 4 Jan 2011 17:34:30 +0000
Date: Fri, 04 Feb 2011  8:53:18 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 01/13] bitbake/cache: store a list of inherited files in the cache
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
X-List-Received-Date: Fri, 04 Feb 2011 08:53:26 -0000

From: Joshua Lock <josh@linux.intel.com>

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/cache.py |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/cache.py b/bitbake/lib/bb/cache.py
index ff42a37..8480f89 100644
--- a/bitbake/lib/bb/cache.py
+++ b/bitbake/lib/bb/cache.py
@@ -74,6 +74,7 @@ recipe_fields = (
     'tasks',
     'basetaskhashes',
     'hashfilename',
+    'inherits',
 )
 
 
@@ -164,6 +165,7 @@ class RecipeInfo(namedtuple('RecipeInfo', recipe_fields)):
             rprovides_pkg    = cls.pkgvar('RPROVIDES', packages, metadata),
             rdepends_pkg     = cls.pkgvar('RDEPENDS', packages, metadata),
             rrecommends_pkg  = cls.pkgvar('RRECOMMENDS', packages, metadata),
+            inherits         = cls.getvar('__inherit_cache', metadata),
         )
 
 
@@ -574,6 +576,7 @@ class CacheData(object):
         self.tasks = {}
         self.basetaskhash = {}
         self.hashfn = {}
+        self.inherits = {}
 
         """
         Indirect Cache variables
@@ -635,3 +638,5 @@ class CacheData(object):
         for task, taskhash in info.basetaskhashes.iteritems():
             identifier = '%s.%s' % (fn, task)
             self.basetaskhash[identifier] = taskhash
+
+        self.inherits[fn] = info.inherits
-- 
1.7.4


