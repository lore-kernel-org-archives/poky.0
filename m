Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9596D4C8120D
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 08:29:25 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Jan 2011 06:29:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,370,1291622400"; d="scan'208";a="595906576"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 24 Jan 2011 06:29:24 -0800
Message-Id: <0c3793aa3a32b08f1c4114546669bff24e198735.1295879038.git.ke.yu@intel.com>
In-Reply-To: <cover.1295879038.git.ke.yu@intel.com>
References: <cover.1295879038.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Mon, 24 Jan 2011 19:38:03 +0800
Date: Mon, 24 Jan 2011 22:33:11 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC PATCH 20/21] osc.py: add no network access check
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
X-List-Received-Date: Mon, 24 Jan 2011 14:29:25 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/osc.py |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/osc.py b/bitbake/lib/bb/fetch2/osc.py
index 619e2f1..25dcb7b 100644
--- a/bitbake/lib/bb/fetch2/osc.py
+++ b/bitbake/lib/bb/fetch2/osc.py
@@ -92,6 +92,7 @@ class Osc(Fetch):
             # update sources there
             os.chdir(ud.moddir)
             logger.debug(1, "Running %s", oscupdatecmd)
+            bb.fetch2.check_network_access(d, oscupdatecmd)
             runfetchcmd(oscupdatecmd, d)
         else:
             oscfetchcmd = self._buildosccommand(ud, d, "fetch")
@@ -100,6 +101,7 @@ class Osc(Fetch):
             bb.mkdirhier(ud.pkgdir)
             os.chdir(ud.pkgdir)
             logger.debug(1, "Running %s", oscfetchcmd)
+            bb.fetch2.check_network_access(d, oscfetchcmd)
             runfetchcmd(oscfetchcmd, d)
 
         os.chdir(os.path.join(ud.pkgdir + ud.path))
-- 
1.7.0.4


