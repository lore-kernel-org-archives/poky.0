Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id CC72E4C80A1D
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 14:52:20 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Apr 2011 12:52:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,275,1301900400"; d="scan'208";a="739317901"
Received: from unknown (HELO localhost) ([10.255.13.11])
	by orsmga001.jf.intel.com with ESMTP; 27 Apr 2011 12:52:20 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 27 Apr 2011 12:51:59 -0700
Message-Id: <cecde52a0e163439e971f00c9c55aa38335ad3b6.1303933909.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <1303933921-10310-1-git-send-email-dvhart@linux.intel.com>
References: <1303933921-10310-1-git-send-email-dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/3] n450: enable SMP and SCHED_SMT
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
X-List-Received-Date: Wed, 27 Apr 2011 19:52:21 -0000

Fixes [YOCTO 1010]

The Atom N450 CPU is single core with hyperthreading. Update the kernel recipe
to build with CONFIG_SMP and CONFIG_SCHED_SMT.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../linux/linux-yocto-stable_git.bbappend          |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
index e7c2df8..e69c644 100644
--- a/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
+++ b/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
@@ -2,6 +2,9 @@ FILESEXTRAPATHS := "${THISDIR}/${PN}"
 KMACHINE_n450 = "atom-pc"
 COMPATIBLE_MACHINE_n450 = "n450"
 
+# The n450 is a single core hypterthreaded CPU
+KERNEL_FEATURES_append_n450 += " cfg/smp.scc"
+
 # We use the atom-pc machine SRCREV and the default meta SRCREV
 #SRCREV_machine_pn-linux-yocto-stable_n450 = ""
 #SRCREV_meta_pn-linux-yocto-stable_n450 ?= ""
-- 
1.7.1


