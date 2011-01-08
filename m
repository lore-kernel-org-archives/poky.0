Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 637194C811EB
	for <poky@yoctoproject.org>; Sat,  8 Jan 2011 01:06:12 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 07 Jan 2011 23:06:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,293,1291622400"; d="scan'208";a="644745799"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga002.fm.intel.com with ESMTP; 07 Jan 2011 23:06:11 -0800
Message-Id: <61921249057e3ea8d2eb698f1d0959518aadbcf4.1294469496.git.ke.yu@intel.com>
In-Reply-To: <cover.1294469496.git.ke.yu@intel.com>
References: <cover.1294469496.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Sat, 8 Jan 2011 10:30:13 +0800
Date: Sat, 08 Jan 2011 15:15:10 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 5/7] bb.cooker: remove bb.fetch.persistent_database_connection referrence
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
X-List-Received-Date: Sat, 08 Jan 2011 07:06:12 -0000

persistent_database_connection is already removed in bb.fetch,
so remove its referrence in bb.cooker accordingly.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/cooker.py |    6 ------
 1 files changed, 0 insertions(+), 6 deletions(-)

diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
index 23fd72f..77544cd 100644
--- a/bitbake/lib/bb/cooker.py
+++ b/bitbake/lib/bb/cooker.py
@@ -644,9 +644,6 @@ class BBCooker:
         buildname = bb.data.getVar("BUILDNAME", self.configuration.data)
         bb.event.fire(bb.event.BuildStarted(buildname, [item]), self.configuration.event_data)
 
-        # Clear locks
-        bb.fetch.persistent_database_connection = {}
-
         # Execute the runqueue
         runlist = [[item, "do_%s" % task]]
 
@@ -728,9 +725,6 @@ class BBCooker:
             runlist.append([k, "do_%s" % task])
         taskdata.add_unresolved(localdata, self.status)
 
-        # Clear locks
-        bb.fetch.persistent_database_connection = {}
-
         rq = bb.runqueue.RunQueue(self, self.configuration.data, self.status, taskdata, runlist)
 
         self.server.register_idle_function(buildTargetsIdle, rq)
-- 
1.7.0.4


