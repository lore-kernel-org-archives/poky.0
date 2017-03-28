Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98040E00B01; Mon, 27 Mar 2017 16:12:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00, DATE_IN_FUTURE_06_12,
	DKIM_SIGNED, RCVD_IN_DNSWL_HI,
	T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 1.9 DATE_IN_FUTURE_06_12 Date: is 6 to 12 hours after
	Received: date
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F1B8E00995
	for <poky@yoctoproject.org>; Mon, 27 Mar 2017 16:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490656336; x=1522192336;
	h=from:to:cc:subject:date:message-id;
	bh=S6Ia4ViQjT1kCT9JHi1ST6ckg66TSudInNKFrZSmGWE=;
	b=IGqXdq904lcFMRePoU3MXyfv90AFwHtXqulKUr4ATtqAcVQLqUMfJO/Q
	xtSfQhfyZIctW2DpQiulgPbRRx8vHQ==;
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Mar 2017 16:12:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,234,1486454400"; d="scan'208";a="71099490"
Received: from yctb05.ostc.intel.com ([10.54.69.59])
	by orsmga004.jf.intel.com with ESMTP; 27 Mar 2017 16:12:14 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Mon, 27 Mar 2017 23:11:52 -0700
Message-Id: <20170328061152.31318-1-leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.10.2
Subject: [PATCH] [morty] recipes-kernel: Skip kernel version check on kernel templates
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
X-List-Received-Date: Mon, 27 Mar 2017 23:12:19 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

Currently, SRCREV is set to AUTOREV, causing mismatch between PV and the kernel
version shown in the makefile (see below to see the bitbake log). The solution
is to skip this check, suggesting to remove it once SRCREV is locked.

ERROR: linux-yocto-4.10+gitAUTOINC+01f18cba44_53be19cad6-r0.1 do_kernel_version_sanity_check: Package Version (4.10+gitAUTOINC+01f18cba44_53be19cad6) does not match of kernel being built (4.10.5). Please update the PV variable to match the kernel source or set KERNEL_VERSION_SANITY_SKIP="1" in your recipe.
ERROR: linux-yocto-4.10+gitAUTOINC+01f18cba44_53be19cad6-r0.1 do_kernel_version_sanity_check: Function failed: do_kernel_version_sanity_check (log file is located at /home/lsandov1/poky2/build/tmp/work/myqemu-poky-linux/linux-yocto/4.10+gitAUTOINC+01f18cba44_53be19cad6-r0.1/temp/log.do_kernel_version_sanity_check.26904)
ERROR: Logfile of failure stored in: /home/lsandov1/poky2/build/tmp/work/myqemu-poky-linux/linux-yocto/4.10+gitAUTOINC+01f18cba44_53be19cad6-r0.1/temp/log.do_kernel_version_sanity_check.26904
ERROR: Task (/home/lsandov1/poky2/meta/recipes-kernel/linux/linux-yocto_4.10.bb:do_kernel_version_sanity_check) failed with exit code '1

[YOCTO #11064]

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend       | 2 ++
 .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend       | 2 ++
 .../arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend       | 2 ++
 .../target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend     | 4 +++-
 .../target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend     | 2 ++
 .../target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend     | 2 ++
 .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend      | 2 ++
 .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend      | 2 ++
 .../arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend      | 2 ++
 .../target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend    | 2 ++
 .../target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend    | 2 ++
 .../target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend    | 2 ++
 .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend      | 2 ++
 .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend      | 2 ++
 .../arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend      | 2 ++
 .../target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend    | 2 ++
 .../target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend    | 2 ++
 .../target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend    | 2 ++
 .../arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend    | 2 ++
 .../arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend    | 2 ++
 .../arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend    | 2 ++
 .../target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend  | 2 ++
 .../target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend  | 2 ++
 .../target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend  | 2 ++
 .../arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend   | 2 ++
 .../arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend   | 2 ++
 .../arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend   | 2 ++
 .../target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend | 2 ++
 .../target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend | 2 ++
 .../target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend | 2 ++
 .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend      | 2 ++
 .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend      | 2 ++
 .../arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend      | 2 ++
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend    | 2 ++
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend    | 2 ++
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend    | 2 ++
 .../arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend    | 2 ++
 .../arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend    | 2 ++
 .../arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend    | 2 ++
 .../target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend  | 2 ++
 .../target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend  | 2 ++
 .../target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend  | 2 ++
 42 files changed, 85 insertions(+), 1 deletion(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
index 0a47a4e..d15a178 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
@@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
index 815c77b..070bd87 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
@@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
index 5fb45d9..c391322 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
@@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 2d3d073..4e7d7cb 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -29,4 +29,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "4.1"
\ No newline at end of file
+#LINUX_VERSION = "4.1"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend
index b88a06c..56e8ad3 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend
index 7c0df8b..59752a9 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
index 0a47a4e..d15a178 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
@@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
index 815c77b..070bd87 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
@@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
index 5fb45d9..c391322 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
@@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend
index aecdff0..5ed144b 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend
index dd4de31..ab644bd 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend
index 137d8fa..a535aea 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
index 0a47a4e..d15a178 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
@@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
index 815c77b..070bd87 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
@@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
index 5fb45d9..c391322 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
@@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 1e99a04..4e7d7cb 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend
index b88a06c..56e8ad3 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend
index 7c0df8b..59752a9 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
index 0a47a4e..d15a178 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
@@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
index 815c77b..070bd87 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
@@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
index 5fb45d9..c391322 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
@@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 01a046c..802e5f4 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 57c90fa..dbb0fd5 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend
index accf9d5..c2eb40d 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
index 0a47a4e..d15a178 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
@@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
index 815c77b..070bd87 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
@@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
index 5fb45d9..c391322 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
@@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 1e99a04..4e7d7cb 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend
index b88a06c..56e8ad3 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend
index 7c0df8b..59752a9 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
index 14ee16f..81392ce 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
@@ -60,3 +60,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
index e256e08..a73b1aa 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
@@ -60,3 +60,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
index c1635d6..7d40671 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
@@ -60,3 +60,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
index fce67b4..a9fd9ec 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -59,3 +59,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 4097932..cdee773 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -59,3 +59,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
index e8c3fc8..24c2880 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -59,3 +59,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
index 0a47a4e..d15a178 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
@@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
index 815c77b..070bd87 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
@@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
index 5fb45d9..c391322 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
@@ -31,3 +31,5 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 1e99a04..4e7d7cb 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.1"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend
index b88a06c..56e8ad3 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.4"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend
index 7c0df8b..59752a9 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -30,3 +30,5 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
 #LINUX_VERSION = "4.8"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
-- 
2.10.2


