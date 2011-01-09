Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5AF914C811EE
	for <poky@yoctoproject.org>; Sun,  9 Jan 2011 05:41:02 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Jan 2011 03:41:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,295,1291622400"; d="scan'208";a="591236293"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 09 Jan 2011 03:41:01 -0800
Message-Id: <760ab5974113b011b522b5f9045849f443af5897.1294571866.git.ke.yu@intel.com>
In-Reply-To: <cover.1294571866.git.ke.yu@intel.com>
References: <cover.1294571866.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Mon, 27 Dec 2010 10:07:04 +0800
Date: Sun, 09 Jan 2011 19:50:12 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 4/8] bb.fetch2.svn.py: add urldata_init
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
X-List-Received-Date: Sun, 09 Jan 2011 11:41:02 -0000

move the svn specific urldata init from localpath to urldata_init
so that it can be called early

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/svn.py |    6 +++++-
 1 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/svn.py b/bitbake/lib/bb/fetch2/svn.py
index 3315b15..c0a7a54 100644
--- a/bitbake/lib/bb/fetch2/svn.py
+++ b/bitbake/lib/bb/fetch2/svn.py
@@ -42,7 +42,10 @@ class Svn(Fetch):
         """
         return ud.type in ['svn']
 
-    def localpath(self, url, ud, d):
+    def urldata_init(self, ud, d):
+        """
+        init svn specific variable within url data
+        """
         if not "module" in ud.parm:
             raise MissingParameterError("svn method needs a 'module' parameter")
 
@@ -53,6 +56,7 @@ class Svn(Fetch):
         ud.pkgdir = os.path.join(data.expand('${SVNDIR}', d), ud.host, relpath)
         ud.moddir = os.path.join(ud.pkgdir, ud.module)
 
+    def localpath(self, url, ud, d):
         if 'rev' in ud.parm:
             ud.date = ""
             ud.revision = ud.parm['rev']
-- 
1.7.0.4


