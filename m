Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 45C374C804D9
	for <poky@yoctoproject.org>; Fri, 11 Mar 2011 13:22:13 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Mar 2011 11:21:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,304,1297065600"; d="scan'208";a="666386548"
Received: from unknown (HELO localhost) ([10.255.12.198])
	by fmsmga002.fm.intel.com with ESMTP; 11 Mar 2011 11:21:58 -0800
Message-Id: <232c1be664075eeceb2b123ef91d2dd71a1eb7a6.1299871227.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1299871227.git.dvhart@linux.intel.com>
References: <cover.1299871227.git.dvhart@linux.intel.com>
Old-Date: Fri, 11 Mar 2011 11:19:56 -0800
Date: Fri, 11 Mar 2011 11:21:55 -0800
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/2] n450: use KMACHINE instead of WRMACHINE (fix boot failure)
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

Fixes [YOCTO #837]

The n450 linux-yocto-stable bbappend was using WRMACHINE instead of KMACHINE.
This resulted in KMACHINE being set to UNDEFINED by the linux-yocto.inc which
resulted in bulding the common_pc-standard branch instead of the
atom-pc-standard branch. This build a kernel without vfat, blk loop, and the
requisite codepages.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
---
 .../linux/linux-yocto-stable_git.bbappend          |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
index 3a893f6..6a0cfd2 100644
--- a/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
+++ b/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
@@ -1,5 +1,5 @@
 FILESEXTRAPATHS := "${THISDIR}/${PN}"
-WRMACHINE_n450 = "atom-pc"
+KMACHINE_n450 = "atom-pc"
 COMPATIBLE_MACHINE_n450 = "n450"
 
 SRCREV="${AUTOREV}"
-- 
1.7.1


