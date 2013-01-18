Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF01EE0047F
	for <poky@yoctoproject.org>; Fri, 18 Jan 2013 10:27:20 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Jan 2013 10:27:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,494,1355126400"; d="scan'208";a="245712691"
Received: from unknown (HELO localhost) ([10.255.14.191])
	by azsmga001.ch.intel.com with ESMTP; 18 Jan 2013 10:27:19 -0800
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Fri, 18 Jan 2013 12:27:09 -0600
Message-Id: <b0afe70f84ee1f232fa02789f16c12ac5d4204a3.1357935675.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <1d1bf17bacd100d0ad849607863157e017617754.1357935675.git.tom.zanussi@intel.com>
References: <1d1bf17bacd100d0ad849607863157e017617754.1357935675.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1357935675.git.tom.zanussi@intel.com>
References: <cover.1357935675.git.tom.zanussi@intel.com>
Subject: [PATCH 3/7] yocto-layer: add help/usage
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
X-List-Received-Date: Fri, 18 Jan 2013 18:27:21 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This is essentially 'the documentation' for the yocto-layer tool.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/help.py | 228 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 228 insertions(+)

diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
index 3a1f52c..eac172a 100644
--- a/scripts/lib/bsp/help.py
+++ b/scripts/lib/bsp/help.py
@@ -595,6 +595,234 @@ DESCRIPTION
 """
 
 ##
+# yocto-layer help and usage strings
+##
+
+yocto_layer_usage = """
+
+ Create a generic Yocto layer.
+
+ usage: yocto-layer [--version] [--help] COMMAND [ARGS]
+
+ Current 'yocto-layer' commands are:
+    create            Create a new generic Yocto layer
+    list              List available values for input options and properties
+
+ See 'yocto-layer help COMMAND' for more information on a specific command.
+"""
+
+yocto_layer_help_usage = """
+
+ usage: yocto-layer help <subcommand>
+
+ This command displays detailed help for the specified subcommand.
+"""
+
+yocto_layer_create_usage = """
+
+ Create a new generic Yocto layer
+
+ usage: yocto-layer create <layer-name> [-o <DIRNAME> | --outdir <DIRNAME>]
+            [-i <JSON PROPERTY FILE> | --infile <JSON PROPERTY_FILE>]
+
+ This command creates a generic Yocto layer based on the specified
+ parameters.  The new layer will be a new Yocto layer contained by
+ default within the top-level directory specified as
+ 'meta-layer-name'.  The -o option can be used to place the layer in a
+ directory with a different name and location.
+
+ NOTE: Once created, you should add your new layer to your
+ bblayers.conf file in order for it to be subsequently seen and
+ modified by the yocto-kernel tool.  Instructions for doing this can
+ be found in the README file generated in the layer's top-level
+ directory.
+
+ See 'yocto layer help create' for more detailed instructions.
+"""
+
+yocto_layer_create_help = """
+
+NAME
+    yocto-layer create - Create a new generic Yocto layer
+
+SYNOPSIS
+    yocto-layer create <layer-name> [-o <DIRNAME> | --outdir <DIRNAME>]
+        [-i <JSON PROPERTY FILE> | --infile <JSON PROPERTY_FILE>]
+
+DESCRIPTION
+    This command creates a generic Yocto layer based on the specified
+    parameters.  The new layer will be a new Yocto layer contained by
+    default within the top-level directory specified as
+    'meta-layer-name'.  The -o option can be used to place the layer
+    in a directory with a different name and location.
+
+    The layer-specific properties that define the values that will be
+    used to generate the layer can be specified on the command-line
+    using the -i option and supplying a JSON object consisting of the
+    set of name:value pairs needed by the layer.
+
+    If the -i option is not used, the user will be interactively
+    prompted for each of the required property values, which will then
+    be used as values for layer generation.
+
+    The set of properties available can be listed using the
+    'yocto-layer list' command.
+
+    Specifying -c causes the Python code generated and executed to
+    create the layer to be dumped to the 'bspgen.out' file in the
+    current directory, and is useful for debugging.
+
+    NOTE: Once created, you should add your new layer to your
+    bblayers.conf file in order for it to be subsequently seen and
+    modified by the yocto-kernel tool.  Instructions for doing this
+    can be found in the README file generated in the layer's top-level
+    directory.
+
+    For example, assuming your poky repo is at /path/to/poky, your new
+    layer is at /path/to/poky/meta-mylayer, and your build directory
+    is /path/to/build:
+
+    $ gedit /path/to/build/conf/bblayers.conf
+
+    BBLAYERS ?= " \\
+      /path/to/poky/meta \\
+      /path/to/poky/meta-yocto \\
+      /path/to/poky/meta-mylayer \\
+      "
+"""
+
+yocto_layer_list_usage = """
+
+ usage: yocto-layer list properties
+                [-o <JSON PROPERTY FILE> | --outfile <JSON PROPERTY_FILE>]
+        yocto-layer list property <xxx>
+                [-o <JSON PROPERTY FILE> | --outfile <JSON PROPERTY_FILE>]
+
+ This command enumerates the complete set of possible values for a
+ specified option or property needed by the layer creation process.
+
+ The first form enumerates all the possible properties that exist and
+ must have values specified for them in the 'yocto-layer create'
+ command.
+
+ The second form enumerates all the possible values that exist and can
+ be specified for any of the enumerable properties in the 'yocto-layer
+ create' command.
+
+ See 'yocto-layer help list' for more details.
+"""
+
+yocto_layer_list_help = """
+
+NAME
+    yocto-layer list - List available values for layer input options and properties
+
+SYNOPSIS
+    yocto-layer list properties
+            [--o <JSON PROPERTY FILE> | -outfile <JSON PROPERTY_FILE>]
+    yocto-layer list property <xxx>
+            [--o <JSON PROPERTY FILE> | -outfile <JSON PROPERTY_FILE>]
+
+DESCRIPTION
+    This command enumerates the complete set of possible values for a
+    specified option or property needed by the layer creation process.
+
+    The first form enumerates all the possible properties that exist
+    and must have values specified for them in the 'yocto-layer
+    create' command.  This command is mainly meant to aid the
+    development of user interface alternatives to the default
+    text-based prompting interface.  If the -o option is specified,
+    the list of properties, in addition to being displayed, will be
+    written to the specified file as a JSON object.  In this case, the
+    object will consist of the set of name:value pairs corresponding
+    to the (possibly nested) dictionary of properties defined by the
+    input statements used by the BSP.  Some example output for the
+    'list properties' command:
+
+    $ yocto-layer list properties
+    "example_bbappend_name" : {
+        "default" : example
+        "msg" : Please enter the name you'd like to use for your bbappend file:
+        "type" : edit
+        "prio" : 20
+        "filename" : /home/trz/yocto/yocto-layer-dev/scripts/lib/bsp/substrate/target/arch/layer/layer-questions.noinstall
+    }
+    "create_example_recipe" : {
+        "default" : n
+        "msg" : Would you like to have an example recipe created? (y/n)
+        "type" : boolean
+        "prio" : 20
+        "filename" : /home/trz/yocto/yocto-layer-dev/scripts/lib/bsp/substrate/target/arch/layer/layer-questions.noinstall
+    }
+    "example_recipe_name" : {
+        "default" : example
+        "msg" : Please enter the name you'd like to use for your example recipe:
+        "type" : edit
+        "prio" : 20
+        "filename" : /home/trz/yocto/yocto-layer-dev/scripts/lib/bsp/substrate/target/arch/layer/layer-questions.noinstall
+    }
+    "layer_priority" : {
+        "default" : 6
+        "msg" : Please enter the layer priority you'd like to use for the layer:
+        "type" : edit
+        "prio" : 20
+        "filename" : /home/trz/yocto/yocto-layer-dev/scripts/lib/bsp/substrate/target/arch/layer/layer-questions.noinstall
+    }
+    "create_example_bbappend" : {
+        "default" : n
+        "msg" : Would you like to have an example bbappend file created? (y/n)
+        "type" : boolean
+        "prio" : 20
+        "filename" : /home/trz/yocto/yocto-layer-dev/scripts/lib/bsp/substrate/target/arch/layer/layer-questions.noinstall
+    }
+    "example_bbappend_version" : {
+        "default" : 0.1
+        "msg" : Please enter the version number you'd like to use for your bbappend file (this should match the recipe you're appending to):
+        "type" : edit
+        "prio" : 20
+        "filename" : /home/trz/yocto/yocto-layer-dev/scripts/lib/bsp/substrate/target/arch/layer/layer-questions.noinstall
+    }
+
+    Each entry in the output consists of the name of the input element
+    e.g. "layer_priority", followed by the properties defined for that
+    element enclosed in braces.  This information should provide
+    sufficient information to create a complete user interface.  Two
+    features of the scheme provide for conditional input.  First, if a
+    Python "if" statement appears in place of an input element name,
+    the set of enclosed input elements apply and should be presented
+    to the user only if the 'if' statement evaluates to true.  The
+    test in the if statement will always reference another input
+    element in the list, which means that the element being tested
+    should be presented to the user before the elements enclosed by
+    the if block.  Secondly, in a similar way, some elements contain
+    "depends-on" and depends-on-val" tags, which mean that the
+    affected input element should only be presented to the user if the
+    element it depends on has already been presented to the user and
+    the user has selected the specified value for that element.
+
+    The second form enumerates all the possible values that exist and
+    can be specified for any of the enumerable properties in the
+    'yocto-layer create' command.  If the -o option is specified, the
+    list of values for the given property, in addition to being
+    displayed, will be written to the specified file as a JSON object.
+    In this case, the object will consist of the set of name:value
+    pairs corresponding to the array of property values associated
+    with the property.
+
+    $ yocto-layer list property layer_priority
+     [no output - layer_priority is a text field that has no enumerable values]
+
+    The second form as well is meant mainly for developers of
+    alternative interfaces - it allows the developer to fetch the
+    possible values for a given input element on-demand.  This
+    on-demand capability is especially valuable for elements that
+    require relatively expensive remote operations to fulfill, such as
+    the example that returns the set of branches available in a remote
+    git tree above.
+
+"""
+
+##
 # test code
 ##
 
-- 
1.7.11.4


