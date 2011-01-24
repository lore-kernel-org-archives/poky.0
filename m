Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 603D14C81220
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 08:29:22 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 24 Jan 2011 06:29:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,370,1291622400"; d="scan'208";a="650514061"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga002.fm.intel.com with ESMTP; 24 Jan 2011 06:29:19 -0800
Message-Id: <c050eaa15c39688f2b7cc6f210967cd982c1aefb.1295879038.git.ke.yu@intel.com>
In-Reply-To: <cover.1295879038.git.ke.yu@intel.com>
References: <cover.1295879038.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Mon, 24 Jan 2011 17:12:47 +0800
Date: Mon, 24 Jan 2011 22:33:06 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC PATCH 17/21] hg.py: add no network access check
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
 bitbake/lib/bb/fetch2/hg.py |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/hg.py b/bitbake/lib/bb/fetch2/hg.py
index 635ecbf..4ba28c7 100644
--- a/bitbake/lib/bb/fetch2/hg.py
+++ b/bitbake/lib/bb/fetch2/hg.py
@@ -123,6 +123,7 @@ class Hg(Fetch):
             # update sources there
             os.chdir(ud.moddir)
             logger.debug(1, "Running %s", updatecmd)
+            bb.fetch2.check_network_access(d, updatecmd)
             runfetchcmd(updatecmd, d)
 
         else:
@@ -132,6 +133,7 @@ class Hg(Fetch):
             bb.mkdirhier(ud.pkgdir)
             os.chdir(ud.pkgdir)
             logger.debug(1, "Running %s", fetchcmd)
+            bb.fetch2.check_network_access(d, fetchcmd)
             runfetchcmd(fetchcmd, d)
 
         # Even when we clone (fetch), we still need to update as hg's clone
@@ -165,6 +167,7 @@ class Hg(Fetch):
         """
         Compute tip revision for the url
         """
+        bb.fetch2.check_network_access(d, self._buildhgcommand(ud, d, "info"))
         output = runfetchcmd(self._buildhgcommand(ud, d, "info"), d)
         return output.strip()
 
-- 
1.7.0.4


