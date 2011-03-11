Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6F3CA4C80AAB
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 20:21:11 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Mar 2011 18:21:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,300,1297065600"; d="scan'208";a="718929651"
Received: from unknown (HELO localhost) ([10.255.17.57])
	by orsmga001.jf.intel.com with ESMTP; 10 Mar 2011 18:21:07 -0800
Message-Id: <2e6a51e2b8814a96eb1f5948d894963d311a0f9a.1299809859.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299809859.git.sgw@linux.intel.com>
References: <cover.1299809859.git.sgw@linux.intel.com>
Old-Date: Thu, 10 Mar 2011 17:11:06 -0800
Date: Thu, 10 Mar 2011 18:21:05 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 12/12] poky-image-basic: add ssh-server to IMAGE_FEATURES
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
X-List-Received-Date: Fri, 11 Mar 2011 02:21:11 -0000

From: Scott Garman <scott.a.garman@intel.com>

And set the default IMAGE_SSH_PROVIDER to openssh.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-extended/images/poky-image-basic.bb |    4 +++-
 meta/recipes-extended/tasks/task-poky-basic.bb   |    1 -
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-extended/images/poky-image-basic.bb b/meta/recipes-extended/images/poky-image-basic.bb
index 537a6e4..cf9dd77 100644
--- a/meta/recipes-extended/images/poky-image-basic.bb
+++ b/meta/recipes-extended/images/poky-image-basic.bb
@@ -1,4 +1,6 @@
-IMAGE_FEATURES += "apps-console-core "
+IMAGE_SSH_PROVIDER = "openssh"
+
+IMAGE_FEATURES += "apps-console-core ssh-server"
 
 IMAGE_INSTALL = "\
     ${POKY_BASE_INSTALL} \
diff --git a/meta/recipes-extended/tasks/task-poky-basic.bb b/meta/recipes-extended/tasks/task-poky-basic.bb
index 3d313f0..0133bad 100644
--- a/meta/recipes-extended/tasks/task-poky-basic.bb
+++ b/meta/recipes-extended/tasks/task-poky-basic.bb
@@ -99,7 +99,6 @@ RDEPENDS_task-poky-basic-extended = "\
     module-init-tools \
     openssl \
     "
-#    openssh
 
 RDEPENDS_task-poky-dev-utils = "\
     byacc \
-- 
1.7.1.1


