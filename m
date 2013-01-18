Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A031E00527
	for <poky@yoctoproject.org>; Fri, 18 Jan 2013 10:27:24 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 18 Jan 2013 10:27:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,494,1355126400"; d="scan'208";a="192720217"
Received: from unknown (HELO localhost) ([10.255.14.191])
	by AZSMGA002.ch.intel.com with ESMTP; 18 Jan 2013 10:27:23 -0800
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Fri, 18 Jan 2013 12:27:11 -0600
Message-Id: <52684f3fd571368412e3b14380f9df88a7a74267.1357935675.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <1d1bf17bacd100d0ad849607863157e017617754.1357935675.git.tom.zanussi@intel.com>
References: <1d1bf17bacd100d0ad849607863157e017617754.1357935675.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1357935675.git.tom.zanussi@intel.com>
References: <cover.1357935675.git.tom.zanussi@intel.com>
Subject: [PATCH 5/7] scripts/lib/bsp/engine.py: refactor bsp-creation code
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
X-List-Received-Date: Fri, 18 Jan 2013 18:27:24 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This does a bit of refactoring of the bsp-generation code to make it
generically reusable for generating non-bsp layers.

The first user remains the existing yocto-bsp tool; these changes
allow a second user, the new yocto-layer tool, to use the same code.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/engine.py | 141 +++++++++++++++++++++++++---------------------
 1 file changed, 76 insertions(+), 65 deletions(-)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index d406e79..7431860 100644
--- a/scripts/lib/bsp/engine.py
+++ b/scripts/lib/bsp/engine.py
@@ -1039,7 +1039,9 @@ def gen_program_machine_lines(machine, program_lines):
     Use the input values we got from the command line.
     """
     line = "machine = \"" + machine + "\""
+    program_lines.append(line)
 
+    line = "layer_name = \"" + machine + "\""
     program_lines.append(line)
 
 
@@ -1321,10 +1323,13 @@ def capture_context(context):
     return captured_context
 
 
-def expand_targets(context, bsp_output_dir):
+def expand_targets(context, bsp_output_dir, expand_common=True):
     """
     Expand all the tags in both the common and machine-specific
     'targets'.
+
+    If expand_common is False, don't expand the common target (this
+    option is used to create special-purpose layers).
     """
     target_files = []
 
@@ -1336,8 +1341,9 @@ def expand_targets(context, bsp_output_dir):
     bsp_path = lib_path + '/bsp'
     arch_path = bsp_path + '/substrate/target/arch'
 
-    common = os.path.join(arch_path, "common")
-    expand_target(common, target_files, bsp_output_dir)
+    if expand_common:
+        common = os.path.join(arch_path, "common")
+        expand_target(common, target_files, bsp_output_dir)
 
     arches = os.listdir(arch_path)
     if arch not in arches or arch == "common":
@@ -1352,21 +1358,22 @@ def expand_targets(context, bsp_output_dir):
     return target_files
 
 
-def yocto_layer_create(layer_name, scripts_path, layer_output_dir, codedump, properties_file):
+def yocto_common_create(machine, target, scripts_path, layer_output_dir, codedump, properties_file, properties_str="", expand_common=True):
     """
-    Create yocto layer
+    Common layer-creation code
 
-    layer_name - user-defined layer name
+    machine - user-defined machine name (if needed, will generate 'machine' var)
+    target - the 'target' the layer will be based on, must be one in
+           scripts/lib/bsp/substrate/target/arch
     scripts_path - absolute path to yocto /scripts dir
-    bsp_output_dir - dirname to create for BSP
+    layer_output_dir - dirname to create for layer
     codedump - dump generated code to bspgen.out
-    properties_file - use values from here if nonempty i.e no prompting
-
-    arch - the arch for a generic layer is 'generic-layer', defined in
-           scripts/lib/bsp/substrate/target/generic-layer
+    properties_file - use values from this file if nonempty i.e no prompting
+    properties_str - use values from this string if nonempty i.e no prompting
+    expand_common - boolean, use the contents of (for bsp layers) arch/common
     """
-    if os.path.exists(bsp_output_dir):
-        print "\nBSP output dir already exists, exiting. (%s)" % bsp_output_dir
+    if os.path.exists(layer_output_dir):
+        print "\nlayer output dir already exists, exiting. (%s)" % layer_output_dir
         sys.exit(1)
 
     properties = None
@@ -1380,10 +1387,10 @@ def yocto_layer_create(layer_name, scripts_path, layer_output_dir, codedump, pro
 
         properties = json.load(infile)
 
-    os.mkdir(bsp_output_dir)
+    os.mkdir(layer_output_dir)
 
-    context = create_context(machine, arch, scripts_path)
-    target_files = expand_targets(context, bsp_output_dir)
+    context = create_context(machine, target, scripts_path)
+    target_files = expand_targets(context, layer_output_dir, expand_common)
 
     input_lines = gather_inputlines(target_files)
 
@@ -1405,7 +1412,22 @@ def yocto_layer_create(layer_name, scripts_path, layer_output_dir, codedump, pro
 
     run_program_lines(program_lines, codedump)
 
-    print "New %s BSP created in %s" % (arch, bsp_output_dir)
+
+def yocto_layer_create(layer_name, scripts_path, layer_output_dir, codedump, properties_file):
+    """
+    Create yocto layer
+
+    layer_name - user-defined layer name
+    scripts_path - absolute path to yocto /scripts dir
+    layer_output_dir - dirname to create for layer
+    codedump - dump generated code to bspgen.out
+    properties_file - use values from this file if nonempty i.e no prompting
+    properties - use values from this string if nonempty i.e no prompting
+    """
+    yocto_common_create(layer_name, "layer", scripts_path, layer_output_dir, codedump, properties_file, False)
+
+    print "\nNew layer created in %s.\n" % (layer_output_dir)
+    print "Don't forget to add it to your BBLAYERS (for details see %s\README)." % (layer_output_dir)
 
 
 def yocto_bsp_create(machine, arch, scripts_path, bsp_output_dir, codedump, properties_file):
@@ -1418,49 +1440,12 @@ def yocto_bsp_create(machine, arch, scripts_path, bsp_output_dir, codedump, prop
     scripts_path - absolute path to yocto /scripts dir
     bsp_output_dir - dirname to create for BSP
     codedump - dump generated code to bspgen.out
-    properties_file - use values from here if nonempty i.e no prompting
+    properties_file - use values from this file if nonempty i.e no prompting
+    properties - use values from this string if nonempty i.e no prompting
     """
-    if os.path.exists(bsp_output_dir):
-        print "\nBSP output dir already exists, exiting. (%s)" % bsp_output_dir
-        sys.exit(1)
+    yocto_common_create(machine, arch, scripts_path, bsp_output_dir, codedump, properties_file)
 
-    properties = None
-
-    if properties_file:
-        try:
-            infile = open(properties_file, "r")
-        except IOError:
-            print "Couldn't open properties file %s for reading, exiting" % properties_file
-            sys.exit(1)
-
-        properties = json.load(infile)
-
-    os.mkdir(bsp_output_dir)
-
-    context = create_context(machine, arch, scripts_path)
-    target_files = expand_targets(context, bsp_output_dir)
-
-    input_lines = gather_inputlines(target_files)
-
-    program_lines = []
-
-    gen_program_header_lines(program_lines)
-
-    gen_initial_property_vals(input_lines, program_lines)
-
-    if properties:
-        gen_supplied_property_vals(properties, program_lines)
-
-    gen_program_machine_lines(machine, program_lines)
-
-    if not properties:
-        gen_program_input_lines(input_lines, program_lines, context)
-
-    gen_program_lines(target_files, program_lines)
-
-    run_program_lines(program_lines, codedump)
-
-    print "New %s BSP created in %s" % (arch, bsp_output_dir)
+    print "\nNew %s BSP created in %s" % (arch, bsp_output_dir)
 
 
 def print_dict(items, indent = 0):
@@ -1508,15 +1493,15 @@ def get_properties(input_lines):
     return properties
 
 
-def yocto_bsp_list_properties(arch, scripts_path, properties_file):
+def yocto_layer_list_properties(arch, scripts_path, properties_file, expand_common=True):
     """
     List the complete set of properties for all the input items in the
-    BSP.  If properties_file is non-null, write the complete set of
+    layer.  If properties_file is non-null, write the complete set of
     properties as a nested JSON object corresponding to a possibly
     nested dictionary.
     """
     context = create_context("unused", arch, scripts_path)
-    target_files = expand_targets(context, "unused")
+    target_files = expand_targets(context, "unused", expand_common)
 
     input_lines = gather_inputlines(target_files)
 
@@ -1605,7 +1590,7 @@ def print_values(type, values_list):
             print "[\"%s\", \"%s\"]" % (value[0], value[1])
 
 
-def yocto_bsp_list_property_values(arch, property, scripts_path, properties_file):
+def yocto_layer_list_property_values(arch, property, scripts_path, properties_file, expand_common=True):
     """
     List the possible values for a given input property.  If
     properties_file is non-null, write the complete set of properties
@@ -1614,7 +1599,7 @@ def yocto_bsp_list_property_values(arch, property, scripts_path, properties_file
     context = create_context("unused", arch, scripts_path)
     context["name"] = property
 
-    target_files = expand_targets(context, "unused")
+    target_files = expand_targets(context, "unused", expand_common)
 
     input_lines = gather_inputlines(target_files)
 
@@ -1697,13 +1682,39 @@ def yocto_bsp_list(args, scripts_path, properties_file):
 
     if len(args) == 2:
         if args[1] == "properties":
-            yocto_bsp_list_properties(arch, scripts_path, properties_file)
+            yocto_layer_list_properties(arch, scripts_path, properties_file)
         else:
             return False
 
     if len(args) == 3:
         if args[1] == "property":
-            yocto_bsp_list_property_values(arch, args[2], scripts_path, properties_file)
+            yocto_layer_list_property_values(arch, args[2], scripts_path, properties_file)
+        else:
+            return False
+
+    return True
+
+
+def yocto_layer_list(args, scripts_path, properties_file):
+    """
+    Print the complete list of input properties defined by the layer,
+    or the possible values for a particular layer property.
+    """
+    if len(args) < 1:
+        return False
+
+    if len(args) < 1 or len(args) > 2:
+        return False
+
+    if len(args) == 1:
+        if args[0] == "properties":
+            yocto_layer_list_properties("layer", scripts_path, properties_file, False)
+        else:
+            return False
+
+    if len(args) == 2:
+        if args[0] == "property":
+            yocto_layer_list_property_values("layer", args[1], scripts_path, properties_file, False)
         else:
             return False
 
-- 
1.7.11.4


