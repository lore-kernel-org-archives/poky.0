Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77FA1E00B31; Tue, 16 Dec 2014 16:41:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95EA7E00B03
	for <poky@yoctoproject.org>; Tue, 16 Dec 2014 16:41:22 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Dec 2014 16:39:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,590,1413270000"; d="scan'208";a="624939107"
Received: from unknown (HELO localhost) ([10.255.13.117])
	by orsmga001.jf.intel.com with ESMTP; 16 Dec 2014 16:41:14 -0800
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 16 Dec 2014 18:41:02 -0600
Message-Id: <88d85803d3480f28aacd8718880c0de570bfad26.1418776404.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <02cf016f4ee8172f07278a3ab3465a973107279a.1418776404.git.tom.zanussi@linux.intel.com>
References: <02cf016f4ee8172f07278a3ab3465a973107279a.1418776404.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1418776404.git.tom.zanussi@linux.intel.com>
References: <cover.1418776404.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 3/9] yocto-bsp: Get rid of 'strange' filenames in arm templates
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
X-List-Received-Date: Wed, 17 Dec 2014 00:41:25 -0000

For the arm templates, give all the 'strange' yocto-bsp template
filenames 'normal' names, adding new yocto-bsp-filename and
yocto-bsp-dirname tags for the new filename processing pass where
needed.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../target/arch/arm/conf/machine/{{=machine}}.conf | 101 ---------------------
 .../xserver-xf86-config/machine.noinstall          |   1 +
 .../xserver-xf86-config/machine/xorg.conf          |   1 +
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |   1 +
 .../arch/arm/recipes-kernel/linux/files.noinstall  |   1 +
 .../linux/files/machine-non_hardware.cfg           |   1 +
 .../linux/files/machine-preempt-rt.scc             |   1 +
 .../linux/files/machine-standard.scc               |   1 +
 .../recipes-kernel/linux/files/machine-tiny.scc    |   1 +
 .../linux/files/machine-user-config.cfg            |   1 +
 .../linux/files/machine-user-features.scc          |   1 +
 .../linux/files/machine-user-patches.scc           |   1 +
 .../arm/recipes-kernel/linux/files/machine.cfg     |   1 +
 .../arm/recipes-kernel/linux/files/machine.scc     |   1 +
 .../recipes-kernel/linux/linux-yocto-dev.bbappend  |   1 +
 .../linux/linux-yocto-rt_3.10.bbappend             |   1 +
 .../linux/linux-yocto-rt_3.14.bbappend             |   1 +
 .../linux/linux-yocto-tiny_3.10.bbappend           |   1 +
 .../linux/linux-yocto-tiny_3.14.bbappend           |   1 +
 .../linux/linux-yocto-tiny_3.17.bbappend           |   1 +
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend |   1 +
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend |   1 +
 .../recipes-kernel/linux/linux-yocto_3.17.bbappend |   1 +
 .../{{=machine}}-user-config.cfg"                  |   0
 .../{{=machine}}-user-features.scc"                |   0
 .../{{=machine}}-user-patches.scc"                 |   0
 26 files changed, 22 insertions(+), 101 deletions(-)
 delete mode 100644 scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf" => scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/machine/xorg.conf (92%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend" => scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend (47%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files.noinstall
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-non_hardware.cfg" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-non_hardware.cfg (86%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-preempt-rt.scc (88%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-standard.scc (88%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-tiny.scc (83%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-user-config.cfg
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-user-features.scc
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-user-patches.scc
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine.cfg (99%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine.scc (84%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-dev.bbappend (94%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend (95%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.10.bbappend (94%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.14.bbappend (94%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend" => scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.17.bbappend (94%)
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"

diff --git a/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
deleted file mode 100644
index 4bbc96e..0000000
--- a/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
+++ /dev/null
@@ -1,101 +0,0 @@
-#@TYPE: Machine
-#@NAME: {{=machine}}
-
-#@DESCRIPTION: Machine configuration for {{=machine}} systems
-
-{{ input type:"boolean" name:"xserver" prio:"50" msg:"Do you need support for X? (y/n)" default:"y" }}
-{{ if xserver == "y": }}
-PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
-XSERVER ?= "xserver-xorg \
-           xf86-input-evdev \
-           xf86-input-mouse \
-           xf86-video-fbdev \
-           xf86-input-keyboard"
-
-MACHINE_EXTRA_RRECOMMENDS = " kernel-modules kernel-devicetree"
-
-EXTRA_IMAGEDEPENDS += "u-boot"
-
-{{ input type:"choicelist" name:"tunefile" prio:"40" msg:"Which machine tuning would you like to use?" default:"tune_cortexa8" }}
-{{ input type:"choice" val:"tune_arm1136jf_s" msg:"arm1136jf-s tuning optimizations" }}
-{{ input type:"choice" val:"tune_arm920t" msg:"arm920t tuning optimizations" }}
-{{ input type:"choice" val:"tune_arm926ejs" msg:"arm926ejs tuning optimizations" }}
-{{ input type:"choice" val:"tune_arm9tdmi" msg:"arm9tdmi tuning optimizations" }}
-{{ input type:"choice" val:"tune_cortexa5" msg:"cortexa5 tuning optimizations" }}
-{{ input type:"choice" val:"tune_cortexa7" msg:"cortexa7 tuning optimizations" }}
-{{ input type:"choice" val:"tune_cortexa8" msg:"cortexa8 tuning optimizations" }}
-{{ input type:"choice" val:"tune_cortexa9" msg:"cortexa9 tuning optimizations" }}
-{{ input type:"choice" val:"tune_cortexa15" msg:"cortexa15 tuning optimizations" }}
-{{ input type:"choice" val:"tune_cortexm1" msg:"cortexm1 tuning optimizations" }}
-{{ input type:"choice" val:"tune_cortexm3" msg:"cortexm3 tuning optimizations" }}
-{{ input type:"choice" val:"tune_cortexr4" msg:"cortexr4 tuning optimizations" }}
-{{ input type:"choice" val:"tune_ep9312" msg:"ep9312 tuning optimizations" }}
-{{ input type:"choice" val:"tune_iwmmxt" msg:"iwmmxt tuning optimizations" }}
-{{ input type:"choice" val:"tune_strongarm1100" msg:"strongarm1100 tuning optimizations" }}
-{{ input type:"choice" val:"tune_xscale" msg:"xscale tuning optimizations" }}
-{{ if tunefile == "tune_arm1136jf_s": }}
-include conf/machine/include/tune-arm1136jf-s.inc
-{{ if tunefile == "tune_arm920t": }}
-include conf/machine/include/tune-arm920t.inc
-{{ if tunefile == "tune_arm926ejs": }}
-include conf/machine/include/tune-arm926ejs.inc
-{{ if tunefile == "tune_arm9tdmi": }}
-include conf/machine/include/tune-arm9tdmi.inc
-{{ if tunefile == "tune_cortexa5": }}
-include conf/machine/include/tune-cortexa5.inc
-{{ if tunefile == "tune_cortexa7": }}
-include conf/machine/include/tune-cortexa7.inc
-{{ if tunefile == "tune_cortexa8": }}
-DEFAULTTUNE ?= "cortexa8hf-neon"
-include conf/machine/include/tune-cortexa8.inc
-{{ if tunefile == "tune_cortexa9": }}
-include conf/machine/include/tune-cortexa9.inc
-{{ if tunefile == "tune_cortexa15": }}
-include conf/machine/include/tune-cortexa15.inc
-{{ if tunefile == "tune_cortexm1": }}
-include conf/machine/include/tune-cortexm1.inc
-{{ if tunefile == "tune_cortexm3": }}
-include conf/machine/include/tune-cortexm3.inc
-{{ if tunefile == "tune_cortexr4": }}
-include conf/machine/include/tune-cortexr4.inc
-{{ if tunefile == "tune_ep9312": }}
-include conf/machine/include/tune-ep9312.inc
-{{ if tunefile == "tune_iwmmxt": }}
-include conf/machine/include/tune-iwmmxt.inc
-{{ if tunefile == "tune_strongarm1100": }}
-include conf/machine/include/tune-strongarm1100.inc
-{{ if tunefile == "tune_xscale": }}
-include conf/machine/include/tune-xscale.inc
-
-IMAGE_FSTYPES += "tar.bz2 jffs2"
-EXTRA_IMAGECMD_jffs2 = "-lnp "
-
-SERIAL_CONSOLE = "115200 ttyO0"
-
-{{ if kernel_choice == "custom": preferred_kernel = "linux-yocto-custom" }}
-{{ if kernel_choice == "linux-yocto-dev": preferred_kernel = "linux-yocto-dev" }}
-{{ if kernel_choice == "custom" or kernel_choice == "linux-yocto-dev" : }}
-PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
-
-{{ if kernel_choice != "custom" and kernel_choice != "linux-yocto-dev": preferred_kernel = kernel_choice.split('_')[0] }}
-{{ if kernel_choice != "custom" and kernel_choice != "linux-yocto-dev": preferred_kernel_version = kernel_choice.split('_')[1] }}
-{{ if kernel_choice != "custom" and kernel_choice != "linux-yocto-dev": }}
-PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
-PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
-
-KERNEL_IMAGETYPE = "uImage"
-KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb"
-KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
-
-SPL_BINARY = "MLO"
-UBOOT_SUFFIX = "img"
-{{ input type:"edit" name:"uboot_machine" prio:"40" msg:"Please specify a value for UBOOT_MACHINE:" default:"am335x_evm_config" }}
-UBOOT_MACHINE = "{{=uboot_machine}}"
-{{ input type:"edit" name:"uboot_entrypoint" prio:"40" msg:"Please specify a value for UBOOT_ENTRYPOINT:" default:"0x80008000" }}
-UBOOT_ENTRYPOINT = "{{=uboot_entrypoint}}"
-{{ input type:"edit" name:"uboot_loadaddress" prio:"40" msg:"Please specify a value for UBOOT_LOADADDRESS:" default:"0x80008000" }}
-UBOOT_LOADADDRESS = "{{=uboot_loadaddress}}"
-
-MACHINE_FEATURES = "usbgadget usbhost vfat alsa"
-
-IMAGE_BOOT_FILES ?= "u-boot.${UBOOT_SUFFIX} MLO"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall b/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall
new file mode 100644
index 0000000..b442d02
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/machine.noinstall
@@ -0,0 +1 @@
+# yocto-bsp-dirname {{=machine}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf" b/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/machine/xorg.conf
similarity index 92%
rename from "scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf"
rename to scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/machine/xorg.conf
index 264f3c9..bc52893 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf"	
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/machine/xorg.conf
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if xserver == "y": }} this
 Section "Module"
 	Load	"extmod"
 	Load	"dbe"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend" b/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
similarity index 47%
rename from "scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 72d991c..3083003 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1 +1,2 @@
+# yocto-bsp-filename {{ if xserver == "y": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files.noinstall b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files.noinstall
new file mode 100644
index 0000000..1e0d92c
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files.noinstall
@@ -0,0 +1 @@
+# yocto-bsp-dirname {{ if kernel_choice != "custom": }} files
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-non_hardware.cfg" b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-non_hardware.cfg
similarity index 86%
rename from "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-non_hardware.cfg"
rename to scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-non_hardware.cfg
index 361343b..9bfc90c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-non_hardware.cfg"	
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-non_hardware.cfg
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{=machine}}-non_hardware.cfg
 #
 # Miscellaneous filesystems
 #
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-preempt-rt.scc
similarity index 88%
rename from "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"
rename to scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-preempt-rt.scc
index 56f7f0f..ca5f3b5 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"	
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-preempt-rt.scc
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{=machine}}-preempt-rt.scc
 define KMACHINE {{=machine}}
 define KTYPE preempt-rt
 define KARCH arm
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-standard.scc
similarity index 88%
rename from "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"
rename to scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-standard.scc
index 80640db..9014c2c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"	
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-standard.scc
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{=machine}}-standard.scc
 define KMACHINE {{=machine}}
 define KTYPE standard
 define KARCH arm
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc" b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-tiny.scc
similarity index 83%
rename from "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc"
rename to scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-tiny.scc
index 51eaf2d..3f1c252 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-tiny.scc"	
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-tiny.scc
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{=machine}}-tiny.scc
 define KMACHINE {{=machine}}
 define KTYPE tiny
 define KARCH arm
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-user-config.cfg b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-user-config.cfg
new file mode 100644
index 0000000..47489e4
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-user-config.cfg
@@ -0,0 +1 @@
+# yocto-bsp-filename {{=machine}}-user-config.cfg
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-user-features.scc b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-user-features.scc
new file mode 100644
index 0000000..582759e
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-user-features.scc
@@ -0,0 +1 @@
+# yocto-bsp-filename {{=machine}}-user-features.scc
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-user-patches.scc b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-user-patches.scc
new file mode 100644
index 0000000..97f747f
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine-user-patches.scc
@@ -0,0 +1 @@
+# yocto-bsp-filename {{=machine}}-user-patches.scc
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg" b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine.cfg
similarity index 99%
rename from "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"
rename to scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine.cfg
index 10134c8..a2e1ae0 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"	
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine.cfg
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{=machine}}.cfg
 #
 # System Type
 #
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine.scc
similarity index 84%
rename from "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
rename to scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine.scc
index 24196e6..828400d 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"	
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/machine.scc
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{=machine}}.scc
 kconf hardware {{=machine}}.cfg
 kconf non-hardware {{machine}}-non_hardware.cfg
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-dev.bbappend
similarity index 94%
rename from "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-dev.bbappend
index 25c87a8..2fa6231 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-dev": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
similarity index 95%
rename from "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
index 08b1f88..35b0958 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-rt_3.10": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend" b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
similarity index 95%
rename from "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
index 6144e3a..5f8db03 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.14\": }} linux-yocto-rt_3.14.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-rt_3.14": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
similarity index 95%
rename from "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
index bc6968d..f04dd0c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.10.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.10": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend" b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
similarity index 95%
rename from "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
index d221d5f..471ccbc 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.14\": }} linux-yocto-tiny_3.14.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.14.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.14": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend" b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
similarity index 95%
rename from "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
index e545efa..fb42532 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.17\": }} linux-yocto-tiny_3.17.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto-tiny_3.17.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto-tiny_3.17": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.10.bbappend
similarity index 94%
rename from "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.10.bbappend
index 1e814c5..badb3aa 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.10.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.10": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend" b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.14.bbappend
similarity index 94%
rename from "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.14.bbappend
index ca7f8c5..1e1cc51 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.14\": }} linux-yocto_3.14.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.14.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.14": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend" b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.17.bbappend
similarity index 94%
rename from "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.17.bbappend
index 4fed004..72af58a 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.17\": }} linux-yocto_3.17.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/linux-yocto_3.17.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{ if kernel_choice == "linux-yocto_3.17": }} this
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
deleted file mode 100644
index e69de29..0000000
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-features.scc"
deleted file mode 100644
index e69de29..0000000
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"
deleted file mode 100644
index e69de29..0000000
-- 
1.9.3


