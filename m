Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id A34F84C811F0
	for <poky@yoctoproject.org>; Sun,  9 Jan 2011 05:41:03 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 09 Jan 2011 03:41:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,295,1291622400"; d="scan'208";a="875794292"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 09 Jan 2011 03:41:02 -0800
Message-Id: <7c6d401e5b3b55f2e81cd3408bfc781fd39a2291.1294571866.git.ke.yu@intel.com>
In-Reply-To: <cover.1294571866.git.ke.yu@intel.com>
References: <cover.1294571866.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Mon, 27 Dec 2010 10:35:19 +0800
Date: Sun, 09 Jan 2011 19:50:14 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 5/8] bb.fetch2.hg: add hg urldata_init
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
X-List-Received-Date: Sun, 09 Jan 2011 11:41:03 -0000

move the hg specific urldata init from localpath to urldata_init
so that it can be called early

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/hg.py |   14 +++++++++-----
 1 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/hg.py b/bitbake/lib/bb/fetch2/hg.py
index 9e91bec..80a1551 100644
--- a/bitbake/lib/bb/fetch2/hg.py
+++ b/bitbake/lib/bb/fetch2/hg.py
@@ -43,11 +43,10 @@ class Hg(Fetch):
         """
         return ud.type in ['hg']
 
-    def forcefetch(self, url, ud, d):
-        revTag = ud.parm.get('rev', 'tip')
-        return revTag == "tip"
-
-    def localpath(self, url, ud, d):
+    def urldata_init(self, ud, d):
+        """
+        init hg specific variable within url data
+        """
         if not "module" in ud.parm:
             raise MissingParameterError("hg method needs a 'module' parameter")
 
@@ -58,6 +57,11 @@ class Hg(Fetch):
         ud.pkgdir = os.path.join(data.expand('${HGDIR}', d), ud.host, relpath)
         ud.moddir = os.path.join(ud.pkgdir, ud.module)
 
+    def forcefetch(self, url, ud, d):
+        revTag = ud.parm.get('rev', 'tip')
+        return revTag == "tip"
+
+    def localpath(self, url, ud, d):
         if 'rev' in ud.parm:
             ud.revision = ud.parm['rev']
         else:
-- 
1.7.0.4


