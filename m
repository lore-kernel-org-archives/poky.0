Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 721B2E01471
	for <poky@yoctoproject.org>; Wed, 13 Mar 2013 12:04:25 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 Mar 2013 12:04:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,838,1355126400"; d="scan'208";a="305764651"
Received: from unknown (HELO localhost) ([10.255.12.139])
	by fmsmga002.fm.intel.com with ESMTP; 13 Mar 2013 12:04:23 -0700
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Wed, 13 Mar 2013 14:04:03 -0500
Message-Id: <aec72f1b4665669d5ddb4874a16b7176174bfac7.1363198817.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
References: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1363198817.git.tom.zanussi@linux.intel.com>
References: <cover.1363198817.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 09/18] yocto-bsp: update linux-yocto-rt_3.4 .bbappends
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
X-List-Received-Date: Wed, 13 Mar 2013 19:04:25 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

Simplify by removing unnecessary KMACHINE/KBRANCH and SRC_URI items.
Also simplify machine-preempt-rt.scc

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 ...linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 15 +++------------
 ...linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 15 +++------------
 ...linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 15 +++------------
 ...linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 15 +++------------
 ...linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 16 +++-------------
 ...linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 15 +++------------
 6 files changed, 18 insertions(+), 73 deletions(-)

diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index 1ae5cee..088bcc2 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -12,26 +12,17 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
-{{ if need_new_kbranch == "y": }}
-KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-KMACHINE_{{=machine}}  = "{{=machine}}"
-
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}.scc \
-            file://{{=machine}}.cfg \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "2d008a6dcbf565878cee14c5f050eca53897316f"
-#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "459165c1dd61c4e843c36e6a1abeb30949a20ba7a"
+#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "c3fa9782d3c6caabbca85d56fc4ace0ba97b9d9e"
+#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
+#LINUX_VERSION = "3.4.34"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index 1ae5cee..088bcc2 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -12,26 +12,17 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
-{{ if need_new_kbranch == "y": }}
-KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-KMACHINE_{{=machine}}  = "{{=machine}}"
-
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}.scc \
-            file://{{=machine}}.cfg \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "2d008a6dcbf565878cee14c5f050eca53897316f"
-#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "459165c1dd61c4e843c36e6a1abeb30949a20ba7a"
+#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "c3fa9782d3c6caabbca85d56fc4ace0ba97b9d9e"
+#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
+#LINUX_VERSION = "3.4.34"
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index 1ae5cee..088bcc2 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -12,26 +12,17 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
-{{ if need_new_kbranch == "y": }}
-KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-KMACHINE_{{=machine}}  = "{{=machine}}"
-
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}.scc \
-            file://{{=machine}}.cfg \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "2d008a6dcbf565878cee14c5f050eca53897316f"
-#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "459165c1dd61c4e843c36e6a1abeb30949a20ba7a"
+#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "c3fa9782d3c6caabbca85d56fc4ace0ba97b9d9e"
+#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
+#LINUX_VERSION = "3.4.34"
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index 1ae5cee..088bcc2 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -12,26 +12,17 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
-{{ if need_new_kbranch == "y": }}
-KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-KMACHINE_{{=machine}}  = "{{=machine}}"
-
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}.scc \
-            file://{{=machine}}.cfg \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "2d008a6dcbf565878cee14c5f050eca53897316f"
-#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "459165c1dd61c4e843c36e6a1abeb30949a20ba7a"
+#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "c3fa9782d3c6caabbca85d56fc4ace0ba97b9d9e"
+#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
+#LINUX_VERSION = "3.4.34"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index 89c32c4..ada64bc 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -3,7 +3,6 @@ FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 PR := "${PR}.1"
 
 COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "arm": }}
@@ -36,26 +35,17 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n" and qemuarch == "mips": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
-{{ if need_new_kbranch == "y": }}
-KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-KMACHINE_{{=machine}}  = "{{=machine}}"
-
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}.scc \
-            file://{{=machine}}.cfg \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "2d008a6dcbf565878cee14c5f050eca53897316f"
-#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "459165c1dd61c4e843c36e6a1abeb30949a20ba7a"
+#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "c3fa9782d3c6caabbca85d56fc4ace0ba97b9d9e"
+#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
+#LINUX_VERSION = "3.4.34"
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index 1ae5cee..088bcc2 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -12,26 +12,17 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
-{{ if need_new_kbranch == "y": }}
-KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-KMACHINE_{{=machine}}  = "{{=machine}}"
-
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}.scc \
-            file://{{=machine}}.cfg \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "2d008a6dcbf565878cee14c5f050eca53897316f"
-#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "459165c1dd61c4e843c36e6a1abeb30949a20ba7a"
+#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "c3fa9782d3c6caabbca85d56fc4ace0ba97b9d9e"
+#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
+#LINUX_VERSION = "3.4.34"
-- 
1.7.11.4


