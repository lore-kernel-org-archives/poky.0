Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16C10E016B6
	for <poky@yoctoproject.org>; Fri,  4 Oct 2013 07:37:46 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 04 Oct 2013 07:37:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1033,1371106800"; d="scan'208";a="369832835"
Received: from unknown (HELO localhost) ([10.255.15.215])
	by azsmga001.ch.intel.com with ESMTP; 04 Oct 2013 07:37:38 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri,  4 Oct 2013 09:37:38 -0500
Message-Id: <55332ef172c691df97eb9506265ec0eeb1669805.1380897132.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1380897132.git.tom.zanussi@linux.intel.com>
References: <cover.1380897132.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 1/1] yocto-kernel: Use variable-substituted BBLAYERS
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
X-List-Received-Date: Fri, 04 Oct 2013 14:37:48 -0000

The current find_bblayers() code finds and parses the BBLAYERS
variable manually, and therefore doesn't handle variable substitution,
which causes problems if used.

This change makes find_bblayers() use the variable-substituted
BBLAYERS instead.

Fixes [YOCTO #5106]

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 scripts/lib/bsp/kernel.py | 93 +++++++++++++++++++----------------------------
 1 file changed, 38 insertions(+), 55 deletions(-)

diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index 1971e90..5696ca7 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -35,7 +35,7 @@ import subprocess
 from engine import create_context
 
 
-def find_bblayers(scripts_path):
+def find_bblayers():
     """
     Find and return a sanitized list of the layers found in BBLAYERS.
     """
@@ -48,67 +48,50 @@ def find_bblayers(scripts_path):
 
     layers = []
 
-    f = open(bblayers_conf, "r")
-    lines = f.readlines()
-    bblayers_lines = []
-    in_bblayers = False
-    for line in lines:
-        line = line.strip()
-        tokens = line.split()
-        if len(tokens) > 0 and tokens[0] == 'BBLAYERS':
-            bblayers_lines.append(line)
-            in_bblayers = True
-            quotes = line.strip().count('"')
-            if quotes > 1:
-                in_bblayers = False
-            continue
-        if in_bblayers:
-            bblayers_lines.append(line)
-            if line.strip().endswith("\""):
-                in_bblayers = False
-
-    for i, line in enumerate(bblayers_lines):
-        if line.strip().endswith("\\"):
-            bblayers_lines[i] = line.strip().replace('\\', '')
-
-    bblayers_line = " ".join(bblayers_lines)
-
-    openquote = ''
-    for c in bblayers_line:
-        if c == '\"' or c == '\'':
-            if openquote:
-                if c != openquote:
-                    print "Invalid BBLAYERS found in %s, exiting" % bblayers_conf
-                    sys.exit(1)
-                else:
-                    openquote = ''
-            else:
-                openquote = c
-
-    if openquote:
-        print "Invalid BBLAYERS found in %s, exiting" % bblayers_conf
+    bitbake_env_cmd = "bitbake -e"
+    bitbake_env_lines = subprocess.Popen(bitbake_env_cmd, shell=True,
+                                         stdout=subprocess.PIPE).stdout.read()
+
+    if not bitbake_env_lines:
+        print "Couldn't get '%s' output, exiting." % bitbake_env_cmd
         sys.exit(1)
 
-    bblayers_line = bblayers_line.strip().replace('\"', '')
-    bblayers_line = bblayers_line.strip().replace('\'', '')
+    for line in bitbake_env_lines.split('\n'):
+        bblayers = get_line_val(line, "BBLAYERS")
+        if (bblayers):
+            break
+
+    if not bblayers:
+        print "Couldn't find BBLAYERS in 'bitbake -e' output, exiting." % \
+            bitbake_env_cmd
+        sys.exit(1)
 
-    raw_layers = bblayers_line.split()
+    raw_layers = bblayers.split()
 
     for layer in raw_layers:
         if layer == 'BBLAYERS' or '=' in layer:
             continue
         layers.append(layer)
 
-    f.close()
-
     return layers
 
 
-def find_meta_layer(scripts_path):
+def get_line_val(line, key):
+    """
+    Extract the value from the VAR="val" string
+    """
+    if line.startswith(key + "="):
+        stripped_line = line.split('=')[1]
+        stripped_line = stripped_line.replace('\"', '')
+        return stripped_line
+    return None
+
+
+def find_meta_layer():
     """
     Find and return the meta layer in BBLAYERS.
     """
-    layers = find_bblayers(scripts_path)
+    layers = find_bblayers()
 
     for layer in layers:
         if layer.endswith("meta"):
@@ -117,11 +100,11 @@ def find_meta_layer(scripts_path):
     return None
 
 
-def find_bsp_layer(scripts_path, machine):
+def find_bsp_layer(machine):
     """
     Find and return a machine's BSP layer in BBLAYERS.
     """
-    layers = find_bblayers(scripts_path)
+    layers = find_bblayers()
 
     for layer in layers:
         if layer.endswith(machine):
@@ -154,7 +137,7 @@ def open_user_file(scripts_path, machine, userfile, mode):
 
     The caller is responsible for closing the file returned.
     """
-    layer = find_bsp_layer(scripts_path, machine)
+    layer = find_bsp_layer(machine)
     linuxdir = os.path.join(layer, "recipes-kernel/linux")
     linuxdir_list = os.listdir(linuxdir)
     for fileobj in linuxdir_list:
@@ -309,7 +292,7 @@ def find_filesdir(scripts_path, machine):
     (could be in files/, linux-yocto-custom/, etc).  Returns the name
     of the files dir if found, None otherwise.
     """
-    layer = find_bsp_layer(scripts_path, machine)
+    layer = find_bsp_layer(machine)
     filesdir = None
     linuxdir = os.path.join(layer, "recipes-kernel/linux")
     linuxdir_list = os.listdir(linuxdir)
@@ -474,7 +457,7 @@ def kernel_contents_changed(scripts_path, machine):
     Do what we need to do to notify the system that the kernel
     recipe's contents have changed.
     """
-    layer = find_bsp_layer(scripts_path, machine)
+    layer = find_bsp_layer(machine)
 
     kernel = find_current_kernel(layer, machine)
     if not kernel:
@@ -561,7 +544,7 @@ def find_giturl(context):
     filebase = context["filename"]
     scripts_path = context["scripts_path"]
 
-    meta_layer = find_meta_layer(scripts_path)
+    meta_layer = find_meta_layer()
 
     kerndir = os.path.join(meta_layer, "recipes-kernel/linux")
     bbglob = os.path.join(kerndir, "*.bb")
@@ -739,7 +722,7 @@ def yocto_kernel_available_features_list(scripts_path, machine):
     Display the list of all the kernel features available for use in
     BSPs, as gathered from the set of feature sources.
     """
-    layer = find_bsp_layer(scripts_path, machine)
+    layer = find_bsp_layer(machine)
     kernel = find_current_kernel(layer, machine)
     if not kernel:
         print "Couldn't determine the kernel for this BSP, exiting."
@@ -813,7 +796,7 @@ def yocto_kernel_feature_describe(scripts_path, machine, feature):
     Display the description of a specific kernel feature available for
     use in a BSP.
     """
-    layer = find_bsp_layer(scripts_path, machine)
+    layer = find_bsp_layer(machine)
 
     kernel = find_current_kernel(layer, machine)
     if not kernel:
-- 
1.7.11.4


