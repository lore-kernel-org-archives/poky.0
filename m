Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B54DE0161A
	for <poky@yoctoproject.org>; Mon, 23 Sep 2013 06:42:56 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Sep 2013 06:42:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,962,1371106800"; d="scan'208";a="405840684"
Received: from unknown (HELO localhost) ([10.255.14.250])
	by fmsmga002.fm.intel.com with ESMTP; 23 Sep 2013 06:42:53 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 23 Sep 2013 08:42:51 -0500
Message-Id: <574dbba493c20c34f12215777436af2ac91a2042.1379943053.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1379943053.git.tom.zanussi@linux.intel.com>
References: <cover.1379943053.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 1/1] yocto-bsp: add 3.10/remove 3.8 kernel from templates
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
X-List-Received-Date: Mon, 23 Sep 2013 13:42:57 -0000

For Yocto 1.5, 3.10 is the preferred kernel and 3.8 is obsolete.

This also removes any mention of emgd from the templates - we want to
discourage users from using it - it will be obsolete soon in any case.

Fixes [YOCTO #5107]

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 scripts/lib/bsp/help.py                            | 29 -----------
 .../target/arch/arm/conf/machine/{{=machine}}.conf | 22 +++++++--
 ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |  2 +-
 .../arm/recipes-kernel/linux/kernel-list.noinstall |  4 +-
 .../{{=machine}}-preempt-rt.scc"                   |  4 ++
 .../{{=machine}}-standard.scc"                     |  4 ++
 .../{{=machine}}.cfg"                              | 56 ++++++++--------------
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  2 +-
 ...cto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" |  4 +-
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  2 +-
 ...tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" | 32 +++++++++++++
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" |  2 +-
 ...nux-yocto_3.10\": }} linux-yocto_3.10.bbappend" |  3 +-
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  2 +-
 .../lib/bsp/substrate/target/arch/common/README    |  8 ----
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |  2 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  8 ++--
 .../arch/i386/conf/machine/{{=machine}}.conf       | 29 +++++------
 ...erver_choice == \"xserver_emgd\": }} xorg.conf" | 47 ------------------
 ...erver_choice == \"xserver_i915\": }} xorg.conf" | 25 ----------
 ...erver_choice == \"xserver_vesa\": }} xorg.conf" | 25 ----------
 ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |  2 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../{{=machine}}-standard.scc"                     |  3 --
 .../{{=machine}}.scc"                              |  7 +--
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  2 +-
 ...cto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" |  4 +-
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  2 +-
 ...tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" | 32 +++++++++++++
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" |  2 +-
 ...nux-yocto_3.10\": }} linux-yocto_3.10.bbappend" |  3 +-
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  2 +-
 .../arch/mips/conf/machine/{{=machine}}.conf       | 11 +++--
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  2 +-
 ...cto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" |  4 +-
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  2 +-
 ...tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" | 32 +++++++++++++
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" |  2 +-
 ...nux-yocto_3.10\": }} linux-yocto_3.10.bbappend" |  3 +-
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  2 +-
 .../arch/powerpc/conf/machine/{{=machine}}.conf    | 31 ++++++++----
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  2 +-
 ...cto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" |  4 +-
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  2 +-
 ...tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" | 32 +++++++++++++
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" |  2 +-
 ...nux-yocto_3.10\": }} linux-yocto_3.10.bbappend" |  3 +-
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  2 +-
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |  2 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  4 +-
 ...cto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" |  6 +--
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  4 +-
 ...tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" | 55 +++++++++++++++++++++
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" |  2 +-
 ...nux-yocto_3.10\": }} linux-yocto_3.10.bbappend" |  9 ++--
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  4 +-
 .../arch/x86_64/conf/machine/{{=machine}}.conf     | 13 ++++-
 ...erver_choice == \"xserver_i915\": }} xorg.conf" | 25 ----------
 ...erver_choice == \"xserver_vesa\": }} xorg.conf" | 25 ----------
 ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |  2 +-
 .../recipes-kernel/linux/kernel-list.noinstall     |  4 +-
 .../{{=machine}}.scc"                              |  3 +-
 ...linux-yocto-dev\": }} linux-yocto-dev.bbappend" |  2 +-
 ...cto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" | 32 +++++++++++++
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  2 +-
 ...yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend" | 32 -------------
 ...tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" | 32 +++++++++++++
 ...o-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" |  2 +-
 ...nux-yocto_3.10\": }} linux-yocto_3.10.bbappend" |  3 +-
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  2 +-
 73 files changed, 423 insertions(+), 365 deletions(-)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend" => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" (94%)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" (95%)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_emgd\": }} xorg.conf"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf"
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend" => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" (94%)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" (95%)
 rename "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend" => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" (94%)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" (95%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend" => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" (94%)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" (95%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend" => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" (96%)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" (94%)
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"
 delete mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"
 rename "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" => "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend" (95%)

diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
index 427b5a0..a2eb7b6 100644
--- a/scripts/lib/bsp/help.py
+++ b/scripts/lib/bsp/help.py
@@ -121,12 +121,6 @@ yocto_bsp_create_usage = """
  modified by the yocto-kernel tool.
 
  See 'yocto bsp help create' for more detailed instructions.
-
- NOTE: For x86-based BSPs that select the EMGD xserver, the generated
- BSP assumes the presence of the meta-intel layer. Ensure the
- meta-intel layer is present and added to bblayers.conf.
-
- See 'yocto bsp help create' for more detailed instructions.
 """
 
 yocto_bsp_create_help = """
@@ -182,26 +176,6 @@ DESCRIPTION
       /path/to/poky/meta-yocto \\
       /path/to/poky/meta-mybsp \\
       "
-
-    NOTE: For x86-based BSPs that select the EMGD xserver, the
-    generated BSP assumes the presence of the meta-intel layer. Ensure
-    the meta-intel layer is present and added to bblayers.conf.
-
-    For example, assuming your poky repo is at /path/to/poky, your new
-    BSP layer is at /path/to/poky/meta-mybsp, and your build directory
-    is /path/to/build:
-
-    $ cd /path/to/poky
-    $ git clone git://git.yoctoproject.org/meta-intel.git
-
-    $ gedit /path/to/build/conf/bblayers.conf
-
-    BBLAYERS ?= " \\
-      /path/to/poky/meta \\
-      /path/to/poky/meta-yocto \\
-      /path/to/poky/meta-intel \\
-      /path/to/poky/meta-mybsp \\
-      "
 """
 
 yocto_bsp_list_usage = """
@@ -335,15 +309,12 @@ DESCRIPTION
 
     $ yocto-bsp list i386 property xserver_choice
         ["xserver_vesa", "VESA xserver support"]
-        ["xserver_emgd", "EMGD xserver support (proprietary)"]
         ["xserver_i915", "i915 xserver support"]
 
     $ yocto-bsp list arm property base_kbranch_linux_yocto_3_0
         Getting branches from remote repo git://git.yoctoproject.org/linux-yocto-3.0...
         ["yocto/base", "yocto/base"]
         ["yocto/eg20t", "yocto/eg20t"]
-        ["yocto/emgd", "yocto/emgd"]
-        ["yocto/emgd-1.10", "yocto/emgd-1.10"]
         ["yocto/gma500", "yocto/gma500"]
         ["yocto/pvr", "yocto/pvr"]
         ["yocto/standard/arm-versatile-926ejs", "yocto/standard/arm-versatile-926ejs"]
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
index 744486e..44a80d2 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
@@ -5,18 +5,18 @@
 
 {{ input type:"boolean" name:"xserver" prio:"50" msg:"Do you need support for X? (y/n)" default:"y" }}
 {{ if xserver == "y": }}
-PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
-XSERVER = "xserver-xorg \
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
            xf86-input-evdev \
            xf86-input-mouse \
-           xf86-video-omap \
+           xf86-video-omapfb \
            xf86-input-keyboard"
 
 # Ship all kernel modules by default
 MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
 
 # Allow for MMC booting (required by the NAND-less Beagleboard XM)
-EXTRA_IMAGEDEPENDS += "u-boot x-load"
+EXTRA_IMAGEDEPENDS += "u-boot"
 
 # Uncomment the following line to enable the hard floating point abi. Note that
 # this breaks some binary libraries and 3D (neither of which ship with
@@ -27,8 +27,11 @@ EXTRA_IMAGEDEPENDS += "u-boot x-load"
 {{ input type:"choice" val:"tune_arm920t" msg:"arm920t tuning optimizations" }}
 {{ input type:"choice" val:"tune_arm926ejs" msg:"arm926ejs tuning optimizations" }}
 {{ input type:"choice" val:"tune_arm9tdmi" msg:"arm9tdmi tuning optimizations" }}
+{{ input type:"choice" val:"tune_cortexa5" msg:"cortexa5 tuning optimizations" }}
+{{ input type:"choice" val:"tune_cortexa7" msg:"cortexa7 tuning optimizations" }}
 {{ input type:"choice" val:"tune_cortexa8" msg:"cortexa8 tuning optimizations" }}
 {{ input type:"choice" val:"tune_cortexa9" msg:"cortexa9 tuning optimizations" }}
+{{ input type:"choice" val:"tune_cortexa15" msg:"cortexa15 tuning optimizations" }}
 {{ input type:"choice" val:"tune_cortexm1" msg:"cortexm1 tuning optimizations" }}
 {{ input type:"choice" val:"tune_cortexm3" msg:"cortexm3 tuning optimizations" }}
 {{ input type:"choice" val:"tune_cortexr4" msg:"cortexr4 tuning optimizations" }}
@@ -44,10 +47,16 @@ include conf/machine/include/tune-arm920t.inc
 include conf/machine/include/tune-arm926ejs.inc
 {{ if tunefile == "tune_arm9tdmi": }}
 include conf/machine/include/tune-arm9tdmi.inc
+{{ if tunefile == "tune_cortexa5": }}
+include conf/machine/include/tune-cortexa5.inc
+{{ if tunefile == "tune_cortexa7": }}
+include conf/machine/include/tune-cortexa7.inc
 {{ if tunefile == "tune_cortexa8": }}
 include conf/machine/include/tune-cortexa8.inc
 {{ if tunefile == "tune_cortexa9": }}
 include conf/machine/include/tune-cortexa9.inc
+{{ if tunefile == "tune_cortexa15": }}
+include conf/machine/include/tune-cortexa15.inc
 {{ if tunefile == "tune_cortexm1": }}
 include conf/machine/include/tune-cortexm1.inc
 {{ if tunefile == "tune_cortexm3": }}
@@ -81,8 +90,11 @@ PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 
-KERNEL_IMAGETYPE = "uImage"
+KERNEL_IMAGETYPE = "zImage"
+KERNEL_DEVICETREE = "${S}/arch/arm/boot/dts/omap3-beagle.dts ${S}/arch/arm/boot/dts/omap3-beagle-xm.dts"
 
+SPL_BINARY = "MLO"
+UBOOT_SUFFIX = "img"
 {{ input type:"edit" name:"uboot_machine" prio:"40" msg:"Please specify a value for UBOOT_MACHINE:" default:"omap3_beagle_config" }}
 UBOOT_MACHINE = "{{=uboot_machine}}"
 {{ input type:"edit" name:"uboot_entrypoint" prio:"40" msg:"Please specify a value for UBOOT_ENTRYPOINT:" default:"0x80008000" }}
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
index 155f67b..72d991c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
@@ -1 +1 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/${PN}:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
index 6754c6d..88a5d18 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.8) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.10) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.8"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.10"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"
index de0bff2..56f7f0f 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"	
@@ -7,3 +7,7 @@ include {{=map_preempt_rt_kbranch(need_new_kbranch, new_kbranch, existing_kbranc
 branch {{=machine}}
 
 include {{=machine}}.scc
+
+# default policy for preempt-rt kernels
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"
index b12c50c..80640db 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"	
@@ -7,3 +7,7 @@ include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)
 branch {{=machine}}
 
 include {{=machine}}.scc
+
+# default policy for standard kernels
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"
index 994e034..10134c8 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"	
@@ -2,8 +2,6 @@
 # System Type
 #
 CONFIG_ARCH_OMAP=y
-CONFIG_HAVE_PWM=y
-CONFIG_ARM_L1_CACHE_SHIFT_6=y
 
 #
 # TI OMAP Implementations
@@ -27,8 +25,6 @@ CONFIG_OMAP_SMARTREFLEX=y
 CONFIG_OMAP_SMARTREFLEX_CLASS3=y
 CONFIG_OMAP_MBOX_FWK=m
 CONFIG_OMAP_MBOX_KFIFO_SIZE=256
-CONFIG_OMAP_IOMMU=m
-CONFIG_OMAP_IOMMU_DEBUG=m
 
 #
 # OMAP Board Type
@@ -39,7 +35,6 @@ CONFIG_MACH_OMAP3_BEAGLE=y
 # Processor Features
 #
 CONFIG_ARM_THUMBEE=y
-CONFIG_ARM_L1_CACHE_SHIFT=6
 CONFIG_ARM_ERRATA_430973=y
 
 #
@@ -51,14 +46,8 @@ CONFIG_LEDS=y
 #
 # Serial drivers
 #
-CONFIG_SERIAL_8250=y
-CONFIG_SERIAL_8250_CONSOLE=y
-CONFIG_SERIAL_8250_EXTENDED=y
-CONFIG_SERIAL_8250_RSA=y
-CONFIG_SERIAL_8250_MANY_PORTS=y
-CONFIG_SERIAL_8250_SHARE_IRQ=y
-CONFIG_SERIAL_8250_DETECT_IRQ=y
-CONFIG_SERIAL_8250_RUNTIME_UARTS=4
+CONFIG_SERIAL_OMAP=y
+CONFIG_SERIAL_OMAP_CONSOLE=y
 
 #
 # At least one emulation must be selected
@@ -76,13 +65,10 @@ CONFIG_PM_RUNTIME=y
 # Generic Driver Options
 #
 CONFIG_MTD=y
-CONFIG_MTD_CONCAT=y
-CONFIG_MTD_PARTITIONS=y
 CONFIG_MTD_CMDLINE_PARTS=y
 #
 # User Modules And Translation Layers
 #
-CONFIG_MTD_CHAR=y
 CONFIG_MTD_BLKDEVS=y
 CONFIG_MTD_BLOCK=y
 
@@ -98,7 +84,6 @@ CONFIG_MTD_CFI_INTELEXT=y
 CONFIG_MTD_NAND=y
 
 CONFIG_MTD_NAND_OMAP2=y
-# CONFIG_MTD_NAND_OMAP_PREFETCH is not set
 
 CONFIG_MTD_UBI=y
 
@@ -116,6 +101,7 @@ CONFIG_BLK_DEV_SD=y
 # Ethernet (10 or 100Mbit)
 #
 CONFIG_SMSC911X=y
+CONFIG_USB_NET_SMSC95XX=y
 
 #
 # Userland interfaces
@@ -171,12 +157,11 @@ CONFIG_FB_CFB_FILLRECT=y
 CONFIG_FB_CFB_COPYAREA=y
 CONFIG_FB_CFB_IMAGEBLIT=y
 # CONFIG_FB_CFB_REV_PIXELS_IN_BYTE is not set
-CONFIG_FB_SYS_FILLRECT=m
-CONFIG_FB_SYS_COPYAREA=m
-CONFIG_FB_SYS_IMAGEBLIT=m
+# CONFIG_FB_SYS_FILLRECT is not set
+# CONFIG_FB_SYS_COPYAREA is not set
+# CONFIG_FB_SYS_IMAGEBLIT is not set
 # CONFIG_FB_FOREIGN_ENDIAN is not set
-CONFIG_FB_SYS_FOPS=m
-CONFIG_FB_DEFERRED_IO=y
+# CONFIG_FB_SYS_FOPS is not set
 # CONFIG_FB_SVGALIB is not set
 # CONFIG_FB_MACMODES is not set
 # CONFIG_FB_BACKLIGHT is not set
@@ -186,8 +171,6 @@ CONFIG_FB_MODE_HELPERS=y
 #
 # Frame buffer hardware drivers
 #
-CONFIG_FB_OMAP=y
-CONFIG_FB_OMAP_CONSISTENT_DMA_SIZE=2
 # CONFIG_FB_S1D13XXX is not set
 # CONFIG_FB_TMIO is not set
 # CONFIG_FB_VIRTUAL is not set
@@ -206,7 +189,6 @@ CONFIG_OMAP2_DSS_DPI=y
 CONFIG_OMAP2_DSS_VENC=y
 # CONFIG_OMAP2_DSS_SDI is not set
 CONFIG_OMAP2_DSS_DSI=y
-CONFIG_OMAP2_DSS_USE_DSI_PLL=y
 # CONFIG_OMAP2_DSS_FAKE_VSYNC is not set
 CONFIG_OMAP2_DSS_MIN_FCK_PER_PCK=0
 CONFIG_FB_OMAP2=y
@@ -216,13 +198,11 @@ CONFIG_FB_OMAP2_NUM_FBS=2
 #
 # OMAP2/3 Display Device Drivers
 #
-CONFIG_PANEL_GENERIC=y
+CONFIG_PANEL_GENERIC_DPI=y
+CONFIG_PANEL_DVI=y
 CONFIG_PANEL_SHARP_LS037V7DW01=y
 # CONFIG_PANEL_LGPHILIPS_LB035Q02 is not set
-# CONFIG_PANEL_SAMSUNG_LTE430WQ_F0C is not set
-# CONFIG_PANEL_SHARP_LQ043T1DG01 is not set
 # CONFIG_PANEL_TAAL is not set
-CONFIG_PANEL_TOPPOLY_TDO35S=m
 CONFIG_PANEL_TPO_TD043MTEA1=m
 # CONFIG_BACKLIGHT_LCD_SUPPORT is not set
 CONFIG_BACKLIGHT_CLASS_DEVICE=y
@@ -247,11 +227,16 @@ CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_LOGO=y
 # CONFIG_VGA_CONSOLE is not set
 
+# DMA Devices
+CONFIG_DMADEVICES=y
+CONFIG_DMA_OMAP=y
+CONFIG_DMA_OF=y
+
 CONFIG_SOUND=y
 CONFIG_SND=y
 CONFIG_SND_SOC=y
 CONFIG_SND_OMAP_SOC=y
-CONFIG_SND_OMAP_SOC_OMAP3_BEAGLE=y
+CONFIG_SND_OMAP_SOC_OMAP_TWL4030=y
 
 #
 # USB Input Devices
@@ -262,7 +247,6 @@ CONFIG_USB_SUPPORT=y
 #
 # Miscellaneous USB options
 #
-CONFIG_USB_DEVICEFS=y
 CONFIG_USB_OTG=y
 # CONFIG_USB_OTG_WHITELIST is not set
 
@@ -274,7 +258,7 @@ CONFIG_USB_EHCI_TT_NEWSCHED=y
 CONFIG_USB_EHCI_ROOT_HUB_TT=y
 CONFIG_USB_MUSB_HDRC=y
 CONFIG_USB_MUSB_OMAP2PLUS=y
-CONFIG_USB_MUSB_SOC=y
+CONFIG_USB_OMAP=y
 
 #
 # OMAP 343x high speed USB support
@@ -284,7 +268,6 @@ CONFIG_USB_GADGET_MUSB_HDRC=y
 CONFIG_USB_MUSB_HDRC_HCD=y
 CONFIG_USB_INVENTRA_DMA=y
 
-
 #
 # NOTE: USB_STORAGE enables SCSI, and 'SCSI disk support'
 #
@@ -302,6 +285,10 @@ CONFIG_USB_GADGET_DUALSPEED=y
 CONFIG_USB_OTG_UTILS=y
 CONFIG_TWL4030_USB=y
 
+# USB gadget modules
+CONFIG_USB_G_NCM=y
+CONFIG_USB_MASS_STORAGE=y
+
 CONFIG_MMC=y
 
 #
@@ -325,9 +312,6 @@ CONFIG_VFAT_FS=y
 # Multimedia core support
 #
 
-CONFIG_VIDEO_OMAP3_ISP=y
-# CONFIG_VIDEO_OMAP34XX_ISP_PREVIEWER is not set
-CONFIG_VIDEO_OMAP34XX_ISP_RESIZER=y
 # CONFIG_VIDEO_HELPER_CHIPS_AUTO is not set
 
 #
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
index 146009a..25c87a8 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"
similarity index 94%
rename from "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend"
rename to "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"
index fb78cf1..08b1f88 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -29,4 +29,4 @@ SRC_URI += "file://{{=machine}}-preempt-rt.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "f35992f80c81dc5fa1a97165dfd5cbb84661f7cb"
 #SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "1b534b2f8bbe9b8a773268cfa30a4850346f6f5f"
-#LINUX_VERSION = "3.8.4"
+#LINUX_VERSION = "3.10.9"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index abb126c..198544f 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"
new file mode 100644
index 0000000..bc6968d
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"	
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
+#LINUX_VERSION = "3.10.9"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"
index df2510c..2f06647 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"
similarity index 95%
rename from "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
rename to "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"
index cdf52af..1e814c5 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -29,3 +29,4 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "19f7e43b54aef08d58135ed2a897d77b624b320a"
 #SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "459165c1dd61c4e843c36e6a1abeb30949a20ba7"
+#LINUX_VERSION = "3.10.9"
\ No newline at end of file
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index a7635ab..12ce782 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
diff --git a/scripts/lib/bsp/substrate/target/arch/common/README b/scripts/lib/bsp/substrate/target/arch/common/README
index 93af973..928659f 100644
--- a/scripts/lib/bsp/substrate/target/arch/common/README
+++ b/scripts/lib/bsp/substrate/target/arch/common/README
@@ -65,14 +65,6 @@ You should then be able to build a {{=machine}} image as such:
   $ source oe-init-build-env
   $ bitbake core-image-sato
 
-NOTE: if the '{{=machine}}' machine includes the emgd-driver-bin
-package (i.e. if the emgd version of the xserver is being used), it
-has a proprietary license that must be whitelisted by adding the
-string "license_emgd-driver-bin_1.16" to the LICENSE_FLAGS_WHITELIST
-variable in your local.conf.  For example:
-
-  LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.16"
-
 At the end of a successful build, you should have a live image that
 you can boot from a USB flash drive (see instructions on how to do
 that below, in the section 'Booting the images from /binary').
diff --git a/scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor_0.0.bbappend b/scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor_0.0.bbappend
index ae92448..6d4804d 100644
--- a/scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor_0.0.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -1,2 +1,2 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/${PN}:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
diff --git a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/kernel-list.noinstall
index 2f9f106..426cadd 100644
--- a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/kernel-list.noinstall
@@ -2,22 +2,22 @@
 {{ input type:"boolean" name:"custom_kernel_remote" prio:"20" msg:"Is the custom kernel you'd like to use in a remote git repo? (y/n)" default:"y"}}
 
 {{ if kernel_choice == "custom" and custom_kernel_remote == "y": }}
-{{ input type:"edit-git-repo" name:"custom_kernel_remote_path" prio:"20" msg:"Please enter the full URI to the remote git repo (the default corresponds to linux-stable v3.8.1)" default:"git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git"}}
+{{ input type:"edit-git-repo" name:"custom_kernel_remote_path" prio:"20" msg:"Please enter the full URI to the remote git repo (the default corresponds to linux-stable v3.10.9)" default:"git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git"}}
 
 {{ if kernel_choice == "custom" and custom_kernel_remote == "n": }}
-{{ input type:"edit-git-repo" name:"custom_kernel_local_path" prio:"20" msg:"You've indicated that you're not using a remote git repo.  Please enter the full path to the local git repo you want to use (the default assumes a local linux-stable v3.8.1)" default:"/home/trz/yocto/kernels/linux-stable.git"}}
+{{ input type:"edit-git-repo" name:"custom_kernel_local_path" prio:"20" msg:"You've indicated that you're not using a remote git repo.  Please enter the full path to the local git repo you want to use (the default assumes a local linux-stable v3.10.9)" default:"/home/trz/yocto/kernels/linux-stable.git"}}
 
 {{ if kernel_choice == "custom": }}
 {{ input type:"boolean" name:"custom_kernel_need_kbranch" prio:"20" msg:"Do you need to use a specific (non-master) branch? (y/n)" default:"n"}}
 
 {{ if kernel_choice == "custom" and custom_kernel_need_kbranch == "y": }}
-{{ input type:"edit" name:"custom_kernel_kbranch" prio:"20" msg:"Please enter the branch you want to use (the default branch corresponds to the linux-stable 'linux-3.8.y' branch):" default:"linux-3.8.y"}}
+{{ input type:"edit" name:"custom_kernel_kbranch" prio:"20" msg:"Please enter the branch you want to use (the default branch corresponds to the linux-stable 'linux-3.10.y' branch):" default:"linux-3.10.y"}}
 
 {{ if kernel_choice == "custom": }}
 {{ input type:"edit" name:"custom_kernel_srcrev" prio:"20" msg:"Please enter the SRCREV (commit id) you'd like to use (use '${AUTOREV}' to track the current HEAD):" default:"${AUTOREV}"}}
 
 {{ if kernel_choice == "custom": }}
-{{ input type:"edit" name:"custom_kernel_linux_version" prio:"20" msg:"Please enter the Linux version of the kernel you've specified:" default:"3.8.1"}}
+{{ input type:"edit" name:"custom_kernel_linux_version" prio:"20" msg:"Please enter the Linux version of the kernel you've specified:" default:"3.10.9"}}
 
 {{ if kernel_choice == "custom": }}
 {{ input type:"edit" name:"custom_kernel_linux_version_extension" prio:"20" msg:"Please enter a Linux version extension if you want (it will show up at the end of the kernel name shown by uname):" default:"-custom"}}
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
index 78a753c..b06ba12 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
@@ -26,41 +26,42 @@ require conf/machine/include/tune-atom.inc
 require conf/machine/include/tune-core2.inc
 
 require conf/machine/include/ia32-base.inc
-{{ if xserver == "y" and xserver_choice == "xserver_emgd": }}
-require conf/machine/include/meta-intel.inc
+
+MACHINE_FEATURES += "wifi efi pcbios"
 
 {{ input type:"boolean" name:"xserver" prio:"50" msg:"Do you need support for X? (y/n)" default:"y" }}
 
-{{ if xserver == "y" and (kernel_choice == "linux-yocto_3.4" or kernel_choice == "linux-yocto_3.8"): }}
+{{ if xserver == "y" and (kernel_choice == "linux-yocto_3.4" or kernel_choice == "linux-yocto_3.10"): }}
 {{ input type:"choicelist" name:"xserver_choice" prio:"50" msg:"Please select an xserver for this machine:" default:"xserver_i915" }}
 {{ input type:"choice" val:"xserver_vesa" msg:"VESA xserver support" }}
-{{ input type:"choice" val:"xserver_emgd" msg:"EMGD xserver support (proprietary)" }}
 {{ input type:"choice" val:"xserver_i915" msg:"i915 xserver support" }}
+{{ input type:"choice" val:"xserver_i965" msg:"i965 xserver support" }}
 
 {{ if xserver == "y" and kernel_choice == "custom": }}
 {{ input type:"choicelist" name:"xserver_choice" prio:"50" msg:"Please select an xserver for this machine:" default:"xserver_i915" }}
 {{ input type:"choice" val:"xserver_vesa" msg:"VESA xserver support" }}
 {{ input type:"choice" val:"xserver_i915" msg:"i915 xserver support" }}
+{{ input type:"choice" val:"xserver_i965" msg:"i965 xserver support" }}
 
-{{ if xserver == "y" and kernel_choice != "linux-yocto_3.4" and kernel_choice != "linux-yocto_3.8" and kernel_choice != "custom": xserver_choice = "xserver_i915" }}
+{{ if xserver == "y" and kernel_choice != "linux-yocto_3.4" and kernel_choice != "linux-yocto_3.10" and kernel_choice != "custom": xserver_choice = "xserver_i915" }}
 
 {{ if xserver == "y": }}
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
 {{ if xserver == "y" and xserver_choice == "xserver_vesa": }}
            ${XSERVER_IA32_VESA} \
-{{ if xserver == "y" and xserver_choice == "xserver_emgd": }}
-           ${XSERVER_IA32_EMGD} \
 {{ if xserver == "y" and xserver_choice == "xserver_i915": }}
            ${XSERVER_IA32_I915} \
+{{ if xserver == "y" and xserver_choice == "xserver_i965": }}
+           ${XSERVER_IA32_I965} \
 {{ if xserver == "y": }}
            "
 
-{{ if xserver == "y" and xserver_choice == "xserver_emgd": }}
-PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
-PREFERRED_VERSION_mesa ?= "9.0.2"
-PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
-PREFERRED_VERSION_emgd-driver-bin ?= "1.16"
+MACHINE_EXTRA_RRECOMMENDS += "linux-firmware v86d"
+
+GLIBC_ADDONS = "nptl"
 
-{{ if xserver == "y" and xserver_choice == "xserver_vesa" or xserver_choice == "xserver_emgd": }}
-APPEND += "video=vesafb vga=0x318 vmalloc=256MB"
+EXTRA_OECONF_append_pn-matchbox-panel-2 = " --with-battery=acpi"
+
+{{ if xserver == "y" and xserver_choice == "xserver_vesa": }}
+APPEND += "video=vesafb vga=0x318"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf"
new file mode 100644
index 0000000..e69de29
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_emgd\": }} xorg.conf" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_emgd\": }} xorg.conf"
deleted file mode 100644
index 3347437..0000000
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_emgd\": }} xorg.conf"	
+++ /dev/null
@@ -1,47 +0,0 @@
-##
-## X Config options generated from CED
-## x11 conf skeleton
-## DriverVer=
-##
-
-Section "Screen"
-    Identifier    "Screen0"
-    Device        "IntelEMGD-0"
-    Monitor       "Monitor0"
-    SubSection    "Display"
-    EndSubSection
-EndSection
-
-# Primary (First/only) display
-Section "Device"
-    Identifier "IntelEMGD-0"
-    Driver     "emgd"
-    VendorName "Intel(R) DEG"
-    BoardName  "Embedded Graphics"
-    BusID      "0:2:0"
-    Screen      0
-    Option     "PcfVersion"            "1792"
-    Option     "ConfigId"              "1"
-    Option     "ALL/1/name"                   "e6xx"
-    Option     "ALL/1/General/PortOrder"      "24000"
-    Option     "ALL/1/General/DisplayConfig"  "1"
-    Option     "ALL/1/General/DisplayDetect"  "1"
-    Option     "ALL/1/General/TuningWA" "1"
-    Option     "ALL/1/Port/4/General/name"           "lvds"
-    Option     "ALL/1/Port/4/General/EdidAvail"      "3"
-    Option     "ALL/1/Port/4/General/EdidNotAvail"   "1"
-    Option     "ALL/1/Port/4/General/Rotation"       "0"
-    Option     "ALL/1/Port/4/General/Edid"           "0"
-EndSection
-
-Section "ServerLayout"
-    Identifier     "Default Layout"
-    Screen 0       "Screen0" 0 0
-   # InputDevice    "Mouse0" "CorePointer"
-   # InputDevice    "Keyboard0" "CoreKeyboard"
-   # InputDevice    "DevInputMice" "SendCoreEvents"
-EndSection
-
-Section "ServerFlags"
-    Option        "DontZap"  "0"
-EndSection
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf"
deleted file mode 100644
index b658f40..0000000
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf"	
+++ /dev/null
@@ -1,25 +0,0 @@
-Section "Device"
-    Identifier	"Intel Graphics Driver"
-    Driver	"intel"
-EndSection
-
-Section "Monitor"
-    Identifier    "Generic Monitor"
-    Option        "DPMS"
-EndSection
-
-Section "Screen"
-    Identifier    "Default Screen"
-    Device	  "Intel Graphics Driver"
-    Monitor       "Generic Monitor"
-    DefaultDepth  24
-EndSection
-
-Section "ServerLayout"
-    Identifier     "Default Layout"
-    Screen         "Default Screen"
-EndSection
-
-Section "ServerFlags"
-    Option        "DontZap"  "0"
-EndSection
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf"
deleted file mode 100644
index ae58e2b..0000000
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf"	
+++ /dev/null
@@ -1,25 +0,0 @@
-Section "Device"
-    Identifier	"Generic VESA"
-    Driver	"vesa"
-EndSection
-
-Section "Monitor"
-    Identifier    "Generic Monitor"
-    Option        "DPMS"
-EndSection
-
-Section "Screen"
-    Identifier    "Default Screen"
-    Device	  "Generic VESA"
-    Monitor       "Generic Monitor"
-    DefaultDepth  24
-EndSection
-
-Section "ServerLayout"
-    Identifier     "Default Layout"
-    Screen         "Default Screen"
-EndSection
-
-Section "ServerFlags"
-    Option        "DontZap"  "0"
-EndSection
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
index 155f67b..72d991c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
@@ -1 +1 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/${PN}:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
index 6754c6d..88a5d18 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.8) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.10) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.8"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.10"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"
index 1b22eab..60b670d 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"	
@@ -6,9 +6,6 @@ include {{=map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch)
 {{ if need_new_kbranch == "y": }}
 branch {{=machine}}
 
-{{ if xserver == "y" and xserver_choice == "xserver_emgd": }}
-include features/drm-emgd/emgd-1.16.scc
-
 include {{=machine}}.scc
 
 # default policy for standard kernels
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
index 41e1635..eda1d62 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"	
@@ -3,16 +3,13 @@ kconf hardware {{=machine}}.cfg
 include features/intel-e1xxxx/intel-e100.scc
 include features/intel-e1xxxx/intel-e1xxxx.scc
 
-{{ if xserver == "y" and xserver_choice == "xserver_emgd": }}
-include features/drm-emgd/drm-emgd.scc
-
-{{ if xserver == "y" and xserver_choice == "xserver_i915": }}
+{{ if xserver == "y" and xserver_choice == "xserver_i915" or xserver_choice == "xserver_i965": }}
 include features/i915/i915.scc
 
 include features/serial/8250.scc
 include features/ericsson-3g/f5521gw.scc
 
-{{ if xserver == "y" and xserver_choice == "xserver_vesa" or xserver_choice == "xserver_emgd": }}
+{{ if xserver == "y" and xserver_choice == "xserver_vesa": }}
 include cfg/vesafb.scc
 
 include cfg/usb-mass-storage.scc
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
index 146009a..25c87a8 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"
similarity index 94%
rename from "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend"
rename to "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"
index fb78cf1..08b1f88 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -29,4 +29,4 @@ SRC_URI += "file://{{=machine}}-preempt-rt.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "f35992f80c81dc5fa1a97165dfd5cbb84661f7cb"
 #SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "1b534b2f8bbe9b8a773268cfa30a4850346f6f5f"
-#LINUX_VERSION = "3.8.4"
+#LINUX_VERSION = "3.10.9"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index abb126c..198544f 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"
new file mode 100644
index 0000000..bc6968d
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"	
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
+#LINUX_VERSION = "3.10.9"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"
index df2510c..2f06647 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"
similarity index 95%
rename from "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
rename to "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"
index c692048..c1f2654 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -29,3 +29,4 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "19f7e43b54aef08d58135ed2a897d77b624b320a"
 #SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "459165c1dd61c4e843c36e6a1abeb30949a20ba7"
+#LINUX_VERSION = "3.10.9"
\ No newline at end of file
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index aa2f91e..c39fd51 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf
index 08bb9f1..3856b38 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf
@@ -9,6 +9,7 @@ MACHINE_FEATURES = "screen keyboard pci usbhost ext2 ext3 serial"
 
 KERNEL_IMAGETYPE = "vmlinux"
 KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
+KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
 
 {{ if kernel_choice == "custom": preferred_kernel = "linux-yocto-custom" }}
 {{ if kernel_choice == "linux-yocto-dev": preferred_kernel = "linux-yocto-dev" }}
@@ -23,13 +24,13 @@ PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 
 {{ input type:"boolean" name:"xserver" prio:"50" msg:"Do you need support for X? (y/n)" default:"y" }}
 {{ if xserver == "y": }}
-PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
-XSERVER = "xserver-xorg \
-           xserver-xorg-extension-extmod \
-           xf86-input-evdev \
-           xf86-video-fbdev"
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
+            xf86-input-evdev \
+            xf86-video-fbdev"
 
 SERIAL_CONSOLE = "115200 ttyS0"
+USE_VT ?= "0"
 
 MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
 
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
index 6754c6d..88a5d18 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.8) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.10) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.8"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.10"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
index 146009a..25c87a8 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"
similarity index 94%
rename from "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend"
rename to "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"
index fb78cf1..08b1f88 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -29,4 +29,4 @@ SRC_URI += "file://{{=machine}}-preempt-rt.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "f35992f80c81dc5fa1a97165dfd5cbb84661f7cb"
 #SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "1b534b2f8bbe9b8a773268cfa30a4850346f6f5f"
-#LINUX_VERSION = "3.8.4"
+#LINUX_VERSION = "3.10.9"
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index abb126c..198544f 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"
new file mode 100644
index 0000000..bc6968d
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"	
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
+#LINUX_VERSION = "3.10.9"
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"
index df2510c..2f06647 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"
similarity index 95%
rename from "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
rename to "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"
index cdf52af..1e814c5 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -29,3 +29,4 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "19f7e43b54aef08d58135ed2a897d77b624b320a"
 #SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "459165c1dd61c4e843c36e6a1abeb30949a20ba7"
+#LINUX_VERSION = "3.10.9"
\ No newline at end of file
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index a7635ab..12ce782 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf
index 0456dcd..78fb5db 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf
@@ -5,31 +5,43 @@
 
 TARGET_FPU = ""
 
-{{ input type:"choicelist" name:"tunefile" prio:"40" msg:"Which machine tuning would you like to use?" default:"tune_ppc603e" }}
+{{ input type:"choicelist" name:"tunefile" prio:"40" msg:"Which machine tuning would you like to use?" default:"tune_ppce300c3" }}
+{{ input type:"choice" val:"tune_ppc476" msg:"ppc476 tuning optimizations" }}
 {{ input type:"choice" val:"tune_ppc603e" msg:"ppc603e tuning optimizations" }}
+{{ input type:"choice" val:"tune_ppc7400" msg:"ppc7400 tuning optimizations" }}
 {{ input type:"choice" val:"tune_ppce300c2" msg:"ppce300c2 tuning optimizations" }}
+{{ input type:"choice" val:"tune_ppce300c3" msg:"ppce300c3 tuning optimizations" }}
 {{ input type:"choice" val:"tune_ppce500" msg:"ppce500 tuning optimizations" }}
 {{ input type:"choice" val:"tune_ppce500mc" msg:"ppce500mc tuning optimizations" }}
 {{ input type:"choice" val:"tune_ppce500v2" msg:"ppce500v2 tuning optimizations" }}
-{{ input type:"choice" val:"tune_ppce5500_32b" msg:"ppce5500-32b tuning optimizations" }}
-{{ input type:"choice" val:"tune_ppce5500_64b" msg:"ppce5500-64b tuning optimizations" }}
+{{ input type:"choice" val:"tune_ppce5500" msg:"ppce5500 tuning optimizations" }}
+{{ input type:"choice" val:"tune_ppce6500" msg:"ppce6500 tuning optimizations" }}
+{{ if tunefile == "tune_ppc476": }}
+include conf/machine/include/tune-ppc476.inc
 {{ if tunefile == "tune_ppc603e": }}
 include conf/machine/include/tune-ppc603e.inc
+{{ if tunefile == "tune_ppc7400": }}
+include conf/machine/include/tune-ppc7400.inc
 {{ if tunefile == "tune_ppce300c2": }}
 include conf/machine/include/tune-ppce300c2.inc
+{{ if tunefile == "tune_ppce300c3": }}
+include conf/machine/include/tune-ppce300c3.inc
 {{ if tunefile == "tune_ppce500": }}
 include conf/machine/include/tune-ppce500.inc
 {{ if tunefile == "tune_ppce500mc": }}
 include conf/machine/include/tune-ppce500mc.inc
 {{ if tunefile == "tune_ppce500v2": }}
 include conf/machine/include/tune-ppce500v2.inc
-{{ if tunefile == "tune_ppce5500_32b": }}
-include conf/machine/include/tune-ppce5500-32b.inc
-{{ if tunefile == "tune_ppce5500_64b": }}
-include conf/machine/include/tune-ppce5500-64b.inc
+{{ if tunefile == "tune_ppce5500": }}
+include conf/machine/include/tune-ppce5500.inc
+{{ if tunefile == "tune_ppce6500": }}
+include conf/machine/include/tune-ppce6500.inc
 
 KERNEL_IMAGETYPE = "uImage"
 
+EXTRA_IMAGEDEPENDS += "u-boot"
+UBOOT_MACHINE_{{=machine}} = "MPC8315ERDB_config"
+
 SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
@@ -47,11 +59,12 @@ PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 
 {{ input type:"boolean" name:"xserver" prio:"50" msg:"Do you need support for X? (y/n)" default:"y" }}
 {{ if xserver == "y": }}
-PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
-XSERVER = "xserver-xorg \
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
            xf86-input-evdev \
            xf86-video-fbdev"
 
+PREFERRED_VERSION_u-boot ?= "v2013.07%"
 {{ input type:"edit" name:"uboot_entrypoint" prio:"40" msg:"Please specify a value for UBOOT_ENTRYPOINT:" default:"0x00000000" }}
 UBOOT_ENTRYPOINT = "{{=uboot_entrypoint}}"
 
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
index 6754c6d..88a5d18 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.8) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.10) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.8"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.10"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
index 146009a..25c87a8 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"
similarity index 94%
rename from "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend"
rename to "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"
index fb78cf1..00c8c68 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -29,4 +29,4 @@ SRC_URI += "file://{{=machine}}-preempt-rt.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "f35992f80c81dc5fa1a97165dfd5cbb84661f7cb"
 #SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "1b534b2f8bbe9b8a773268cfa30a4850346f6f5f"
-#LINUX_VERSION = "3.8.4"
+#LINUX_VERSION = "3.10.9"
\ No newline at end of file
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index abb126c..198544f 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"
new file mode 100644
index 0000000..bc6968d
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"	
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
+#LINUX_VERSION = "3.10.9"
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"
index df2510c..2f06647 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"
similarity index 95%
rename from "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
rename to "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"
index cdf52af..a61f5cc 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -29,3 +29,4 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "19f7e43b54aef08d58135ed2a897d77b624b320a"
 #SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "459165c1dd61c4e843c36e6a1abeb30949a20ba7"
+#LINUX_VERSION = "3.10.9"
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index a7635ab..12ce782 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 155f67b..72d991c 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1 +1 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/${PN}:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
index 6754c6d..88a5d18 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.8) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.10) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.8"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.10"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
index 68e6b08..7599ecb 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -15,7 +15,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/qemu-ppc32" }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/qemuppc" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "i386": }}
 {{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc/base" }}
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"
similarity index 96%
rename from "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend"
rename to "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"
index 7077848..1f46fdb 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -15,7 +15,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/qemu-ppc32" }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/qemuppc" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "i386": }}
 {{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
@@ -52,4 +52,4 @@ SRC_URI += "file://{{=machine}}-preempt-rt.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto-rt_{{=machine}} ?= "f35992f80c81dc5fa1a97165dfd5cbb84661f7cb"
 #SRCREV_meta_pn-linux-yocto-rt_{{=machine}} ?= "1b534b2f8bbe9b8a773268cfa30a4850346f6f5f"
-#LINUX_VERSION = "3.8.4"
+#LINUX_VERSION = "3.10.9"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index f29240b..256c5c2 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -15,7 +15,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/qemu-ppc32" }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/qemuppc" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "i386": }}
 {{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard/preempt-rt" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/preempt-rt/base" }}
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"
new file mode 100644
index 0000000..760eddd9
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"	
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
+#SRCREV_machine_pn-linux-yocto-tiny_{{=machine}} ?= "840bb8c059418c4753415df56c9aff1c0d5354c8"
+#SRCREV_meta_pn-linux-yocto-tiny_{{=machine}} ?= "4fd76cc4f33e0afd8f906b1e8f231b6d13b6c993"
+#LINUX_VERSION = "3.10.9"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"
index ff53b53..b42837a 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"
similarity index 94%
rename from "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
rename to "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"
index af56d73..7b7ca90 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -15,7 +15,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/qemu-ppc32" }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/qemuppc" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "i386": }}
 {{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc/base" }}
@@ -48,11 +48,8 @@ SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}-user-features.scc \
            "
 
-{{ if qemuarch == "arm": }}
-SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "bf458ca0e48f4f57cbb02b52070a000f361eec84"
-
 # uncomment and replace these SRCREVs with the real commit ids once you've had
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "b170394a475b96ecc92cbc9e4b002bed0a9f69c5"
 #SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "c2ed0f16fdec628242a682897d5d86df4547cf24"
-#LINUX_VERSION = "3.8"
+#LINUX_VERSION = "3.10.9"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index aae25ab..7790deb 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -15,7 +15,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
 {{ input type:"choicelist" name:"new_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/base" }}
 
 {{ if need_new_kbranch == "n" and qemuarch == "powerpc": }}
-{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/qemu-ppc32" }}
+{{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc" gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/qemuppc" }}
 
 {{ if need_new_kbranch == "y" and qemuarch == "i386": }}
 {{ input type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:" default:"standard/common-pc/base" }}
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf
index f20d161..2bf2226 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf
@@ -17,6 +17,8 @@ PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 require conf/machine/include/tune-x86_64.inc
 require conf/machine/include/ia32-base.inc
 
+MACHINE_FEATURES += "wifi efi pcbios"
+
 {{ input type:"boolean" name:"xserver" prio:"50" msg:"Do you need support for X? (y/n)" default:"y" }}
 
 {{ if xserver == "y": }}
@@ -24,6 +26,7 @@ require conf/machine/include/ia32-base.inc
 
 {{ input type:"choice" val:"xserver_vesa" msg:"VESA xserver support" }}
 {{ input type:"choice" val:"xserver_i915" msg:"i915 xserver support" }}
+{{ input type:"choice" val:"xserver_i965" msg:"i965 xserver support" }}
 {{ if xserver == "y": }}
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
@@ -31,8 +34,16 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_VESA} \
 {{ if xserver == "y" and xserver_choice == "xserver_i915": }}
            ${XSERVER_IA32_I915} \
-{{ if xserver == "y" and xserver == "y": }}
+{{ if xserver == "y" and xserver_choice == "xserver_i965": }}
+           ${XSERVER_IA32_I965} \
+{{ if xserver == "y": }}
            "
 
+MACHINE_EXTRA_RRECOMMENDS += "linux-firmware v86d"
+
+GLIBC_ADDONS = "nptl"
+
+EXTRA_OECONF_append_pn-matchbox-panel-2 = " --with-battery=acpi"
+
 {{ if xserver == "y" and xserver_choice == "xserver_vesa": }}
 APPEND += "video=vesafb vga=0x318"
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf"
new file mode 100644
index 0000000..e69de29
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf"
deleted file mode 100644
index b658f40..0000000
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf"	
+++ /dev/null
@@ -1,25 +0,0 @@
-Section "Device"
-    Identifier	"Intel Graphics Driver"
-    Driver	"intel"
-EndSection
-
-Section "Monitor"
-    Identifier    "Generic Monitor"
-    Option        "DPMS"
-EndSection
-
-Section "Screen"
-    Identifier    "Default Screen"
-    Device	  "Intel Graphics Driver"
-    Monitor       "Generic Monitor"
-    DefaultDepth  24
-EndSection
-
-Section "ServerLayout"
-    Identifier     "Default Layout"
-    Screen         "Default Screen"
-EndSection
-
-Section "ServerFlags"
-    Option        "DontZap"  "0"
-EndSection
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf"
deleted file mode 100644
index ae58e2b..0000000
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf"	
+++ /dev/null
@@ -1,25 +0,0 @@
-Section "Device"
-    Identifier	"Generic VESA"
-    Driver	"vesa"
-EndSection
-
-Section "Monitor"
-    Identifier    "Generic Monitor"
-    Option        "DPMS"
-EndSection
-
-Section "Screen"
-    Identifier    "Default Screen"
-    Device	  "Generic VESA"
-    Monitor       "Generic Monitor"
-    DefaultDepth  24
-EndSection
-
-Section "ServerLayout"
-    Identifier     "Default Layout"
-    Screen         "Default Screen"
-EndSection
-
-Section "ServerFlags"
-    Option        "DontZap"  "0"
-EndSection
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
index 155f67b..72d991c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
@@ -1 +1 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/${PN}:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
index 6754c6d..88a5d18 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
@@ -1,5 +1,5 @@
 {{ if kernel_choice != "custom": }}
-{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.8) kernel? (y/n)" default:"y"}}
+{{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.10) kernel? (y/n)" default:"y"}}
 
 {{ if kernel_choice != "custom" and use_default_kernel == "n": }}
-{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.8"}}
+{{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.10"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
index 6189931..db45140 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"	
@@ -3,8 +3,9 @@ kconf hardware {{=machine}}.cfg
 include features/serial/8250.scc
 {{ if xserver == "y" and xserver_choice == "xserver_vesa": }}
 include cfg/vesafb.scc
-{{ if xserver == "y" and xserver_choice == "xserver_i915": }}
+{{ if xserver == "y" and xserver_choice == "xserver_i915" or xserver_choice == "xserver_i965": }}
 include features/i915/i915.scc
+
 include cfg/usb-mass-storage.scc
 include features/power/intel.scc
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"
index 146009a..25c87a8 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-dev\": }} linux-yocto-dev.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"
new file mode 100644
index 0000000..00c8c68
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.10\": }} linux-yocto-rt_3.10.bbappend"	
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
+#LINUX_VERSION = "3.10.9"
\ No newline at end of file
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index abb126c..198544f 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend"
deleted file mode 100644
index fb78cf1..0000000
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.8\": }} linux-yocto-rt_3.8.bbappend"	
+++ /dev/null
@@ -1,32 +0,0 @@
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
-#LINUX_VERSION = "3.8.4"
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"
new file mode 100644
index 0000000..bc6968d
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.10\": }} linux-yocto-tiny_3.10.bbappend"	
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
+#LINUX_VERSION = "3.10.9"
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"
index df2510c..2f06647 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-tiny_3.4\": }} linux-yocto-tiny_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"
similarity index 95%
rename from "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"
rename to "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"
index 4131ff5..1623481 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.8\": }} linux-yocto_3.8.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.10\": }} linux-yocto_3.10.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -29,3 +29,4 @@ SRC_URI += "file://{{=machine}}-standard.scc \
 # the appropriate changes committed to the upstream linux-yocto repo
 #SRCREV_machine_pn-linux-yocto_{{=machine}} ?= "b170394a475b96ecc92cbc9e4b002bed0a9f69c5"
 #SRCREV_meta_pn-linux-yocto_{{=machine}} ?= "c2ed0f16fdec628242a682897d5d86df4547cf24"
+#LINUX_VERSION = "3.10.9"
\ No newline at end of file
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index 5122246..7053775 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
-- 
1.7.11.4


