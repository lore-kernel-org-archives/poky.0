Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3C4C24C80AAB
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 12:15:23 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Mar 2011 10:15:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,248,1297065600"; d="scan'208";a="395851874"
Received: from unknown (HELO localhost) ([10.255.12.134])
	by azsmga001.ch.intel.com with ESMTP; 01 Mar 2011 10:15:22 -0800
Message-Id: <ace70658796d3c9c5aa53244311c26febdf72428.1299002830.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1299002830.git.scott.m.rifenbark@intel.com>
References: <cover.1299002830.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 1 Mar 2011 08:59:13 -0600
Date: Tue, 01 Mar 2011 12:16:12 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 3/3] documentation/bsp-guide/bsp-guide.xml: Updated revision history on title page.
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
X-List-Received-Date: Tue, 01 Mar 2011 18:15:23 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I updated the revision history on the title page to reflect the upcoming
Release 1.0.  I will likely have to change this as we get nearer the
release so I can be sure of the number and also add meaning release
remarks to the entry.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp-guide.xml |    7 ++++++-
 1 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/documentation/bsp-guide/bsp-guide.xml b/documentation/bsp-guide/bsp-guide.xml
index 4361a2c..2862e2e 100644
--- a/documentation/bsp-guide/bsp-guide.xml
+++ b/documentation/bsp-guide/bsp-guide.xml
@@ -29,9 +29,14 @@
 
         <revhistory>
             <revision>
+                <revnumber>1.0</revnumber>
+                <date>1 April 2011</date>
+                <revremark>This release represents the initial full release for Yocto Project.</revremark>
+            </revision>
+            <revision>
                 <revnumber>0.9</revnumber>
                 <date>27 October 2010</date>
-                <revremark>Beta Draft</revremark>
+                <revremark>This release represents the Yocto Project Beta Draft.</revremark>
             </revision>
         </revhistory>
 
-- 
1.7.1


