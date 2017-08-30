Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F4201E0091D; Wed, 30 Aug 2017 12:14:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F599E00349
	for <poky@yoctoproject.org>; Wed, 30 Aug 2017 12:14:27 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Aug 2017 12:14:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,449,1498546800"; d="scan'208";a="130048987"
Received: from yctb05.ostc.intel.com ([10.54.69.59])
	by orsmga002.jf.intel.com with ESMTP; 30 Aug 2017 12:14:07 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Wed, 30 Aug 2017 12:14:05 -0700
Message-Id: <20170830191405.46589-1-leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.12.3
Subject: [PATCH] linux-yocto: add linux-yocto 4.12 bbappends
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
X-List-Received-Date: Wed, 30 Aug 2017 19:14:31 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

This allows the yocto-bsp script to pick the 4.12 kernel version when
creating a custom BSP.

[YOCTO #11995]

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 .../arm/recipes-kernel/linux/kernel-list.noinstall |  4 +-
 .../linux/linux-yocto-tiny_4.12.bbappend           | 37 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend | 37 ++++++++++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-tiny_4.12.bbappend           | 37 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend | 37 ++++++++++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-tiny_4.12.bbappend           | 37 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend | 37 ++++++++++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-tiny_4.12.bbappend           | 37 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend | 37 ++++++++++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-tiny_4.12.bbappend           | 37 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend | 37 ++++++++++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-tiny_4.12.bbappend           | 67 ++++++++++++++++++++++
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend | 67 ++++++++++++++++++++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../linux/linux-yocto-tiny_4.12.bbappend           | 37 ++++++++++++
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend | 37 ++++++++++++
 21 files changed, 592 insertions(+), 14 deletions(-)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.12.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.12.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.12.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.12.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.12.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.12.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
 create mode 100644 scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.12.bbappend

diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
index 20f2059ce3..917f0e2207 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (4.10) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (4.12) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_4.10"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_4.12"}}
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
new file mode 100644
index 0000000000..6f3e104c66
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
@@ -0,0 +1,37 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_4.12": }} this
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
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
+           "
+
+# replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#LINUX_VERSION = "4.10"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.12.bbappend b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.12.bbappend
new file mode 100644
index 0000000000..e874c9e45f
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_4.12.bbappend
@@ -0,0 +1,37 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_4.12": }} this
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
+           "
+
+# replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#LINUX_VERSION = "4.10"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
index 20f2059ce3..917f0e2207 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (4.10) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (4.12) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_4.10"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_4.12"}}
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
new file mode 100644
index 0000000000..6f3e104c66
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
@@ -0,0 +1,37 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_4.12": }} this
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
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
+           "
+
+# replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#LINUX_VERSION = "4.10"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.12.bbappend b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.12.bbappend
new file mode 100644
index 0000000000..20d57f673c
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-yocto_4.12.bbappend
@@ -0,0 +1,37 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_4.12": }} this
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
+           "
+
+# replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#LINUX_VERSION = "4.10"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
index 20f2059ce3..917f0e2207 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (4.10) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (4.12) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_4.10"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_4.12"}}
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
new file mode 100644
index 0000000000..6f3e104c66
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
@@ -0,0 +1,37 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_4.12": }} this
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
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
+           "
+
+# replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#LINUX_VERSION = "4.10"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.12.bbappend b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.12.bbappend
new file mode 100644
index 0000000000..e874c9e45f
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/linux-yocto_4.12.bbappend
@@ -0,0 +1,37 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_4.12": }} this
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
+           "
+
+# replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#LINUX_VERSION = "4.10"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/kernel-list.noinstall
index 20f2059ce3..917f0e2207 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (4.10) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (4.12) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_4.10"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_4.12"}}
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
new file mode 100644
index 0000000000..6f3e104c66
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
@@ -0,0 +1,37 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_4.12": }} this
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
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
+           "
+
+# replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#LINUX_VERSION = "4.10"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.12.bbappend b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.12.bbappend
new file mode 100644
index 0000000000..5333c30b85
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/recipes-kernel/linux/linux-yocto_4.12.bbappend
@@ -0,0 +1,37 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_4.12": }} this
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/edgerouter" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/edgerouter" }}
+
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
+           "
+
+# replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#LINUX_VERSION = "4.10"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
index 20f2059ce3..917f0e2207 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (4.10) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (4.12) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_4.10"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_4.12"}}
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
new file mode 100644
index 0000000000..6f3e104c66
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
@@ -0,0 +1,37 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_4.12": }} this
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
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
+           "
+
+# replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#LINUX_VERSION = "4.10"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.12.bbappend b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.12.bbappend
new file mode 100644
index 0000000000..e874c9e45f
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/linux-yocto_4.12.bbappend
@@ -0,0 +1,37 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_4.12": }} this
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
+           "
+
+# replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#LINUX_VERSION = "4.10"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
index 20f2059ce3..917f0e2207 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (4.10) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (4.12) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_4.10"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_4.12"}}
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
new file mode 100644
index 0000000000..83eb216dc1
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
@@ -0,0 +1,67 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_4.12": }} this
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "arm": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"arm" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "arm": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"arm" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "powerpc": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "i386": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "i386": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/common-pc" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "x86_64": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "mips": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "mips": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "mips64": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips64" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "mips64": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips64" gen:"bsp.kernel.all_branches" branches_base:"standard/tiny" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/tiny/base" }}
+
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ if qemuarch != "arm": }}
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
+           "
+
+# replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#LINUX_VERSION = "4.10"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.12.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.12.bbappend
new file mode 100644
index 0000000000..d7ce37e239
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.12.bbappend
@@ -0,0 +1,67 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_4.12": }} this
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "arm": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base your new BSP branch on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "arm": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose an existing machine branch to use for this BSP:" default:"standard/arm-versatile-926ejs" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "powerpc": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/qemuppc" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "i386": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "i386": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard"  prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "x86_64": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard"  prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "mips": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/mti-malta32" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "mips64": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips64" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/mti-malta64" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "mips": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "mips64": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips64" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ if qemuarch != "arm": }}
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
+           "
+
+# replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#LINUX_VERSION = "4.10"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
index 20f2059ce3..917f0e2207 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (4.10) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (4.12) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_4.10"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_4.12"}}
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
new file mode 100644
index 0000000000..6f3e104c66
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto-tiny_4.12.bbappend
@@ -0,0 +1,37 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_4.12": }} this
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
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-tiny.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
+           "
+
+# replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "${AUTOREV}"
+#LINUX_VERSION = "4.10"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.12.bbappend b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.12.bbappend
new file mode 100644
index 0000000000..e874c9e45f
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux-yocto_4.12.bbappend
@@ -0,0 +1,37 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_4.12": }} this
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://{{=machine}}-standard.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-features.scc \
+            file://{{=machine}}-user-patches.scc \
+           "
+
+# replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "${AUTOREV}"
+#LINUX_VERSION = "4.10"
+#Remove the following line once AUTOREV is locked to a certain SRCREV
+KERNEL_VERSION_SANITY_SKIP = "1"
-- 
2.12.3


