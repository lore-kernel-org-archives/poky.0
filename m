Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EC34E01487
	for <poky@yoctoproject.org>; Wed, 13 Mar 2013 12:04:41 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 13 Mar 2013 12:04:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,838,1355126400"; d="scan'208";a="302016493"
Received: from unknown (HELO localhost) ([10.255.12.139])
	by fmsmga001.fm.intel.com with ESMTP; 13 Mar 2013 12:04:38 -0700
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Wed, 13 Mar 2013 14:04:10 -0500
Message-Id: <29f4d7549392dfa46eaa1ee48a55e7715cbcaf47.1363198817.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
References: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1363198817.git.tom.zanussi@linux.intel.com>
References: <cover.1363198817.git.tom.zanussi@linux.intel.com>
Subject: [PATCH 16/18] yocto-kernel: add support for creating recipe-space kernel features
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
X-List-Received-Date: Wed, 13 Mar 2013 19:04:41 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a yocto-kernel command allowing users to create a recipe-space
kernel feature local to a particular BSP.  The new feature is
subsequently available for the normal feature addition and removal
yocto-kernel commands used with features defined in the meta branch of
linux-yocto kernel repos.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/help.py   |  36 ++++++++++++++++
 scripts/lib/bsp/kernel.py | 103 +++++++++++++++++++++++++++++++++++++++++++++-
 scripts/yocto-kernel      |  24 +++++++++++
 3 files changed, 162 insertions(+), 1 deletion(-)

diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
index 91de600..d7c0360 100644
--- a/scripts/lib/bsp/help.py
+++ b/scripts/lib/bsp/help.py
@@ -388,6 +388,7 @@ yocto_kernel_usage = """
    feature rm        Have a BSP stop using a feature
    features list     List the features available to BSPs
    feature describe  Describe a particular feature
+   feature create    Create a new BSP-local feature
 
  See 'yocto-kernel help COMMAND' for more information on a specific command.
 
@@ -752,6 +753,41 @@ DESCRIPTION
 """
 
 
+yocto_kernel_feature_create_usage = """
+
+ Create a recipe-space kernel feature in a BSP
+
+ usage: yocto-kernel feature create <bsp-name> newfeature.scc \
+        "Feature Description" capabilities [<CONFIG_XXX=x> ...] [<PATCH> ...]
+
+ This command creates a new kernel feature from the bare config
+ options and patches specified on the command-line.
+"""
+
+
+yocto_kernel_feature_create_help = """
+
+NAME
+    yocto-kernel feature create - create a recipe-space kernel feature
+    in a BSP
+
+SYNOPSIS
+    yocto-kernel feature create <bsp-name> newfeature.scc \
+        "Feature Description" capabilities [<CONFIG_XXX=x> ...] [<PATCH> ...]
+
+DESCRIPTION
+    This command creates a new kernel feature from the bare config
+    options and patches specified on the command-line.  The new
+    feature will be created in recipe-space, specifically in either
+    the kernel .bbappend's /files/cfg or /files/features subdirectory,
+    depending on whether or not the feature contains config items only
+    or config items along with patches.  The named feature must end
+    with .scc and must not contain a feature directory to contain the
+    feature (this will be determined automatically), and a feature
+    decription in double-quotes along with a capabilities string
+    (which for the time being can be one of: 'all' or 'board').
+"""
+
 ##
 # yocto-layer help and usage strings
 ##
diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index ac0b074..ac6861e 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -808,7 +808,108 @@ def yocto_kernel_feature_describe(scripts_path, machine, feature):
 
     print desc
 
-    
+
+def check_feature_name(feature_name):
+    """
+    Sanity-check the feature name for create/destroy.  Return False if not OK.
+    """
+    if not feature_name.endswith(".scc"):
+        print "Invalid feature name (must end with .scc) [%s], exiting" % feature_name
+        return False
+
+    if "/" in feature_name:
+        print "Invalid feature name (don't specify directory) [%s], exiting" % feature_name
+        return False
+
+    return True
+
+
+def check_create_input(feature_items):
+    """
+    Sanity-check the create input.  Return False if not OK.
+    """
+    if not check_feature_name(feature_items[0]):
+        return False
+
+    if feature_items[1].endswith(".patch") or feature_items[1].startswith("CONFIG_"):
+        print "Missing description and/or compatibilty [%s], exiting" % feature_items[1]
+        return False
+
+    if feature_items[2].endswith(".patch") or feature_items[2].startswith("CONFIG_"):
+        print "Missing description and/or compatibility [%s], exiting" % feature_items[1]
+        return False
+
+    return True
+
+
+def yocto_kernel_feature_create(scripts_path, machine, feature_items):
+    """
+    Create a recipe-space kernel feature in a BSP.
+    """
+    if not check_create_input(feature_items):
+        sys.exit(1)
+
+    feature = feature_items[0]
+    feature_basename = feature.split(".")[0]
+    feature_description = feature_items[1]
+    feature_compat = feature_items[2]
+
+    patches = []
+    cfg_items = []
+
+    for item in feature_items[3:]:
+        if item.endswith(".patch"):
+            patches.append(item)
+        elif item.startswith("CONFIG"):
+            if ("=y" in item or "=m" in item):
+                cfg_items.append(item)
+        else:
+            print "Invalid feature item (must be .patch or CONFIG_*) [%s], exiting" % item
+            sys.exit(1)
+
+    feature_dirname = "cfg"
+    if patches:
+        feature_dirname = "features"
+
+    filesdir = find_filesdir(scripts_path, machine)
+    if not filesdir:
+        print "Couldn't add feature (%s), no 'files' dir found" % feature
+        sys.exit(1)
+
+    featdir = os.path.join(filesdir, feature_dirname)
+    if not os.path.exists(featdir):
+        os.mkdir(featdir)
+
+    for patch in patches:
+        if not os.path.isfile(patch):
+            print "Couldn't find patch (%s), exiting" % patch
+            sys.exit(1)
+        basename = os.path.basename(patch)
+        featdir_patch = os.path.join(featdir, basename)
+        shutil.copyfile(patch, featdir_patch)
+
+    new_cfg_filename = os.path.join(featdir, feature_basename + ".cfg")
+    new_cfg_file = open(new_cfg_filename, "w")
+    for cfg_item in cfg_items:
+        new_cfg_file.write(cfg_item + "\n")
+    new_cfg_file.close()
+
+    new_feature_filename = os.path.join(featdir, feature_basename + ".scc")
+    new_feature_file = open(new_feature_filename, "w")
+    new_feature_file.write("define KFEATURE_DESCRIPTION \"" + feature_description + "\"\n")
+    new_feature_file.write("define KFEATURE_COMPATIBILITY " + feature_compat + "\n\n")
+
+    for patch in patches:
+        patch_dir, patch_file = os.path.split(patch)
+        new_feature_file.write("patch " + patch_file + "\n")
+
+    new_feature_file.write("kconf non-hardware " + feature_basename + ".cfg\n")
+    new_feature_file.close()
+
+    print "Added feature:"
+    print "\t%s" % feature_dirname + "/" + feature
+
+
 def base_branches(context):
     """
     Return a list of the base branches found in the kernel git repo.
diff --git a/scripts/yocto-kernel b/scripts/yocto-kernel
index 1f6ed67..69fe344 100755
--- a/scripts/yocto-kernel
+++ b/scripts/yocto-kernel
@@ -266,6 +266,27 @@ def yocto_kernel_feature_describe_subcommand(args, usage_str):
     yocto_kernel_feature_describe(scripts_path, args[0], args[1])
 
 
+def yocto_kernel_feature_create_subcommand(args, usage_str):
+    """
+    Command-line handling for creating a recipe-space kernel feature
+    in a BSP.  The real work is done by
+    bsp.kernel.yocto_kernel_feature_create().
+    """
+    logging.debug("yocto_kernel_feature_create_subcommand")
+
+    parser = optparse.OptionParser(usage = usage_str)
+
+    (options, args) = parser.parse_args(args)
+
+    if len(args) < 4:
+        logging.error("Wrong number of arguments, exiting\n")
+        parser.print_help()
+        sys.exit(1)
+
+    machine = args.pop(0)
+    yocto_kernel_feature_create(scripts_path, machine, args)
+
+
 subcommands = {
     "config-list": [yocto_kernel_config_list_subcommand,
                     yocto_kernel_config_list_usage,
@@ -300,6 +321,9 @@ subcommands = {
     "feature-describe": [yocto_kernel_feature_describe_subcommand,
                  yocto_kernel_feature_describe_usage,
                  yocto_kernel_feature_describe_help],
+    "feature-create": [yocto_kernel_feature_create_subcommand,
+                 yocto_kernel_feature_create_usage,
+                 yocto_kernel_feature_create_help],
 }
 
 
-- 
1.7.11.4


