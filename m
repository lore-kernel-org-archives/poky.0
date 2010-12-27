Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6E5B44C810A8
	for <poky@yoctoproject.org>; Mon, 27 Dec 2010 07:50:31 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Dec 2010 05:50:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,234,1291622400"; d="scan'208";a="691068112"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 27 Dec 2010 05:50:30 -0800
Message-Id: <bf2145f89ea34fb8762e2a3fe91252a89072c93d.1293457442.git.ke.yu@intel.com>
In-Reply-To: <cover.1293457442.git.ke.yu@intel.com>
References: <cover.1293457442.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Mon, 27 Dec 2010 10:07:04 +0800
Date: Mon, 27 Dec 2010 21:57:27 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/8] svn.py: move svn specific url data initialization earlier
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
X-List-Received-Date: Mon, 27 Dec 2010 13:50:31 -0000

move the url data init earlier, so that Svn.latest_revision()
can work before Svn.localpath()

This change allow FetchData:__init__ to set FetchData.revison by
Svn.latest_revision()

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch/svn.py |   13 +++++++++++--
 1 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/fetch/svn.py b/bitbake/lib/bb/fetch/svn.py
index 42058f5..4e97a30 100644
--- a/bitbake/lib/bb/fetch/svn.py
+++ b/bitbake/lib/bb/fetch/svn.py
@@ -38,9 +38,17 @@ class Svn(Fetch):
         """
         Check to see if a given url can be fetched with svn.
         """
-        return ud.type in ['svn']
+        if ud.type in ['svn']:
+            self.urldata_init(ud, d)
+            return True
+        else:
+            return False
 
-    def localpath(self, url, ud, d):
+    def urldata_init(self, ud, d):
+        """
+        init svn specific variable within url data
+        so that the method like latest_revision() can work
+        """
         if not "module" in ud.parm:
             raise MissingParameterError("svn method needs a 'module' parameter")
 
@@ -54,6 +62,7 @@ class Svn(Fetch):
         ud.pkgdir = os.path.join(data.expand('${SVNDIR}', d), ud.host, relpath)
         ud.moddir = os.path.join(ud.pkgdir, ud.module)
 
+    def localpath(self, url, ud, d):
         if 'rev' in ud.parm:
             ud.date = ""
             ud.revision = ud.parm['rev']
-- 
1.7.0.4


