Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9CD994C80A4F
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 17:35:55 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 17 Mar 2011 15:35:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,201,1299484800"; d="scan'208";a="721363092"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga001.jf.intel.com with ESMTP; 17 Mar 2011 15:35:55 -0700
Message-Id: <20ce540c1674d3037821dae2369780f654b2ab6b.1300401018.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1300401016.git.nitin.a.kamble@intel.com>
References: <cover.1300401016.git.nitin.a.kamble@intel.com>
Old-Date: Thu, 17 Mar 2011 00:47:06 -0700
Date: Thu, 17 Mar 2011 15:35:54 -0700
To: poky@yoctoproject.org
CC: 
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 3/7] poky-image-basic: remove POKY_BASE_INSTALL
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
X-List-Received-Date: Thu, 17 Mar 2011 22:35:55 -0000

From: Saul Wold <sgw@linux.intel.com>

Removing POKY_BASE_INSTALL and replacing it with task-poky-boot,
effectively removes task-poky-extended which was pulling unwanted
recipes.

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta/recipes-extended/images/poky-image-basic.bb |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/images/poky-image-basic.bb b/meta/recipes-extended/images/poky-image-basic.bb
index 537a6e4..2886d92 100644
--- a/meta/recipes-extended/images/poky-image-basic.bb
+++ b/meta/recipes-extended/images/poky-image-basic.bb
@@ -1,8 +1,10 @@
 IMAGE_FEATURES += "apps-console-core "
 
 IMAGE_INSTALL = "\
-    ${POKY_BASE_INSTALL} \
+    task-poky-boot \
     task-poky-basic \
     "
 
+#    ${POKY_BASE_INSTALL} 
+
 inherit poky-image
-- 
1.7.3.4


