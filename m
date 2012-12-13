Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D76DE01443
	for <poky@yoctoproject.org>; Wed, 12 Dec 2012 20:56:55 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 Dec 2012 20:56:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,272,1355126400"; d="scan'208";a="230862760"
Received: from unknown (HELO localhost) ([10.255.13.197])
	by azsmga001.ch.intel.com with ESMTP; 12 Dec 2012 20:56:42 -0800
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Wed, 12 Dec 2012 22:56:30 -0600
Message-Id: <8884beae4cbc9a06d5bd8876c64fed93fe6eb546.1355373343.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1355373343.git.tom.zanussi@intel.com>
References: <cover.1355373343.git.tom.zanussi@intel.com>
Subject: [PATCH 01/12] yocto-bsp: add custom kernel support
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
X-List-Received-Date: Thu, 13 Dec 2012 04:56:55 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a template to support custom kernels via a custom kernel recipe
derived from linux-yocto-custom.bb.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-kernel/linux/kernel-list.noinstall     | 26 ++++++++++
 ...choice == \"custom\": }} linux-yocto-custom.bb" | 57 ++++++++++++++++++++++
 .../defconfig"                                     |  4 ++
 .../user-config.cfg"                               |  8 +++
 .../user-patches.scc"                              |  8 +++
 .../{{=machine}}.cfg"                              |  3 ++
 .../{{=machine}}.scc"                              | 17 +++++++
 7 files changed, 123 insertions(+)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/kernel-list.noinstall
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom.bb"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/defconfig"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/user-config.cfg"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/user-patches.scc"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}.cfg"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}.scc"

diff --git a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/kernel-list.noinstall b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/kernel-list.noinstall
new file mode 100644
index 0000000..2c180cc
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/kernel-list.noinstall
@@ -0,0 +1,26 @@
+{{ if kernel_choice == "custom": }}
+{{ input type:"boolean" name:"custom_kernel_remote" prio:"20" msg:"Is the custom kernel you'd like to use in a remote git repo? (y/n)" default:"y"}}
+
+{{ if kernel_choice == "custom" and custom_kernel_remote == "y": }}
+{{ input type:"edit-git-repo" name:"custom_kernel_remote_path" prio:"20" msg:"Please enter the full URI to the remote git repo (the default corresponds to linux-stable v3.4.21)" default:"git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git"}}
+
+{{ if kernel_choice == "custom" and custom_kernel_remote == "n": }}
+{{ input type:"edit-git-repo" name:"custom_kernel_local_path" prio:"20" msg:"You've indicated that you're not using a remote git repo.  Please enter the full path to the local git repo you want to use (the default assumes a local linux-stable v3.4.21)" default:"/home/trz/yocto/kernels/linux-stable.git"}}
+
+{{ if kernel_choice == "custom": }}
+{{ input type:"boolean" name:"custom_kernel_need_kbranch" prio:"20" msg:"Do you need to use a specific (non-master) branch? (y/n)" default:"n"}}
+
+{{ if kernel_choice == "custom" and custom_kernel_need_kbranch == "y": }}
+{{ input type:"edit" name:"custom_kernel_kbranch" prio:"20" msg:"Please enter the branch you want to use (the default branch corresponds to the linux-stable 'linux-3.4.y' branch):" default:"linux-3.4.y"}}
+
+{{ if kernel_choice == "custom": }}
+{{ input type:"edit" name:"custom_kernel_srcrev" prio:"20" msg:"Please enter the SRCREV (commit id) you'd like to use (use '${AUTOREV}' to track the current HEAD):" default:"${AUTOREV}"}}
+
+{{ if kernel_choice == "custom": }}
+{{ input type:"edit" name:"custom_kernel_linux_version" prio:"20" msg:"Please enter the Linux version of the kernel you've specified:" default:"3.4.21"}}
+
+{{ if kernel_choice == "custom": }}
+{{ input type:"edit" name:"custom_kernel_linux_version_extension" prio:"20" msg:"Please enter a Linux version extension if you want (it will show up at the end of the kernel name shown by uname):" default:"-custom"}}
+
+{{ if kernel_choice == "custom": }}
+{{ input type:"edit-file" name:"custom_kernel_defconfig" prio:"20" msg:"It's recommended (but not required) that custom kernels be built using a defconfig.  Please enter the full path to the defconfig for your kernel (NOTE: if you don't specify a defconfig the kernel probably won't build or boot):" default:""}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom.bb" "b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom.bb"
new file mode 100644
index 0000000..5471c93
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom.bb"	
@@ -0,0 +1,57 @@
+# This file was derived from the linux-yocto-custom.bb recipe in
+# oe-core.
+#
+# linux-yocto-custom.bb:
+#
+#   A yocto-bsp-generated kernel recipe that uses the linux-yocto and
+#   oe-core kernel classes to apply a subset of yocto kernel
+#   management to git managed kernel repositories.
+#
+# Warning:
+#
+#   Building this kernel without providing a defconfig or BSP
+#   configuration will result in build or boot errors. This is not a
+#   bug.
+#
+# Notes:
+#
+#   patches: patches can be merged into to the source git tree itself,
+#            added via the SRC_URI, or controlled via a BSP
+#            configuration.
+#
+#   example configuration addition:
+#            SRC_URI += "file://smp.cfg"
+#   example patch addition:
+#            SRC_URI += "file://0001-linux-version-tweak.patch
+#   example feature addition:
+#            SRC_URI += "file://feature.scc"
+#
+
+inherit kernel
+require recipes-kernel/linux/linux-yocto.inc
+
+{{ if kernel_choice == "custom" and custom_kernel_remote == "y": }}
+SRC_URI = "{{=custom_kernel_remote_path}};protocol=git;bareclone=1"
+{{ if kernel_choice == "custom" and custom_kernel_remote == "n": }}
+SRC_URI = "git://{{=custom_kernel_local_path}};protocol=file;bareclone=1"
+
+SRC_URI += "file://defconfig"
+
+SRC_URI += "file://{{=machine}}.scc \
+            file://{{=machine}}.cfg \
+            file://user-config.cfg \
+            file://user-patches.scc \
+           "
+
+{{ if kernel_choice == "custom" and custom_kernel_need_kbranch == "y" and custom_kernel_kbranch and custom_kernel_kbranch != "master": }}
+KBRANCH = "{{=custom_kernel_kbranch}}"
+
+LINUX_VERSION ?= "{{=custom_kernel_linux_version}}"
+LINUX_VERSION_EXTENSION ?= "{{=custom_kernel_linux_version_extension}}"
+
+SRCREV="{{=custom_kernel_srcrev}}"
+
+PR = "r0"
+PV = "${LINUX_VERSION}+git${SRCPV}"
+
+COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
diff --git "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/defconfig" "b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/defconfig"
new file mode 100644
index 0000000..c2745c5
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/defconfig"	
@@ -0,0 +1,4 @@
+#
+# Placeholder for custom default kernel configuration.  yocto-bsp will
+# replace this file with a user-specified defconfig.
+#
diff --git "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/user-config.cfg" "b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/user-config.cfg"
new file mode 100644
index 0000000..17c8b50
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/user-config.cfg"	
@@ -0,0 +1,8 @@
+#
+# Used by yocto-kernel to manage config options.
+#
+# yocto-kernel may change the contents of this file in any
+# way it sees fit, including removing comments like this,
+# so don't manually make any modifications you don't want
+# to lose.
+#
diff --git "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/user-patches.scc" "b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/user-patches.scc"
new file mode 100644
index 0000000..7a598d9
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/user-patches.scc"	
@@ -0,0 +1,8 @@
+#
+# Used by yocto-kernel to manage patches.
+#
+# yocto-kernel may change the contents of this file in any
+# way it sees fit, including removing comments like this,
+# so don't manually make any modifications you don't want
+# to lose.
+#
diff --git "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}.cfg" "b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}.cfg"
new file mode 100644
index 0000000..95170b1
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}.cfg"	
@@ -0,0 +1,3 @@
+#
+# A convenient place to add config options, nothing more.
+#
diff --git "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}.scc" "b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}.scc"
new file mode 100644
index 0000000..8b94e58
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}.scc"	
@@ -0,0 +1,17 @@
+#
+# The top-level 'feature' for the {{=machine}} custom kernel.
+#
+# Essentially this is a convenient top-level container or starting
+# point for adding lower-level config fragements and features.
+#
+
+# {{=machine}}.cfg in the linux-yocto-custom subdir is just a
+# convenient place for adding random config fragments.
+
+kconf hardware {{=machine}}.cfg
+
+# These are used by yocto-kernel to add config fragments and features.
+# Don't remove if you plan on using yocto-kernel with this BSP.
+
+kconf hardware user-config.cfg
+include user-patches.scc
-- 
1.7.11.4


