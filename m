Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57A03E0042B
	for <poky@yoctoproject.org>; Wed, 13 Mar 2013 12:04:15 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 13 Mar 2013 12:04:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,838,1355126400"; d="scan'208";a="302016223"
Received: from unknown (HELO localhost) ([10.255.12.139])
	by fmsmga001.fm.intel.com with ESMTP; 13 Mar 2013 12:04:13 -0700
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Wed, 13 Mar 2013 14:03:55 -0500
Message-Id: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1363198817.git.tom.zanussi@linux.intel.com>
References: <cover.1363198817.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 01/18] yocto-bsp: add 3.8/remove 3.2 kernel from templates
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
X-List-Received-Date: Wed, 13 Mar 2013 19:04:15 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

For Yocto 1.4, 3.8 is the preferred kernel and 3.2 is obsolete.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../arm/recipes-kernel/linux/kernel-list.noinstall |  4 +-
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" | 37 -------------
 ...linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" | 18 ++-----
 .../arch/i386/conf/machine/{{=machine}}.conf       |  4 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" | 37 -------------
 ...linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" | 18 ++-----
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../{{=machine}}.scc"                              |  3 --
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" | 37 -------------
 ...linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" | 18 ++-----
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../{{=machine}}.scc"                              |  3 --
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" | 37 -------------
 ...linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" | 18 ++-----
 .../arch/qemu/conf/machine/{{=machine}}.conf       |  3 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" | 61 ----------------------
 ...linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" | 38 +++++---------
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" | 37 -------------
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" | 37 -------------
 ...linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" | 27 ++++++++++
 23 files changed, 73 insertions(+), 384 deletions(-)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" (54%)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" (54%)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" (54%)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" (52%)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" (45%)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"

diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
index e2b13ac..6754c6d 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.4) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.8) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.4"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.8"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
deleted file mode 100644
index c2c047c..0000000
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ /dev/null
@@ -1,37 +0,0 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "y": }}
-KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-KMACHINE_{{=machine}}  = "{{=machine}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}.scc \
-            file://{{=machine}}.cfg \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "01c5c310886e87e785db5c3bb776deb5ed2e03b2"
-#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "486f7aec824b4127e91ef53228823e996b3696f0"
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
similarity index 54%
rename from "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
rename to "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
index 277aa9e..cb24ffd 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
@@ -7,31 +7,21 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/default" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
 {{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/default" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
-
-{{ if need_new_kbranch == "y": }}
-KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-KMACHINE_{{=machine}}  = "{{=machine}}"
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}.scc \
-            file://{{=machine}}.cfg \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
-#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "19f7e43b54aef08d58135ed2a897d77b624b320a"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "459165c1dd61c4e843c36e6a1abeb30949a20ba7"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
index 86d6a53..6c0ecba 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
@@ -30,7 +30,7 @@ require conf/machine/include/meta-intel.inc
 
 {{ input type:"boolean" name:"xserver" prio:"50" msg:"Do you need support for X? (y/n)" default:"y" }}
 
-{{ if xserver == "y" and kernel_choice == "linux-yocto_3.4": }}
+{{ if xserver == "y" and (kernel_choice == "linux-yocto_3.4" or kernel_choice == "linux-yocto_3.8"): }}
 {{ input type:"choicelist" name:"xserver_choice" prio:"50" msg:"Please select an xserver for this machine:" default:"xserver_i915" }}
 {{ input type:"choice" val:"xserver_vesa" msg:"VESA xserver support" }}
 {{ input type:"choice" val:"xserver_emgd" msg:"EMGD xserver support (proprietary)" }}
@@ -41,7 +41,7 @@ require conf/machine/include/meta-intel.inc
 {{ input type:"choice" val:"xserver_vesa" msg:"VESA xserver support" }}
 {{ input type:"choice" val:"xserver_i915" msg:"i915 xserver support" }}
 
-{{ if xserver == "y" and kernel_choice != "linux-yocto_3.4" and kernel_choice != "custom": xserver_choice = "xserver_i915" }}
+{{ if xserver == "y" and kernel_choice != "linux-yocto_3.4" and kernel_choice != "linux-yocto_3.8" and kernel_choice != "custom": xserver_choice = "xserver_i915" }}
 
 {{ if xserver == "y": }}
 XSERVER ?= "${XSERVER_IA32_BASE} \
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
index e2b13ac..6754c6d 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.4) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.8) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.4"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.8"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
deleted file mode 100644
index 296eb65..0000000
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ /dev/null
@@ -1,37 +0,0 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "y": }}
-KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-KMACHINE_{{=machine}}  = "{{=machine}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}.scc \
-            file://{{=machine}}.cfg \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
-#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
similarity index 54%
rename from "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
rename to "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
index fcbe2d3..f1fac0c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
@@ -7,31 +7,21 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/default" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
 {{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/default" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
-
-{{ if need_new_kbranch == "y": }}
-KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-KMACHINE_{{=machine}}  = "{{=machine}}"
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}.scc \
-            file://{{=machine}}.cfg \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "0ec416edf0b0cab3e919c0a1c167a883f8b344a2"
-#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "486f7aec824b4127e91ef53228823e996b3696f0"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "19f7e43b54aef08d58135ed2a897d77b624b320a"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "459165c1dd61c4e843c36e6a1abeb30949a20ba7"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
index e2b13ac..6754c6d 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.4) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.8) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.4"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.8"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
index 1ebbc32..1ef01b6 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"	
@@ -1,9 +1,6 @@
 kconf hardware {{=machine}}.cfg
 
 include cfg/usb-mass-storage.scc
-{{ if kernel_choice == "linux-yocto_3.2": }}
-include cfg/vfat.scc
-{{ if kernel_choice == "linux-yocto_3.4": }}
 include cfg/fs/vfat.scc
 
 kconf hardware {{=machine}}-user-config.cfg
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
deleted file mode 100644
index 296eb65..0000000
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ /dev/null
@@ -1,37 +0,0 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "y": }}
-KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-KMACHINE_{{=machine}}  = "{{=machine}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}.scc \
-            file://{{=machine}}.cfg \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
-#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
similarity index 54%
rename from "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
rename to "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
index 277aa9e..cb24ffd 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
@@ -7,31 +7,21 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/default" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
 {{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/default" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
-
-{{ if need_new_kbranch == "y": }}
-KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-KMACHINE_{{=machine}}  = "{{=machine}}"
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}.scc \
-            file://{{=machine}}.cfg \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
-#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "19f7e43b54aef08d58135ed2a897d77b624b320a"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "459165c1dd61c4e843c36e6a1abeb30949a20ba7"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
index e2b13ac..6754c6d 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.4) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.8) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.4"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.8"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
index 0d64f58..c9fd468 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"	
@@ -1,9 +1,6 @@
 kconf hardware {{=machine}}.cfg
 
 include cfg/usb-mass-storage.scc
-{{ if kernel_choice == "linux-yocto_3.2": }}
-include cfg/vfat.scc
-{{ if kernel_choice == "linux-yocto_3.4": }}
 include cfg/fs/vfat.scc
 
 include cfg/dmaengine.scc
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
deleted file mode 100644
index 296eb65..0000000
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ /dev/null
@@ -1,37 +0,0 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "y": }}
-KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-KMACHINE_{{=machine}}  = "{{=machine}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}.scc \
-            file://{{=machine}}.cfg \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
-#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
similarity index 52%
rename from "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
rename to "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
index 48ebad6..cb24ffd 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
@@ -7,31 +7,21 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/default:standard/default/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
 {{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/default:standard/default/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
-
-{{ if need_new_kbranch == "y": }}
-KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-KMACHINE_{{=machine}}  = "{{=machine}}"
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
 {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}.scc \
-            file://{{=machine}}.cfg \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
-#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "19f7e43b54aef08d58135ed2a897d77b624b320a"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "459165c1dd61c4e843c36e6a1abeb30949a20ba7"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
index de3b279..460f269 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
@@ -2,7 +2,6 @@
 #@NAME: {{=machine}}
 
 #@DESCRIPTION: Machine configuration for {{=machine}} systems
-
 {{ if kernel_choice == "custom": preferred_kernel = "linux-yocto-custom" }}
 {{ if kernel_choice == "custom": }}
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
@@ -43,6 +42,7 @@ require conf/machine/include/tune-mips32.inc
 MACHINE_FEATURES += "x86"
 KERNEL_IMAGETYPE = "bzImage"
 SERIAL_CONSOLE = "115200 ttyS0"
+
 # We bypass swrast but we need it to be present for X to load correctly
 XSERVER ?= "xserver-xorg \
            mesa-dri-driver-swrast \
@@ -50,6 +50,7 @@ XSERVER ?= "xserver-xorg \
            xf86-input-keyboard \
            xf86-input-evdev \
            xf86-video-vmware"
+
 require conf/machine/include/qemu.inc
 
 {{ if qemuarch == "arm": }}
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
index e2b13ac..6754c6d 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.4) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.8) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.4"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.8"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
deleted file mode 100644
index e580841..0000000
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ /dev/null
@@ -1,61 +0,0 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "arm": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "arm": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/qemu-ppc32" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "x86_64": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "mips": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "mips": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "y": }}
-KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-KMACHINE_{{=machine}}  = "{{=machine}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}.scc \
-            file://{{=machine}}.cfg \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
-#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
similarity index 45%
rename from "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
rename to "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
index 93cbbb9..c696e08 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
@@ -3,59 +3,49 @@ FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 PR := "${PR}.1"
 
 COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "arm": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/default" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base your new BSP branch on:" default:"standard/base" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "arm": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/default" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/arm-versatile-926ejs" }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose an existing machine branch to use for this BSP:" default:"standard/arm-versatile-926ejs" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard/default" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard/default" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/qemu-ppc32" }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/qemu-ppc32" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard/default:standard/default/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/common-pc/base" }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc/base" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard/default:standard/default/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/common-pc/base" }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc/base" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard/default:standard/default/common-pc-64" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/common-pc-64/base" }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc-64"  prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc-64/base" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "x86_64": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard/default:standard/default/common-pc-64" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/common-pc-64/base" }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc-64"  prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc-64/base" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "mips": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard/default" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/base" }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "mips": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard/default" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/mti-malta32-be" }}
-
-{{ if need_new_kbranch == "y": }}
-KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-KMACHINE_{{=machine}}  = "{{=machine}}"
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/mti-malta32-be" }}
 
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
 {{ if smp == "y": }}
 KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 
 SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}.scc \
-            file://{{=machine}}.cfg \
             file://{{=machine}}-user-config.cfg \
             file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
-#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "b170394a475b96ecc92cbc9e4b002bed0a9f69c5"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "c2ed0f16fdec628242a682897d5d86df4547cf24"
+#LINUX_VERSION = "3.8"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
index e2b13ac..6754c6d 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.4) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.8) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.4"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.8"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
deleted file mode 100644
index 296eb65..0000000
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ /dev/null
@@ -1,37 +0,0 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "y": }}
-KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-KMACHINE_{{=machine}}  = "{{=machine}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}.scc \
-            file://{{=machine}}.cfg \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
-#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
deleted file mode 100644
index 38507da..0000000
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ /dev/null
@@ -1,37 +0,0 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/default:standard/default/common-pc-64" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/common-pc-64/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/default:standard/default/common-pc-64" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/default/common-pc-64/base" }}
-
-{{ if need_new_kbranch == "y": }}
-KBRANCH_DEFAULT_{{=machine}}  = "{{=strip_base(new_kbranch)}}/{{=machine}}"
-KBRANCH_{{=machine}}  = "${KBRANCH_DEFAULT}"
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-KMACHINE_{{=machine}}  = "{{=machine}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}.scc \
-            file://{{=machine}}.cfg \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "417fc778a86e81303bab5883b919ee422ec51c04"
-#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "138bf5b502607fe40315c0d76822318d77d97e01"
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
new file mode 100644
index 0000000..a8e32ee
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
@@ -0,0 +1,27 @@
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc-64" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc-64/base" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc-64" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc-64/base" }}
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "b170394a475b96ecc92cbc9e4b002bed0a9f69c5"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "c2ed0f16fdec628242a682897d5d86df4547cf24"
-- 
1.7.11.4


