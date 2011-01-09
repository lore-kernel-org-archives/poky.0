Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8604B4C811F3
	for <poky@yoctoproject.org>; Sun,  9 Jan 2011 05:41:08 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Jan 2011 03:41:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,295,1291622400"; d="scan'208";a="694997822"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 09 Jan 2011 03:41:07 -0800
Message-Id: <5dc86fafe3227653f652bb61e8ad49f875b3e20d.1294571866.git.ke.yu@intel.com>
In-Reply-To: <cover.1294571866.git.ke.yu@intel.com>
References: <cover.1294571866.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Mon, 27 Dec 2010 16:20:34 +0800
Date: Sun, 09 Jan 2011 19:50:19 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 8/8] Fetcher: only set __BB_DONT_CACHE when SRCREV = "${AUTOREV}"
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
X-List-Received-Date: Sun, 09 Jan 2011 11:41:08 -0000

we should cache SRCREV whenever possible, the only exception is
when SREREV is auto rev. so change the logic to only set __BB_DONT_CACHE
at SRCREV = "${AUTOREV}" case

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/__init__.py |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 44189ee..fd489a1 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -356,6 +356,9 @@ def localpaths(d):
     return local
 
 def get_autorev(d):
+    #  only not cache src rev in autorev case
+    if bb.data.getVar('BB_SRCREV_POLICY', d, True) != "cache":
+        bb.data.setVar('__BB_DONT_CACHE', '1', d)
     return "AUTOINC"
 
 def get_srcrev(d):
@@ -382,9 +385,6 @@ def get_srcrev(d):
         logger.error("SRCREV was used yet no valid SCM was found in SRC_URI")
         raise ParameterError
 
-    if bb.data.getVar('BB_SRCREV_POLICY', d, True) != "cache":
-        bb.data.setVar('__BB_DONT_CACHE', '1', d)
-
     if len(scms) == 1:
         return urldata[scms[0]].method.sortable_revision(scms[0], urldata[scms[0]], d)
 
-- 
1.7.0.4


