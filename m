Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DC33E00C22; Tue,  2 Feb 2016 10:53:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00, DATE_IN_PAST_06_12, 
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* 1.5 DATE_IN_PAST_06_12 Date: is 6 to 12 hours before Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DEFDE00C22
	for <poky@yoctoproject.org>; Tue,  2 Feb 2016 10:53:08 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 02 Feb 2016 10:53:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,385,1449561600"; d="scan'208";a="907021111"
Received: from yctb05.ostc.intel.com ([10.54.69.59])
	by fmsmga002.fm.intel.com with ESMTP; 02 Feb 2016 10:53:08 -0800
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Tue,  2 Feb 2016 10:50:50 +0000
Message-Id: <1454410252-32098-3-git-send-email-leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.6.2
In-Reply-To: <1454410252-32098-1-git-send-email-leonardo.sandoval.gonzalez@linux.intel.com>
References: <1454410252-32098-1-git-send-email-leonardo.sandoval.gonzalez@linux.intel.com>
Cc: saul.wold@intel.com
Subject: [PATCH 2/4][jethro] yocto-bsp: Avoid duplication of user patches ({{=machine}}-user-patches.scc)
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
X-List-Received-Date: Tue, 02 Feb 2016 18:53:12 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

On linux-yocto-dev or linux-yocto_X.YY bbappend files, the SRC_URI includes
{{=machine}}-standard.scc, which in turn includes {{=machine}}-user-parches.scc,
thus there is no need to include it again on the corresponding bbappend file.

[YOCTO #8486]

(From meta-yocto rev: 11c93b5dd8c651df478d4810e1b6ff6ad9fa57e8)

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit f674ffa528b06e22d2c70c12f2e17cf308e26173)
Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 .../target/arch/arm/recipes-kernel/linux/linux-yocto-dev.bbappend      | 1 -
 .../target/arch/arm/recipes-kernel/linux/linux-yocto_3.14.bbappend     | 3 +--
 .../target/arch/arm/recipes-kernel/linux/linux-yocto_3.19.bbappend     | 3 +--
 .../target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend      | 1 -
 .../target/arch/i386/recipes-kernel/linux/linux-yocto-dev.bbappend     | 1 -
 .../target/arch/i386/recipes-kernel/linux/linux-yocto_3.14.bbappend    | 3 +--
 .../target/arch/i386/recipes-kernel/linux/linux-yocto_3.19.bbappend    | 3 +--
 .../target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend     | 1 -
 .../target/arch/mips/recipes-kernel/linux/linux-yocto-dev.bbappend     | 1 -
 .../target/arch/mips/recipes-kernel/linux/linux-yocto_3.14.bbappend    | 3 +--
 .../target/arch/mips/recipes-kernel/linux/linux-yocto_3.19.bbappend    | 3 +--
 .../target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend     | 1 -
 .../target/arch/mips64/recipes-kernel/linux/linux-yocto-dev.bbappend   | 1 -
 .../target/arch/mips64/recipes-kernel/linux/linux-yocto_3.14.bbappend  | 3 +--
 .../target/arch/mips64/recipes-kernel/linux/linux-yocto_3.19.bbappend  | 3 +--
 .../target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend   | 1 -
 .../target/arch/powerpc/recipes-kernel/linux/linux-yocto-dev.bbappend  | 1 -
 .../target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.14.bbappend | 1 -
 .../target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.19.bbappend | 1 -
 .../target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend  | 1 -
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend     | 1 -
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto_3.14.bbappend    | 1 -
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto_3.19.bbappend    | 1 -
 .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend     | 1 -
 .../target/arch/x86_64/recipes-kernel/linux/linux-yocto-dev.bbappend   | 1 -
 .../target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.14.bbappend  | 1 -
 .../target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.19.bbappend  | 1 -
 .../target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend   | 1 -
 28 files changed, 8 insertions(+), 36 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-dev.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-dev.bbappend
index 2fa6231..c336007 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -21,6 +21,5 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.14.bbappend
index 1e1cc51..b7603aa 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.14.bbappend
@@ -22,7 +22,6 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
 
@@ -30,4 +29,4 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
 #SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.14"
\ No newline at end of file
+#LINUX_VERSION = "3.14"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.19.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.19.bbappend
index 97e1bb8..729afed 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.19.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.19.bbappend
@@ -22,7 +22,6 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
 
@@ -30,4 +29,4 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
 #SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.19"
\ No newline at end of file
+#LINUX_VERSION = "3.19"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 2ffb7a6..8ba7b5f 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -22,7 +22,6 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
 
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-dev.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-dev.bbappend
index 2fa6231..c336007 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -21,6 +21,5 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.14.bbappend
index fbb49ed..be92ec5 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.14.bbappend
@@ -22,7 +22,6 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
 
@@ -30,4 +29,4 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
 #SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.14"
\ No newline at end of file
+#LINUX_VERSION = "3.14"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.19.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.19.bbappend
index 0c2cb5a..7c5772b 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.19.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.19.bbappend
@@ -22,7 +22,6 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
 
@@ -30,4 +29,4 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
 #SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.19"
\ No newline at end of file
+#LINUX_VERSION = "3.19"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend
index d4862b5..0489ef5 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -22,7 +22,6 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
 
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-dev.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-dev.bbappend
index 2fa6231..c336007 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -21,6 +21,5 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.14.bbappend
index 1e1cc51..b7603aa 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.14.bbappend
@@ -22,7 +22,6 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
 
@@ -30,4 +29,4 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
 #SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.14"
\ No newline at end of file
+#LINUX_VERSION = "3.14"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.19.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.19.bbappend
index 97e1bb8..729afed 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.19.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.19.bbappend
@@ -22,7 +22,6 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
 
@@ -30,4 +29,4 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
 #SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.19"
\ No newline at end of file
+#LINUX_VERSION = "3.19"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 61adafd..38adca3 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -22,7 +22,6 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
 
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-dev.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-dev.bbappend
index 2fa6231..c336007 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -21,6 +21,5 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.14.bbappend
index fb6cdef..8ec4117 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.14.bbappend
@@ -22,7 +22,6 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
 
@@ -30,4 +29,4 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "dbe5b52e93ff114b2c0f5da6f6af91f52c18f2b8"
 SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "6eddbf47875ef48ddc5864957a7b63363100782b"
-#LINUX_VERSION = "3.14"
\ No newline at end of file
+#LINUX_VERSION = "3.14"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.19.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.19.bbappend
index 134aeec..a1f2cc3 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.19.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.19.bbappend
@@ -22,7 +22,6 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
 
@@ -30,4 +29,4 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
 #SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.19"
\ No newline at end of file
+#LINUX_VERSION = "3.19"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 851d306..f98cf0c 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -22,7 +22,6 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
 
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-dev.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-dev.bbappend
index 2fa6231..c336007 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -21,6 +21,5 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.14.bbappend
index e688384..b7603aa 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.14.bbappend
@@ -22,7 +22,6 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
 
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.19.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.19.bbappend
index ded9e85..729afed 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.19.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.19.bbappend
@@ -22,7 +22,6 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
 
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 61adafd..38adca3 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -22,7 +22,6 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
 
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
index be479be..3555285 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -51,6 +51,5 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.14.bbappend
index 626019c..08a997a 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.14.bbappend
@@ -51,7 +51,6 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
 
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.19.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.19.bbappend
index b4798b7..cdc00a9 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.19.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.19.bbappend
@@ -51,7 +51,6 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
 
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
index dc8a5be..6a24dc2 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -51,7 +51,6 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
 
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-dev.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-dev.bbappend
index 2fa6231..c336007 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -21,6 +21,5 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.14.bbappend
index ca0b497..7c5dcc7 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.14.bbappend
@@ -22,7 +22,6 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
 
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.19.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.19.bbappend
index dba63c3..92b68cc 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.19.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.19.bbappend
@@ -22,7 +22,6 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
 
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 9cc2a7f..7f49bfc 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -22,7 +22,6 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
             file://{{=machine}}-user-features.scc \
            "
 
-- 
2.6.2


