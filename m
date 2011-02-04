Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 592494C800C0
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 21:38:25 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Feb 2011 19:38:25 -0800
Message-Id: <b9dded$hrjbnk@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,424,1291622400"; d="scan'208";a="599371514"
Received: from unknown (HELO localhost) ([10.255.14.151])
	by orsmga002.jf.intel.com with ESMTP; 03 Feb 2011 19:38:24 -0800
Old-Date: Thu, 3 Feb 2011 20:09:18 -0600
Date: Thu, 03 Feb 2011 21:38:22 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 2/2] meta-sugarbay: switch from standard to standard/common-pc-64
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
X-List-Received-Date: Fri, 04 Feb 2011 03:38:25 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

To match the branch in linux-yocto.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend
index 07fd27b..fe160c0 100644
--- a/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend
+++ b/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -1,5 +1,5 @@
 FILESEXTRAPATHS := "${THISDIR}/${PN}"
 
 COMPATIBLE_MACHINE_sugarbay = "sugarbay"
-KMACHINE_sugarbay  = "yocto/standard/sugarbay"
+KMACHINE_sugarbay  = "yocto/standard/common-pc-64/sugarbay"
 
-- 
1.7.0.4


