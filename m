Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFF02E00717
	for <poky@yoctoproject.org>; Tue, 28 Aug 2012 20:01:56 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 28 Aug 2012 20:01:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,330,1344236400"; d="scan'208";a="215117616"
Received: from unknown (HELO localhost) ([10.255.12.232])
	by fmsmga001.fm.intel.com with ESMTP; 28 Aug 2012 20:01:39 -0700
From: tom.zanussi@intel.com
To: poky@yoctoproject.org, richard.purdie@linuxfoundation.org,
	sgw@linux.intel.com
Date: Tue, 28 Aug 2012 22:01:35 -0500
Message-Id: <171accf16d0ec8c5696def65e636f1131c4e431e.1346208965.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <197677893e66f139015d21585feb7c7f0dc5ba5a.1346208965.git.tom.zanussi@intel.com>
References: <197677893e66f139015d21585feb7c7f0dc5ba5a.1346208965.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1346208965.git.tom.zanussi@intel.com>
References: <cover.1346208965.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2] yocto-bsp: use KBRANCH_DEFAULT in 'newbranch' cases
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
X-List-Received-Date: Wed, 29 Aug 2012 03:01:57 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The new yocto-kernel way of specifying that the branch sanity check
doesn't need to be run is to specify a default kbranch and build that.

In the case where we have a new kbranch but it's not yet in the repo,
we need to tell it that our new branch is the default and we're
building the default and that's how we avoid the sanity check and the
subsequent do_validate_branches() failure.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 ...l_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" | 3 ++-
 ...l_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 3 ++-
 ... kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" | 3 ++-
 ... kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" | 3 ++-
 ...l_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" | 3 ++-
 ...l_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 3 ++-
 ... kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" | 3 ++-
 ... kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" | 3 ++-
 ...l_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" | 3 ++-
 ...l_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 3 ++-
 ... kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" | 3 ++-
 ... kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" | 3 ++-
 ...l_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" | 3 ++-
 ...l_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 3 ++-
 ... kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" | 3 ++-
 ... kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" | 3 ++-
 ...l_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" | 3 ++-
 ...l_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 3 ++-
 ... kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" | 3 ++-
 ... kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" | 3 ++-
 ...l_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" | 3 ++-
 ...l_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" | 3 ++-
 ... kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" | 3 ++-
 ... kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" | 3 ++-
 24 files changed, 48 insertions(+), 24 deletions(-)

diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index 25b8ef9..3171cce 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -13,7 +13,8 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index 094cf5c..f11bfa5 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -13,7 +13,8 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index 730b07a..1278064 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -13,7 +13,8 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/default" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index bea555c..5b20bab 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -13,7 +13,8 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index e3085f5..8af3549 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -13,7 +13,8 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index 094cf5c..f11bfa5 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -13,7 +13,8 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index 985a6a8..c5ff697 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -13,7 +13,8 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/default:standard/default/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index 23147e9..34aa4cc 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -13,7 +13,8 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index e3085f5..8af3549 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -13,7 +13,8 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index 094cf5c..f11bfa5 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -13,7 +13,8 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index e1230c1..c617070 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -13,7 +13,8 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/default" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index bea555c..5b20bab 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -13,7 +13,8 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index e3085f5..8af3549 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -13,7 +13,8 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index 094cf5c..f11bfa5 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -13,7 +13,8 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index e1230c1..c617070 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -13,7 +13,8 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/default" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index bea555c..5b20bab 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -13,7 +13,8 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index 6d6f4b6..680973e 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -37,7 +37,8 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index 2e3bb00..70ede9f 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -37,7 +37,8 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index 5f3ec83..9af21f2 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -37,7 +37,8 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard/default" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/mti-malta32-be" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index 977aaf0..1e90cf2 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -37,7 +37,8 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/mti-malta32-be" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index e3085f5..8af3549 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -13,7 +13,8 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index 094cf5c..f11bfa5 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -13,7 +13,8 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index e3e0cc2..6f0d884 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -13,7 +13,8 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/default:standard/default/common-pc-64" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/common-pc-64/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index 7db77a4..e855037 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -13,7 +13,8 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc-64" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc-64/base" }}
 
 {{ if need_new_kbranch == "y": }}
-KBRANCH_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
+KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
 
-- 
1.7.11.4


