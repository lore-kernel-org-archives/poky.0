Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 54F464C81226
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 08:29:22 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Jan 2011 06:29:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,370,1291622400"; d="scan'208";a="379088504"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by azsmga001.ch.intel.com with ESMTP; 24 Jan 2011 06:29:21 -0800
Message-Id: <31dec857f452d0e049b2dd64fd12be3574999902.1295879038.git.ke.yu@intel.com>
In-Reply-To: <cover.1295879038.git.ke.yu@intel.com>
References: <cover.1295879038.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Mon, 24 Jan 2011 17:20:29 +0800
Date: Mon, 24 Jan 2011 22:33:07 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC PATCH 18/21] bzr.py: add no network access check
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
X-List-Received-Date: Mon, 24 Jan 2011 14:29:22 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/bzr.py |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/bzr.py b/bitbake/lib/bb/fetch2/bzr.py
index 608ecc7..6e1970b 100644
--- a/bitbake/lib/bb/fetch2/bzr.py
+++ b/bitbake/lib/bb/fetch2/bzr.py
@@ -85,11 +85,13 @@ class Bzr(Fetch):
         if os.access(os.path.join(ud.pkgdir, os.path.basename(ud.pkgdir), '.bzr'), os.R_OK):
             bzrcmd = self._buildbzrcommand(ud, d, "update")
             logger.debug(1, "BZR Update %s", loc)
+            bb.fetch2.check_network_access(d, bzrcmd)
             os.chdir(os.path.join (ud.pkgdir, os.path.basename(ud.path)))
             runfetchcmd(bzrcmd, d)
         else:
             bb.utils.remove(os.path.join(ud.pkgdir, os.path.basename(ud.pkgdir)), True)
             bzrcmd = self._buildbzrcommand(ud, d, "fetch")
+            bb.fetch2.check_network_access(d, bzrcmd)
             logger.debug(1, "BZR Checkout %s", loc)
             bb.mkdirhier(ud.pkgdir)
             os.chdir(ud.pkgdir)
@@ -130,6 +132,8 @@ class Bzr(Fetch):
         """
         logger.debug(2, "BZR fetcher hitting network for %s", url)
 
+        bb.fetch2.check_network_access(d, self._buildbzrcommand(ud, d, "revno"))
+
         output = runfetchcmd(self._buildbzrcommand(ud, d, "revno"), d, True)
 
         return output.strip()
-- 
1.7.0.4


