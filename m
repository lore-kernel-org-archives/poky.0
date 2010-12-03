Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5A8B04C810AC
	for <poky@yoctoproject.org>; Fri,  3 Dec 2010 02:43:45 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 03 Dec 2010 00:43:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,292,1288594800"; d="scan'208";a="632708400"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga002.fm.intel.com with ESMTP; 03 Dec 2010 00:43:43 -0800
Message-Id: <068fba98b3e9ad723392e1e3be1623227b00862e.1291366246.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291366245.git.dongxiao.xu@intel.com>
References: <cover.1291366245.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Fri, 3 Dec 2010 14:32:47 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 13/19] task-poky-apps-x11-pimlico: update LIC_FILES_CHKSUM info
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
X-List-Received-Date: Fri, 03 Dec 2010 08:43:45 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../tasks/task-poky-apps-x11-pimlico.bb            |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-sato/tasks/task-poky-apps-x11-pimlico.bb b/meta/recipes-sato/tasks/task-poky-apps-x11-pimlico.bb
index 651d481..f6c0ec0 100644
--- a/meta/recipes-sato/tasks/task-poky-apps-x11-pimlico.bb
+++ b/meta/recipes-sato/tasks/task-poky-apps-x11-pimlico.bb
@@ -4,6 +4,8 @@
 
 DESCRIPTION = "X11 Pimlico Appications List"
 LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
+                    file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 PR = "r27"
 
 PACKAGES = "\
-- 
1.6.3.3


