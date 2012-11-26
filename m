Return-Path: <cristiana.voicu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F7E5E011AC
	for <poky@yoctoproject.org>; Sun, 25 Nov 2012 23:57:21 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 Nov 2012 23:57:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,318,1352102400"; d="scan'208";a="222289556"
Received: from cvoicu-vostro-460 (HELO localhost.localdomain)
	([10.237.105.151])
	by azsmga001.ch.intel.com with ESMTP; 25 Nov 2012 23:57:20 -0800
From: Cristiana Voicu <cristiana.voicu@intel.com>
To: poky@yoctoproject.org
Date: Mon, 26 Nov 2012 10:00:05 +0200
Message-Id: <1353916805-29483-1-git-send-email-cristiana.voicu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] bblayers.conf: Add a new variable to prevent certain layers to be removed
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 26 Nov 2012 07:57:22 -0000

[YOCTO #3372]
Signed-off-by: Cristiana Voicu <cristiana.voicu@intel.com>
---
 meta-yocto/conf/bblayers.conf.sample |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta-yocto/conf/bblayers.conf.sample b/meta-yocto/conf/bblayers.conf.sample
index 98bfd70..7fd755d 100644
--- a/meta-yocto/conf/bblayers.conf.sample
+++ b/meta-yocto/conf/bblayers.conf.sample
@@ -10,3 +10,7 @@ BBLAYERS ?= " \
   ##COREBASE##/meta-yocto \
   ##COREBASE##/meta-yocto-bsp \
   "
+BBLAYERS_NON_REMOVABLE ?= " \
+  ##COREBASE##/meta \
+  ##COREBASE##/meta-yocto \
+  "
-- 
1.7.9.5


