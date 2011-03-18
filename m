Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4A7444C80AB0
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 08:03:43 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 18 Mar 2011 06:03:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,205,1299484800"; d="scan'208";a="668693923"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by fmsmga002.fm.intel.com with ESMTP; 18 Mar 2011 06:03:23 -0700
Message-Id: <66dbeadfe0838fc492e99233841ed5c501f3fa20.1300453334.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300453334.git.scott.m.rifenbark@intel.com>
References: <cover.1300453334.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 17 Mar 2011 13:49:48 -0600
Date: Fri, 18 Mar 2011  7:04:15 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 1/2] documentation/kernel-manual/kernel-manual.xml: Updated the title page
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
X-List-Received-Date: Fri, 18 Mar 2011 13:03:43 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I updated the title page to add Revision 1.0 to the Revision history
table.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/kernel-manual/kernel-manual.xml |    8 +++++++-
 1 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/documentation/kernel-manual/kernel-manual.xml b/documentation/kernel-manual/kernel-manual.xml
index e9a9ed3..875cbe3 100644
--- a/documentation/kernel-manual/kernel-manual.xml
+++ b/documentation/kernel-manual/kernel-manual.xml
@@ -31,7 +31,13 @@
             <revision>
                 <revnumber>0.9</revnumber>
                 <date>24 November 2010</date>
-                <revremark>Beta Draft</revremark>
+                <revremark>This revision is the initial document draft and corresponds with 
+                    the Yocto Project 0.9 Release.</revremark>
+            </revision>
+            <revision>
+                <revnumber>1.0</revnumber>
+                <date>6 April 2011</date>
+                <revremark>This revision corresponds with the Yocto Project 1.0 Release.</revremark>
             </revision>
         </revhistory>
 
-- 
1.7.1


