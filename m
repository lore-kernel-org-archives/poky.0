Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 21F7C4C80AB4
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 07:54:41 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 18 Mar 2011 05:54:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,205,1299484800"; d="scan'208";a="721590911"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by orsmga001.jf.intel.com with ESMTP; 18 Mar 2011 05:54:40 -0700
Message-Id: <01dc3c3beccd166bb4249378fbd5d0c2a06f1bf0.1300452791.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300452791.git.scott.m.rifenbark@intel.com>
References: <cover.1300452791.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 17 Mar 2011 13:20:21 -0600
Date: Fri, 18 Mar 2011  6:55:32 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 2/4] documentation/bsp-guide/bsp-guide.xml: Updated Title Page
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
X-List-Received-Date: Fri, 18 Mar 2011 12:54:41 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I updated the revision table for the manuals to have better
wording and to go from oldest to newest top down.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp-guide.xml |   13 +++++++------
 1 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/documentation/bsp-guide/bsp-guide.xml b/documentation/bsp-guide/bsp-guide.xml
index 2862e2e..fd409bc 100644
--- a/documentation/bsp-guide/bsp-guide.xml
+++ b/documentation/bsp-guide/bsp-guide.xml
@@ -29,14 +29,15 @@
 
         <revhistory>
             <revision>
-                <revnumber>1.0</revnumber>
-                <date>1 April 2011</date>
-                <revremark>This release represents the initial full release for Yocto Project.</revremark>
-            </revision>
-            <revision>
                 <revnumber>0.9</revnumber>
                 <date>27 October 2010</date>
-                <revremark>This release represents the Yocto Project Beta Draft.</revremark>
+                <revremark>This manual revision is the initial manual and corresponds to the 
+                    Yocto Project 0.9 Release.</revremark>
+            </revision>
+            <revision>
+                <revnumber>1.0</revnumber>
+                <date>6 April 2011</date>
+                <revremark>This manual revision corresponds to the Yocto Project 1.0 Release.</revremark>
             </revision>
         </revhistory>
 
-- 
1.7.1


