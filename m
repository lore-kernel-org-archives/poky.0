Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 97C764C805A8
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 04:58:44 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Mar 2011 02:58:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,198,1299484800"; d="scan'208";a="404009543"
Received: from unknown (HELO localhost) ([10.255.12.145])
	by azsmga001.ch.intel.com with ESMTP; 17 Mar 2011 02:58:44 -0700
Message-Id: <a3a29e4a75435d4ed2e7a3260c5057f1557e1775.1300355683.git.sgw@linux.intel.com>
In-Reply-To: <cover.1300355683.git.sgw@linux.intel.com>
References: <cover.1300355683.git.sgw@linux.intel.com>
Old-Date: Wed, 16 Mar 2011 15:10:47 -0700
Date: Thu, 17 Mar 2011  2:58:43 -0700
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 2/7] extended tasks: move binutils from basic to lsb
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
X-List-Received-Date: Thu, 17 Mar 2011 09:58:44 -0000

From: Saul Wold <sgw@linux.intel.com>

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta/recipes-extended/tasks/task-poky-basic.bb |    2 --
 meta/recipes-extended/tasks/task-poky-lsb.bb   |    3 +--
 2 files changed, 1 insertions(+), 4 deletions(-)

diff --git a/meta/recipes-extended/tasks/task-poky-basic.bb b/meta/recipes-extended/tasks/task-poky-basic.bb
index 3d313f0..80eac0f 100644
--- a/meta/recipes-extended/tasks/task-poky-basic.bb
+++ b/meta/recipes-extended/tasks/task-poky-basic.bb
@@ -99,7 +99,6 @@ RDEPENDS_task-poky-basic-extended = "\
     module-init-tools \
     openssl \
     "
-#    openssh
 
 RDEPENDS_task-poky-dev-utils = "\
     byacc \
@@ -107,7 +106,6 @@ RDEPENDS_task-poky-dev-utils = "\
     m4 \
     make \
     patch \
-    binutils \
     "
 
 RDEPENDS_task-poky-initscripts = "\
diff --git a/meta/recipes-extended/tasks/task-poky-lsb.bb b/meta/recipes-extended/tasks/task-poky-lsb.bb
index 5e3397e..7b3c41a 100644
--- a/meta/recipes-extended/tasks/task-poky-lsb.bb
+++ b/meta/recipes-extended/tasks/task-poky-lsb.bb
@@ -52,9 +52,8 @@ RDEPENDS_task-poky-lsb = "\
     task-poky-lsb-command-add \
     "
 
-#
-# GPLv2 Should List
 RDEPENDS_task-poky-sys-extended = "\
+    binutils \
     chkconfig \
     curl \
     dhcp-client \
-- 
1.7.1.1


