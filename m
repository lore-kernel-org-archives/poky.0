Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 051A44C811EE
	for <poky@yoctoproject.org>; Fri,  3 Dec 2010 02:43:45 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 Dec 2010 00:43:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,292,1288594800"; d="scan'208";a="356532766"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by azsmga001.ch.intel.com with ESMTP; 03 Dec 2010 00:43:44 -0800
Message-Id: <37530a2f4d9fc7527b7294ce0f8b169e57f83361.1291366246.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291366245.git.dongxiao.xu@intel.com>
References: <cover.1291366245.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Fri, 3 Dec 2010 14:33:18 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 14/19] task-poky-standalone-sdk-target: update LIC_FILES_CHKSUM info
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
X-List-Received-Date: Fri, 03 Dec 2010 08:43:46 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../tasks/task-poky-standalone-sdk-target.bb       |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-core/tasks/task-poky-standalone-sdk-target.bb b/meta/recipes-core/tasks/task-poky-standalone-sdk-target.bb
index 4aa3188..4dde5b4 100644
--- a/meta/recipes-core/tasks/task-poky-standalone-sdk-target.bb
+++ b/meta/recipes-core/tasks/task-poky-standalone-sdk-target.bb
@@ -1,6 +1,8 @@
 DESCRIPTION = "Target packages for the standalone SDK"
 PR = "r6"
 LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
+                    file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 ALLOW_EMPTY = "1"
 
 PACKAGES = "${PN} ${PN}-dbg"
-- 
1.6.3.3


