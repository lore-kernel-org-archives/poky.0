Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4010A4C811FA
	for <poky@yoctoproject.org>; Fri,  3 Dec 2010 02:43:50 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 03 Dec 2010 00:43:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,292,1288594800"; d="scan'208";a="863966370"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga001.fm.intel.com with ESMTP; 03 Dec 2010 00:43:49 -0800
Message-Id: <c830e277b92df36a2e5bf4803fd8b3702747dd45.1291366246.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291366245.git.dongxiao.xu@intel.com>
References: <cover.1291366245.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Fri, 3 Dec 2010 14:37:04 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 17/19] task-poky-nfs: update LIC_FILES_CHKSUM info
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
X-List-Received-Date: Fri, 03 Dec 2010 08:43:50 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-core/tasks/task-poky-nfs.bb |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-core/tasks/task-poky-nfs.bb b/meta/recipes-core/tasks/task-poky-nfs.bb
index b929bbe..44ef973 100644
--- a/meta/recipes-core/tasks/task-poky-nfs.bb
+++ b/meta/recipes-core/tasks/task-poky-nfs.bb
@@ -4,6 +4,8 @@
 
 DESCRIPTION = "NFS tasks for Poky"
 LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
+                    file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 PR = "r0"
 
 PACKAGES = "\
@@ -21,4 +23,4 @@ RDEPENDS_task-poky-nfs-server = "\
 GLIBC_DEPENDENCIES = "glibc-utils"
 
 RRECOMMENDS_task-poky-nfs-server_append_linux = "${GLIBC_DEPENDENCIES}"
-RRECOMMENDS_task-poky-nfs-server_append_linux-gnueabi = "${GLIBC_DEPENDENCIES}"
\ No newline at end of file
+RRECOMMENDS_task-poky-nfs-server_append_linux-gnueabi = "${GLIBC_DEPENDENCIES}"
-- 
1.6.3.3


