Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B8A34C811CC
	for <poky@yoctoproject.org>; Fri,  3 Dec 2010 02:43:32 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Dec 2010 00:43:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,292,1288594800"; d="scan'208";a="632708350"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga002.fm.intel.com with ESMTP; 03 Dec 2010 00:43:31 -0800
Message-Id: <e2e43e9d37df05bb8087156936d85f8ec180d896.1291366246.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291366245.git.dongxiao.xu@intel.com>
References: <cover.1291366245.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Fri, 3 Dec 2010 14:26:43 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 08/19] task-poky-tools: update LIC_FILES_CHKSUM info
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
X-List-Received-Date: Fri, 03 Dec 2010 08:43:32 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-core/tasks/task-poky-tools.bb |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-core/tasks/task-poky-tools.bb b/meta/recipes-core/tasks/task-poky-tools.bb
index 225f3f8..f7a4133 100644
--- a/meta/recipes-core/tasks/task-poky-tools.bb
+++ b/meta/recipes-core/tasks/task-poky-tools.bb
@@ -4,6 +4,8 @@
 
 DESCRIPTION = "Tools tasks for Poky"
 LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
+                    file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 PR = "r8"
 
 PACKAGES = "\
-- 
1.6.3.3


