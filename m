Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C07484C811DF
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:23:59 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="689034102"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga001.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
Message-Id: <adc060e3f89bf17700a4bc288bdb4e9237916d0c.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Tue, 14 Dec 2010 17:08:07 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 05/29] documentation/bsp-guide/bsp.xml: Created better BSP example base names
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
X-List-Received-Date: Mon, 20 Dec 2010 20:23:59 -0000

Lowered the "E" for the "meta-emenlow" BSP.
Removed the "oaktrail" one, which is an Intel code name and replaced
it with "beagleboard", which is a non-Intel board.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 321965a..10fff0b 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -68,9 +68,9 @@
                 "bsp_name" is a placeholder for the machine or platform name.
                 Here are some example base directory names:
                 <literallayout class='monospaced'>
-     meta-Emenlow
+     meta-emenlow
      meta-intel_n450
-     meta-oaktrail
+     meta-beagleboard
                 </literallayout>
             </para>
 
-- 
1.7.0.4


