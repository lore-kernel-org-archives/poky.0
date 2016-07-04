Return-Path: <humberto.ibarra.lopez@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DD4DE00D7C; Mon,  4 Jul 2016 13:31:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47D21E00D6D
	for <poky@yoctoproject.org>; Mon,  4 Jul 2016 13:31:44 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 04 Jul 2016 13:31:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,576,1459839600"; d="scan'208";a="1000866434"
Received: from jhibarra-mobl1.zpn.intel.com ([10.219.16.231])
	by fmsmga001.fm.intel.com with ESMTP; 04 Jul 2016 13:31:43 -0700
From: Humberto Ibarra <humberto.ibarra.lopez@intel.com>
To: poky@yoctoproject.org
Date: Mon,  4 Jul 2016 15:33:33 -0500
Message-Id: <1467664414-8042-3-git-send-email-humberto.ibarra.lopez@intel.com>
X-Mailer: git-send-email 2.4.11
In-Reply-To: <1467664414-8042-1-git-send-email-humberto.ibarra.lopez@intel.com>
References: <1467664414-8042-1-git-send-email-humberto.ibarra.lopez@intel.com>
Subject: [PATCH 2/3] yocto-bsp: Refactor script to use argparse instead of optparse
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
X-List-Received-Date: Mon, 04 Jul 2016 20:31:45 -0000

Optparse is deprecated and should be avoided. The arparse library is better suited and has more tools to handling the parsing of arguments. This patch makes necessary changes to migrate to the better library and uses arparse subcommand feature to improve organization of this script.

[YOCTO #8321]
---
 scripts/lib/bsp/engine.py |  30 +++--------
 scripts/yocto-bsp         | 132 +++++++++++++++++++++++++---------------------
 2 files changed, 78 insertions(+), 84 deletions(-)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index 85f095e..400fd27 100644
--- a/scripts/lib/bsp/engine.py
+++ b/scripts/lib/bsp/engine.py
@@ -1824,16 +1824,13 @@ def yocto_layer_list_property_values(arch, property, scripts_path, properties_fi
     print_values(type, values_list)
 
 
-def yocto_bsp_list(args, scripts_path, properties_file):
+def yocto_bsp_list(args, scripts_path):
     """
     Print available architectures, or the complete list of properties
     defined by the BSP, or the possible values for a particular BSP
     property.
     """
-    if len(args) < 1:
-        return False
-
-    if args[0] == "karch":
+    if args.karch == "karch":
         lib_path = scripts_path + '/lib'
         bsp_path = lib_path + '/bsp'
         arch_path = bsp_path + '/substrate/target/arch'
@@ -1842,26 +1839,13 @@ def yocto_bsp_list(args, scripts_path, properties_file):
             if arch == "common" or arch == "layer":
                 continue
             print("    %s" % arch)
-        return True
-    else:
-        arch = args[0]
-
-    if len(args) < 2 or len(args) > 3:
-        return False
-
-    if len(args) == 2:
-        if args[1] == "properties":
-            yocto_layer_list_properties(arch, scripts_path, properties_file)
-        else:
-            return False
+        return
 
-    if len(args) == 3:
-        if args[1] == "property":
-            yocto_layer_list_property_values(arch, args[2], scripts_path, properties_file)
-        else:
-            return False
+    if args.properties:
+        yocto_layer_list_properties(args.karch, scripts_path, args.properties_file)
+    elif args.property:
+        yocto_layer_list_property_values(args.karch, args.property, scripts_path, args.properties_file)
 
-    return True
 
 
 def yocto_layer_list(args, scripts_path, properties_file):
diff --git a/scripts/yocto-bsp b/scripts/yocto-bsp
index ac6cfa0..6fb1f41 100755
--- a/scripts/yocto-bsp
+++ b/scripts/yocto-bsp
@@ -32,48 +32,28 @@
 
 import os
 import sys
-import optparse
+import argparse
 import logging
 
-scripts_path = os.path.abspath(os.path.dirname(os.path.abspath(sys.argv[0])))
-lib_path = scripts_path + '/lib'
-sys.path = sys.path + [lib_path]
+scripts_path = os.path.dirname(os.path.realpath(__file__))
+sys.path.insert(0, scripts_path + '/lib')
+import argparse_oe
 
 from bsp.help import *
 from bsp.engine import *
 
 
-def yocto_bsp_create_subcommand(args, usage_str):
+def do_create_bsp(args):
     """
     Command-line handling for BSP creation.  The real work is done by
     bsp.engine.yocto_bsp_create()
     """
-    parser = optparse.OptionParser(usage = usage_str)
-
-    parser.add_option("-o", "--outdir", dest = "outdir", action = "store",
-                      help = "name of BSP dir to create")
-    parser.add_option("-i", "--infile", dest = "properties_file", action = "store",
-                      help = "name of file containing the values for BSP properties as a JSON file")
-    parser.add_option("-c", "--codedump", dest = "codedump", action = "store_true",
-                      default = False, help = "dump the generated code to bspgen.out")
-    parser.add_option("-s", "--skip-git-check", dest = "git_check", action = "store_false",
-                      default = True, help = "skip the git connectivity check")
-    (options, args) = parser.parse_args(args)
-
-    if len(args) != 2:
-        logging.error("Wrong number of arguments, exiting\n")
-        parser.print_help()
-        sys.exit(1)
-
-    machine = args[0]
-    karch = args[1]
-
-    if options.outdir:
-        bsp_output_dir = options.outdir
+    if args.outdir:
+        bsp_output_dir = args.outdir
     else:
-        bsp_output_dir = "meta-" + machine
+        bsp_output_dir = "meta-" + args.bspname
 
-    if options.git_check and not options.properties_file:
+    if args.git_check and not args.properties_file:
         print("Checking basic git connectivity...")
         if not verify_git_repo(GIT_CHECK_URI):
             print("Couldn't verify git connectivity, exiting\n")
@@ -84,34 +64,27 @@ def yocto_bsp_create_subcommand(args, usage_str):
         else:
             print("Done.\n")
 
-    yocto_bsp_create(machine, karch, scripts_path, bsp_output_dir, options.codedump, options.properties_file)
+    yocto_bsp_create(args.bspname, args.karch, scripts_path, bsp_output_dir, args.codedump, args.properties_file)
 
 
-def yocto_bsp_list_subcommand(args, usage_str):
+def do_list_bsp(args):
     """
     Command-line handling for listing available BSP properties and
     values.  The real work is done by bsp.engine.yocto_bsp_list()
     """
-    parser = optparse.OptionParser(usage = usage_str)
-
-    parser.add_option("-o", "--outfile", action = "store", dest = "properties_file",
-                      help = "dump the possible values for BSP properties to a JSON file")
-
-    (options, args) = parser.parse_args(args)
-
-    if not yocto_bsp_list(args, scripts_path, options.properties_file):
-        logging.error("Bad list arguments, exiting\n")
-        parser.print_help()
-        sys.exit(1)
+    yocto_bsp_list(args, scripts_path)
 
+def do_help_bsp(args):
+    """
+    Command-line help tool
+    """
+    help_text = command_help.get(args.subcommand)
+    pager = subprocess.Popen('less', stdin=subprocess.PIPE)
+    pager.communicate(bytes(help_text,'UTF-8'))
 
-subcommands = {
-    "create": [yocto_bsp_create_subcommand,
-               yocto_bsp_create_usage,
-               yocto_bsp_create_help],
-    "list":   [yocto_bsp_list_subcommand,
-               yocto_bsp_list_usage,
-               yocto_bsp_list_help],
+command_help = {
+    "create": yocto_bsp_create_help,
+    "list":  yocto_bsp_list_help
 }
 
 
@@ -120,27 +93,65 @@ def start_logging(loglevel):
 
 
 def main():
-    parser = optparse.OptionParser(usage = yocto_bsp_usage)
+    parser = argparse_oe.ArgumentParser(description='Create a customized Yocto BSP layer.',
+                      epilog="See '%(prog)s help <subcommand>' for more information on a specific command.")
 
-    parser.disable_interspersed_args()
-    parser.add_option("-D", "--debug", dest = "debug", action = "store_true",
+    parser.add_argument("-D", "--debug", action = "store_true",
                       default = False, help = "output debug information")
+    subparsers = parser.add_subparsers(title='subcommands', metavar='<subcommand>')
+    subparsers.required = True
+
+    create_parser = subparsers.add_parser('create', help='Create a new Yocto BSP',
+                                          description='Create a new Yocto BSP')
+    create_parser.add_argument('bspname', metavar='bsp-name', help='name for the new BSP')
+    create_parser.add_argument('karch', help='kernel architecture')
+    create_parser.add_argument("-o", "--outdir", help = "name of BSP dir to create")
+    create_parser.add_argument("-i", "--infile", dest = "properties_file",
+                      help = "name of file containing the values for BSP properties as a JSON file")
+    create_parser.add_argument("-c", "--codedump", action = "store_true", default = False,
+                      help = "dump the generated code to bspgen.out")
+    create_parser.add_argument("-s", "--skip-git-check", dest = "git_check", action = "store_false",
+                      default = True, help = "skip the git connectivity check")
+    create_parser.set_defaults(func=do_create_bsp)
+
 
-    (options, args) = parser.parse_args()
+    list_parser = subparsers.add_parser('list', help='List available values for options and BSP properties')
+    list_parser.add_argument('karch', help='kernel architecture')
+    prop_group = list_parser.add_mutually_exclusive_group()
+    prop_group.add_argument("--properties", action = "store_true", default = False,
+                      help = "list all properties for the kernel architecture")
+    prop_group.add_argument("--property", help = "list available values for the property")
+    list_parser.add_argument("-o", "--outfile", dest = "properties_file",
+                      help = "dump the possible values for BSP properties to a JSON file")
+
+    list_parser.set_defaults(func=do_list_bsp)
+
+    help_parser = subparsers.add_parser('help',
+                      description='This command displays detailed help for the specified subcommand.')
+    help_parser.add_argument('subcommand', nargs='?')
+    help_parser.set_defaults(func=do_help_bsp)
+
+    args = parser.parse_args()
 
     loglevel = logging.INFO
-    if options.debug:
+    if args.debug:
         loglevel = logging.DEBUG
     start_logging(loglevel)
 
-    if len(args):
-        if args[0] == "help":
-            if len(args) == 1:
-                parser.print_help()
-                sys.exit()
+    if args._subparser_name == "list":
+        if not args.karch == "karch" and not args.properties and not args.property:
+            print ("yocto-bsp list: error: one of the arguments --properties --property is required")
+            list_parser.print_help()
 
-    invoke_subcommand(args, parser, yocto_bsp_help_usage, subcommands)
+    if args._subparser_name == "help":
+        if not args.subcommand:
+            parser.print_help()
+            return 0
+        elif not command_help.get(args.subcommand):
+            print ("yocto-bsp help: No manual entry for %s" % args.subcommand)
+            return 1
 
+    return args.func(args)
 
 if __name__ == "__main__":
     try:
@@ -150,4 +161,3 @@ if __name__ == "__main__":
         import traceback
         traceback.print_exc()
     sys.exit(ret)
-
-- 
2.4.11


