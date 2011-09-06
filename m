Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB3CFE01297
	for <poky@yoctoproject.org>; Tue,  6 Sep 2011 09:46:50 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 06 Sep 2011 09:46:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,339,1312182000"; d="scan'208";a="14476917"
Received: from unknown (HELO localhost) ([10.255.14.186])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Sep 2011 09:46:49 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue,  6 Sep 2011 09:46:49 -0700
Message-Id: <8d36ec1a76e82a48d220fb8efeb57dae5b3d729d.1315327540.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1315327540.git.dvhart@linux.intel.com>
References: <cover.1315327540.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/1] linux-yocto: remove emenlow from meta-yocto bbappend
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
X-List-Received-Date: Tue, 06 Sep 2011 16:46:51 -0000

The emenlow BSP is now contained in the meta-intel layer.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
CC: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 1ae9c12..4f68bc1 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -4,7 +4,6 @@ KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
 KMACHINE_beagleboard = "yocto/standard/beagleboard"
 
 
-SRCREV_machine_emenlow ?= "9948ca260f316afa99c0d87d8ddb2736bf1d3709"
 SRCREV_machine_atom-pc ?= "1e18e44adbe79b846e382370eb29bc4b8cd5a1a0"
 SRCREV_machine_routerstationpro ?= "ed0e03a8b04388a982141919da805392b7ca1c91"
 SRCREV_machine_mpc8315e-rdb ?= "58ffdb8000e34d2ba7c3ef278b26680b0886e8b5"
-- 
1.7.6


