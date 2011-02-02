Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id D68594C800AA
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 20:05:42 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Feb 2011 18:05:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,412,1291622400"; d="scan'208";a="382984000"
Received: from unknown (HELO localhost) ([10.255.14.97])
	by azsmga001.ch.intel.com with ESMTP; 01 Feb 2011 18:05:41 -0800
Message-Id: <421b8f043b105a2981260d0937aa445ace47bb19.1296594728.git.scott@scott-desktop.(none)>
In-Reply-To: <cover.1296594728.git.scott@scott-desktop.(none)>
References: <cover.1296594728.git.scott@scott-desktop.(none)>
Old-Date: Tue, 1 Feb 2011 15:09:12 -0600
Date: Tue, 01 Feb 2011 20:05:54 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 1/1] documentation/poky-ref-manual/extendpoky.xml: Fixed make problem
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
X-List-Received-Date: Wed, 02 Feb 2011 02:05:43 -0000

From: Scott Rifenbark <scott@scott-desktop.(none)>

Discovered that the manual was not making correctly due to a stray
</literallayout> statement.  I removed this statement and the manual
now builds.

Signed-off-by: Scott Rifenbark <scott@scott-desktop.(none)>
---
 documentation/poky-ref-manual/extendpoky.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/poky-ref-manual/extendpoky.xml b/documentation/poky-ref-manual/extendpoky.xml
index 4fd818e..182b36d 100644
--- a/documentation/poky-ref-manual/extendpoky.xml
+++ b/documentation/poky-ref-manual/extendpoky.xml
@@ -694,7 +694,7 @@ BBFILE_PRIORITY_emenlow = "6"
                 .inc file must set INC_PR (initially to "r0"), and all recipes referring to it should set PR to 
                 "$(INC_PR).0" initially, incrementing the last number when the recipe is changed. If the
                 .inc file is changed then its INC_PR should be incremented.
-            </literallayout>
+            </para>
             <para> 
                 When upgrading the version of a package, assuming the <glossterm><link 
                 linkend='var-PV'>PV</link></glossterm> changes, the PR variable should be reset to "r0"
-- 
1.7.1


