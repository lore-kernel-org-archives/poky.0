Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D34DBE0047F
	for <poky@yoctoproject.org>; Fri, 18 Jan 2013 10:27:39 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Jan 2013 10:27:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,494,1355126400"; d="scan'208";a="273889282"
Received: from unknown (HELO localhost) ([10.255.14.191])
	by orsmga002.jf.intel.com with ESMTP; 18 Jan 2013 10:27:25 -0800
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Fri, 18 Jan 2013 12:27:12 -0600
Message-Id: <ce65749f47398206705a91d6e2eecff0358a3a51.1357935675.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <1d1bf17bacd100d0ad849607863157e017617754.1357935675.git.tom.zanussi@intel.com>
References: <1d1bf17bacd100d0ad849607863157e017617754.1357935675.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1357935675.git.tom.zanussi@intel.com>
References: <cover.1357935675.git.tom.zanussi@intel.com>
Subject: [PATCH 6/7] yocto-layer: add optional layer priority param
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
X-List-Received-Date: Fri, 18 Jan 2013 18:27:39 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

If the user specifies a layer priority following the layer name, layer
creation will proceed without further queries using the specified
layer priority and the remaining values defaulted.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/help.py | 14 ++++++++++++--
 scripts/yocto-layer     |  9 +++++++--
 2 files changed, 19 insertions(+), 4 deletions(-)

diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
index eac172a..346bf0f 100644
--- a/scripts/lib/bsp/help.py
+++ b/scripts/lib/bsp/help.py
@@ -622,7 +622,8 @@ yocto_layer_create_usage = """
 
  Create a new generic Yocto layer
 
- usage: yocto-layer create <layer-name> [-o <DIRNAME> | --outdir <DIRNAME>]
+ usage: yocto-layer create <layer-name> [layer_priority]
+            [-o <DIRNAME> | --outdir <DIRNAME>]
             [-i <JSON PROPERTY FILE> | --infile <JSON PROPERTY_FILE>]
 
  This command creates a generic Yocto layer based on the specified
@@ -631,6 +632,10 @@ yocto_layer_create_usage = """
  'meta-layer-name'.  The -o option can be used to place the layer in a
  directory with a different name and location.
 
+ If layer_priority is specified, a simple layer will be created using
+ the given layer priority, and the user will not be prompted for
+ further input.
+
  NOTE: Once created, you should add your new layer to your
  bblayers.conf file in order for it to be subsequently seen and
  modified by the yocto-kernel tool.  Instructions for doing this can
@@ -646,7 +651,8 @@ NAME
     yocto-layer create - Create a new generic Yocto layer
 
 SYNOPSIS
-    yocto-layer create <layer-name> [-o <DIRNAME> | --outdir <DIRNAME>]
+    yocto-layer create <layer-name> [layer_priority]
+        [-o <DIRNAME> | --outdir <DIRNAME>]
         [-i <JSON PROPERTY FILE> | --infile <JSON PROPERTY_FILE>]
 
 DESCRIPTION
@@ -656,6 +662,10 @@ DESCRIPTION
     'meta-layer-name'.  The -o option can be used to place the layer
     in a directory with a different name and location.
 
+    If layer_priority is specified, a simple layer will be created
+    using the given layer priority, and the user will not be prompted
+    for further input.
+
     The layer-specific properties that define the values that will be
     used to generate the layer can be specified on the command-line
     using the -i option and supplying a JSON object consisting of the
diff --git a/scripts/yocto-layer b/scripts/yocto-layer
index f759275..53d2aab 100755
--- a/scripts/yocto-layer
+++ b/scripts/yocto-layer
@@ -60,19 +60,24 @@ def yocto_layer_create_subcommand(args, usage_str):
                       default = False, help = "dump the generated code to layergen.out")
     (options, args) = parser.parse_args(args)
 
-    if len(args) != 1:
+    if len(args) < 1 or len(args) > 2:
         logging.error("Wrong number of arguments, exiting\n")
         parser.print_help()
         sys.exit(1)
 
     layer_name = args[0]
+    properties = ""
+
+    if len(args) == 2:
+        layer_priority = args[1]
+        properties = '{"layer_priority":"' + layer_priority + '"}'
 
     if options.outdir:
         layer_output_dir = options.outdir
     else:
         layer_output_dir = "meta-" + layer_name
 
-    yocto_layer_create(layer_name, scripts_path, layer_output_dir, options.codedump, options.properties_file)
+    yocto_layer_create(layer_name, scripts_path, layer_output_dir, options.codedump, options.properties_file, properties)
 
 
 def yocto_layer_list_subcommand(args, usage_str):
-- 
1.7.11.4


