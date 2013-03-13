Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C3B8E0073E
	for <poky@yoctoproject.org>; Wed, 13 Mar 2013 12:04:44 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 Mar 2013 12:04:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,838,1355126400"; d="scan'208";a="301205142"
Received: from unknown (HELO localhost) ([10.255.12.139])
	by orsmga002.jf.intel.com with ESMTP; 13 Mar 2013 12:04:42 -0700
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Wed, 13 Mar 2013 14:04:12 -0500
Message-Id: <20838d28555cbb7339a43b5c1f5424cabd94f23a.1363198817.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
References: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1363198817.git.tom.zanussi@linux.intel.com>
References: <cover.1363198817.git.tom.zanussi@linux.intel.com>
Subject: [PATCH 18/18] yocto-bsp: add machine-user-features.scc to templates
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
X-List-Received-Date: Wed, 13 Mar 2013 19:04:44 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add the user-features.scc files needed by the new kernel feature
support in yocto-kernel.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 ...if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" | 1 +
 ...nel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 1 +
 ...choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" | 1 +
 ...if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" | 1 +
 ...if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" | 1 +
 ...if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" | 1 +
 ...nel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 1 +
 ...choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" | 1 +
 ...if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" | 1 +
 ...if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" | 1 +
 ...if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" | 1 +
 ...nel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 1 +
 ...choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" | 1 +
 ...if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" | 1 +
 ...if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" | 1 +
 ...if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" | 1 +
 ...nel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 1 +
 ...choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" | 1 +
 ...if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" | 1 +
 ...if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" | 1 +
 ...if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" | 1 +
 ...nel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 1 +
 ...choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" | 1 +
 ...if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" | 1 +
 ...if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" | 1 +
 ...if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" | 1 +
 ...nel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 1 +
 ...choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" | 1 +
 ...if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" | 1 +
 ...if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" | 1 +
 30 files changed, 30 insertions(+)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"

diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
new file mode 100644
index 0000000..e69de29
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
index 0d81446..5112c07 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -18,4 +18,5 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index 088bcc2..7818a92 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -19,6 +19,7 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-preempt-rt.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"
index ceb8928..d6eac73 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
@@ -19,6 +19,7 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index 3b12ed8..bc5b0aa 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -19,6 +19,7 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
index cb24ffd..d2559e0 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
@@ -19,6 +19,7 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
new file mode 100644
index 0000000..e69de29
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
index 0d81446..5112c07 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -18,4 +18,5 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index 088bcc2..7818a92 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -19,6 +19,7 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-preempt-rt.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"
index ceb8928..d6eac73 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
@@ -19,6 +19,7 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index 1359bfa..158219d 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -19,6 +19,7 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
index f1fac0c..bc7e787 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
@@ -19,6 +19,7 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
new file mode 100644
index 0000000..e69de29
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
index 0d81446..5112c07 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -18,4 +18,5 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index 088bcc2..7818a92 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -19,6 +19,7 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-preempt-rt.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"
index ceb8928..d6eac73 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
@@ -19,6 +19,7 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index 3b12ed8..bc5b0aa 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -19,6 +19,7 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
index cb24ffd..d2559e0 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
@@ -19,6 +19,7 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
new file mode 100644
index 0000000..e69de29
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
index 0d81446..5112c07 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -18,4 +18,5 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index 088bcc2..7818a92 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -19,6 +19,7 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-preempt-rt.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"
index ceb8928..d6eac73 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
@@ -19,6 +19,7 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index 3b12ed8..bc5b0aa 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -19,6 +19,7 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
index cb24ffd..d2559e0 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
@@ -19,6 +19,7 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
new file mode 100644
index 0000000..e69de29
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
index e6a293f..bcf4fd8 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -42,4 +42,5 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index ada64bc..8dad75a 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -42,6 +42,7 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-preempt-rt.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"
index 7e68f11..b980f7f 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
@@ -42,6 +42,7 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index 513ca30..9385059 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -42,6 +42,7 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
index c696e08..b0137ca 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
@@ -42,6 +42,7 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
new file mode 100644
index 0000000..e69de29
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
index 0d81446..5112c07 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -18,4 +18,5 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index 088bcc2..7818a92 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -19,6 +19,7 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-preempt-rt.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"
index ceb8928..d6eac73 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
@@ -19,6 +19,7 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-tiny.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index cf8bf1d..09f9b05 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -19,6 +19,7 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
index a8e32ee..751dd7b 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
@@ -19,6 +19,7 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
-- 
1.7.11.4


