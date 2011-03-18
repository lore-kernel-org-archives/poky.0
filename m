Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9B23C4C804CA
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 11:24:16 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 18 Mar 2011 09:24:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,205,1299484800"; d="scan'208";a="668756702"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga002.fm.intel.com with ESMTP; 18 Mar 2011 09:24:16 -0700
Message-Id: <d8a31a078112e103401198ac83b1e520908b57eb.1300465259.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1300465259.git.nitin.a.kamble@intel.com>
References: <cover.1300465259.git.nitin.a.kamble@intel.com>
Old-Date: Thu, 17 Mar 2011 00:47:06 -0700
Date: Fri, 18 Mar 2011  9:24:16 -0700
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 2/7] poky-image-basic: remove POKY_BASE_INSTALL
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
X-List-Received-Date: Fri, 18 Mar 2011 16:24:16 -0000

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


