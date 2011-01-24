Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1723E4C81216
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 08:29:19 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 24 Jan 2011 06:29:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,370,1291622400"; d="scan'208";a="880395522"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 24 Jan 2011 06:29:18 -0800
Message-Id: <ceb578fb0842cb2d94ddf14f5e91fa91f6ce9997.1295879038.git.ke.yu@intel.com>
In-Reply-To: <cover.1295879038.git.ke.yu@intel.com>
References: <cover.1295879038.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Mon, 24 Jan 2011 17:09:43 +0800
Date: Mon, 24 Jan 2011 22:33:04 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC PATCH 16/21] cvs.py: add no network access check
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
X-List-Received-Date: Mon, 24 Jan 2011 14:29:19 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/cvs.py |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/cvs.py b/bitbake/lib/bb/fetch2/cvs.py
index 8e72090..4915e74 100644
--- a/bitbake/lib/bb/fetch2/cvs.py
+++ b/bitbake/lib/bb/fetch2/cvs.py
@@ -131,6 +131,7 @@ class Cvs(Fetch):
         moddir = os.path.join(pkgdir, localdir)
         if os.access(os.path.join(moddir, 'CVS'), os.R_OK):
             logger.info("Update " + loc)
+            bb.fetch2.check_network_access(d, cvsupdatecmd)
             # update sources there
             os.chdir(moddir)
             myret = os.system(cvsupdatecmd)
@@ -140,6 +141,7 @@ class Cvs(Fetch):
             bb.mkdirhier(pkgdir)
             os.chdir(pkgdir)
             logger.debug(1, "Running %s", cvscmd)
+            bb.fetch2.check_network_access(d, cvscmd)
             myret = os.system(cvscmd)
 
         if myret != 0 or not os.access(moddir, os.R_OK):
-- 
1.7.0.4


