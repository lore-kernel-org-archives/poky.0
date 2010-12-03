Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 84D8A4C81065
	for <poky@yoctoproject.org>; Fri,  3 Dec 2010 02:43:33 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 03 Dec 2010 00:43:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,292,1288594800"; d="scan'208";a="356532723"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by azsmga001.ch.intel.com with ESMTP; 03 Dec 2010 00:43:32 -0800
Message-Id: <d8ea04c2f1db17bad59f32fded3d61035d886cc4.1291366246.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291366245.git.dongxiao.xu@intel.com>
References: <cover.1291366245.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Fri, 3 Dec 2010 14:27:54 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 09/19] task-poky-standalone-gmae-sdk-target: update LIC_FILES_CHKSUM info
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
X-List-Received-Date: Fri, 03 Dec 2010 08:43:33 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../tasks/task-poky-standalone-gmae-sdk-target.bb  |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb b/meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb
index 005d33b..22ee991 100644
--- a/meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb
+++ b/meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb
@@ -4,6 +4,8 @@
 
 DESCRIPTON = "Gnome Mobile And Embedded Software Development Kit for OpenedHand Poky"
 LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
+                    file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 PR = "r11"
 
 ALLOW_EMPTY = "1"
-- 
1.6.3.3


