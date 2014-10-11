Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF737E007B9; Fri, 10 Oct 2014 20:32:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA8CAE00796
	for <poky@yoctoproject.org>; Fri, 10 Oct 2014 20:32:48 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 10 Oct 2014 20:22:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="398575249"
Received: from ccomac-mobl.ger.corp.intel.com (HELO localhost)
	([10.255.12.246])
	by FMSMGA003.fm.intel.com with ESMTP; 10 Oct 2014 20:25:26 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 10 Oct 2014 22:32:22 -0500
Message-Id: <a16b60f11bee2448110e9cda90860ec5d21c8449.1412997968.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <cover.1412997968.git.tom.zanussi@linux.intel.com>
References: <cover.1412997968.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 1/1] yocto-bsp: Update templates to 3.17 kernel
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
X-List-Received-Date: Sat, 11 Oct 2014 03:32:52 -0000

Add 3.17 kernel support.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../target/arch/arm/conf/machine/{{=machine}}.conf | 24 ++++------
 .../arm/recipes-kernel/linux/kernel-list.noinstall |  4 +-
 ...cto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" | 32 +++++++++++++
 ...tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" | 32 +++++++++++++
 ...nux-yocto_3.17\": }} linux-yocto_3.17.bbappend" | 32 +++++++++++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  8 ++--
 .../arch/i386/conf/machine/{{=machine}}.conf       | 20 ++++++--
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...cto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" | 32 +++++++++++++
 ...tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" | 32 +++++++++++++
 ...nux-yocto_3.17\": }} linux-yocto_3.17.bbappend" | 32 +++++++++++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...cto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" | 32 +++++++++++++
 ...tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" | 32 +++++++++++++
 ...nux-yocto_3.17\": }} linux-yocto_3.17.bbappend" | 32 +++++++++++++
 .../arch/powerpc/conf/machine/{{=machine}}.conf    | 12 +++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...cto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" | 32 +++++++++++++
 ...tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" | 32 +++++++++++++
 ...nux-yocto_3.17\": }} linux-yocto_3.17.bbappend" | 32 +++++++++++++
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  4 +-
 ...cto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" | 55 ++++++++++++++++++++++
 ...tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" | 55 ++++++++++++++++++++++
 ...nux-yocto_3.10\": }} linux-yocto_3.10.bbappend" |  4 +-
 ...nux-yocto_3.14\": }} linux-yocto_3.14.bbappend" |  4 +-
 ...nux-yocto_3.17\": }} linux-yocto_3.17.bbappend" | 55 ++++++++++++++++++++++
 .../arch/x86_64/conf/machine/{{=machine}}.conf     | 10 +++-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...cto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" | 32 +++++++++++++
 ...tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" | 32 +++++++++++++
 ...nux-yocto_3.17\": }} linux-yocto_3.17.bbappend" | 32 +++++++++++++
 32 files changed, 713 insertions(+), 42 deletions(-)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"

diff --git a/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
index 44a80d2..4bbc96e 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
@@ -9,19 +9,13 @@ PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
            xf86-input-evdev \
            xf86-input-mouse \
-           xf86-video-omapfb \
+           xf86-video-fbdev \
            xf86-input-keyboard"
 
-# Ship all kernel modules by default
-MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
+MACHINE_EXTRA_RRECOMMENDS = " kernel-modules kernel-devicetree"
 
-# Allow for MMC booting (required by the NAND-less Beagleboard XM)
 EXTRA_IMAGEDEPENDS += "u-boot"
 
-# Uncomment the following line to enable the hard floating point abi. Note that
-# this breaks some binary libraries and 3D (neither of which ship with
-# meta-yocto). For maximum compatibility, leave this disabled.
-#DEFAULTTUNE ?= "cortexa8hf-neon"
 {{ input type:"choicelist" name:"tunefile" prio:"40" msg:"Which machine tuning would you like to use?" default:"tune_cortexa8" }}
 {{ input type:"choice" val:"tune_arm1136jf_s" msg:"arm1136jf-s tuning optimizations" }}
 {{ input type:"choice" val:"tune_arm920t" msg:"arm920t tuning optimizations" }}
@@ -52,6 +46,7 @@ include conf/machine/include/tune-cortexa5.inc
 {{ if tunefile == "tune_cortexa7": }}
 include conf/machine/include/tune-cortexa7.inc
 {{ if tunefile == "tune_cortexa8": }}
+DEFAULTTUNE ?= "cortexa8hf-neon"
 include conf/machine/include/tune-cortexa8.inc
 {{ if tunefile == "tune_cortexa9": }}
 include conf/machine/include/tune-cortexa9.inc
@@ -75,9 +70,7 @@ include conf/machine/include/tune-xscale.inc
 IMAGE_FSTYPES += "tar.bz2 jffs2"
 EXTRA_IMAGECMD_jffs2 = "-lnp "
 
-# 2.6.37 and later kernels use OMAP_SERIAL, ttyO2
-# earlier kernels use ttyS2
-SERIAL_CONSOLE = "115200 ttyO2"
+SERIAL_CONSOLE = "115200 ttyO0"
 
 {{ if kernel_choice == "custom": preferred_kernel = "linux-yocto-custom" }}
 {{ if kernel_choice == "linux-yocto-dev": preferred_kernel = "linux-yocto-dev" }}
@@ -90,12 +83,13 @@ PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 
-KERNEL_IMAGETYPE = "zImage"
-KERNEL_DEVICETREE = "${S}/arch/arm/boot/dts/omap3-beagle.dts ${S}/arch/arm/boot/dts/omap3-beagle-xm.dts"
+KERNEL_IMAGETYPE = "uImage"
+KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb"
+KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
 
 SPL_BINARY = "MLO"
 UBOOT_SUFFIX = "img"
-{{ input type:"edit" name:"uboot_machine" prio:"40" msg:"Please specify a value for UBOOT_MACHINE:" default:"omap3_beagle_config" }}
+{{ input type:"edit" name:"uboot_machine" prio:"40" msg:"Please specify a value for UBOOT_MACHINE:" default:"am335x_evm_config" }}
 UBOOT_MACHINE = "{{=uboot_machine}}"
 {{ input type:"edit" name:"uboot_entrypoint" prio:"40" msg:"Please specify a value for UBOOT_ENTRYPOINT:" default:"0x80008000" }}
 UBOOT_ENTRYPOINT = "{{=uboot_entrypoint}}"
@@ -103,3 +97,5 @@ UBOOT_ENTRYPOINT = "{{=uboot_entrypoint}}"
 UBOOT_LOADADDRESS = "{{=uboot_loadaddress}}"
 
 MACHINE_FEATURES = "usbgadget usbhost vfat alsa"
+
+IMAGE_BOOT_FILES ?= "u-boot.${UBOOT_SUFFIX} MLO"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
index a04e6c7..8903a82 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.14) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.17) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.14"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.17"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
new file mode 100644
index 0000000..6144e3a
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"	
@@ -0,0 +1,32 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-preempt-rt.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "f35992f80c81dc5fa1a97165dfd5cbb84661f7cb"
+#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "1b534b2f8bbe9b8a773268cfa30a4850346f6f5f"
+#LINUX_VERSION = "3.14"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
new file mode 100644
index 0000000..e545efa
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"	
@@ -0,0 +1,32 @@
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
+#LINUX_VERSION = "3.17"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"
new file mode 100644
index 0000000..4fed004
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"	
@@ -0,0 +1,32 @@
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
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
+#LINUX_VERSION = "3.17"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/kernel-list.noinstall
index 03b7d84..663dddb 100644
--- a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/kernel-list.noinstall
@@ -2,22 +2,22 @@
 {{ input type:"boolean" name:"custom_kernel_remote" prio:"20" msg:"Is the custom kernel you'd like to use in a remote git repo? (y/n)" default:"y"}}
 
 {{ if kernel_choice == "custom" and custom_kernel_remote == "y": }}
-{{ input type:"edit-git-repo" name:"custom_kernel_remote_path" prio:"20" msg:"Please enter the full URI to the remote git repo (the default corresponds to linux-stable v3.13.9)" default:"git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git"}}
+{{ input type:"edit-git-repo" name:"custom_kernel_remote_path" prio:"20" msg:"Please enter the full URI to the remote git repo (the default corresponds to linux-stable v3.16.3)" default:"git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git"}}
 
 {{ if kernel_choice == "custom" and custom_kernel_remote == "n": }}
-{{ input type:"edit-git-repo" name:"custom_kernel_local_path" prio:"20" msg:"You've indicated that you're not using a remote git repo.  Please enter the full path to the local git repo you want to use (the default assumes a local linux-stable v3.13.9)" default:"/home/trz/yocto/kernels/linux-stable.git"}}
+{{ input type:"edit-git-repo" name:"custom_kernel_local_path" prio:"20" msg:"You've indicated that you're not using a remote git repo.  Please enter the full path to the local git repo you want to use (the default assumes a local linux-stable v3.16.3)" default:"/home/trz/yocto/kernels/linux-stable.git"}}
 
 {{ if kernel_choice == "custom": }}
 {{ input type:"boolean" name:"custom_kernel_need_kbranch" prio:"20" msg:"Do you need to use a specific (non-master) branch? (y/n)" default:"n"}}
 
 {{ if kernel_choice == "custom" and custom_kernel_need_kbranch == "y": }}
-{{ input type:"edit" name:"custom_kernel_kbranch" prio:"20" msg:"Please enter the branch you want to use (the default branch corresponds to the linux-stable 'linux-3.13.y' branch):" default:"linux-3.13.y"}}
+{{ input type:"edit" name:"custom_kernel_kbranch" prio:"20" msg:"Please enter the branch you want to use (the default branch corresponds to the linux-stable 'linux-3.16.y' branch):" default:"linux-3.16.y"}}
 
 {{ if kernel_choice == "custom": }}
 {{ input type:"edit" name:"custom_kernel_srcrev" prio:"20" msg:"Please enter the SRCREV (commit id) you'd like to use (use '${AUTOREV}' to track the current HEAD):" default:"${AUTOREV}"}}
 
 {{ if kernel_choice == "custom": }}
-{{ input type:"edit" name:"custom_kernel_linux_version" prio:"20" msg:"Please enter the Linux version of the kernel you've specified:" default:"3.13.9"}}
+{{ input type:"edit" name:"custom_kernel_linux_version" prio:"20" msg:"Please enter the Linux version of the kernel you've specified:" default:"3.16.3"}}
 
 {{ if kernel_choice == "custom": }}
 {{ input type:"edit" name:"custom_kernel_linux_version_extension" prio:"20" msg:"Please enter a Linux version extension if you want (it will show up at the end of the kernel name shown by uname):" default:"-custom"}}
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
index 0df4dc2..660eb6d 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
@@ -32,19 +32,23 @@ MACHINE_FEATURES += "wifi efi pcbios"
 
 {{ input type:"boolean" name:"xserver" prio:"50" msg:"Do you need support for X? (y/n)" default:"y" }}
 
-{{ if xserver == "y" and (kernel_choice == "linux-yocto_3.14" or kernel_choice == "linux-yocto_3.10"): }}
-{{ input type:"choicelist" name:"xserver_choice" prio:"50" msg:"Please select an xserver for this machine:" default:"xserver_i915" }}
+{{ if xserver == "y" and (kernel_choice == "linux-yocto_3.17" or kernel_choice == "linux-yocto_3.14" or kernel_choice == "linux-yocto_3.10"): }}
+{{ input type:"choicelist" name:"xserver_choice" prio:"50" msg:"Please select an xserver for this machine:" default:"xserver_vesa" }}
 {{ input type:"choice" val:"xserver_vesa" msg:"VESA xserver support" }}
 {{ input type:"choice" val:"xserver_i915" msg:"i915 xserver support" }}
 {{ input type:"choice" val:"xserver_i965" msg:"i965 xserver support" }}
+{{ input type:"choice" val:"xserver_fbdev" msg:"fbdev xserver support" }}
+{{ input type:"choice" val:"xserver_modesetting" msg:"modesetting xserver support" }}
 
 {{ if xserver == "y" and kernel_choice == "custom": }}
-{{ input type:"choicelist" name:"xserver_choice" prio:"50" msg:"Please select an xserver for this machine:" default:"xserver_i915" }}
+{{ input type:"choicelist" name:"xserver_choice" prio:"50" msg:"Please select an xserver for this machine:" default:"xserver_vesa" }}
 {{ input type:"choice" val:"xserver_vesa" msg:"VESA xserver support" }}
 {{ input type:"choice" val:"xserver_i915" msg:"i915 xserver support" }}
 {{ input type:"choice" val:"xserver_i965" msg:"i965 xserver support" }}
+{{ input type:"choice" val:"xserver_fbdev" msg:"fbdev xserver support" }}
+{{ input type:"choice" val:"xserver_modesetting" msg:"modesetting xserver support" }}
 
-{{ if xserver == "y" and kernel_choice != "linux-yocto_3.14" and kernel_choice != "linux-yocto_3.10" and kernel_choice != "custom": xserver_choice = "xserver_i915" }}
+{{ if xserver == "y" and kernel_choice != "linux-yocto_3.17" and kernel_choice != "linux-yocto_3.14" and kernel_choice != "linux-yocto_3.10" and kernel_choice != "custom": xserver_choice = "xserver_i915" }}
 
 {{ if xserver == "y": }}
 XSERVER ?= "${XSERVER_X86_BASE} \
@@ -55,12 +59,18 @@ XSERVER ?= "${XSERVER_X86_BASE} \
            ${XSERVER_X86_I915} \
 {{ if xserver == "y" and xserver_choice == "xserver_i965": }}
            ${XSERVER_X86_I965} \
+{{ if xserver == "y" and xserver_choice == "xserver_fbdev": }}
+           ${XSERVER_X86_FBDEV} \
+{{ if xserver == "y" and xserver_choice == "xserver_modesetting": }}
+           ${XSERVER_X86_MODESETTING} \
 {{ if xserver == "y": }}
            "
 
-MACHINE_EXTRA_RRECOMMENDS += "linux-firmware v86d"
+MACHINE_EXTRA_RRECOMMENDS += "linux-firmware v86d eee-acpi-scripts"
 
 EXTRA_OECONF_append_pn-matchbox-panel-2 = " --with-battery=acpi"
 
+GLIBC_ADDONS = "nptl"
+
 {{ if xserver == "y" and xserver_choice == "xserver_vesa": }}
 APPEND += "video=vesafb vga=0x318"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
index a04e6c7..8903a82 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.14) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.17) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.14"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.17"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
new file mode 100644
index 0000000..6144e3a
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"	
@@ -0,0 +1,32 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-preempt-rt.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "f35992f80c81dc5fa1a97165dfd5cbb84661f7cb"
+#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "1b534b2f8bbe9b8a773268cfa30a4850346f6f5f"
+#LINUX_VERSION = "3.14"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
new file mode 100644
index 0000000..e545efa
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"	
@@ -0,0 +1,32 @@
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
+#LINUX_VERSION = "3.17"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"
new file mode 100644
index 0000000..b2ebef4
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"	
@@ -0,0 +1,32 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
+
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
+#LINUX_VERSION = "3.17"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
index a04e6c7..8903a82 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.14) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.17) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.14"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.17"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
new file mode 100644
index 0000000..6144e3a
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"	
@@ -0,0 +1,32 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-preempt-rt.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "f35992f80c81dc5fa1a97165dfd5cbb84661f7cb"
+#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "1b534b2f8bbe9b8a773268cfa30a4850346f6f5f"
+#LINUX_VERSION = "3.14"
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
new file mode 100644
index 0000000..e29ce30
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"	
@@ -0,0 +1,32 @@
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
+#LINUX_VERSION = "3.17"
\ No newline at end of file
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"
new file mode 100644
index 0000000..4fed004
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"	
@@ -0,0 +1,32 @@
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
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
+#LINUX_VERSION = "3.17"
\ No newline at end of file
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf
index 78fb5db..2a4acad 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf
@@ -16,6 +16,9 @@ TARGET_FPU = ""
 {{ input type:"choice" val:"tune_ppce500v2" msg:"ppce500v2 tuning optimizations" }}
 {{ input type:"choice" val:"tune_ppce5500" msg:"ppce5500 tuning optimizations" }}
 {{ input type:"choice" val:"tune_ppce6500" msg:"ppce6500 tuning optimizations" }}
+{{ input type:"choice" val:"tune_power5" msg:"power5 tuning optimizations" }}
+{{ input type:"choice" val:"tune_power6" msg:"power6 tuning optimizations" }}
+{{ input type:"choice" val:"tune_power7" msg:"power7 tuning optimizations" }}
 {{ if tunefile == "tune_ppc476": }}
 include conf/machine/include/tune-ppc476.inc
 {{ if tunefile == "tune_ppc603e": }}
@@ -36,6 +39,12 @@ include conf/machine/include/tune-ppce500v2.inc
 include conf/machine/include/tune-ppce5500.inc
 {{ if tunefile == "tune_ppce6500": }}
 include conf/machine/include/tune-ppce6500.inc
+{{ if tunefile == "tune_power5": }}
+include conf/machine/include/tune-power5.inc
+{{ if tunefile == "tune_power6": }}
+include conf/machine/include/tune-power6.inc
+{{ if tunefile == "tune_power7": }}
+include conf/machine/include/tune-power7.inc
 
 KERNEL_IMAGETYPE = "uImage"
 
@@ -72,3 +81,6 @@ UBOOT_ENTRYPOINT = "{{=uboot_entrypoint}}"
 KERNEL_DEVICETREE = "${S}/arch/powerpc/boot/dts/{{=kernel_devicetree}}"
 
 MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
+
+IMAGE_FSTYPES ?= "jffs2 tar.bz2"
+JFFS2_ERASEBLOCK = "0x4000"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
index a04e6c7..8903a82 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.14) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.17) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.14"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.17"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
new file mode 100644
index 0000000..c751b93
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"	
@@ -0,0 +1,32 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-preempt-rt.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "f35992f80c81dc5fa1a97165dfd5cbb84661f7cb"
+#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "1b534b2f8bbe9b8a773268cfa30a4850346f6f5f"
+#LINUX_VERSION = "3.14"
\ No newline at end of file
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
new file mode 100644
index 0000000..e545efa
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"	
@@ -0,0 +1,32 @@
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
+#LINUX_VERSION = "3.17"
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"
new file mode 100644
index 0000000..f36cbf8
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"	
@@ -0,0 +1,32 @@
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
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
+#LINUX_VERSION = "3.17"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
index a04e6c7..8903a82 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.14) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.17) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.14"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.17"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
index 7599ecb..4650fc4 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -18,10 +18,10 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/qemuppc" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc/base" }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc/base" }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
 {{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc-64"  prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc-64/base" }}
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
new file mode 100644
index 0000000..dd590bc
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"	
@@ -0,0 +1,55 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "arm": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"arm" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "arm": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"arm" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "powerpc": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/qemuppc" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "i386": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "i386": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "x86_64": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "y" and qemuarch == "mips": }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "mips": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-preempt-rt.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "f35992f80c81dc5fa1a97165dfd5cbb84661f7cb"
+#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "1b534b2f8bbe9b8a773268cfa30a4850346f6f5f"
+#LINUX_VERSION = "3.14"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
new file mode 100644
index 0000000..f2427d0
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"	
@@ -0,0 +1,55 @@
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
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "0143c6ebb4a2d63b241df5f608b19f483f7eb9e0"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "8f55bee2403176a50cc0dd41811aa60fcf07243c"
+#LINUX_VERSION = "3.17"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"
index 392ace6..15e0f3a 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"	
@@ -18,10 +18,10 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/qemuppc" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc/base" }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc/base" }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
 {{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc-64"  prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc-64/base" }}
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend"
index 2cc9b87..93513db 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend"	
@@ -18,10 +18,10 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/qemuppc" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc/base" }}
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "i386": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc/base" }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "x86_64": }}
 {{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc-64"  prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc-64/base" }}
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"
new file mode 100644
index 0000000..2d908cc
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"	
@@ -0,0 +1,55 @@
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
+{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc" }}
+
+{{ if need_new_kbranch == "n" and qemuarch == "i386": }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc" }}
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
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"mips" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/mti-malta32" }}
+
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "0143c6ebb4a2d63b241df5f608b19f483f7eb9e0"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "8f55bee2403176a50cc0dd41811aa60fcf07243c"
+#LINUX_VERSION = "3.17"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf
index 0780af9..230c2fc 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf
@@ -36,6 +36,8 @@ MACHINE_FEATURES += "wifi efi pcbios"
 {{ input type:"choice" val:"xserver_vesa" msg:"VESA xserver support" }}
 {{ input type:"choice" val:"xserver_i915" msg:"i915 xserver support" }}
 {{ input type:"choice" val:"xserver_i965" msg:"i965 xserver support" }}
+{{ input type:"choice" val:"xserver_fbdev" msg:"fbdev xserver support" }}
+{{ input type:"choice" val:"xserver_modesetting" msg:"modesetting xserver support" }}
 {{ if xserver == "y": }}
 XSERVER ?= "${XSERVER_X86_BASE} \
            ${XSERVER_X86_EXT} \
@@ -45,12 +47,18 @@ XSERVER ?= "${XSERVER_X86_BASE} \
            ${XSERVER_X86_I915} \
 {{ if xserver == "y" and xserver_choice == "xserver_i965": }}
            ${XSERVER_X86_I965} \
+{{ if xserver == "y" and xserver_choice == "xserver_fbdev": }}
+           ${XSERVER_X86_FBDEV} \
+{{ if xserver == "y" and xserver_choice == "xserver_modesetting": }}
+           ${XSERVER_X86_MODESETTING} \
 {{ if xserver == "y": }}
            "
 
-MACHINE_EXTRA_RRECOMMENDS += "linux-firmware v86d"
+MACHINE_EXTRA_RRECOMMENDS += "linux-firmware v86d eee-acpi-scripts"
 
 EXTRA_OECONF_append_pn-matchbox-panel-2 = " --with-battery=acpi"
 
+GLIBC_ADDONS = "nptl"
+
 {{ if xserver == "y" and xserver_choice == "xserver_vesa": }}
 APPEND += "video=vesafb vga=0x318"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
index a04e6c7..8903a82 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.14) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.17) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.14"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.17"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
new file mode 100644
index 0000000..c751b93
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"	
@@ -0,0 +1,32 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+PR := "${PR}.1"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
+
+{{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you need a new machine branch for this BSP (the alternative is to re-use an existing branch)? [y/n]" default:"y" }}
+
+{{ if need_new_kbranch == "y": }}
+{{ input type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "n": }}
+{{ input type:"choicelist" name:"existing_kbranch" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
+
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-preempt-rt.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "f35992f80c81dc5fa1a97165dfd5cbb84661f7cb"
+#SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "1b534b2f8bbe9b8a773268cfa30a4850346f6f5f"
+#LINUX_VERSION = "3.14"
\ No newline at end of file
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
new file mode 100644
index 0000000..e545efa
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"	
@@ -0,0 +1,32 @@
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
+#LINUX_VERSION = "3.17"
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"
new file mode 100644
index 0000000..6c60274
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"	
@@ -0,0 +1,32 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
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
+{{ if need_new_kbranch == "n": }}
+KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
+
+{{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP support? (y/n)" default:"y"}}
+{{ if smp == "y": }}
+KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
+
+SRC_URI += "file://{{=machine}}-standard.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
+            file://{{=machine}}-user-features.scc \
+           "
+
+# uncomment and replace these SRCREVs with the real commit ids once you've had
+# the appropriate changes committed to the upstream linux-yocto repo
+#SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
+#SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
+#LINUX_VERSION = "3.17"
-- 
1.8.3.1


