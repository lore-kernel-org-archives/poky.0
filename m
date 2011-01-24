Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 58F934C811AA
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 08:29:17 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 24 Jan 2011 06:29:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,370,1291622400"; d="scan'208";a="595906549"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 24 Jan 2011 06:29:16 -0800
Message-Id: <24ca7f339937fcae8ca125a44277489067e390a7.1295879038.git.ke.yu@intel.com>
In-Reply-To: <cover.1295879038.git.ke.yu@intel.com>
References: <cover.1295879038.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Mon, 24 Jan 2011 16:58:35 +0800
Date: Mon, 24 Jan 2011 22:33:02 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC PATCH 15/21] svn.py: add no network access check
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
X-List-Received-Date: Mon, 24 Jan 2011 14:29:17 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/svn.py |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/svn.py b/bitbake/lib/bb/fetch2/svn.py
index 547c04f..8d76802 100644
--- a/bitbake/lib/bb/fetch2/svn.py
+++ b/bitbake/lib/bb/fetch2/svn.py
@@ -139,6 +139,7 @@ class Svn(Fetch):
             # update sources there
             os.chdir(ud.moddir)
             logger.debug(1, "Running %s", svnupdatecmd)
+            bb.fetch2.check_network_access(d, svnupdatecmd)
             runfetchcmd(svnupdatecmd, d)
         else:
             svnfetchcmd = self._buildsvncommand(ud, d, "fetch")
@@ -147,6 +148,7 @@ class Svn(Fetch):
             bb.mkdirhier(ud.pkgdir)
             os.chdir(ud.pkgdir)
             logger.debug(1, "Running %s", svnfetchcmd)
+            bb.fetch2.check_network_access(d, svnfetchcmd)
             runfetchcmd(svnfetchcmd, d)
 
         scmdata = ud.parm.get("scmdata", "")
@@ -180,7 +182,7 @@ class Svn(Fetch):
         """
         Return the latest upstream revision number
         """
-        logger.debug(2, "SVN fetcher hitting network for %s", url)
+        bb.fetch2.check_network_access(d, self._buildsvncommand(ud, d, "info"))
 
         output = runfetchcmd("LANG=C LC_ALL=C " + self._buildsvncommand(ud, d, "info"), d, True)
 
-- 
1.7.0.4


