Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id D1DAC4C8016A
	for <poky@yoctoproject.org>; Fri,  4 Feb 2011 02:54:35 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Feb 2011 00:54:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,425,1291622400"; d="scan'208";a="384091826"
Received: from unknown (HELO localhost) ([10.255.16.164])
	by azsmga001.ch.intel.com with ESMTP; 04 Feb 2011 00:54:34 -0800
Message-Id: <50fdd73438506519d41696d163e7331f998446a8.1296808673.git.josh@linux.intel.com>
In-Reply-To: <cover.1296808673.git.josh@linux.intel.com>
References: <cover.1296808673.git.josh@linux.intel.com>
Old-Date: Wed, 2 Feb 2011 12:48:10 +0000
Date: Fri, 04 Feb 2011  8:54:28 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 11/13] bitbake/cooker: don't drop possible_world ref count
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
X-List-Received-Date: Fri, 04 Feb 2011 08:54:36 -0000

From: Joshua Lock <josh@linux.intel.com>

We need this if we want to run the buildWorldTargetList function more than
once, for example in a UI where we can change the MACHINE and DISTRO as much
as we like before triggering a build.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/cooker.py |    4 ----
 1 files changed, 0 insertions(+), 4 deletions(-)

diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
index 39cf011..1d84998 100644
--- a/bitbake/lib/bb/cooker.py
+++ b/bitbake/lib/bb/cooker.py
@@ -555,10 +555,6 @@ class BBCooker:
             if terminal:
                 self.status.world_target.add(pn)
 
-            # drop reference count now
-            self.status.possible_world = None
-            self.status.all_depends    = None
-
     def interactiveMode( self ):
         """Drop off into a shell"""
         try:
-- 
1.7.4


