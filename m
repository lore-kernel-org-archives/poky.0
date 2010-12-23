Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B7AE4C811E5
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:27:03 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 Dec 2010 06:27:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="690189084"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by orsmga001.jf.intel.com with ESMTP; 23 Dec 2010 06:27:01 -0800
Message-Id: <a928816a08a7d918e16144fbe44a1d661e2f3439.1293114004.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293114003.git.sgw@linux.intel.com>
References: <cover.1293114003.git.sgw@linux.intel.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Old-Date: Mon, 20 Dec 2010 14:51:29 -0500
Date: Thu, 23 Dec 2010  6:27:01 -0800
To: poky@yoctoproject.org
Subject: [PATCH 03/28] linux-yocto-stable: fix qemux86 branch name
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
X-List-Received-Date: Thu, 23 Dec 2010 14:27:03 -0000

The mapping of qemu to kernel branch name for the stable
kernel had a small leak from the devel kernel. Nothing
broke since qemux86 prefers the 2.6.37 kernel and this was
hidden.

This fixes the mapping for anyone who does want a 2.6.34 based
qemux86 kernel.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto-stable_git.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb b/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
index 85b67f4..2f6eb2d 100644
--- a/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
+++ b/meta/recipes-kernel/linux/linux-yocto-stable_git.bb
@@ -1,7 +1,7 @@
 inherit kernel
 require linux-yocto.inc
 
-KMACHINE_qemux86  = "common_pc/base"
+KMACHINE_qemux86  = "common_pc"
 KMACHINE_qemux86-64  = "common_pc_64"
 KMACHINE_qemuppc  = "qemu_ppc32"
 KMACHINE_qemumips = "mti_malta32_be"
-- 
1.7.2.3


