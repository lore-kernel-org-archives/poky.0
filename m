Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED7B3E01484
	for <poky@yoctoproject.org>; Wed, 13 Mar 2013 12:04:37 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Mar 2013 12:04:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,838,1355126400"; d="scan'208";a="278490288"
Received: from unknown (HELO localhost) ([10.255.12.139])
	by orsmga001.jf.intel.com with ESMTP; 13 Mar 2013 12:04:26 -0700
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Wed, 13 Mar 2013 14:04:05 -0500
Message-Id: <5fde301f0640e1e1bd2ef6b7fb8c1dd7f35ec8a7.1363198817.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
References: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1363198817.git.tom.zanussi@linux.intel.com>
References: <cover.1363198817.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 11/18] yocto-bsp: add support for linux-yocto-dev
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
X-List-Received-Date: Wed, 13 Mar 2013 19:04:38 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../target/arch/arm/conf/machine/{{=machine}}.conf |  9 +++--
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" | 21 ++++++++++
 .../arch/i386/conf/machine/{{=machine}}.conf       |  9 +++--
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" | 21 ++++++++++
 .../arch/mips/conf/machine/{{=machine}}.conf       |  9 +++--
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" | 21 ++++++++++
 .../arch/powerpc/conf/machine/{{=machine}}.conf    |  9 +++--
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" | 21 ++++++++++
 .../arch/qemu/conf/machine/{{=machine}}.conf       | 10 +++--
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" | 45 ++++++++++++++++++++++
 .../arch/x86_64/conf/machine/{{=machine}}.conf     |  9 +++--
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" | 21 ++++++++++
 12 files changed, 181 insertions(+), 24 deletions(-)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"

diff --git a/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
index d9ac3ff..ce9a58f 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
@@ -71,12 +71,13 @@ EXTRA_IMAGECMD_jffs2 = "-lnp "
 SERIAL_CONSOLE = "115200 ttyO2"
 
 {{ if kernel_choice == "custom": preferred_kernel = "linux-yocto-custom" }}
-{{ if kernel_choice == "custom": }}
+{{ if kernel_choice == "linux-yocto-dev": preferred_kernel = "linux-yocto-dev" }}
+{{ if kernel_choice == "custom" or kernel_choice == "linux-yocto-dev" : }}
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 
-{{ if kernel_choice != "custom": preferred_kernel = kernel_choice.split('_')[0] }}
-{{ if kernel_choice != "custom": preferred_kernel_version = kernel_choice.split('_')[1] }}
-{{ if kernel_choice != "custom": }}
+{{ if kernel_choice != "custom" and kernel_choice != "linux-yocto-dev": preferred_kernel = kernel_choice.split('_')[0] }}
+{{ if kernel_choice != "custom" and kernel_choice != "linux-yocto-dev": preferred_kernel_version = kernel_choice.split('_')[1] }}
+{{ if kernel_choice != "custom" and kernel_choice != "linux-yocto-dev": }}
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
new file mode 100644
index 0000000..0d81446
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -0,0 +1,21 @@
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+           "
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
index 6c0ecba..a33cb2e 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
@@ -4,12 +4,13 @@
 #@DESCRIPTION: Machine configuration for {{=machine}} systems
 
 {{ if kernel_choice == "custom": preferred_kernel = "linux-yocto-custom" }}
-{{ if kernel_choice == "custom": }}
+{{ if kernel_choice == "linux-yocto-dev": preferred_kernel = "linux-yocto-dev" }}
+{{ if kernel_choice == "custom" or kernel_choice == "linux-yocto-dev" : }}
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 
-{{ if kernel_choice != "custom": preferred_kernel = kernel_choice.split('_')[0] }}
-{{ if kernel_choice != "custom": preferred_kernel_version = kernel_choice.split('_')[1] }}
-{{ if kernel_choice != "custom": }}
+{{ if kernel_choice != "custom" and kernel_choice != "linux-yocto-dev": preferred_kernel = kernel_choice.split('_')[0] }}
+{{ if kernel_choice != "custom" and kernel_choice != "linux-yocto-dev": preferred_kernel_version = kernel_choice.split('_')[1] }}
+{{ if kernel_choice != "custom" and kernel_choice != "linux-yocto-dev": }}
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
new file mode 100644
index 0000000..0d81446
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -0,0 +1,21 @@
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+           "
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf
index 4dd5940..08bb9f1 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf
@@ -11,12 +11,13 @@ KERNEL_IMAGETYPE = "vmlinux"
 KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 
 {{ if kernel_choice == "custom": preferred_kernel = "linux-yocto-custom" }}
-{{ if kernel_choice == "custom": }}
+{{ if kernel_choice == "linux-yocto-dev": preferred_kernel = "linux-yocto-dev" }}
+{{ if kernel_choice == "custom" or kernel_choice == "linux-yocto-dev" : }}
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 
-{{ if kernel_choice != "custom": preferred_kernel = kernel_choice.split('_')[0] }}
-{{ if kernel_choice != "custom": preferred_kernel_version = kernel_choice.split('_')[1] }}
-{{ if kernel_choice != "custom": }}
+{{ if kernel_choice != "custom" and kernel_choice != "linux-yocto-dev": preferred_kernel = kernel_choice.split('_')[0] }}
+{{ if kernel_choice != "custom" and kernel_choice != "linux-yocto-dev": preferred_kernel_version = kernel_choice.split('_')[1] }}
+{{ if kernel_choice != "custom" and kernel_choice != "linux-yocto-dev": }}
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
new file mode 100644
index 0000000..0d81446
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -0,0 +1,21 @@
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+           "
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf
index 52a5a8a..0456dcd 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf
@@ -35,12 +35,13 @@ SERIAL_CONSOLE = "115200 ttyS0"
 MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
 
 {{ if kernel_choice == "custom": preferred_kernel = "linux-yocto-custom" }}
-{{ if kernel_choice == "custom": }}
+{{ if kernel_choice == "linux-yocto-dev": preferred_kernel = "linux-yocto-dev" }}
+{{ if kernel_choice == "custom" or kernel_choice == "linux-yocto-dev" : }}
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 
-{{ if kernel_choice != "custom": preferred_kernel = kernel_choice.split('_')[0] }}
-{{ if kernel_choice != "custom": preferred_kernel_version = kernel_choice.split('_')[1] }}
-{{ if kernel_choice != "custom": }}
+{{ if kernel_choice != "custom" and kernel_choice != "linux-yocto-dev": preferred_kernel = kernel_choice.split('_')[0] }}
+{{ if kernel_choice != "custom" and kernel_choice != "linux-yocto-dev": preferred_kernel_version = kernel_choice.split('_')[1] }}
+{{ if kernel_choice != "custom" and kernel_choice != "linux-yocto-dev": }}
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
new file mode 100644
index 0000000..0d81446
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -0,0 +1,21 @@
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+           "
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
index 460f269..dd7b97e 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
@@ -2,13 +2,15 @@
 #@NAME: {{=machine}}
 
 #@DESCRIPTION: Machine configuration for {{=machine}} systems
+
 {{ if kernel_choice == "custom": preferred_kernel = "linux-yocto-custom" }}
-{{ if kernel_choice == "custom": }}
+{{ if kernel_choice == "linux-yocto-dev": preferred_kernel = "linux-yocto-dev" }}
+{{ if kernel_choice == "custom" or kernel_choice == "linux-yocto-dev" : }}
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 
-{{ if kernel_choice != "custom": preferred_kernel = kernel_choice.split('_')[0] }}
-{{ if kernel_choice != "custom": preferred_kernel_version = kernel_choice.split('_')[1] }}
-{{ if kernel_choice != "custom": }}
+{{ if kernel_choice != "custom" and kernel_choice != "linux-yocto-dev": preferred_kernel = kernel_choice.split('_')[0] }}
+{{ if kernel_choice != "custom" and kernel_choice != "linux-yocto-dev": preferred_kernel_version = kernel_choice.split('_')[1] }}
+{{ if kernel_choice != "custom" and kernel_choice != "linux-yocto-dev": }}
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
new file mode 100644
index 0000000..e6a293f
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -0,0 +1,45 @@
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
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
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/qemu-ppc32" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "i386": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc/base" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "i386": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc/base" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc-64"  prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc-64/base" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "x86_64": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc-64"  prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc-64/base" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "mips": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "mips": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/mti-malta32-be" }}
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+           "
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf
index 52a96df..f20d161 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf
@@ -4,12 +4,13 @@
 #@DESCRIPTION: Machine configuration for {{=machine}} systems
 
 {{ if kernel_choice == "custom": preferred_kernel = "linux-yocto-custom" }}
-{{ if kernel_choice == "custom": }}
+{{ if kernel_choice == "linux-yocto-dev": preferred_kernel = "linux-yocto-dev" }}
+{{ if kernel_choice == "custom" or kernel_choice == "linux-yocto-dev" : }}
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 
-{{ if kernel_choice != "custom": preferred_kernel = kernel_choice.split('_')[0] }}
-{{ if kernel_choice != "custom": preferred_kernel_version = kernel_choice.split('_')[1] }}
-{{ if kernel_choice != "custom": }}
+{{ if kernel_choice != "custom" and kernel_choice != "linux-yocto-dev": preferred_kernel = kernel_choice.split('_')[0] }}
+{{ if kernel_choice != "custom" and kernel_choice != "linux-yocto-dev": preferred_kernel_version = kernel_choice.split('_')[1] }}
+{{ if kernel_choice != "custom" and kernel_choice != "linux-yocto-dev": }}
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
new file mode 100644
index 0000000..0d81446
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -0,0 +1,21 @@
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+           "
-- 
1.7.11.4


