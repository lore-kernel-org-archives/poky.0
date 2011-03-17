Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 89C3B4C80AB0
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 04:58:45 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Mar 2011 02:58:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,198,1299484800"; d="scan'208";a="721126356"
Received: from unknown (HELO localhost) ([10.255.12.145])
	by orsmga001.jf.intel.com with ESMTP; 17 Mar 2011 02:58:44 -0700
Message-Id: <6daf1e090be87839b81c887d6eb7e69985fa3e8f.1300355683.git.sgw@linux.intel.com>
In-Reply-To: <cover.1300355683.git.sgw@linux.intel.com>
References: <cover.1300355683.git.sgw@linux.intel.com>
Old-Date: Thu, 17 Mar 2011 00:47:06 -0700
Date: Thu, 17 Mar 2011  2:58:44 -0700
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Saul Wold <sgw@linux.intel.com>
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
X-List-Received-Date: Thu, 17 Mar 2011 09:58:45 -0000

From: Saul Wold <sgw@linux.intel.com>

Removing POKY_BASE_INSTALL and replacing it with task-poky-boot,
effectively removes task-poky-extended which was pulling unwanted
recipes.

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta/recipes-extended/images/poky-image-basic.bb |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/images/poky-image-basic.bb b/meta/recipes-extended/images/poky-image-basic.bb
index 7e4596e..76d5dc2 100644
--- a/meta/recipes-extended/images/poky-image-basic.bb
+++ b/meta/recipes-extended/images/poky-image-basic.bb
@@ -1,8 +1,10 @@
 IMAGE_FEATURES += "apps-console-core ssh-server-openssh"
 
 IMAGE_INSTALL = "\
-    ${POKY_BASE_INSTALL} \
+    task-poky-boot \
     task-poky-basic \
     "
 
+#    ${POKY_BASE_INSTALL} 
+
 inherit poky-image
-- 
1.7.1.1


