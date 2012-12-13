Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F2FDE0140A
	for <poky@yoctoproject.org>; Wed, 12 Dec 2012 20:56:48 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 Dec 2012 20:55:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,272,1355126400"; d="scan'208";a="233209822"
Received: from unknown (HELO localhost) ([10.255.13.197])
	by orsmga001.jf.intel.com with ESMTP; 12 Dec 2012 20:56:46 -0800
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Wed, 12 Dec 2012 22:56:32 -0600
Message-Id: <e98a9515ac60203df99002fbb97a64ed244376c8.1355373343.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <8884beae4cbc9a06d5bd8876c64fed93fe6eb546.1355373343.git.tom.zanussi@intel.com>
References: <8884beae4cbc9a06d5bd8876c64fed93fe6eb546.1355373343.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1355373343.git.tom.zanussi@intel.com>
References: <cover.1355373343.git.tom.zanussi@intel.com>
Subject: [PATCH 03/12] yocto-bsp: update existing templates for linux-yocto-custom
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
X-List-Received-Date: Thu, 13 Dec 2012 04:56:48 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update existing templates to integrate with linux-yocto-custom.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../target/arch/arm/conf/machine/{{=machine}}.conf       |  9 +++++++--
 .../arch/arm/recipes-kernel/linux/kernel-list.noinstall  |  3 ++-
 .../user-config.cfg"                                     |  0
 .../user-patches.scc"                                    |  0
 .../{{=machine}}-non_hardware.cfg"                       |  0
 .../{{=machine}}-preempt-rt.scc"                         |  0
 .../{{=machine}}-standard.scc"                           |  0
 .../{{=machine}}.cfg"                                    |  0
 .../{{=machine}}.scc"                                    |  0
 .../target/arch/i386/conf/machine/{{=machine}}.conf      | 16 +++++++++++++---
 .../arch/i386/recipes-kernel/linux/kernel-list.noinstall |  3 ++-
 .../user-config.cfg"                                     |  0
 .../user-patches.scc"                                    |  0
 .../{{=machine}}-preempt-rt.scc"                         |  0
 .../{{=machine}}-standard.scc"                           |  0
 .../{{=machine}}.cfg"                                    |  0
 .../{{=machine}}.scc"                                    |  0
 .../target/arch/mips/conf/machine/{{=machine}}.conf      |  9 +++++++--
 .../arch/mips/recipes-kernel/linux/kernel-list.noinstall |  3 ++-
 .../user-config.cfg"                                     |  0
 .../user-patches.scc"                                    |  0
 .../{{=machine}}-preempt-rt.scc"                         |  0
 .../{{=machine}}-standard.scc"                           |  0
 .../{{=machine}}.cfg"                                    |  0
 .../{{=machine}}.scc"                                    |  0
 .../target/arch/powerpc/conf/machine/{{=machine}}.conf   |  9 +++++++--
 .../powerpc/recipes-kernel/linux/kernel-list.noinstall   |  3 ++-
 .../user-config.cfg"                                     |  0
 .../user-patches.scc"                                    |  0
 .../{{=machine}}-preempt-rt.scc"                         |  0
 .../{{=machine}}-standard.scc"                           |  0
 .../{{=machine}}.cfg"                                    |  0
 .../{{=machine}}.scc"                                    |  0
 .../target/arch/qemu/conf/machine/{{=machine}}.conf      |  9 +++++++--
 .../arch/qemu/recipes-kernel/linux/kernel-list.noinstall |  3 ++-
 .../user-config.cfg"                                     |  0
 .../user-patches.scc"                                    |  0
 .../{{=machine}}-preempt-rt.scc"                         |  0
 .../{{=machine}}-standard.scc"                           |  0
 .../{{=machine}}.cfg"                                    |  0
 .../{{=machine}}.scc"                                    |  0
 .../target/arch/x86_64/conf/machine/{{=machine}}.conf    |  9 +++++++--
 .../x86_64/recipes-kernel/linux/kernel-list.noinstall    |  3 ++-
 .../user-config.cfg"                                     |  0
 .../user-patches.scc"                                    |  0
 .../{{=machine}}-preempt-rt.scc"                         |  0
 .../{{=machine}}-standard.scc"                           |  0
 .../{{=machine}}.cfg"                                    |  0
 .../{{=machine}}.scc"                                    |  0
 49 files changed, 60 insertions(+), 19 deletions(-)
 rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/user-config.cfg => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/user-patches.scc => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-non_hardware.cfg => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-non_hardware.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-standard.scc => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.cfg => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.scc => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/user-config.cfg => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/user-patches.scc => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.cfg => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/user-config.cfg => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/user-patches.scc => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-standard.scc => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.cfg => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.scc => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-config.cfg => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-patches.scc => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-standard.scc => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.cfg => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-config.cfg => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-patches.scc => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-standard.scc => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.cfg => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.scc => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/user-config.cfg => "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/user-patches.scc => "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc => "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc => "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc" (100%)
 rename scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.cfg => "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg" (100%)
 rename scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.scc => "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc" (100%)

diff --git a/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
index 1990ef6..d9ac3ff 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
@@ -70,8 +70,13 @@ EXTRA_IMAGECMD_jffs2 = "-lnp "
 # earlier kernels use ttyS2
 SERIAL_CONSOLE = "115200 ttyO2"
 
-{{ preferred_kernel = kernel_choice.split('_')[0] }}
-{{ preferred_kernel_version = kernel_choice.split('_')[1] }}
+{{ if kernel_choice == "custom": preferred_kernel = "linux-yocto-custom" }}
+{{ if kernel_choice == "custom": }}
+PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
+
+{{ if kernel_choice != "custom": preferred_kernel = kernel_choice.split('_')[0] }}
+{{ if kernel_choice != "custom": preferred_kernel_version = kernel_choice.split('_')[1] }}
+{{ if kernel_choice != "custom": }}
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
index 13009cf..e2b13ac 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/kernel-list.noinstall
@@ -1,4 +1,5 @@
+{{ if kernel_choice != "custom": }}
 {{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.4) kernel? (y/n)" default:"y"}}
 
-{{ if use_default_kernel == "n": }}
+{{ if kernel_choice != "custom" and use_default_kernel == "n": }}
 {{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.4"}}
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/user-config.cfg "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/user-config.cfg
rename to "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/user-patches.scc "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/user-patches.scc
rename to "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-non_hardware.cfg "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-non_hardware.cfg"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-non_hardware.cfg
rename to "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-non_hardware.cfg"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
rename to "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-standard.scc "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-standard.scc
rename to "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.cfg "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.cfg
rename to "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.scc "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.scc
rename to "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
index 1da2306..86d6a53 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/i386/conf/machine/{{=machine}}.conf
@@ -3,8 +3,13 @@
 
 #@DESCRIPTION: Machine configuration for {{=machine}} systems
 
-{{ preferred_kernel = kernel_choice.split('_')[0] }}
-{{ preferred_kernel_version = kernel_choice.split('_')[1] }}
+{{ if kernel_choice == "custom": preferred_kernel = "linux-yocto-custom" }}
+{{ if kernel_choice == "custom": }}
+PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
+
+{{ if kernel_choice != "custom": preferred_kernel = kernel_choice.split('_')[0] }}
+{{ if kernel_choice != "custom": preferred_kernel_version = kernel_choice.split('_')[1] }}
+{{ if kernel_choice != "custom": }}
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 
@@ -31,7 +36,12 @@ require conf/machine/include/meta-intel.inc
 {{ input type:"choice" val:"xserver_emgd" msg:"EMGD xserver support (proprietary)" }}
 {{ input type:"choice" val:"xserver_i915" msg:"i915 xserver support" }}
 
-{{ if xserver == "y" and kernel_choice != "linux-yocto_3.4": xserver_choice = "xserver_i915" }}
+{{ if xserver == "y" and kernel_choice == "custom": }}
+{{ input type:"choicelist" name:"xserver_choice" prio:"50" msg:"Please select an xserver for this machine:" default:"xserver_i915" }}
+{{ input type:"choice" val:"xserver_vesa" msg:"VESA xserver support" }}
+{{ input type:"choice" val:"xserver_i915" msg:"i915 xserver support" }}
+
+{{ if xserver == "y" and kernel_choice != "linux-yocto_3.4" and kernel_choice != "custom": xserver_choice = "xserver_i915" }}
 
 {{ if xserver == "y": }}
 XSERVER ?= "${XSERVER_IA32_BASE} \
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
index 13009cf..e2b13ac 100644
--- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/kernel-list.noinstall
@@ -1,4 +1,5 @@
+{{ if kernel_choice != "custom": }}
 {{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.4) kernel? (y/n)" default:"y"}}
 
-{{ if use_default_kernel == "n": }}
+{{ if kernel_choice != "custom" and use_default_kernel == "n": }}
 {{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.4"}}
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/user-config.cfg "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/user-config.cfg
rename to "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/user-patches.scc "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/user-patches.scc
rename to "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
rename to "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-standard.scc
rename to "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.cfg "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.cfg
rename to "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}.scc
rename to "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf
index b7c86e8..4dd5940 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf
@@ -10,8 +10,13 @@ MACHINE_FEATURES = "screen keyboard pci usbhost ext2 ext3 serial"
 KERNEL_IMAGETYPE = "vmlinux"
 KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 
-{{ preferred_kernel = kernel_choice.split('_')[0] }}
-{{ preferred_kernel_version = kernel_choice.split('_')[1] }}
+{{ if kernel_choice == "custom": preferred_kernel = "linux-yocto-custom" }}
+{{ if kernel_choice == "custom": }}
+PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
+
+{{ if kernel_choice != "custom": preferred_kernel = kernel_choice.split('_')[0] }}
+{{ if kernel_choice != "custom": preferred_kernel_version = kernel_choice.split('_')[1] }}
+{{ if kernel_choice != "custom": }}
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
index 13009cf..e2b13ac 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/kernel-list.noinstall
@@ -1,4 +1,5 @@
+{{ if kernel_choice != "custom": }}
 {{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.4) kernel? (y/n)" default:"y"}}
 
-{{ if use_default_kernel == "n": }}
+{{ if kernel_choice != "custom" and use_default_kernel == "n": }}
 {{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.4"}}
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/user-config.cfg "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/user-config.cfg
rename to "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/user-patches.scc "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/user-patches.scc
rename to "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
rename to "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-standard.scc "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-standard.scc
rename to "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.cfg "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.cfg
rename to "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.scc "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}.scc
rename to "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf
index 1d6143a..52a5a8a 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/{{=machine}}.conf
@@ -34,8 +34,13 @@ SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
 
-{{ preferred_kernel = kernel_choice.split('_')[0] }}
-{{ preferred_kernel_version = kernel_choice.split('_')[1] }}
+{{ if kernel_choice == "custom": preferred_kernel = "linux-yocto-custom" }}
+{{ if kernel_choice == "custom": }}
+PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
+
+{{ if kernel_choice != "custom": preferred_kernel = kernel_choice.split('_')[0] }}
+{{ if kernel_choice != "custom": preferred_kernel_version = kernel_choice.split('_')[1] }}
+{{ if kernel_choice != "custom": }}
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
index 13009cf..e2b13ac 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/kernel-list.noinstall
@@ -1,4 +1,5 @@
+{{ if kernel_choice != "custom": }}
 {{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.4) kernel? (y/n)" default:"y"}}
 
-{{ if use_default_kernel == "n": }}
+{{ if kernel_choice != "custom" and use_default_kernel == "n": }}
 {{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.4"}}
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-config.cfg "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-config.cfg
rename to "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-patches.scc "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-patches.scc
rename to "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
rename to "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-standard.scc "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-standard.scc
rename to "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.cfg "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.cfg
rename to "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}.scc
rename to "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
index 01e646d..de3b279 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
@@ -3,8 +3,13 @@
 
 #@DESCRIPTION: Machine configuration for {{=machine}} systems
 
-{{ preferred_kernel = kernel_choice.split('_')[0] }}
-{{ preferred_kernel_version = kernel_choice.split('_')[1] }}
+{{ if kernel_choice == "custom": preferred_kernel = "linux-yocto-custom" }}
+{{ if kernel_choice == "custom": }}
+PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
+
+{{ if kernel_choice != "custom": preferred_kernel = kernel_choice.split('_')[0] }}
+{{ if kernel_choice != "custom": preferred_kernel_version = kernel_choice.split('_')[1] }}
+{{ if kernel_choice != "custom": }}
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
index 13009cf..e2b13ac 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/kernel-list.noinstall
@@ -1,4 +1,5 @@
+{{ if kernel_choice != "custom": }}
 {{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.4) kernel? (y/n)" default:"y"}}
 
-{{ if use_default_kernel == "n": }}
+{{ if kernel_choice != "custom" and use_default_kernel == "n": }}
 {{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.4"}}
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-config.cfg "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-config.cfg
rename to "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-patches.scc "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-patches.scc
rename to "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
rename to "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-standard.scc "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-standard.scc
rename to "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.cfg "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.cfg
rename to "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.scc "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}.scc
rename to "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf
index 6c2db22..52a96df 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/conf/machine/{{=machine}}.conf
@@ -3,8 +3,13 @@
 
 #@DESCRIPTION: Machine configuration for {{=machine}} systems
 
-{{ preferred_kernel = kernel_choice.split('_')[0] }}
-{{ preferred_kernel_version = kernel_choice.split('_')[1] }}
+{{ if kernel_choice == "custom": preferred_kernel = "linux-yocto-custom" }}
+{{ if kernel_choice == "custom": }}
+PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
+
+{{ if kernel_choice != "custom": preferred_kernel = kernel_choice.split('_')[0] }}
+{{ if kernel_choice != "custom": preferred_kernel_version = kernel_choice.split('_')[1] }}
+{{ if kernel_choice != "custom": }}
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
index 13009cf..e2b13ac 100644
--- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
+++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall
@@ -1,4 +1,5 @@
+{{ if kernel_choice != "custom": }}
 {{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would you like to use the default (3.4) kernel? (y/n)" default:"y"}}
 
-{{ if use_default_kernel == "n": }}
+{{ if kernel_choice != "custom" and use_default_kernel == "n": }}
 {{ input type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use in this BSP:" default:"linux-yocto_3.4"}}
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/user-config.cfg "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/user-config.cfg
rename to "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/user-patches.scc "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/user-patches.scc
rename to "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-preempt-rt.scc
rename to "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-preempt-rt.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-standard.scc
rename to "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-standard.scc"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.cfg "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.cfg
rename to "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.cfg"
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.scc "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}.scc
rename to "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}.scc"
-- 
1.7.11.4


