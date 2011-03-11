Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8C80E4C804D9
	for <poky@yoctoproject.org>; Fri, 11 Mar 2011 13:22:13 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 11 Mar 2011 11:21:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,304,1297065600"; d="scan'208";a="401368972"
Received: from unknown (HELO localhost) ([10.255.12.198])
	by azsmga001.ch.intel.com with ESMTP; 11 Mar 2011 11:21:59 -0800
Message-Id: <4bbfc4f08b0e906ba4182f0ad2baad77a5938db9.1299871227.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1299871227.git.dvhart@linux.intel.com>
References: <cover.1299871227.git.dvhart@linux.intel.com>
Old-Date: Fri, 11 Mar 2011 11:19:10 -0800
Date: Fri, 11 Mar 2011 11:21:56 -0800
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 2/2] n450: Default to atom-pc SRCREVs for linux-yocto-stable
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
X-List-Received-Date: Fri, 11 Mar 2011 19:22:13 -0000

From: Darren Hart <dvhart@linux.intel.com>

AUTOREV should only be used for local development and that can be set using
the meta-extras/meta-kernel-dev layer. Comment the subtle aspect of defaulting
to the atom-pc SRCREVs due to the shared KMACHINE.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
---
 .../linux/linux-yocto-stable_git.bbappend          |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
index 6a0cfd2..e7c2df8 100644
--- a/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
+++ b/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
@@ -2,6 +2,6 @@ FILESEXTRAPATHS := "${THISDIR}/${PN}"
 KMACHINE_n450 = "atom-pc"
 COMPATIBLE_MACHINE_n450 = "n450"
 
-SRCREV="${AUTOREV}"
-# Functionality flags
-#KERNEL_REVISION_CHECKING ?= "t"
+# We use the atom-pc machine SRCREV and the default meta SRCREV
+#SRCREV_machine_pn-linux-yocto-stable_n450 = ""
+#SRCREV_meta_pn-linux-yocto-stable_n450 ?= ""
-- 
1.7.1


