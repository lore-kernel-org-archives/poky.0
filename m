Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4786E4C80AC9
	for <poky@yoctoproject.org>; Tue, 17 May 2011 03:42:17 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 May 2011 01:42:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,224,1304319600"; d="scan'208";a="437365948"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 17 May 2011 01:42:16 -0700
Message-Id: <71602432576bc173d6c4881e9d993b70856c0008.1305622072.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305622072.git.dongxiao.xu@intel.com>
References: <cover.1305622072.git.dongxiao.xu@intel.com>
Old-Date: Tue, 17 May 2011 16:31:47 +0800
Date: Tue, 17 May 2011 16:49:01 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 7/8] mtd-utils: add upstream status for mtd-utils patches
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
X-List-Received-Date: Tue, 17 May 2011 08:42:17 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../add-exclusion-to-mkfs-jffs2-git-2.patch        |    2 ++
 .../add-exclusion-to-mkfs-jffs2-git.patch          |    2 ++
 .../mtd/mtd-utils/fix-ignoreerrors-git.patch       |    2 ++
 .../mtd/mtd-utils/remove-ubi.patch                 |    2 ++
 4 files changed, 8 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/mtd/mtd-utils-1.4.1/add-exclusion-to-mkfs-jffs2-git-2.patch b/meta/recipes-devtools/mtd/mtd-utils-1.4.1/add-exclusion-to-mkfs-jffs2-git-2.patch
index fb776fd..57d6a30 100644
--- a/meta/recipes-devtools/mtd/mtd-utils-1.4.1/add-exclusion-to-mkfs-jffs2-git-2.patch
+++ b/meta/recipes-devtools/mtd/mtd-utils-1.4.1/add-exclusion-to-mkfs-jffs2-git-2.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 --- /tmp/mkfs.jffs2.c	2009-01-11 15:28:41.000000000 +0100
 +++ git/mkfs.jffs2.c	2009-01-11 15:59:29.000000000 +0100
 @@ -100,6 +100,11 @@
diff --git a/meta/recipes-devtools/mtd/mtd-utils/add-exclusion-to-mkfs-jffs2-git.patch b/meta/recipes-devtools/mtd/mtd-utils/add-exclusion-to-mkfs-jffs2-git.patch
index 5555654..60edb8f 100644
--- a/meta/recipes-devtools/mtd/mtd-utils/add-exclusion-to-mkfs-jffs2-git.patch
+++ b/meta/recipes-devtools/mtd/mtd-utils/add-exclusion-to-mkfs-jffs2-git.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 ---
  mkfs.jffs2.c |   44 ++++++++++++++++++++++++++++++++++++++++++--
  1 file changed, 42 insertions(+), 2 deletions(-)
diff --git a/meta/recipes-devtools/mtd/mtd-utils/fix-ignoreerrors-git.patch b/meta/recipes-devtools/mtd/mtd-utils/fix-ignoreerrors-git.patch
index bec60a1..f532a27 100644
--- a/meta/recipes-devtools/mtd/mtd-utils/fix-ignoreerrors-git.patch
+++ b/meta/recipes-devtools/mtd/mtd-utils/fix-ignoreerrors-git.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 ---
  nanddump.c |    4 ++--
  1 file changed, 2 insertions(+), 2 deletions(-)
diff --git a/meta/recipes-devtools/mtd/mtd-utils/remove-ubi.patch b/meta/recipes-devtools/mtd/mtd-utils/remove-ubi.patch
index 4928db0..24a4697 100644
--- a/meta/recipes-devtools/mtd/mtd-utils/remove-ubi.patch
+++ b/meta/recipes-devtools/mtd/mtd-utils/remove-ubi.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 ---
  Makefile |    3 ---
  1 file changed, 3 deletions(-)
-- 
1.7.1


