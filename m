Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id AEA0A4C80A74
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 10:13:07 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 06 Dec 2010 08:12:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,305,1288594800"; d="scan'208";a="357693938"
Received: from unknown (HELO localhost) ([10.255.16.53])
	by azsmga001.ch.intel.com with ESMTP; 06 Dec 2010 08:12:02 -0800
Message-Id: <69396fc01d7401d6a110ba30e7a06d2abd45e007.1291651199.git.josh@linux.intel.com>
In-Reply-To: <cover.1291651199.git.josh@linux.intel.com>
References: <cover.1291651199.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Wed, 1 Dec 2010 16:59:04 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 09/10] bitbake/cooker: fix idle command processing in servers
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
X-List-Received-Date: Mon, 06 Dec 2010 16:13:07 -0000

idle command processing in each of the servers does not handle an explicit
None return value, which means the goggle UI ends up repeatedly adding
"Tasks Summary:" rows to the list.

This patch modifies BBCooker.buildTargets.buildTargetsIdle to return False
when BuildCompleted is fired, as is done in BBCooker.buildFile.buildFileIdle.
It may be that the correct way to fix this is to change the idle command
processing in the servers.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/cooker.py |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
index 054dac8..8c55e3e 100644
--- a/bitbake/lib/bb/cooker.py
+++ b/bitbake/lib/bb/cooker.py
@@ -734,7 +734,7 @@ class BBCooker:
             if not retval:
                 bb.event.fire(bb.event.BuildCompleted(buildname, targets, failures), self.configuration.event_data)
                 self.command.finishAsyncCommand()
-                return None
+                return False
             if retval is True:
                 return True
             return 0.5
-- 
1.7.3.2


