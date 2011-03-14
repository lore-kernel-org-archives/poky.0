Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 99B0C4C80AAC
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 09:45:56 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Mar 2011 07:45:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,316,1297065600"; d="scan'208";a="612730987"
Received: from unknown (HELO localhost) ([10.255.16.55])
	by orsmga002.jf.intel.com with ESMTP; 14 Mar 2011 07:45:55 -0700
Message-Id: <cb6c8db892ebde20224cf9c30dc8cf4b07494ce2.1300113623.git.josh@linux.intel.com>
In-Reply-To: <cover.1300113623.git.josh@linux.intel.com>
References: <cover.1300113623.git.josh@linux.intel.com>
Old-Date: Sat, 5 Mar 2011 17:13:32 +0000
Date: Mon, 14 Mar 2011 14:45:49 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 1/2] bitbake/cooker: don't error in prepareTreeData for unbuildable targets
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
X-List-Received-Date: Mon, 14 Mar 2011 14:45:56 -0000

From: Joshua Lock <josh@linux.intel.com>

Set abort to False in prepareTreeData so that unbuildable targets do not
raise an exception.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/cooker.py |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
index 18e9bb8..97863e5 100644
--- a/bitbake/lib/bb/cooker.py
+++ b/bitbake/lib/bb/cooker.py
@@ -253,7 +253,9 @@ class BBCooker:
         localdata = data.createCopy(self.configuration.data)
         bb.data.update_data(localdata)
         bb.data.expandKeys(localdata)
-        taskdata = bb.taskdata.TaskData(self.configuration.abort)
+        # We set abort to False here to prevent unbuildable targets raising
+        # an exception when we're just generating data
+        taskdata = bb.taskdata.TaskData(False)
 
         runlist = []
         for k in pkgs_to_build:
-- 
1.7.4


