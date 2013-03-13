Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B268E0147C
	for <poky@yoctoproject.org>; Wed, 13 Mar 2013 12:04:31 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 13 Mar 2013 12:04:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,838,1355126400"; d="scan'208";a="214167839"
Received: from unknown (HELO localhost) ([10.255.12.139])
	by AZSMGA002.ch.intel.com with ESMTP; 13 Mar 2013 12:04:30 -0700
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Wed, 13 Mar 2013 14:04:08 -0500
Message-Id: <80593d975327e9c35eed9e38d8514fdd4386299c.1363198817.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
References: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1363198817.git.tom.zanussi@linux.intel.com>
References: <cover.1363198817.git.tom.zanussi@linux.intel.com>
Subject: [PATCH 14/18] yocto-kernel: add support for listing available kernel features
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
X-List-Received-Date: Wed, 13 Mar 2013 19:04:32 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a yocto-kernel command allowing users to list all the kernel
features available to a BSP.  This includes the features contained in
linux-yocto meta branches as well as recipe-space features defined
locally to the BSP.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/help.py   |  31 ++++++++++++++
 scripts/lib/bsp/kernel.py | 107 ++++++++++++++++++++++++++++++++++++++++++++++
 scripts/yocto-kernel      |  27 +++++++++++-
 3 files changed, 164 insertions(+), 1 deletion(-)

diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
index 2d7b6fe..9ba6a93 100644
--- a/scripts/lib/bsp/help.py
+++ b/scripts/lib/bsp/help.py
@@ -386,6 +386,7 @@ yocto_kernel_usage = """
    feature list      List the features used by a BSP
    feature add       Have a BSP use a feature
    feature rm        Have a BSP stop using a feature
+   features list     List the features available to BSPs
 
  See 'yocto-kernel help COMMAND' for more information on a specific command.
 
@@ -692,6 +693,36 @@ DESCRIPTION
     remove.
 """
 
+
+yocto_kernel_available_features_list_usage = """
+
+ List the set of kernel features available to a BSP
+
+ usage: yocto-kernel features list <bsp-name>
+
+ This command lists the complete set of kernel features available to a
+ BSP.  This includes the features contained in linux-yocto meta
+ branches as well as recipe-space features defined locally to the BSP.
+"""
+
+
+yocto_kernel_available_features_list_help = """
+
+NAME
+    yocto-kernel features list - List the set of kernel features
+    available to a BSP
+
+SYNOPSIS
+    yocto-kernel features list <bsp-name>
+
+DESCRIPTION
+     This command lists the complete set of kernel features available
+     to a BSP.  This includes the features contained in linux-yocto
+     meta branches as well as recipe-space features defined locally to
+     the BSP.
+"""
+
+
 ##
 # yocto-layer help and usage strings
 ##
diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index 0fa228a..0308600 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -32,6 +32,7 @@ import shutil
 from tags import *
 import glob
 import subprocess
+from engine import create_context
 
 
 def find_bblayers(scripts_path):
@@ -651,6 +652,112 @@ def yocto_kernel_feature_add(scripts_path, machine, features):
     for n in new_items:
         print "\t%s" % n
 
+
+def find_feature_url(git_url):
+    """
+    Find the url of the kern-features.rc kernel for the kernel repo
+    specified from the BSP's kernel recipe SRC_URI.
+    """
+    feature_url = ""
+    if git_url.startswith("git://"):
+        git_url = git_url[len("git://"):].strip()
+        s = git_url.split("/")
+        if s[1].endswith(".git"):
+            s[1] = s[1][:len(s[1]) - len(".git")]
+        feature_url = "http://" + s[0] + "/cgit/cgit.cgi/" + s[1] + \
+            "/plain/meta/cfg/kern-features.rc?h=meta"
+
+    return feature_url
+
+
+def find_feature_desc(lines):
+    """
+    Find the feature description and compatibility in the passed-in
+    set of lines.  Returns a string string of the form 'desc
+    [compat]'.
+    """
+    desc = "no description available"
+    compat = "unknown"
+
+    for line in lines:
+        idx = line.find("KFEATURE_DESCRIPTION")
+        if idx != -1:
+            desc = line[idx + len("KFEATURE_DESCRIPTION"):].strip()
+            if desc.startswith("\""):
+                desc = desc[1:]
+                if desc.endswith("\""):
+                    desc = desc[:-1]
+        else:
+            idx = line.find("KFEATURE_COMPATIBILITY")
+            if idx != -1:
+                compat = line[idx + len("KFEATURE_COMPATIBILITY"):].strip()
+
+    return desc + " [" + compat + "]"
+
+
+def print_feature_descs(layer, feature_dir):
+    """
+    Print the feature descriptions for the features in feature_dir.
+    """
+    kernel_files_features = os.path.join(layer, "recipes-kernel/linux/files/" +
+                                         feature_dir)
+    for root, dirs, files in os.walk(kernel_files_features):
+        for file in files:
+            if file.endswith("~") or file.endswith("#"):
+                continue
+            if file.endswith(".scc"):
+                fullpath = os.path.join(layer, "recipes-kernel/linux/files/" +
+                                        feature_dir + "/" + file)
+                f = open(fullpath)
+                feature_desc = find_feature_desc(f.readlines())
+                print feature_dir + "/" + file + ": " + feature_desc
+
+
+def yocto_kernel_available_features_list(scripts_path, machine):
+    """
+    Display the list of all the kernel features available for use in
+    BSPs, as gathered from the set of feature sources.
+    """
+    layer = find_bsp_layer(scripts_path, machine)
+    kernel = find_current_kernel(layer, machine)
+    if not kernel:
+        print "Couldn't determine the kernel for this BSP, exiting."
+        sys.exit(1)
+
+    context = create_context(machine, "arch", scripts_path)
+    context["name"] = "name"
+    context["filename"] = kernel
+    giturl = find_giturl(context)
+    feature_url = find_feature_url(giturl)
+
+    feature_cmd = "wget -q -O - " + feature_url
+    tmp = subprocess.Popen(feature_cmd, shell=True, stdout=subprocess.PIPE).stdout.read()
+
+    print "The current set of kernel features available to %s is:\n" % machine
+
+    if tmp:
+        tmpline = tmp.split("\n")
+        in_kernel_options = False
+        for line in tmpline:
+            if not "=" in line:
+                if in_kernel_options:
+                    break
+                if "kernel-options" in line:
+                    in_kernel_options = True
+                continue
+            if in_kernel_options:
+                feature_def = line.split("=")
+                feature_type = feature_def[0].strip()
+                feature = feature_def[1].strip()
+                desc = get_feature_desc(giturl, feature)
+                print "%s: %s" % (feature, desc)
+
+    print "[local]"
+
+    print_feature_descs(layer, "cfg")
+    print_feature_descs(layer, "features")
+
+
     
 def base_branches(context):
     """
diff --git a/scripts/yocto-kernel b/scripts/yocto-kernel
index 72b4071..a66a727 100755
--- a/scripts/yocto-kernel
+++ b/scripts/yocto-kernel
@@ -221,6 +221,28 @@ def yocto_kernel_feature_rm_subcommand(args, usage_str):
     yocto_kernel_feature_rm(scripts_path, args[0])
 
 
+def yocto_kernel_available_features_list_subcommand(args, usage_str):
+    """
+    Command-line handling for listing all the kernel features
+    available for use in a BSP.  This includes the features present in
+    the meta branch(es) of the pointed-to repo(s) as well as the local
+    features added in recipe-space to the current BSP as well.  The
+    real work is done by bsp.kernel.yocto_kernel_available_features_list().
+    """
+    logging.debug("yocto_kernel_feature_available_features_list_subcommand")
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
+    yocto_kernel_available_features_list(scripts_path, args[0])
+
+
 subcommands = {
     "config-list": [yocto_kernel_config_list_subcommand,
                     yocto_kernel_config_list_usage,
@@ -249,6 +271,9 @@ subcommands = {
     "feature-rm": [yocto_kernel_feature_rm_subcommand,
                  yocto_kernel_feature_rm_usage,
                  yocto_kernel_feature_rm_help],
+    "features-list": [yocto_kernel_available_features_list_subcommand,
+                 yocto_kernel_available_features_list_usage,
+                 yocto_kernel_available_features_list_help],
 }
 
 
@@ -281,7 +306,7 @@ def main():
             sc = 0
 
         if args[sc] == "config" or args[sc] == "patch" or \
-                args[sc] == "feature":
+                args[sc] == "feature" or args[sc] == "features":
             if len(args) < 2 + sc:
                 parser.print_help()
                 sys.exit(1)
-- 
1.7.11.4


