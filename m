Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8E8F24C804CA
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 11:59:25 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 18 Mar 2011 09:58:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="614758968"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by orsmga002.jf.intel.com with ESMTP; 18 Mar 2011 09:58:52 -0700
Message-Id: <1d61050d25eb8c9dd2e2a78376a48398365eee32.1300467410.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300467410.git.scott.m.rifenbark@intel.com>
References: <cover.1300467410.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 17 Mar 2011 09:52:40 -0600
Date: Fri, 18 Mar 2011 10:59:45 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 05/15] documentation/poky-ref-manual/poky-ref-manual.xml: Updated title page
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
X-List-Received-Date: Fri, 18 Mar 2011 16:59:25 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Updated the title page by adding a new revision entry for the manual.
Not sure of the current revision numbering scheme so I reset it to
Revision 1.0 to match that of the release.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/poky-ref-manual.xml |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/documentation/poky-ref-manual/poky-ref-manual.xml b/documentation/poky-ref-manual/poky-ref-manual.xml
index b4d7757..ed720c4 100644
--- a/documentation/poky-ref-manual/poky-ref-manual.xml
+++ b/documentation/poky-ref-manual/poky-ref-manual.xml
@@ -47,6 +47,11 @@
                 <date>24 November 2010</date>
                 <revremark>Poky Master Documentation</revremark>
             </revision>
+            <revision>
+                <revnumber>1.0</revnumber>
+                <date>6 April 2011</date>
+                <revremark>Poky documentation releasing with the Yocto Project 1.0 Release.</revremark>
+            </revision>
         </revhistory>
 
     <copyright>
-- 
1.7.1


