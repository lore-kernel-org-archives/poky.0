Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5D3504C80ACB
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 11:59:43 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 18 Mar 2011 09:59:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="614759022"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by orsmga002.jf.intel.com with ESMTP; 18 Mar 2011 09:59:03 -0700
Message-Id: <7ba80f6b3bf45ca9fb1ec95b6219284cca3d82e9.1300467410.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300467410.git.scott.m.rifenbark@intel.com>
References: <cover.1300467410.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 17 Mar 2011 17:59:59 -0600
Date: Fri, 18 Mar 2011 10:59:55 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 12/15] documentation/poky-ref-manual/usingpoky.xml: Small edits
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
X-List-Received-Date: Fri, 18 Mar 2011 16:59:43 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I made some minor edits.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/usingpoky.xml |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/documentation/poky-ref-manual/usingpoky.xml b/documentation/poky-ref-manual/usingpoky.xml
index 70ed309..92e3ed5 100644
--- a/documentation/poky-ref-manual/usingpoky.xml
+++ b/documentation/poky-ref-manual/usingpoky.xml
@@ -188,12 +188,12 @@
     <para>
         The exact method for debugging Poky depends on the nature of the 
         problem and on the system's area from which the bug originates. 
-        Standard debugging practises such as comparison against the last 
-        known working version with examination of the changes and the reapplication of steps 
+        Standard debugging practices such as comparison against the last 
+        known working version with examination of the changes and the re-application of steps 
         to identify the one causing the problem are
         valid for Poky just as they are for any other system. 
-        It's impossible to detail every possible potential failure but here are some general
-        tips to aid in debugging:
+        Even though it is impossible to detail every possible potential failure, 
+        here are some general tips to aid in debugging:
     </para>
 
     <section id='usingpoky-debugging-taskfailures'>
-- 
1.7.1


