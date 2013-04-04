Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA356E014AD
	for <poky@yoctoproject.org>; Thu,  4 Apr 2013 15:09:28 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 04 Apr 2013 15:09:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,411,1363158000"; d="scan'208";a="289584340"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by orsmga001.jf.intel.com with ESMTP; 04 Apr 2013 15:09:24 -0700
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Thu,  4 Apr 2013 17:09:16 -0500
Message-Id: <041793e139db4883ea88b3651bc2eca1ad99975a.1365112661.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1365112661.git.tom.zanussi@linux.intel.com>
References: <cover.1365112661.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 1/8] yocto-bsp: add KBRANCH for existing kbranch cases
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
X-List-Received-Date: Thu, 04 Apr 2013 22:09:29 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

For the cases where a BSP reuses an existing branch, we still need the
KBRANCH in order to be able to specify an existing branch.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 ... kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" | 3 +++
 ...l_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 3 +++
 ...oice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" | 3 +++
 ... kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" | 3 +++
 ... kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" | 3 +++
 ... kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" | 3 +++
 ...l_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 3 +++
 ...oice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" | 3 +++
 ... kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" | 3 +++
 ... kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" | 3 +++
 ... kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" | 3 +++
 ...l_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 3 +++
 ...oice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" | 3 +++
 ... kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" | 3 +++
 ... kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" | 3 +++
 ... kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" | 3 +++
 ...l_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 3 +++
 ...oice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" | 3 +++
 ... kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" | 3 +++
 ... kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" | 3 +++
 ... kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" | 3 +++
 ...l_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 3 +++
 ...oice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" | 3 +++
 ... kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" | 3 +++
 ... kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" | 3 +++
 ... kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" | 3 +++
 ...l_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 3 +++
 ...oice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" | 3 +++
 ... kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" | 3 +++
 ... kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" | 3 +++
 30 files changed, 90 insertions(+)

diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
index 5112c07..146009a 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -11,6 +11,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index 7818a92..abb126c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -12,6 +12,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"
index d6eac73..df2510c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
@@ -12,6 +12,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index bc5b0aa..a7635ab 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -12,6 +12,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
index d2559e0..cdf52af 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
@@ -12,6 +12,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
index 5112c07..146009a 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -11,6 +11,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index 7818a92..abb126c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -12,6 +12,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"
index d6eac73..df2510c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
@@ -12,6 +12,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index 158219d..aa2f91e 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -12,6 +12,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
index bc7e787..c692048 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
@@ -12,6 +12,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
index 5112c07..146009a 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -11,6 +11,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index 7818a92..abb126c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -12,6 +12,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"
index d6eac73..df2510c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
@@ -12,6 +12,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index bc5b0aa..a7635ab 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -12,6 +12,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
index d2559e0..cdf52af 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
@@ -12,6 +12,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
index 5112c07..146009a 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -11,6 +11,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index 7818a92..abb126c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -12,6 +12,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"
index d6eac73..df2510c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
@@ -12,6 +12,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index bc5b0aa..a7635ab 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -12,6 +12,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
index d2559e0..cdf52af 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
@@ -12,6 +12,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
index bcf4fd8..a7df3e3 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -35,6 +35,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n" and qemuarch == "mips": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/mti-malta32-be" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index 8dad75a..f29240b 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -35,6 +35,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n" and qemuarch == "mips": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"
index b980f7f..ff53b53 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
@@ -35,6 +35,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n" and qemuarch == "mips": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index 9385059..1b9cce3 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -35,6 +35,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n" and qemuarch == "mips": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/mti-malta32-be" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
index b0137ca..e2013ea 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
@@ -35,6 +35,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n" and qemuarch == "mips": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/mti-malta32-be" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
index 5112c07..146009a 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -11,6 +11,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index 7818a92..abb126c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -12,6 +12,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"
index d6eac73..df2510c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
@@ -12,6 +12,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index 09f9b05..5122246 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -12,6 +12,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc-64" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc-64/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
index 751dd7b..4131ff5 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
@@ -12,6 +12,9 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ if need_new_kbranch == "n": }}
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc-64" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc-64/base" }}
 
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-- 
1.7.11.4


