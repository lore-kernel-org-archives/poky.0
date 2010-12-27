Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 94C0D4C811E6
	for <poky@yoctoproject.org>; Mon, 27 Dec 2010 07:51:14 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 Dec 2010 05:51:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,234,1291622400"; d="scan'208";a="872175082"
Received: from unknown (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 27 Dec 2010 05:51:13 -0800
Message-Id: <b14ab9be01256ca16a515284b9782b602a98a6b0.1293457442.git.ke.yu@intel.com>
In-Reply-To: <cover.1293457442.git.ke.yu@intel.com>
References: <cover.1293457442.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Mon, 27 Dec 2010 10:48:34 +0800
Date: Mon, 27 Dec 2010 21:57:30 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 5/8] bzr.py: move bzr specific url data initialization earlier
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
X-List-Received-Date: Mon, 27 Dec 2010 13:51:14 -0000

move the url data init earlier, so that Bzr.latest_revision()
can work before Bzr.localpath()

This change allow FetchData:__init__ to set FetchData.revison by
Bzr.latest_revision()

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch/bzr.py |   14 +++++++++++---
 1 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/bitbake/lib/bb/fetch/bzr.py b/bitbake/lib/bb/fetch/bzr.py
index 2f73adf..b29bbce 100644
--- a/bitbake/lib/bb/fetch/bzr.py
+++ b/bitbake/lib/bb/fetch/bzr.py
@@ -33,10 +33,17 @@ from bb.fetch import runfetchcmd
 
 class Bzr(Fetch):
     def supports(self, url, ud, d):
-        return ud.type in ['bzr']
-
-    def localpath (self, url, ud, d):
+        if ud.type in ['bzr']:
+            self.urldata_init(ud, d)
+            return True
+        else:
+            return False
 
+    def urldata_init(self, ud, d):
+        """
+        init bzr specific variable within url data
+        so that the  method like latest_revision() can work
+        """
         # Create paths to bzr checkouts
         relpath = ud.path
         if relpath.startswith('/'):
@@ -44,6 +51,7 @@ class Bzr(Fetch):
             relpath = relpath[1:]
         ud.pkgdir = os.path.join(data.expand('${BZRDIR}', d), ud.host, relpath)
 
+    def localpath (self, url, ud, d):
         revision = Fetch.srcrev_internal_helper(ud, d)
         if revision is True:
             ud.revision = self.latest_revision(url, ud, d)
-- 
1.7.0.4


