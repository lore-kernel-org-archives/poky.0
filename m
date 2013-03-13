Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 064CEE013D9
	for <poky@yoctoproject.org>; Wed, 13 Mar 2013 12:04:23 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 Mar 2013 12:04:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,838,1355126400"; d="scan'208";a="305764623"
Received: from unknown (HELO localhost) ([10.255.12.139])
	by fmsmga002.fm.intel.com with ESMTP; 13 Mar 2013 12:04:22 -0700
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Wed, 13 Mar 2013 14:04:02 -0500
Message-Id: <a060d37fd366a78d5cacd4319f7a1107d694a692.1363198817.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
References: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1363198817.git.tom.zanussi@linux.intel.com>
References: <cover.1363198817.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 08/18] yocto-bsp: update machine-preempt-rt.scc
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
X-List-Received-Date: Wed, 13 Mar 2013 19:04:24 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

Simplify machine-standard.scc for all the templates.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../{{=machine}}-preempt-rt.scc"                   |  5 +++--
 .../{{=machine}}-preempt-rt.scc"                   |  5 +++--
 .../{{=machine}}-preempt-rt.scc"                   |  5 +++--
 .../{{=machine}}-preempt-rt.scc"                   |  5 +++--
 .../{{=machine}}-preempt-rt.scc"                   | 22 ++--------------------
 .../{{=machine}}-preempt-rt.scc"                   |  5 +++--
 6 files changed, 17 insertions(+), 30 deletions(-)

diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"
index 22ff307..de0bff2 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"	
@@ -2,7 +2,8 @@ define KMACHINE {{=machine}}
 define KTYPE preempt-rt
 define KARCH arm
 
-# no new branch required, re-use the ktypes/preempt-rt branch
-include ktypes/preempt-rt
+include {{=map_preempt_rt_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
+{{ if need_new_kbranch == "y": }}
+branch {{=machine}}
 
 include {{=machine}}.scc
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"
index 2734d33..bfefb0d 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"	
@@ -2,8 +2,9 @@ define KMACHINE {{=machine}}
 define KTYPE preempt-rt
 define KARCH i386
 
-# no new branch required, re-use the ktypes/preempt-rt branch
-include ktypes/preempt-rt
+include {{=map_preempt_rt_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
+{{ if need_new_kbranch == "y": }}
+branch {{=machine}}
 
 include {{=machine}}.scc
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"
index 792c4d5..b0fb63a 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"	
@@ -2,7 +2,8 @@ define KMACHINE {{=machine}}
 define KTYPE preempt-rt
 define KARCH mips
 
-# no new branch required, re-use the ktypes/preempt-rt branch
-include ktypes/preempt-rt
+include {{=map_preempt_rt_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
+{{ if need_new_kbranch == "y": }}
+branch {{=machine}}
 
 include {{=machine}}.scc
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"
index 4a182a3..1da7b0c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"	
@@ -2,7 +2,8 @@ define KMACHINE {{=machine}}
 define KTYPE preempt-rt
 define KARCH powerpc
 
-# no new branch required, re-use the ktypes/preempt-rt branch
-include ktypes/preempt-rt
+include {{=map_preempt_rt_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
+{{ if need_new_kbranch == "y": }}
+branch {{=machine}}
 
 include {{=machine}}.scc
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"
index 0f5a582..af34437 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"	
@@ -1,26 +1,8 @@
 define KMACHINE {{=machine}}
 define KTYPE preempt-rt
-{{ if qemuarch == "i386": }}
-define KARCH i386
-{{ if qemuarch == "x86_64": }}
-define KARCH x86_64
-{{ if qemuarch == "arm": }}
-define KARCH arm
-{{ if qemuarch == "powerpc": }}
-define KARCH powerpc
-{{ if qemuarch == "mips": }}
-define KARCH mips
+define KARCH {{=qemuarch}}
 
-{{ if qemuarch == "i386": }}
-include bsp/common-pc/common-pc-preempt-rt
-{{ if qemuarch == "x86_64": }}
-include bsp/common-pc-64/common-pc-64-preempt-rt
-{{ if qemuarch == "arm": }}
-include bsp/arm-versatile-926ejs/arm-versatile-926ejs-preempt-rt
-{{ if qemuarch == "powerpc": }}
-include bsp/qemu-ppc32/qemu-ppc32-rt
-{{ if qemuarch == "mips": }}
-include bsp/mti-malta32/mti-malta32-be-preempt-rt
+include {{=map_preempt_rt_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
 {{ if need_new_kbranch == "y": }}
 branch {{=machine}}
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"
index de9906a..c988259 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"	
@@ -2,8 +2,9 @@ define KMACHINE {{=machine}}
 define KTYPE preempt-rt
 define KARCH x86_64
 
-# no new branch required, re-use the ktypes/preempt-rt branch
-include ktypes/preempt-rt
+include {{=map_preempt_rt_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)}}
+{{ if need_new_kbranch == "y": }}
+branch {{=machine}}
 
 include {{=machine}}.scc
 
-- 
1.7.11.4


