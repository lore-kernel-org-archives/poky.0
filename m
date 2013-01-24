Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38F73E01504
	for <poky@yoctoproject.org>; Thu, 24 Jan 2013 12:57:41 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Jan 2013 12:57:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,532,1355126400"; d="scan'208";a="251985231"
Received: from unknown (HELO localhost) ([10.255.14.235])
	by orsmga001.jf.intel.com with ESMTP; 24 Jan 2013 12:57:39 -0800
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org,
	brian.lloyd@familyhonor.net
Date: Thu, 24 Jan 2013 14:57:38 -0600
Message-Id: <0186d8413ed600825b6e981e397b786d82e4d4e7.1359060027.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1359060027.git.tom.zanussi@linux.intel.com>
References: <cover.1359060027.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 1/1] yocto-bsp: qualify user files with machine name
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
X-List-Received-Date: Thu, 24 Jan 2013 20:57:41 -0000

From: "Brian A. Lloyd" <brian.lloyd@familyhonor.net>

The bblayer abstraction makes it where multiple layers can be
configured and used at the same time.  Some layers make changes to
support a specific machine, and should not have any affect when other
machines are in use.

For linux-yocto, all bsps are created with a user-config.cfg and
user-config.cfg and user-patches.scc.  This means that those files
will be pulled from the first location found, which might correspond
to files customized for a different machine.

Instead of using the names user-config.cfg and user-patches.scc, I
propose a machine specific name be used such as
{{=machine}}user-patches.scc and {{=machine}}user-config.cfg.  This
would necessitate that all references changed to these new names,
which would affect the yocto-bsp and yocto-kernel scripts.

With this change, it would be possible to have multiple machine BSPs
searched at the same time and to select which to build against by
using a command like MACHINE=qmeux86 bitbake core-image-sato to
override the default.

Note many of the standard BSPs do not seem to suffer this problem as
they do not use the common files user-config.cfg and user-patches.scc
that the yocto-* scripts depend upon.

Additions by Tom Zanussi:
 - renamed user-config.cfg to {{=machine}}-user-config.cfg everywhere
 - renamed user-patches.scc to {{=machine}}-user-patches.scc everywhere
 - added the user-config/patches SRC_URI items to the qemu -rt kernel recipes
 - fixed conflicts due to the new open_user_file() helper function
 - updated user filename conflicts caused by directory renaming
 - updated custom kernel files to match

Fixes [YOCTO #3731]

Signed-off-by: Brian A. Lloyd <brian.lloyd@familyhonor.net>
Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 scripts/lib/bsp/kernel.py                          | 28 +++++++++++-----------
 ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |  2 +-
 .../{{=machine}}-user-config.cfg"                  |  0
 .../{{=machine}}-user-patches.scc"                 |  0
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  6 ++---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  6 ++---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  6 ++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  6 ++---
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |  2 +-
 ...choice == \"custom\": }} linux-yocto-custom.bb" |  4 ++--
 .../{{=machine}}-user-config.cfg"                  |  0
 .../{{=machine}}-user-patches.scc"                 |  0
 ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |  2 +-
 .../{{=machine}}-user-config.cfg"                  |  0
 .../{{=machine}}-user-patches.scc"                 |  0
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  6 ++---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  6 ++---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  6 ++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  6 ++---
 .../{{=machine}}-user-config.cfg"                  |  0
 .../{{=machine}}-user-patches.scc"                 |  0
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  6 ++---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  6 ++---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  6 ++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  6 ++---
 .../{{=machine}}-user-config.cfg"                  |  0
 .../{{=machine}}-user-patches.scc"                 |  0
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  6 ++---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  6 ++---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  6 ++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  6 ++---
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |  2 +-
 .../{{=machine}}-user-config.cfg"                  |  0
 .../{{=machine}}-user-patches.scc"                 |  0
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  4 +++-
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  4 +++-
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  6 ++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  6 ++---
 ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |  2 +-
 .../{{=machine}}-user-config.cfg"                  |  0
 .../{{=machine}}-user-patches.scc"                 |  0
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  6 ++---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  6 ++---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  6 ++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  6 ++---
 45 files changed, 93 insertions(+), 89 deletions(-)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" => "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/user-config.cfg" => "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}-user-config.cfg" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/user-patches.scc" => "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}-user-patches.scc" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" => "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" => "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" => "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" => "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" => "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg" (100%)
 rename "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" => "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc" (100%)

diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index 5935e66..dabb9cf 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -160,11 +160,11 @@ def open_user_file(scripts_path, machine, userfile, mode):
 def read_config_items(scripts_path, machine):
     """
     Find and return a list of config items (CONFIG_XXX) in a machine's
-    user-defined config fragment [user-config.cfg].
+    user-defined config fragment [${machine}-user-config.cfg].
     """
     config_items = []
 
-    f = open_user_file(scripts_path, machine, "user-config.cfg", "r")
+    f = open_user_file(scripts_path, machine, machine+"-user-config.cfg", "r")
     lines = f.readlines()
     for line in lines:
         s = line.strip()
@@ -178,9 +178,9 @@ def read_config_items(scripts_path, machine):
 def write_config_items(scripts_path, machine, config_items):
     """
     Write (replace) the list of config items (CONFIG_XXX) in a
-    machine's user-defined config fragment [user-config.cfg].
+    machine's user-defined config fragment [${machine}=user-config.cfg].
     """
-    f = open_user_file(scripts_path, machine, "user-config.cfg", "w")
+    f = open_user_file(scripts_path, machine, machine+"-user-config.cfg", "w")
     for item in config_items:
         f.write(item + "\n")
     f.close()
@@ -191,7 +191,7 @@ def write_config_items(scripts_path, machine, config_items):
 def yocto_kernel_config_list(scripts_path, machine):
     """
     Display the list of config items (CONFIG_XXX) in a machine's
-    user-defined config fragment [user-config.cfg].
+    user-defined config fragment [${machine}-user-config.cfg].
     """
     config_items = read_config_items(scripts_path, machine)
 
@@ -202,7 +202,7 @@ def yocto_kernel_config_list(scripts_path, machine):
 def yocto_kernel_config_rm(scripts_path, machine):
     """
     Display the list of config items (CONFIG_XXX) in a machine's
-    user-defined config fragment [user-config.cfg], prompt the user
+    user-defined config fragment [${machine}-user-config.cfg], prompt the user
     for one or more to remove, and remove them.
     """
     config_items = read_config_items(scripts_path, machine)
@@ -235,7 +235,7 @@ def yocto_kernel_config_rm(scripts_path, machine):
 def yocto_kernel_config_add(scripts_path, machine, config_items):
     """
     Add one or more config items (CONFIG_XXX) to a machine's
-    user-defined config fragment [user-config.cfg].
+    user-defined config fragment [${machine}-user-config.cfg].
     """
     new_items = []
 
@@ -304,11 +304,11 @@ def find_filesdir(scripts_path, machine):
 def read_patch_items(scripts_path, machine):
     """
     Find and return a list of patch items in a machine's user-defined
-    patch list [user-patches.scc].
+    patch list [${machine}-user-patches.scc].
     """
     patch_items = []
 
-    f = open_user_file(scripts_path, machine, "user-patches.scc", "r")
+    f = open_user_file(scripts_path, machine, machine+"-user-patches.scc", "r")
     lines = f.readlines()
     for line in lines:
         s = line.strip()
@@ -325,9 +325,9 @@ def read_patch_items(scripts_path, machine):
 def write_patch_items(scripts_path, machine, patch_items):
     """
     Write (replace) the list of patches in a machine's user-defined
-    patch list [user-patches.scc].
+    patch list [${machine}-user-patches.scc].
     """
-    f = open_user_file(scripts_path, machine, "user-patches.scc", "w")
+    f = open_user_file(scripts_path, machine, machine+"-user-patches.scc", "w")
     for item in patch_items:
         f.write("patch " + item + "\n")
     f.close()
@@ -338,7 +338,7 @@ def write_patch_items(scripts_path, machine, patch_items):
 def yocto_kernel_patch_list(scripts_path, machine):
     """
     Display the list of patches in a machine's user-defined patch list
-    [user-patches.scc].
+    [${machine}-user-patches.scc].
     """
     patches = read_patch_items(scripts_path, machine)
 
@@ -349,7 +349,7 @@ def yocto_kernel_patch_list(scripts_path, machine):
 def yocto_kernel_patch_rm(scripts_path, machine):
     """
     Remove one or more patches from a machine's user-defined patch
-    list [user-patches.scc].
+    list [${machine}-user-patches.scc].
     """
     patches = read_patch_items(scripts_path, machine)
 
@@ -390,7 +390,7 @@ def yocto_kernel_patch_rm(scripts_path, machine):
 def yocto_kernel_patch_add(scripts_path, machine, patches):
     """
     Add one or more patches to a machine's user-defined patch list
-    [user-patches.scc].
+    [${machine}-user-patches.scc].
     """
     existing_patches = read_patch_items(scripts_path, machine)
 
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
index 72d991c..155f67b 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
@@ -1 +1 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/${PN}:"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
similarity index 100%
rename from "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg"
rename to "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"
similarity index 100%
rename from "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc"
rename to "scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index 3171cce..c2c047c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -27,8 +27,8 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-preempt-rt.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
-            file://user-config.cfg \
-            file://user-patches.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index f11bfa5..1ae5cee 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -27,8 +27,8 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-preempt-rt.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
-            file://user-config.cfg \
-            file://user-patches.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index 1278064..fcbe2d3 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -27,8 +27,8 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
-            file://user-config.cfg \
-            file://user-patches.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index 5b20bab..07aa9d1 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -27,8 +27,8 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
-            file://user-config.cfg \
-            file://user-patches.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git a/scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor_0.0.bbappend b/scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor_0.0.bbappend
index 54da0ff..a1e29f1 100644
--- a/scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor_0.0.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/common/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -1,3 +1,3 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/${PN}:"
  
 PRINC = "1"
diff --git "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom.bb" "b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom.bb"
index 5471c93..6d3cc6f 100644
--- "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom.bb"	
+++ "b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom.bb"	
@@ -39,8 +39,8 @@ SRC_URI += "file://defconfig"
 
 SRC_URI += "file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
-            file://user-config.cfg \
-            file://user-patches.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 {{ if kernel_choice == "custom" and custom_kernel_need_kbranch == "y" and custom_kernel_kbranch and custom_kernel_kbranch != "master": }}
diff --git "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/user-config.cfg" "b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}-user-config.cfg"
similarity index 100%
rename from "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/user-config.cfg"
rename to "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}-user-config.cfg"
diff --git "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/user-patches.scc" "b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}-user-patches.scc"
similarity index 100%
rename from "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/user-patches.scc"
rename to "scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/{{=machine}}-user-patches.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
index 72d991c..155f67b 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
@@ -1 +1 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/${PN}:"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
similarity index 100%
rename from "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg"
rename to "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"
similarity index 100%
rename from "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc"
rename to "scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index 8af3549..296eb65 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -27,8 +27,8 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-preempt-rt.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
-            file://user-config.cfg \
-            file://user-patches.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index f11bfa5..1ae5cee 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -27,8 +27,8 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-preempt-rt.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
-            file://user-config.cfg \
-            file://user-patches.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index c5ff697..48ebad6 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -27,8 +27,8 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
-            file://user-config.cfg \
-            file://user-patches.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index 34aa4cc..0a96c7e 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -27,8 +27,8 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
-            file://user-config.cfg \
-            file://user-patches.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
similarity index 100%
rename from "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg"
rename to "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"
similarity index 100%
rename from "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc"
rename to "scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index 8af3549..296eb65 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -27,8 +27,8 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-preempt-rt.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
-            file://user-config.cfg \
-            file://user-patches.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index f11bfa5..1ae5cee 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -27,8 +27,8 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-preempt-rt.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
-            file://user-config.cfg \
-            file://user-patches.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index c617070..277aa9e 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -27,8 +27,8 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
-            file://user-config.cfg \
-            file://user-patches.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index 5b20bab..07aa9d1 100644
--- "a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -27,8 +27,8 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
-            file://user-config.cfg \
-            file://user-patches.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
similarity index 100%
rename from "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg"
rename to "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"
similarity index 100%
rename from "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc"
rename to "scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index 8af3549..296eb65 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -27,8 +27,8 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-preempt-rt.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
-            file://user-config.cfg \
-            file://user-patches.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index f11bfa5..1ae5cee 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -27,8 +27,8 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-preempt-rt.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
-            file://user-config.cfg \
-            file://user-patches.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index c617070..277aa9e 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -27,8 +27,8 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
-            file://user-config.cfg \
-            file://user-patches.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index 5b20bab..07aa9d1 100644
--- "a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -27,8 +27,8 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
-            file://user-config.cfg \
-            file://user-patches.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 72d991c..155f67b 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1 +1 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/${PN}:"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
similarity index 100%
rename from "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg"
rename to "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"
similarity index 100%
rename from "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc"
rename to "scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index 680973e..e580841 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -51,6 +51,8 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-preempt-rt.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index 70ede9f..89c32c4 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -51,6 +51,8 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-preempt-rt.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index 9af21f2..93cbbb9 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -51,8 +51,8 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
-            file://user-config.cfg \
-            file://user-patches.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index 1e90cf2..59359b3 100644
--- "a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -51,8 +51,8 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
-            file://user-config.cfg \
-            file://user-patches.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
index 72d991c..155f67b 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
@@ -1 +1 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/${PN}:"
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
similarity index 100%
rename from "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-config.cfg"
rename to "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-config.cfg"
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"
similarity index 100%
rename from "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/user-patches.scc"
rename to "scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice != \"custom\": }} files/{{=machine}}-user-patches.scc"
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"
index 8af3549..296eb65 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -27,8 +27,8 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-preempt-rt.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
-            file://user-config.cfg \
-            file://user-patches.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"
index f11bfa5..1ae5cee 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -27,8 +27,8 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-preempt-rt.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
-            file://user-config.cfg \
-            file://user-patches.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"
index 6f0d884..38507da 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.2\": }} linux-yocto_3.2.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -27,8 +27,8 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
-            file://user-config.cfg \
-            file://user-patches.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"
index e855037..16966e0 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == \"linux-yocto_3.4\": }} linux-yocto_3.4.bbappend"	
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/files:"
 
 PR := "${PR}.1"
 
@@ -27,8 +27,8 @@ KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
 SRC_URI += "file://{{=machine}}-standard.scc \
             file://{{=machine}}.scc \
             file://{{=machine}}.cfg \
-            file://user-config.cfg \
-            file://user-patches.scc \
+            file://{{=machine}}-user-config.cfg \
+            file://{{=machine}}-user-patches.scc \
            "
 
 # uncomment and replace these SRCREVs with the real commit ids once you've had
-- 
1.7.11.4


