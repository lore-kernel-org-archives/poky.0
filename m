Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 10E024C810A8
	for <poky@yoctoproject.org>; Mon, 27 Dec 2010 07:50:33 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Dec 2010 05:50:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,234,1291622400"; d="scan'208";a="587518343"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 27 Dec 2010 05:50:32 -0800
Message-Id: <4b894a5aa0f9a670aa858db4cdd35dc15069bbfe.1293457442.git.ke.yu@intel.com>
In-Reply-To: <cover.1293457442.git.ke.yu@intel.com>
References: <cover.1293457442.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Mon, 27 Dec 2010 10:35:19 +0800
Date: Mon, 27 Dec 2010 21:57:28 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 4/8] hg.py: move hg specific url data initialization earlier
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
X-List-Received-Date: Mon, 27 Dec 2010 13:50:33 -0000

move the url data init earlier, so that Hg.latest_revision()
can work before Hg.localpath()

This change allow FetchData:__init__ to set FetchData.revison by
calling Hg.latest_revision()

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch/hg.py |   13 +++++++++++--
 1 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/fetch/hg.py b/bitbake/lib/bb/fetch/hg.py
index 6dd75cb..85d640d 100644
--- a/bitbake/lib/bb/fetch/hg.py
+++ b/bitbake/lib/bb/fetch/hg.py
@@ -39,9 +39,17 @@ class Hg(Fetch):
         """
         Check to see if a given url can be fetched with mercurial.
         """
-        return ud.type in ['hg']
+        if ud.type in ['hg']:
+            self.urldata_init(ud, d)
+            return True
+        else:
+            return False
 
-    def localpath(self, url, ud, d):
+    def urldata_init(self, ud, d):
+        """
+        init hg specific variable within url data
+        so that the hg method like latest_revision() can work
+        """
         if not "module" in ud.parm:
             raise MissingParameterError("hg method needs a 'module' parameter")
 
@@ -55,6 +63,7 @@ class Hg(Fetch):
         ud.pkgdir = os.path.join(data.expand('${HGDIR}', d), ud.host, relpath)
         ud.moddir = os.path.join(ud.pkgdir, ud.module)
 
+    def localpath(self, url, ud, d):
         if 'rev' in ud.parm:
             ud.revision = ud.parm['rev']
         else:
-- 
1.7.0.4


