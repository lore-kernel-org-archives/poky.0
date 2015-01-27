Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 295AAE008A7; Tue, 27 Jan 2015 05:33:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF411E00894
	for <poky@yoctoproject.org>; Tue, 27 Jan 2015 05:33:28 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 27 Jan 2015 05:33:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,474,1418112000"; d="scan'208";a="643243718"
Received: from ssandhu3-mobl1.amr.corp.intel.com (HELO localhost)
	([10.254.48.171])
	by orsmga001.jf.intel.com with ESMTP; 27 Jan 2015 05:33:27 -0800
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 27 Jan 2015 07:33:24 -0600
Message-Id: <b1dfbe192ee5d8f5595504017bdcbb530264597c.1422365079.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <cover.1422365079.git.tom.zanussi@linux.intel.com>
References: <cover.1422365079.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 1/2] yocto-bsp: Add missing conf dir to arm template
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
X-List-Received-Date: Tue, 27 Jan 2015 13:33:38 -0000

The /conf dir for arm was missed when committing the changes for the
'removing strange characters' patchset; this restores it.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../target/arch/arm/conf/machine/machine.conf      | 102 +++++++++++++++++++++
 1 file changed, 102 insertions(+)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/arm/conf/machine/machine.conf

diff --git a/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/machine.conf b/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/machine.conf
new file mode 100644
index 0000000..588367a
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/machine.conf
@@ -0,0 +1,102 @@
+# yocto-bsp-filename {{=machine}}.conf
+#@TYPE: Machine
+#@NAME: {{=machine}}
+
+#@DESCRIPTION: Machine configuration for {{=machine}} systems
+
+{{ input type:"boolean" name:"xserver" prio:"50" msg:"Do you need support for X? (y/n)" default:"y" }}
+{{ if xserver == "y": }}
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
+           xf86-input-evdev \
+           xf86-input-mouse \
+           xf86-video-fbdev \
+           xf86-input-keyboard"
+
+MACHINE_EXTRA_RRECOMMENDS = " kernel-modules kernel-devicetree"
+
+EXTRA_IMAGEDEPENDS += "u-boot"
+
+{{ input type:"choicelist" name:"tunefile" prio:"40" msg:"Which machine tuning would you like to use?" default:"tune_cortexa8" }}
+{{ input type:"choice" val:"tune_arm1136jf_s" msg:"arm1136jf-s tuning optimizations" }}
+{{ input type:"choice" val:"tune_arm920t" msg:"arm920t tuning optimizations" }}
+{{ input type:"choice" val:"tune_arm926ejs" msg:"arm926ejs tuning optimizations" }}
+{{ input type:"choice" val:"tune_arm9tdmi" msg:"arm9tdmi tuning optimizations" }}
+{{ input type:"choice" val:"tune_cortexa5" msg:"cortexa5 tuning optimizations" }}
+{{ input type:"choice" val:"tune_cortexa7" msg:"cortexa7 tuning optimizations" }}
+{{ input type:"choice" val:"tune_cortexa8" msg:"cortexa8 tuning optimizations" }}
+{{ input type:"choice" val:"tune_cortexa9" msg:"cortexa9 tuning optimizations" }}
+{{ input type:"choice" val:"tune_cortexa15" msg:"cortexa15 tuning optimizations" }}
+{{ input type:"choice" val:"tune_cortexm1" msg:"cortexm1 tuning optimizations" }}
+{{ input type:"choice" val:"tune_cortexm3" msg:"cortexm3 tuning optimizations" }}
+{{ input type:"choice" val:"tune_cortexr4" msg:"cortexr4 tuning optimizations" }}
+{{ input type:"choice" val:"tune_ep9312" msg:"ep9312 tuning optimizations" }}
+{{ input type:"choice" val:"tune_iwmmxt" msg:"iwmmxt tuning optimizations" }}
+{{ input type:"choice" val:"tune_strongarm1100" msg:"strongarm1100 tuning optimizations" }}
+{{ input type:"choice" val:"tune_xscale" msg:"xscale tuning optimizations" }}
+{{ if tunefile == "tune_arm1136jf_s": }}
+include conf/machine/include/tune-arm1136jf-s.inc
+{{ if tunefile == "tune_arm920t": }}
+include conf/machine/include/tune-arm920t.inc
+{{ if tunefile == "tune_arm926ejs": }}
+include conf/machine/include/tune-arm926ejs.inc
+{{ if tunefile == "tune_arm9tdmi": }}
+include conf/machine/include/tune-arm9tdmi.inc
+{{ if tunefile == "tune_cortexa5": }}
+include conf/machine/include/tune-cortexa5.inc
+{{ if tunefile == "tune_cortexa7": }}
+include conf/machine/include/tune-cortexa7.inc
+{{ if tunefile == "tune_cortexa8": }}
+DEFAULTTUNE ?= "cortexa8hf-neon"
+include conf/machine/include/tune-cortexa8.inc
+{{ if tunefile == "tune_cortexa9": }}
+include conf/machine/include/tune-cortexa9.inc
+{{ if tunefile == "tune_cortexa15": }}
+include conf/machine/include/tune-cortexa15.inc
+{{ if tunefile == "tune_cortexm1": }}
+include conf/machine/include/tune-cortexm1.inc
+{{ if tunefile == "tune_cortexm3": }}
+include conf/machine/include/tune-cortexm3.inc
+{{ if tunefile == "tune_cortexr4": }}
+include conf/machine/include/tune-cortexr4.inc
+{{ if tunefile == "tune_ep9312": }}
+include conf/machine/include/tune-ep9312.inc
+{{ if tunefile == "tune_iwmmxt": }}
+include conf/machine/include/tune-iwmmxt.inc
+{{ if tunefile == "tune_strongarm1100": }}
+include conf/machine/include/tune-strongarm1100.inc
+{{ if tunefile == "tune_xscale": }}
+include conf/machine/include/tune-xscale.inc
+
+IMAGE_FSTYPES += "tar.bz2 jffs2"
+EXTRA_IMAGECMD_jffs2 = "-lnp "
+
+SERIAL_CONSOLE = "115200 ttyO0"
+
+{{ if kernel_choice == "custom": preferred_kernel = "linux-yocto-custom" }}
+{{ if kernel_choice == "linux-yocto-dev": preferred_kernel = "linux-yocto-dev" }}
+{{ if kernel_choice == "custom" or kernel_choice == "linux-yocto-dev" : }}
+PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
+
+{{ if kernel_choice != "custom" and kernel_choice != "linux-yocto-dev": preferred_kernel = kernel_choice.split('_')[0] }}
+{{ if kernel_choice != "custom" and kernel_choice != "linux-yocto-dev": preferred_kernel_version = kernel_choice.split('_')[1] }}
+{{ if kernel_choice != "custom" and kernel_choice != "linux-yocto-dev": }}
+PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
+PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
+
+KERNEL_IMAGETYPE = "uImage"
+KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb"
+KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
+
+SPL_BINARY = "MLO"
+UBOOT_SUFFIX = "img"
+{{ input type:"edit" name:"uboot_machine" prio:"40" msg:"Please specify a value for UBOOT_MACHINE:" default:"am335x_evm_config" }}
+UBOOT_MACHINE = "{{=uboot_machine}}"
+{{ input type:"edit" name:"uboot_entrypoint" prio:"40" msg:"Please specify a value for UBOOT_ENTRYPOINT:" default:"0x80008000" }}
+UBOOT_ENTRYPOINT = "{{=uboot_entrypoint}}"
+{{ input type:"edit" name:"uboot_loadaddress" prio:"40" msg:"Please specify a value for UBOOT_LOADADDRESS:" default:"0x80008000" }}
+UBOOT_LOADADDRESS = "{{=uboot_loadaddress}}"
+
+MACHINE_FEATURES = "usbgadget usbhost vfat alsa"
+
+IMAGE_BOOT_FILES ?= "u-boot.${UBOOT_SUFFIX} MLO"
-- 
1.9.3


