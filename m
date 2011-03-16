Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id EC4264C806DA
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 11:47:32 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Mar 2011 09:47:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,195,1299484800"; d="scan'208";a="897933082"
Received: from unknown (HELO localhost) ([10.255.12.154])
	by fmsmga001.fm.intel.com with ESMTP; 16 Mar 2011 09:47:28 -0700
Message-Id: <320326c768f81f32777125ba601a5d5a1f399c9a.1300293938.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300293938.git.scott.m.rifenbark@intel.com>
References: <cover.1300293938.git.scott.m.rifenbark@intel.com>
Old-Date: Wed, 16 Mar 2011 10:36:48 -0600
Date: Wed, 16 Mar 2011 10:48:18 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 2/2] documentation/adt-manual/adt-manual.xml: Updated front matter
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
X-List-Received-Date: Wed, 16 Mar 2011 16:47:38 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Changed the revision history box for the manual to state the release
and the release date.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/adt-manual/adt-manual.xml |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/documentation/adt-manual/adt-manual.xml b/documentation/adt-manual/adt-manual.xml
index 9c08d7f..7182d03 100644
--- a/documentation/adt-manual/adt-manual.xml
+++ b/documentation/adt-manual/adt-manual.xml
@@ -30,8 +30,8 @@
         <revhistory>
             <revision>
                 <revnumber>1.0</revnumber>
-                <date>14 March 2011</date>
-                <revremark>Initial Document released with Yocto Project 1.0.</revremark>
+                <date>6 April 2011</date>
+                <revremark>Initial Document released with Yocto Project 1.0 on 6 April 2011.</revremark>
             </revision>
         </revhistory>
 
-- 
1.7.1


