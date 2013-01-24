Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C13E6E014F3
	for <poky@yoctoproject.org>; Thu, 24 Jan 2013 12:57:13 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 24 Jan 2013 12:56:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,532,1355126400"; d="scan'208";a="276279273"
Received: from unknown (HELO localhost) ([10.255.14.235])
	by orsmga002.jf.intel.com with ESMTP; 24 Jan 2013 12:57:11 -0800
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org, brian.lloyd@familyhonor.net, ross.burton@intel.com
Date: Thu, 24 Jan 2013 14:57:10 -0600
Message-Id: <76e62614cd40b23cc449cef574c290fa4e1e6db8.1359060711.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1359060711.git.tom.zanussi@linux.intel.com>
References: <cover.1359060711.git.tom.zanussi@linux.intel.com>
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
X-List-Received-Date: Thu, 24 Jan 2013 20:57:14 -0000

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

Fixes [YOCTO #3731]

Signed-off-by: Brian A. Lloyd <brian.lloyd@familyhonor.net>
Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 scripts/lib/bsp/kernel.py                          | 28 +++++++++++-----------
 ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |  2 +-
 ...ser-config.cfg => {{=machine}}-user-config.cfg} |  0
 ...r-patches.scc => {{=machine}}-user-patches.scc} |  0
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  6 ++---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  6 ++---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  6 ++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  6 ++---
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |  2 +-
 ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |  2 +-
 ...er-config.cfg =>  {{=machine}}-user-config.cfg} |  0
 ...r-patches.scc => {{=machine}}-user-patches.scc} |  0
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  6 ++---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  6 ++---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  6 ++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  6 ++---
 ...ser-config.cfg => {{=machine}}-user-config.cfg} |  0
 ...r-patches.scc => {{=machine}}-user-patches.scc} |  0
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  6 ++---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  6 ++---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  6 ++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  6 ++---
 ...ser-config.cfg => {{=machine}}-user-config.cfg} |  0
 ...r-patches.scc => {{=machine}}-user-patches.scc} |  0
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  6 ++---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  6 ++---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  6 ++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  6 ++---
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |  2 +-
 ...ser-config.cfg => {{=machine}}-user-config.cfg} |  0
 ...r-patches.scc => {{=machine}}-user-patches.scc} |  0
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  4 +++-
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  4 +++-
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  6 ++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  6 ++---
 ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |  2 +-
 ...ser-config.cfg => {{=machine}}-user-config.cfg} |  0
 ...r-patches.scc => {{=machine}}-user-patches.scc} |  0
 ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |  6 ++---
 ...yocto-rt_3.4\": }} linux-yocto-rt_3.4.bbappend" |  6 ++---
 ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |  6 ++---
 ...linux-yocto_3.4\": }} linux-yocto_3.4.bbappend" |  6 ++---
 42 files changed, 91 insertions(+), 87 deletions(-)
 rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{user-config.cfg => {{=machine}}-user-config.cfg} (100%)
 rename scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{user-patches.scc => {{=machine}}-user-patches.scc} (100%)
 rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{user-config.cfg =>  {{=machine}}-user-config.cfg} (100%)
 rename scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{user-patches.scc => {{=machine}}-user-patches.scc} (100%)
 rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{user-config.cfg => {{=machine}}-user-config.cfg} (100%)
 rename scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{user-patches.scc => {{=machine}}-user-patches.scc} (100%)
 rename scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{user-config.cfg => {{=machine}}-user-config.cfg} (100%)
 rename scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{user-patches.scc => {{=machine}}-user-patches.scc} (100%)
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{user-config.cfg => {{=machine}}-user-config.cfg} (100%)
 rename scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{user-patches.scc => {{=machine}}-user-patches.scc} (100%)
 rename scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{user-config.cfg => {{=machine}}-user-config.cfg} (100%)
 rename scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{user-patches.scc => {{=machine}}-user-patches.scc} (100%)

diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index d4bdc4c..7c14761 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -136,12 +136,12 @@ def gen_choices_str(choices):
 def read_config_items(scripts_path, machine):
     """
     Find and return a list of config items (CONFIG_XXX) in a machine's
-    user-defined config fragment [user-config.cfg].
+    user-defined config fragment [${machine}-user-config.cfg].
     """
     config_items = []
 
     layer = find_bsp_layer(scripts_path, machine)
-    cfg = os.path.join(layer, "recipes-kernel/linux/files/user-config.cfg")
+    cfg = os.path.join(layer, "recipes-kernel/linux/files/"+machine+"-user-config.cfg")
 
     f = open(cfg, "r")
     lines = f.readlines()
@@ -157,10 +157,10 @@ def read_config_items(scripts_path, machine):
 def write_config_items(scripts_path, machine, config_items):
     """
     Write (replace) the list of config items (CONFIG_XXX) in a
-    machine's user-defined config fragment [user-config.cfg].
+    machine's user-defined config fragment [${machine}=user-config.cfg].
     """
     layer = find_bsp_layer(scripts_path, machine)
-    cfg = os.path.join(layer, "recipes-kernel/linux/files/user-config.cfg")
+    cfg = os.path.join(layer, "recipes-kernel/linux/files/"+machine+"-user-config.cfg")
 
     f = open(cfg, "w")
     for item in config_items:
@@ -173,7 +173,7 @@ def write_config_items(scripts_path, machine, config_items):
 def yocto_kernel_config_list(scripts_path, machine):
     """
     Display the list of config items (CONFIG_XXX) in a machine's
-    user-defined config fragment [user-config.cfg].
+    user-defined config fragment [${machine}-user-config.cfg].
     """
     config_items = read_config_items(scripts_path, machine)
 
@@ -196,7 +196,7 @@ def map_choice(choice_str, array):
 def yocto_kernel_config_rm(scripts_path, machine):
     """
     Display the list of config items (CONFIG_XXX) in a machine's
-    user-defined config fragment [user-config.cfg], prompt the user
+    user-defined config fragment [${machine}-user-config.cfg], prompt the user
     for one or more to remove, and remove them.
     """
     config_items = read_config_items(scripts_path, machine)
@@ -229,7 +229,7 @@ def yocto_kernel_config_rm(scripts_path, machine):
 def yocto_kernel_config_add(scripts_path, machine, config_items):
     """
     Add one or more config items (CONFIG_XXX) to a machine's
-    user-defined config fragment [user-config.cfg].
+    user-defined config fragment [${machine}-user-config.cfg].
     """
     new_items = []
 
@@ -373,12 +373,12 @@ def find_patches(src_uri):
 def read_patch_items(scripts_path, machine):
     """
     Find and return a list of patch items in a machine's user-defined
-    patch list [user-patches.scc].
+    patch list [${machine}-user-patches.scc].
     """
     patch_items = []
 
     layer = find_bsp_layer(scripts_path, machine)
-    patches = os.path.join(layer, "recipes-kernel/linux/files/user-patches.scc")
+    patches = os.path.join(layer, "recipes-kernel/linux/files/"+machine+"-user-patches.scc")
 
     f = open(patches, "r")
     lines = f.readlines()
@@ -397,11 +397,11 @@ def read_patch_items(scripts_path, machine):
 def write_patch_items(scripts_path, machine, patch_items):
     """
     Write (replace) the list of patches in a machine's user-defined
-    patch list [user-patches.scc].
+    patch list [${machine}-user-patches.scc].
     """
     layer = find_bsp_layer(scripts_path, machine)
 
-    patches = os.path.join(layer, "recipes-kernel/linux/files/user-patches.scc")
+    patches = os.path.join(layer, "recipes-kernel/linux/files/"+machine+"-user-patches.scc")
 
     f = open(patches, "w")
     for item in patch_items:
@@ -417,7 +417,7 @@ def write_patch_items(scripts_path, machine, patch_items):
 def yocto_kernel_patch_list(scripts_path, machine):
     """
     Display the list of patches in a machine's user-defined patch list
-    [user-patches.scc].
+    [${machine}-user-patches.scc].
     """
     (start_line, end_line, src_uri) = find_bsp_kernel_src_uri(scripts_path, machine)
     patches = find_patches(src_uri)
@@ -429,7 +429,7 @@ def yocto_kernel_patch_list(scripts_path, machine):
 def yocto_kernel_patch_rm(scripts_path, machine):
     """
     Remove one or more patches from a machine's user-defined patch
-    list [user-patches.scc].
+    list [${machine}-user-patches.scc].
     """
     (start_line, end_line, src_uri) = find_bsp_kernel_src_uri(scripts_path, machine)
     patches = find_patches(src_uri)
@@ -470,7 +470,7 @@ def yocto_kernel_patch_rm(scripts_path, machine):
 def yocto_kernel_patch_add(scripts_path, machine, patches):
     """
     Add one or more patches to a machine's user-defined patch list
-    [user-patches.scc].
+    [${machine}-user-patches.scc].
     """
     (start_line, end_line, src_uri) = find_bsp_kernel_src_uri(scripts_path, machine)
     src_uri_patches = find_patches(src_uri)
diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
index 72d991c..155f67b 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
@@ -1 +1 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/${PN}:"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/user-config.cfg b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-user-config.cfg
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/user-config.cfg
rename to scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-user-config.cfg
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/user-patches.scc b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-user-patches.scc
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/user-patches.scc
rename to scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-user-patches.scc
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
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
index 72d991c..155f67b 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
@@ -1 +1 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+FILESEXTRAPATHS_prepend_{{=machine}} := "${THISDIR}/${PN}:"
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/user-config.cfg b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/ {{=machine}}-user-config.cfg
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/user-config.cfg
rename to scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/ {{=machine}}-user-config.cfg
diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/user-patches.scc b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-user-patches.scc
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/user-patches.scc
rename to scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/files/{{=machine}}-user-patches.scc
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
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/user-config.cfg b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-user-config.cfg
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/user-config.cfg
rename to scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-user-config.cfg
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/user-patches.scc b/scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-user-patches.scc
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/user-patches.scc
rename to scripts/lib/bsp/substrate/target/arch/mips/recipes-kernel/linux/files/{{=machine}}-user-patches.scc
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
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-config.cfg b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-user-config.cfg
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-config.cfg
rename to scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-user-config.cfg
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-patches.scc b/scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-user-patches.scc
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/user-patches.scc
rename to scripts/lib/bsp/substrate/target/arch/powerpc/recipes-kernel/linux/files/{{=machine}}-user-patches.scc
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
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-config.cfg b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-user-config.cfg
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-config.cfg
rename to scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-user-config.cfg
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-patches.scc b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-user-patches.scc
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/user-patches.scc
rename to scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/files/{{=machine}}-user-patches.scc
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
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/user-config.cfg b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-user-config.cfg
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/user-config.cfg
rename to scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-user-config.cfg
diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/user-patches.scc b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-user-patches.scc
similarity index 100%
rename from scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/user-patches.scc
rename to scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/files/{{=machine}}-user-patches.scc
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


