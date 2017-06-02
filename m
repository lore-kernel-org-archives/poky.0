Return-Path: <daniela.plascencia@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C4D4E0085D; Fri,  2 Jun 2017 07:57:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96147E0077F
	for <poky@yoctoproject.org>; Fri,  2 Jun 2017 07:57:04 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Jun 2017 07:57:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,285,1493708400"; d="scan'208";a="1177503909"
Received: from yctb04.ostc.intel.com ([10.54.69.58])
	by fmsmga002.fm.intel.com with ESMTP; 02 Jun 2017 07:57:01 -0700
From: daniela.plascencia@linux.intel.com
To: poky@yoctoproject.org
Date: Fri,  2 Jun 2017 07:56:52 -0700
Message-Id: <20170602145652.16567-1-daniela.plascencia@linux.intel.com>
X-Mailer: git-send-email 2.12.0
Cc: Daniela Plascencia <daniela.plascencia@linux.intel.com>
Subject: [PATCH] scripts/lib: removes bsp 4.8 kernel bbappends as the version is no longer supported
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
X-List-Received-Date: Fri, 02 Jun 2017 14:57:08 -0000

From: Daniela Plascencia <daniela.plascencia@linux.intel.com>

These files should be removed as version 4.8 is no longer supported (6751dce4cf
and 1632f6623c) and errors may be produced when executing some commands.
For instance, "yocto-bsp list <karch> --property <property_name>" expects the
SRC_URI of the 4.8 kernel recipe, which doesn't exist anymore, throwing the
following exception:

$ yocto-bsp list arm --property existing_kbranch
Getting branches from remote repo None...
Traceback (most recent call last):
...
SyntaxError: function specified for 'gen' property returned nothing : input type:
"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches"
branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this
BSP on:" default:"standard/base"

[YOCTO #9867]

Signed-off-by: Daniela Plascencia <daniela.plascencia@linux.intel.com>
---
 .../linux/linux-yocto-tiny_4.8.bbappend            | 35 ------------
 .../recipes-kernel/linux/linux-yocto_4.8.bbappend  | 34 ------------
 .../linux/linux-yocto-tiny_4.8.bbappend            | 35 ------------
 .../recipes-kernel/linux/linux-yocto_4.8.bbappend  | 34 ------------
 .../linux/linux-yocto-tiny_4.8.bbappend            | 35 ------------
 .../recipes-kernel/linux/linux-yocto_4.8.bbappend  | 34 ------------
 .../linux/linux-yocto-tiny_4.8.bbappend            | 35 ------------
 .../recipes-kernel/linux/linux-yocto_4.8.bbappend  | 34 ------------
 .../linux/linux-yocto-tiny_4.8.bbappend            | 35 ------------
 .../recipes-kernel/linux/linux-yocto_4.8.bbappend  | 34 ------------
 .../linux/linux-yocto-tiny_4.8.bbappend            | 64 ----------------------
 .../recipes-kernel/linux/linux-yocto_4.8.bbappend  | 63 ---------------------
 .../linux/linux-yocto-tiny_4.8.bbappend            | 35 ------------
 .../recipes-kernel/linux/linux-yocto_4.8.bbappend  | 34 ------------
 14 files changed, 541 deletions(-)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend

diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
deleted file mode 100644
index c391322e3f..0000000000
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
+++ /dev/null
@@ -1,35 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_4.8": }} this
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
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "4.8"
-#Remove the following line once AUTOREV is locked to a certain SRCREV
-KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend
deleted file mode 100644
index 59752a9edf..0000000000
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ /dev/null
@@ -1,34 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_4.8": }} this
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
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "4.8"
-#Remove the following line once AUTOREV is locked to a certain SRCREV
-KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
deleted file mode 100644
index c391322e3f..0000000000
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
+++ /dev/null
@@ -1,35 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_4.8": }} this
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
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "4.8"
-#Remove the following line once AUTOREV is locked to a certain SRCREV
-KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend
deleted file mode 100644
index a535aeab8f..0000000000
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ /dev/null
@@ -1,34 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_4.8": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
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
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "4.8"
-#Remove the following line once AUTOREV is locked to a certain SRCREV
-KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
deleted file mode 100644
index c391322e3f..0000000000
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
+++ /dev/null
@@ -1,35 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_4.8": }} this
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
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "4.8"
-#Remove the following line once AUTOREV is locked to a certain SRCREV
-KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend
deleted file mode 100644
index 59752a9edf..0000000000
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ /dev/null
@@ -1,34 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_4.8": }} this
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
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "4.8"
-#Remove the following line once AUTOREV is locked to a certain SRCREV
-KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
deleted file mode 100644
index c391322e3f..0000000000
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
+++ /dev/null
@@ -1,35 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_4.8": }} this
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
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "4.8"
-#Remove the following line once AUTOREV is locked to a certain SRCREV
-KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend
deleted file mode 100644
index c2eb40d496..0000000000
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ /dev/null
@@ -1,34 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_4.8": }} this
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-PR := "${PR}.1"
-
-COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
-
-{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
-
-{{ if need_new_kbranch == "y": }}
-{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/edgerouter" }}
-
-{{ if need_new_kbranch == "n": }}
-{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/edgerouter" }}
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
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "4.8"
-#Remove the following line once AUTOREV is locked to a certain SRCREV
-KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
deleted file mode 100644
index c391322e3f..0000000000
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
+++ /dev/null
@@ -1,35 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_4.8": }} this
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
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "4.8"
-#Remove the following line once AUTOREV is locked to a certain SRCREV
-KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend
deleted file mode 100644
index 59752a9edf..0000000000
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ /dev/null
@@ -1,34 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_4.8": }} this
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
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "4.8"
-#Remove the following line once AUTOREV is locked to a certain SRCREV
-KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
deleted file mode 100644
index 7d40671fd4..0000000000
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
+++ /dev/null
@@ -1,64 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_4.8": }} this
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
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "4.8"
-#Remove the following line once AUTOREV is locked to a certain SRCREV
-KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
deleted file mode 100644
index 24c28803ee..0000000000
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ /dev/null
@@ -1,63 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_4.8": }} this
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
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard"  prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "x86_64": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard"  prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "mips": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/mti-malta32" }}
-
-{{ if need_new_kbranch == "n" and qemuarch == "mips64": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips64" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/mti-malta64" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "mips": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
-
-{{ if need_new_kbranch == "y" and qemuarch == "mips64": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips64" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
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
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "4.8"
-#Remove the following line once AUTOREV is locked to a certain SRCREV
-KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
deleted file mode 100644
index c391322e3f..0000000000
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
+++ /dev/null
@@ -1,35 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_4.8": }} this
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
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "4.8"
-#Remove the following line once AUTOREV is locked to a certain SRCREV
-KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend
deleted file mode 100644
index 59752a9edf..0000000000
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ /dev/null
@@ -1,34 +0,0 @@
-# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_4.8": }} this
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
-            file://{{=machine}}-user-features.scc \
-           "
-
-# replace these SRCREVs with the real commit ids once you've had
-# the appropriate changes committed to the upstream linux-yocto repo
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
-#LINUX_VERSION = "4.8"
-#Remove the following line once AUTOREV is locked to a certain SRCREV
-KERNEL_VERSION_SANITY_SKIP = "1"
-- 
2.12.0


