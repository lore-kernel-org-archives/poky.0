Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B895E01487
	for <poky@yoctoproject.org>; Wed, 13 Mar 2013 12:04:39 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Mar 2013 12:04:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,838,1355126400"; d="scan'208";a="278490326"
Received: from unknown (HELO localhost) ([10.255.12.139])
	by orsmga001.jf.intel.com with ESMTP; 13 Mar 2013 12:04:29 -0700
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Wed, 13 Mar 2013 14:04:07 -0500
Message-Id: <f14e95cf3d0e52a094d48d43e1c0228bb1212dfd.1363198817.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
References: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1363198817.git.tom.zanussi@linux.intel.com>
References: <cover.1363198817.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 13/18] yocto-kernel: add support for kernel feature add/rm/list
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
X-List-Received-Date: Wed, 13 Mar 2013 19:04:39 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

Add yocto-kernel commands allowing users to add, remove, and list
kernel features with respect to a given BSP.

Features managed by these commands modify a special
machine-user-features.scc file associated with the kernel recipe
(.bbappend) of a yocto-bsp-generated BSP.  This is analagous to the
implementation of similar support for bare config items and patches
already implemented for yocto-bsp-generated BSPs.

Future patches will add support for providing a list of eligible
features as defined by linux-yocto kernels and locally-defined
(recipe-space) kernel features.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 scripts/lib/bsp/help.py   | 98 ++++++++++++++++++++++++++++++++++++++++++++++
 scripts/lib/bsp/kernel.py | 99 +++++++++++++++++++++++++++++++++++++++++++++++
 scripts/yocto-kernel      | 71 ++++++++++++++++++++++++++++++++-
 3 files changed, 267 insertions(+), 1 deletion(-)

diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
index 346bf0f..2d7b6fe 100644
--- a/scripts/lib/bsp/help.py
+++ b/scripts/lib/bsp/help.py
@@ -383,6 +383,9 @@ yocto_kernel_usage = """
    patch list        List the patches associated with a BSP
    patch add         Patch the Yocto kernel for a BSP
    patch rm          Remove patches from a BSP
+   feature list      List the features used by a BSP
+   feature add       Have a BSP use a feature
+   feature rm        Have a BSP stop using a feature
 
  See 'yocto-kernel help COMMAND' for more information on a specific command.
 
@@ -594,6 +597,101 @@ DESCRIPTION
     remove.
 """
 
+yocto_kernel_feature_list_usage = """
+
+ List the BSP features that are being used by a BSP
+
+ usage: yocto-kernel feature list <bsp-name>
+
+ This command lists the features being used by a BSP i.e. the features
+ which are eligible for modification or removal by other yocto-kernel
+ commands.
+
+ 'modifiable' features are the features listed in a BSP's
+ user-features.scc file.
+"""
+
+
+yocto_kernel_feature_list_help = """
+
+NAME
+    yocto-kernel feature list - List the modifiable set of features
+    being used by a BSP
+
+SYNOPSIS
+    yocto-kernel feature list <bsp-name>
+
+DESCRIPTION
+    This command lists the 'modifiable' features being used by a BSP
+    i.e. the features which are eligible for modification or removal
+    by other yocto-kernel commands.
+"""
+
+
+yocto_kernel_feature_add_usage = """
+
+ Add to or modify the list of features being used for a BSP
+
+ usage: yocto-kernel feature add <bsp-name> [/xxxx/yyyy/feature.scc ...]
+
+ This command adds one or more feature items to a BSP's kernel
+ user-features.scc file, which is the file used to manage features in
+ a yocto-bsp-generated BSP.  Features to be added must be specified as
+ fully-qualified feature names.
+"""
+
+
+yocto_kernel_feature_add_help = """
+
+NAME
+    yocto-kernel feature add - Add to or modify the list of features
+    being used for a BSP
+
+SYNOPSIS
+    yocto-kernel feature add <bsp-name> [/xxxx/yyyy/feature.scc ...]
+
+DESCRIPTION
+    This command adds one or more feature items to a BSP's
+    user-features.scc file, which is the file used to manage features
+    in a yocto-bsp-generated BSP.  Features to be added must be
+    specified as fully-qualified feature names.
+"""
+
+
+yocto_kernel_feature_rm_usage = """
+
+ Remove a feature from the list of features being used for a BSP
+
+ usage: yocto-kernel feature rm <bsp-name>
+
+ This command removes (turns off) one or more features from a BSP's
+ user-features.scc file, which is the file used to manage features in
+ a yocto-bsp-generated BSP.
+
+ The set of features available to be removed by this command for a BSP
+ is listed and the user prompted for the specific items to remove.
+"""
+
+
+yocto_kernel_feature_rm_help = """
+
+NAME
+    yocto-kernel feature rm - Remove a feature from the list of
+    features being used for a BSP
+
+SYNOPSIS
+    yocto-kernel feature rm <bsp-name>
+
+DESCRIPTION
+    This command removes (turns off) one or more features from a BSP's
+    user-features.scc file, which is the file used to manage features
+    in a yocto-bsp-generated BSP.
+
+    The set of features available to be removed by this command for a
+    BSP is listed and the user prompted for the specific items to
+    remove.
+"""
+
 ##
 # yocto-layer help and usage strings
 ##
diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index dabb9cf..0fa228a 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -552,6 +552,105 @@ def find_giturl(context):
     
     return None
 
+
+def read_features(scripts_path, machine):
+    """
+    Find and return a list of features in a machine's user-defined
+    features fragment [${machine}-user-features.scc].
+    """
+    features = []
+
+    f = open_user_file(scripts_path, machine, machine+"-user-features.scc", "r")
+    lines = f.readlines()
+    for line in lines:
+        s = line.strip()
+        if s and not s.startswith("#"):
+            feature_include = s.split()
+            features.append(feature_include[1].strip())
+    f.close()
+
+    return features
+
+
+def write_features(scripts_path, machine, features):
+    """
+    Write (replace) the list of feature items in a
+    machine's user-defined features fragment [${machine}=user-features.cfg].
+    """
+    f = open_user_file(scripts_path, machine, machine+"-user-features.scc", "w")
+    for item in features:
+        f.write("include " + item + "\n")
+    f.close()
+
+    kernel_contents_changed(scripts_path, machine)
+
+
+def yocto_kernel_feature_list(scripts_path, machine):
+    """
+    Display the list of features used in a machine's user-defined
+    features fragment [${machine}-user-features.scc].
+    """
+    features = read_features(scripts_path, machine)
+
+    print "The current set of machine-specific features for %s is:" % machine
+    print gen_choices_str(features)
+
+
+def yocto_kernel_feature_rm(scripts_path, machine):
+    """
+    Display the list of features used in a machine's user-defined
+    features fragment [${machine}-user-features.scc], prompt the user
+    for one or more to remove, and remove them.
+    """
+    features = read_features(scripts_path, machine)
+
+    print "Specify the features to remove:"
+    input = raw_input(gen_choices_str(features))
+    rm_choices = input.split()
+    rm_choices.sort()
+
+    removed = []
+
+    for choice in reversed(rm_choices):
+        try:
+            idx = int(choice) - 1
+        except ValueError:
+            print "Invalid choice (%s), exiting" % choice
+            sys.exit(1)
+        if idx < 0 or idx >= len(features):
+            print "Invalid choice (%d), exiting" % (idx + 1)
+            sys.exit(1)
+        removed.append(features.pop(idx))
+
+    write_features(scripts_path, machine, features)
+
+    print "Removed features:"
+    for r in removed:
+        print "\t%s" % r
+
+
+def yocto_kernel_feature_add(scripts_path, machine, features):
+    """
+    Add one or more features a machine's user-defined features
+    fragment [${machine}-user-features.scc].
+    """
+    new_items = []
+
+    for item in features:
+        if not item.endswith(".scc"):
+            print "Invalid feature (%s), exiting" % item
+            sys.exit(1)
+        new_items.append(item)
+
+    cur_items = read_features(scripts_path, machine)
+    cur_items.extend(new_items)
+
+    write_features(scripts_path, machine, cur_items)
+
+    print "Added features:"
+    for n in new_items:
+        print "\t%s" % n
+
     
 def base_branches(context):
     """
diff --git a/scripts/yocto-kernel b/scripts/yocto-kernel
index 2e1789b..72b4071 100755
--- a/scripts/yocto-kernel
+++ b/scripts/yocto-kernel
@@ -162,6 +162,65 @@ def yocto_kernel_patch_rm_subcommand(args, usage_str):
     yocto_kernel_patch_rm(scripts_path, args[0])
 
 
+def yocto_kernel_feature_list_subcommand(args, usage_str):
+    """
+    Command-line handling for listing the BSP features that are being
+    used by the BSP.  The real work is done by
+    bsp.kernel.yocto_kernel_feature_list().
+    """
+    logging.debug("yocto_kernel_feature_list_subcommand")
+
+    parser = optparse.OptionParser(usage = usage_str)
+
+    (options, args) = parser.parse_args(args)
+
+    if len(args) != 1:
+        logging.error("Wrong number of arguments, exiting\n")
+        parser.print_help()
+        sys.exit(1)
+
+    yocto_kernel_feature_list(scripts_path, args[0])
+
+
+def yocto_kernel_feature_add_subcommand(args, usage_str):
+    """
+    Command-line handling for adding the use of kernel features to a
+    BSP.  The real work is done by bsp.kernel.yocto_kernel_feature_add().
+    """
+    logging.debug("yocto_kernel_feature_add_subcommand")
+
+    parser = optparse.OptionParser(usage = usage_str)
+
+    (options, args) = parser.parse_args(args)
+
+    if len(args) < 2:
+        logging.error("Wrong number of arguments, exiting\n")
+        parser.print_help()
+        sys.exit(1)
+
+    machine = args.pop(0)
+    yocto_kernel_feature_add(scripts_path, machine, args)
+
+
+def yocto_kernel_feature_rm_subcommand(args, usage_str):
+    """
+    Command-line handling for removing the use of kernel features from
+    a BSP.  The real work is done by bsp.kernel.yocto_kernel_feature_rm().
+    """
+    logging.debug("yocto_kernel_feature_rm_subcommand")
+
+    parser = optparse.OptionParser(usage = usage_str)
+
+    (options, args) = parser.parse_args(args)
+
+    if len(args) != 1:
+        logging.error("Wrong number of arguments, exiting\n")
+        parser.print_help()
+        sys.exit(1)
+
+    yocto_kernel_feature_rm(scripts_path, args[0])
+
+
 subcommands = {
     "config-list": [yocto_kernel_config_list_subcommand,
                     yocto_kernel_config_list_usage,
@@ -181,6 +240,15 @@ subcommands = {
     "patch-rm": [yocto_kernel_patch_rm_subcommand,
                  yocto_kernel_patch_rm_usage,
                  yocto_kernel_patch_rm_help],
+    "feature-list": [yocto_kernel_feature_list_subcommand,
+                   yocto_kernel_feature_list_usage,
+                   yocto_kernel_feature_list_help],
+    "feature-add": [yocto_kernel_feature_add_subcommand,
+                  yocto_kernel_feature_add_usage,
+                  yocto_kernel_feature_add_help],
+    "feature-rm": [yocto_kernel_feature_rm_subcommand,
+                 yocto_kernel_feature_rm_usage,
+                 yocto_kernel_feature_rm_help],
 }
 
 
@@ -212,7 +280,8 @@ def main():
         else:
             sc = 0
 
-        if args[sc] == "config" or args[sc] == "patch":
+        if args[sc] == "config" or args[sc] == "patch" or \
+                args[sc] == "feature":
             if len(args) < 2 + sc:
                 parser.print_help()
                 sys.exit(1)
-- 
1.7.11.4


