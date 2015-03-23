Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A22D1E00953; Sun, 22 Mar 2015 21:25:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF363E0094C
	for <poky@yoctoproject.org>; Sun, 22 Mar 2015 21:24:58 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 Mar 2015 21:24:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,449,1422950400"; d="scan'208";a="669062470"
Received: from mjobrie1-mobl2.amr.corp.intel.com (HELO localhost)
	([10.254.50.167])
	by orsmga001.jf.intel.com with ESMTP; 22 Mar 2015 21:24:54 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org
Date: Sun, 22 Mar 2015 23:24:52 -0500
Message-Id: <4e354e3979344ab5355dfb7e3139dc8dae836517.1427082458.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <cover.1427082458.git.tom.zanussi@linux.intel.com>
References: <cover.1427082458.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 1/1] yocto-bsp: Update templates to 3.19 kernel
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
X-List-Received-Date: Mon, 23 Mar 2015 04:25:03 -0000

Add 3.19 kernel support and remove 3.10 and 3.17 support.

'Fixes' [YOCTO #7391].

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../arm/recipes-kernel/linux/kernel-list.noinstall |  4 +-
 .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
 .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
 ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
 ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
 .../target/arch/i386/conf/machine/machine.conf     |  4 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
 .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
 ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
 ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
 .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
 ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
 ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
 .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
 ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend |  8 +--
 .../linux/linux-yocto_3.19.bbappend}               |  8 +--
 .../target/arch/powerpc/conf/machine/machine.conf  |  2 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
 .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
 .../linux/linux-yocto-tiny_3.17.bbappend           | 33 ------------
 .../linux/linux-yocto-tiny_3.19.bbappend           | 33 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
 .../linux/linux-yocto_3.19.bbappend}               |  4 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-rt_3.10.bbappend             | 62 ----------------------
 .../linux/linux-yocto-tiny_3.10.bbappend           | 62 ----------------------
 ...3.4.bbappend => linux-yocto-tiny_3.14.bbappend} |  2 +-
 ....17.bbappend => linux-yocto-tiny_3.19.bbappend} |  4 +-
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 62 ----------------------
 ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-rt_3.10.bbappend             | 33 ------------
 .../linux/linux-yocto-tiny_3.10.bbappend           | 33 ------------
 .../linux/linux-yocto-tiny_3.17.bbappend           | 33 ------------
 .../linux/linux-yocto-tiny_3.19.bbappend           | 33 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend | 33 ------------
 ...cto_3.17.bbappend => linux-yocto_3.19.bbappend} |  4 +-
 48 files changed, 114 insertions(+), 894 deletions(-)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
 rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (97%)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.10.bbappend
 rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (94%)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
 rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (97%)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.10.bbappend
 rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (94%)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
 rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (97%)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.10.bbappend
 rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (94%)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
 rename scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (97%)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.10.bbappend
 rename scripts/lib/bsp/substrate/target/arch/{powerpc/recipes-kernel/linux/linux-yocto_3.17.bbappend => mips64/recipes-kernel/linux/linux-yocto_3.19.bbappend} (89%)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.10.bbappend
 rename scripts/lib/bsp/substrate/target/arch/{mips64/recipes-kernel/linux/linux-yocto_3.17.bbappend => powerpc/recipes-kernel/linux/linux-yocto_3.19.bbappend} (94%)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{linux-yocto-tiny_3.4.bbappend => linux-yocto-tiny_3.14.bbappend} (99%)
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{linux-yocto-tiny_3.17.bbappend => linux-yocto-tiny_3.19.bbappend} (99%)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.10.bbappend
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (98%)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.10.bbappend
 rename scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{linux-yocto_3.17.bbappend => linux-yocto_3.19.bbappend} (94%)

diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
index 8903a82..811d695 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.17) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.19) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.17"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.19"}}
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
deleted file mode 100644
index 35b0958..0000000
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-rt_3.10": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
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
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "f35992f80c81dc5fa1a97165dfd5cbb84661f7cb"
-#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "1b534b2f8bbe9b8a773268cfa30a4850346f6f5f"
-#LINUX_VERSION = "3.10.9"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
deleted file mode 100644
index f04dd0c..0000000
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.10": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-tiny.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
-#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.10.9"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
similarity index 97%
rename from scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
rename to scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
index fb42532..4de82fa 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
@@ -1,4 +1,4 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.17": }} this
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.19": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
@@ -30,4 +30,4 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
 #SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.17"
+#LINUX_VERSION = "3.19"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.10.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.10.bbappend
deleted file mode 100644
index badb3aa..0000000
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.10.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.10": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "19f7e43b54aef08d58135ed2a897d77b624b320a"
-#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "459165c1dd61c4e843c36e6a1abeb30949a20ba7"
-#LINUX_VERSION = "3.10.9"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.17.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.19.bbappend
similarity index 94%
rename from scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.17.bbappend
rename to scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.19.bbappend
index 72af58a..97e1bb8 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.17.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.19.bbappend
@@ -1,4 +1,4 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.17": }} this
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.19": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
@@ -30,4 +30,4 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
 #SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.17"
\ No newline at end of file
+#LINUX_VERSION = "3.19"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/machine.conf b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/machine.conf
index e13dabc..7189341 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/machine.conf
+++ b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/machine.conf
@@ -33,7 +33,7 @@ MACHINE_FEATURES += "wifi efi pcbios"
 
 {{ input type:"boolean" name:"xserver" prio:"50" msg:"Do you need support for X? (y/n)" default:"y" }}
 
-{{ if xserver == "y" and (kernel_choice == "linux-yocto_3.17" or kernel_choice == "linux-yocto_3.14" or kernel_choice == "linux-yocto_3.10"): }}
+{{ if xserver == "y" and (kernel_choice == "linux-yocto_3.19" or kernel_choice == "linux-yocto_3.14"): }}
 {{ input type:"choicelist" name:"xserver_choice" prio:"50" msg:"Please select an xserver for this machine:" default:"xserver_vesa" }}
 {{ input type:"choice" val:"xserver_vesa" msg:"VESA xserver support" }}
 {{ input type:"choice" val:"xserver_i915" msg:"i915 xserver support" }}
@@ -49,7 +49,7 @@ MACHINE_FEATURES += "wifi efi pcbios"
 {{ input type:"choice" val:"xserver_fbdev" msg:"fbdev xserver support" }}
 {{ input type:"choice" val:"xserver_modesetting" msg:"modesetting xserver support" }}
 
-{{ if xserver == "y" and kernel_choice != "linux-yocto_3.17" and kernel_choice != "linux-yocto_3.14" and kernel_choice != "linux-yocto_3.10" and kernel_choice != "custom": xserver_choice = "xserver_i915" }}
+{{ if xserver == "y" and kernel_choice != "linux-yocto_3.19" and kernel_choice != "linux-yocto_3.14" and kernel_choice != "custom": xserver_choice = "xserver_i915" }}
 
 {{ if xserver == "y": }}
 XSERVER ?= "${XSERVER_X86_BASE} \
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
index 8903a82..811d695 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.17) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.19) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.17"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.19"}}
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
deleted file mode 100644
index 35b0958..0000000
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-rt_3.10": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
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
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "f35992f80c81dc5fa1a97165dfd5cbb84661f7cb"
-#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "1b534b2f8bbe9b8a773268cfa30a4850346f6f5f"
-#LINUX_VERSION = "3.10.9"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
deleted file mode 100644
index f04dd0c..0000000
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.10": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-tiny.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
-#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.10.9"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
similarity index 97%
rename from scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
rename to scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
index fb42532..4de82fa 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
@@ -1,4 +1,4 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.17": }} this
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.19": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
@@ -30,4 +30,4 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
 #SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.17"
+#LINUX_VERSION = "3.19"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.10.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.10.bbappend
deleted file mode 100644
index 1cfc611..0000000
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.10.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.10": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "19f7e43b54aef08d58135ed2a897d77b624b320a"
-#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "459165c1dd61c4e843c36e6a1abeb30949a20ba7"
-#LINUX_VERSION = "3.10.9"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.17.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.19.bbappend
similarity index 94%
rename from scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.17.bbappend
rename to scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.19.bbappend
index c8fc73a..0c2cb5a 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.17.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_3.19.bbappend
@@ -1,4 +1,4 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.17": }} this
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.19": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
@@ -30,4 +30,4 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
 #SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.17"
\ No newline at end of file
+#LINUX_VERSION = "3.19"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
index 8903a82..811d695 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.17) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.19) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.17"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.19"}}
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
deleted file mode 100644
index 35b0958..0000000
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-rt_3.10": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
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
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "f35992f80c81dc5fa1a97165dfd5cbb84661f7cb"
-#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "1b534b2f8bbe9b8a773268cfa30a4850346f6f5f"
-#LINUX_VERSION = "3.10.9"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
deleted file mode 100644
index f04dd0c..0000000
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.10": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-tiny.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
-#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.10.9"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
similarity index 97%
rename from scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
rename to scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
index 142e38b..a9ba0ae 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
@@ -1,4 +1,4 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.17": }} this
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.19": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
@@ -30,4 +30,4 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
 #SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.17"
\ No newline at end of file
+#LINUX_VERSION = "3.19"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.10.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.10.bbappend
deleted file mode 100644
index badb3aa..0000000
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.10.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.10": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "19f7e43b54aef08d58135ed2a897d77b624b320a"
-#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "459165c1dd61c4e843c36e6a1abeb30949a20ba7"
-#LINUX_VERSION = "3.10.9"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.17.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.19.bbappend
similarity index 94%
rename from scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.17.bbappend
rename to scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.19.bbappend
index 72af58a..97e1bb8 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.17.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_3.19.bbappend
@@ -1,4 +1,4 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.17": }} this
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.19": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
@@ -30,4 +30,4 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
 #SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.17"
\ No newline at end of file
+#LINUX_VERSION = "3.19"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/kernel-list.noinstall
index 8903a82..a04e6c7 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.17) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.14) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.17"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.14"}}
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
deleted file mode 100644
index 35b0958..0000000
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-rt_3.10": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
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
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "f35992f80c81dc5fa1a97165dfd5cbb84661f7cb"
-#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "1b534b2f8bbe9b8a773268cfa30a4850346f6f5f"
-#LINUX_VERSION = "3.10.9"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
deleted file mode 100644
index f04dd0c..0000000
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.10": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-tiny.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
-#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.10.9"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
similarity index 97%
rename from scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
rename to scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
index 142e38b..a9ba0ae 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
@@ -1,4 +1,4 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.17": }} this
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.19": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
@@ -30,4 +30,4 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
 #SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.17"
\ No newline at end of file
+#LINUX_VERSION = "3.19"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.10.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.10.bbappend
deleted file mode 100644
index badb3aa..0000000
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.10.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.10": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "19f7e43b54aef08d58135ed2a897d77b624b320a"
-#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "459165c1dd61c4e843c36e6a1abeb30949a20ba7"
-#LINUX_VERSION = "3.10.9"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.14.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.14.bbappend
index 1e1cc51..fb6cdef 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.14.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.14.bbappend
@@ -8,10 +8,10 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/edgerouter" }}
 
 {{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/edgerouter" }}
 
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
@@ -28,6 +28,6 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
-#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
+SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "dbe5b52e93ff114b2c0f5da6f6af91f52c18f2b8"
+SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "6eddbf47875ef48ddc5864957a7b63363100782b"
 #LINUX_VERSION = "3.14"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.17.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.19.bbappend
similarity index 89%
rename from scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.17.bbappend
rename to scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.19.bbappend
index 2f19330..134aeec 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.17.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.19.bbappend
@@ -1,4 +1,4 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.17": }} this
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.19": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
@@ -8,10 +8,10 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
 
 {{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/edgerouter" }}
 
 {{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/edgerouter" }}
 
 {{ if need_new_kbranch == "n": }}
 KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
@@ -30,4 +30,4 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
 #SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.17"
+#LINUX_VERSION = "3.19"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/machine.conf b/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/machine.conf
index 48fcb2b..c94f7f9 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/machine.conf
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/machine.conf
@@ -74,7 +74,7 @@ XSERVER ?= "xserver-xorg \
            xf86-input-evdev \
            xf86-video-fbdev"
 
-PREFERRED_VERSION_u-boot ?= "v2013.07%"
+PREFERRED_VERSION_u-boot ?= "v2015.01%"
 {{ input type:"edit" name:"uboot_entrypoint" prio:"40" msg:"Please specify a value for UBOOT_ENTRYPOINT:" default:"0x00000000" }}
 UBOOT_ENTRYPOINT = "{{=uboot_entrypoint}}"
 
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
index 8903a82..811d695 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.17) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.19) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.17"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.19"}}
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
deleted file mode 100644
index 39bc72d..0000000
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-rt_3.10": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
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
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "f35992f80c81dc5fa1a97165dfd5cbb84661f7cb"
-#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "1b534b2f8bbe9b8a773268cfa30a4850346f6f5f"
-#LINUX_VERSION = "3.10.9"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
deleted file mode 100644
index f04dd0c..0000000
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.10": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-tiny.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
-#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.10.9"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
deleted file mode 100644
index fb42532..0000000
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.17": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-tiny.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
-#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.17"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
new file mode 100644
index 0000000..4de82fa
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
@@ -0,0 +1,33 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.19": }} this
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
+
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-tiny.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
+#LINUX_VERSION = "3.19"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.10.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.10.bbappend
deleted file mode 100644
index 15b4b97..0000000
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.10.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.10": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "19f7e43b54aef08d58135ed2a897d77b624b320a"
-#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "459165c1dd61c4e843c36e6a1abeb30949a20ba7"
-#LINUX_VERSION = "3.10.9"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.17.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.19.bbappend
similarity index 94%
rename from scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.17.bbappend
rename to scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.19.bbappend
index 72af58a..ded9e85 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_3.17.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_3.19.bbappend
@@ -1,4 +1,4 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.17": }} this
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.19": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
@@ -30,4 +30,4 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
 #SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.17"
\ No newline at end of file
+#LINUX_VERSION = "3.19"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
index 8903a82..811d695 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.17) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.19) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.17"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.19"}}
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
deleted file mode 100644
index 3609787..0000000
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
+++ /dev/null
@@ -1,62 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-rt_3.10": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "arm": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"arm" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "arm": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"arm" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/qemuppc" }}
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
-{{ if need_new_kbranch == "y" and qemuarch == "mips64": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips64" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "mips64": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips64" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "f35992f80c81dc5fa1a97165dfd5cbb84661f7cb"
-#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "1b534b2f8bbe9b8a773268cfa30a4850346f6f5f"
-#LINUX_VERSION = "3.10.35"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
deleted file mode 100644
index 1ee148f..0000000
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
+++ /dev/null
@@ -1,62 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.10": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "arm": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"arm" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "arm": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"arm" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/common-pc" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "x86_64": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "mips": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "mips": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "mips64": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips64" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "mips64": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips64" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-tiny.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
-#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.10.35"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.4.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
similarity index 99%
rename from scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.4.bbappend
rename to scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
index 5bfb877..7879ce2 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.4.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
@@ -1,4 +1,4 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.4": }} this
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.14": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
similarity index 99%
rename from scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
rename to scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
index 0175107..f7ef4bb 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
@@ -1,4 +1,4 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.17": }} this
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.19": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
@@ -59,4 +59,4 @@ SRC_URI += "file://{{=machine}}-tiny.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "0143c6ebb4a2d63b241df5f608b19f483f7eb9e0"
 #SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "8f55bee2403176a50cc0dd41811aa60fcf07243c"
-#LINUX_VERSION = "3.17"
+#LINUX_VERSION = "3.19"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.10.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.10.bbappend
deleted file mode 100644
index 974e291..0000000
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.10.bbappend
+++ /dev/null
@@ -1,62 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.10": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "arm": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base your new BSP branch on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "arm": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose an existing machine branch to use for this BSP:" default:"standard/arm-versatile-926ejs" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/qemuppc" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc-64"  prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc-64/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "x86_64": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc-64"  prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc-64/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "mips": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "mips": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/mti-malta32" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "mips64": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips64" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "mips64": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips64" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/mti-malta64" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "b170394a475b96ecc92cbc9e4b002bed0a9f69c5"
-#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "c2ed0f16fdec628242a682897d5d86df4547cf24"
-#LINUX_VERSION = "3.10.35"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.17.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.19.bbappend
similarity index 98%
rename from scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.17.bbappend
rename to scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.19.bbappend
index b81f272..b4798b7 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.17.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_3.19.bbappend
@@ -1,4 +1,4 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.17": }} this
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.19": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
@@ -59,4 +59,4 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "0143c6ebb4a2d63b241df5f608b19f483f7eb9e0"
 #SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "8f55bee2403176a50cc0dd41811aa60fcf07243c"
-#LINUX_VERSION = "3.17"
+#LINUX_VERSION = "3.19"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
index 8903a82..811d695 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.17) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.19) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.17"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.19"}}
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
deleted file mode 100644
index 39bc72d..0000000
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-rt_3.10": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
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
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-preempt-rt.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "f35992f80c81dc5fa1a97165dfd5cbb84661f7cb"
-#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "1b534b2f8bbe9b8a773268cfa30a4850346f6f5f"
-#LINUX_VERSION = "3.10.9"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
deleted file mode 100644
index f04dd0c..0000000
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.10": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-tiny.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
-#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.10.9"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
deleted file mode 100644
index fb42532..0000000
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.17": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-tiny.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
-#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.17"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
new file mode 100644
index 0000000..4de82fa
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_3.19.bbappend
@@ -0,0 +1,33 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.19": }} this
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
+
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-tiny.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
+#LINUX_VERSION = "3.19"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.10.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.10.bbappend
deleted file mode 100644
index e21a333..0000000
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.10.bbappend
+++ /dev/null
@@ -1,33 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.10": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc-64" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc-64/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc-64" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc-64/base" }}
-
-{{ if need_new_kbranch == "n": }}
-KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
-
-{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
-{{ if smp == "y": }}
-KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
-
-SRC_URI += "file://{{=machine}}-standard.scc \
-            file://{{=machine}}-user-config.cfg \
-            file://{{=machine}}-user-patches.scc \
-            file://{{=machine}}-user-features.scc \
-           "
-
-# uncomment and replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "b170394a475b96ecc92cbc9e4b002bed0a9f69c5"
-#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "c2ed0f16fdec628242a682897d5d86df4547cf24"
-#LINUX_VERSION = "3.10.9"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.17.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.19.bbappend
similarity index 94%
rename from scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.17.bbappend
rename to scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.19.bbappend
index 08aa00a..dba63c3 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.17.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_3.19.bbappend
@@ -1,4 +1,4 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.17": }} this
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.19": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
@@ -30,4 +30,4 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
 #SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
-#LINUX_VERSION = "3.17"
+#LINUX_VERSION = "3.19"
-- 
1.9.3


