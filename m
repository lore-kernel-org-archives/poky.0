Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 248C14C80AAD
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 14:52:22 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Apr 2011 12:52:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,275,1301900400"; d="scan'208";a="684899383"
Received: from unknown (HELO localhost) ([10.255.13.11])
	by fmsmga002.fm.intel.com with ESMTP; 27 Apr 2011 12:52:21 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 27 Apr 2011 12:52:00 -0700
Message-Id: <53f191ae9c9f034a2f90ed01d505ca7250f17743.1303933909.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <1303933921-10310-1-git-send-email-dvhart@linux.intel.com>
References: <1303933921-10310-1-git-send-email-dvhart@linux.intel.com>
In-Reply-To: <cecde52a0e163439e971f00c9c55aa38335ad3b6.1303933909.git.dvhart@linux.intel.com>
References: <cecde52a0e163439e971f00c9c55aa38335ad3b6.1303933909.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 2/3] n450: add linux_yocto (2.6.37) bbappend
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
X-List-Received-Date: Wed, 27 Apr 2011 19:52:22 -0000

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |   10 ++++++++++
 1 files changed, 10 insertions(+), 0 deletions(-)
 create mode 100644 meta-n450/recipes-kernel/linux/linux-yocto_git.bbappend

diff --git a/meta-n450/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto_git.bbappend
new file mode 100644
index 0000000..79706d5
--- /dev/null
+++ b/meta-n450/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -0,0 +1,10 @@
+FILESEXTRAPATHS := "${THISDIR}/${PN}"
+KMACHINE_n450 = "yocto/standard/common-pc/atom-pc"
+COMPATIBLE_MACHINE_n450 = "n450"
+
+# The n450 is a single core hypterthreaded CPU
+KERNEL_FEATURES_append_n450 += " cfg/smp.scc"
+
+# We use the atom-pc machine SRCREV and the default meta SRCREV
+#SRCREV_machine_pn-linux-yocto-stable_n450 = ""
+#SRCREV_meta_pn-linux-yocto-stable_n450 ?= ""
-- 
1.7.1


