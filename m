Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E9EDB4C810EE
	for <poky@yoctoproject.org>; Fri,  3 Dec 2010 02:43:30 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Dec 2010 00:43:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,292,1288594800"; d="scan'208";a="580179390"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by orsmga002.jf.intel.com with ESMTP; 03 Dec 2010 00:43:30 -0800
Message-Id: <1e197af000b9d0405025e2853d76c858c62ac1cd.1291366245.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291366245.git.dongxiao.xu@intel.com>
References: <cover.1291366245.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Fri, 3 Dec 2010 14:25:57 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 07/19] task-base: update LIC_FILES_CHKSUM info
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
X-List-Received-Date: Fri, 03 Dec 2010 08:43:31 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-core/tasks/task-base.bb |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-core/tasks/task-base.bb b/meta/recipes-core/tasks/task-base.bb
index af0e9d9..d613bb2 100644
--- a/meta/recipes-core/tasks/task-base.bb
+++ b/meta/recipes-core/tasks/task-base.bb
@@ -1,5 +1,7 @@
 DESCRIPTION = "Merge machine and distro options to create a basic machine task/package"
 LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
+                    file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 PR = "r69"
 
 inherit task
-- 
1.6.3.3


