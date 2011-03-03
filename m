Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 817374C80772
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 11:47:36 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 Mar 2011 09:47:36 -0800
Message-Id: <b7da2f$qk2209@fmsmga001.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,259,1297065600"; d="scan'208";a="893454351"
Received: from unknown (HELO localhost) ([10.255.12.145])
	by fmsmga001.fm.intel.com with ESMTP; 03 Mar 2011 09:47:35 -0800
Old-Date: Thu, 3 Mar 2011 11:24:01 -0600
Date: Thu, 03 Mar 2011 11:47:29 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-n450: use linux-yocto-stable
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
X-List-Received-Date: Thu, 03 Mar 2011 17:47:36 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

n450 needs to use linux-yocto-stable instead of linux-wrs.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-kernel/linux/linux-wrs_git.bbappend    |    7 -------
 .../linux/linux-yocto-stable_git.bbappend          |    7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 meta-n450/recipes-kernel/linux/linux-wrs_git.bbappend
 create mode 100644 meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend

diff --git a/meta-n450/recipes-kernel/linux/linux-wrs_git.bbappend b/meta-n450/recipes-kernel/linux/linux-wrs_git.bbappend
deleted file mode 100644
index 3a893f6..0000000
--- a/meta-n450/recipes-kernel/linux/linux-wrs_git.bbappend
+++ /dev/null
@@ -1,7 +0,0 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
-WRMACHINE_n450 = "atom-pc"
-COMPATIBLE_MACHINE_n450 = "n450"
-
-SRCREV="${AUTOREV}"
-# Functionality flags
-#KERNEL_REVISION_CHECKING ?= "t"
diff --git a/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
new file mode 100644
index 0000000..3a893f6
--- /dev/null
+++ b/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
@@ -0,0 +1,7 @@
+FILESEXTRAPATHS := "${THISDIR}/${PN}"
+WRMACHINE_n450 = "atom-pc"
+COMPATIBLE_MACHINE_n450 = "n450"
+
+SRCREV="${AUTOREV}"
+# Functionality flags
+#KERNEL_REVISION_CHECKING ?= "t"
-- 
1.7.0.4


