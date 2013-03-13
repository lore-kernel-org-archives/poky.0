Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3D34E01481
	for <poky@yoctoproject.org>; Wed, 13 Mar 2013 12:04:35 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 13 Mar 2013 12:04:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,838,1355126400"; d="scan'208";a="270122608"
Received: from unknown (HELO localhost) ([10.255.12.139])
	by azsmga001.ch.intel.com with ESMTP; 13 Mar 2013 12:04:32 -0700
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Wed, 13 Mar 2013 14:04:09 -0500
Message-Id: <1a12ea5f6cbef51759018ccdb4ef03efa39e7ab8.1363198817.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
References: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1363198817.git.tom.zanussi@linux.intel.com>
References: <cover.1363198817.git.tom.zanussi@linux.intel.com>
Subject: [PATCH 15/18] yocto-kernel: add support for printing kernel feature descriptions
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
X-List-Received-Date: Wed, 13 Mar 2013 19:04:36 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a yocto-kernel command allowing users to print the description and
compatibility of a given kernel feature.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/help.py   | 29 +++++++++++++++++++++++++++
 scripts/lib/bsp/kernel.py | 50 +++++++++++++++++++++++++++++++++++++++++++++++
 scripts/yocto-kernel      | 26 ++++++++++++++++++++++++
 3 files changed, 105 insertions(+)

diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
index 9ba6a93..91de600 100644
--- a/scripts/lib/bsp/help.py
+++ b/scripts/lib/bsp/help.py
@@ -387,6 +387,7 @@ yocto_kernel_usage = """
    feature add       Have a BSP use a feature
    feature rm        Have a BSP stop using a feature
    features list     List the features available to BSPs
+   feature describe  Describe a particular feature
 
  See 'yocto-kernel help COMMAND' for more information on a specific command.
 
@@ -723,6 +724,34 @@ DESCRIPTION
 """
 
 
+yocto_kernel_feature_describe_usage = """
+
+ Print the description and compatibility information for a given kernel feature
+
+ usage: yocto-kernel feature describe <bsp-name> [/xxxx/yyyy/feature.scc ...]
+
+ This command prints the description and compatibility of a specific
+ feature in the format 'description [compatibility].
+"""
+
+
+yocto_kernel_feature_describe_help = """
+
+NAME
+    yocto-kernel feature describe - print the description and
+    compatibility information for a given kernel feature
+
+SYNOPSIS
+    yocto-kernel feature describe <bsp-name> [/xxxx/yyyy/feature.scc ...]
+
+DESCRIPTION
+    This command prints the description and compatibility of a
+    specific feature in the format 'description [compatibility].  If
+    the feature doesn't define a description or compatibility, a
+    string with generic unknown values will be printed.
+"""
+
+
 ##
 # yocto-layer help and usage strings
 ##
diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index 0308600..ac0b074 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -758,6 +758,56 @@ def yocto_kernel_available_features_list(scripts_path, machine):
     print_feature_descs(layer, "features")
 
 
+def find_feature_desc_url(git_url, feature):
+    """
+    Find the url of the kernel feature in the kernel repo specified
+    from the BSP's kernel recipe SRC_URI.
+    """
+    feature_desc_url = ""
+    if git_url.startswith("git://"):
+        git_url = git_url[len("git://"):].strip()
+        s = git_url.split("/")
+        if s[1].endswith(".git"):
+            s[1] = s[1][:len(s[1]) - len(".git")]
+        feature_desc_url = "http://" + s[0] + "/cgit/cgit.cgi/" + s[1] + \
+            "/plain/meta/cfg/kernel-cache/" + feature + "?h=meta"
+
+    return feature_desc_url
+
+
+def get_feature_desc(git_url, feature):
+    """
+    Return a feature description of the form 'description [compatibility]
+    BSPs, as gathered from the set of feature sources.
+    """
+    feature_desc_url = find_feature_desc_url(git_url, feature)
+    feature_desc_cmd = "wget -q -O - " + feature_desc_url
+    tmp = subprocess.Popen(feature_desc_cmd, shell=True, stdout=subprocess.PIPE).stdout.read()
+
+    return find_feature_desc(tmp.split("\n"))
+
+
+def yocto_kernel_feature_describe(scripts_path, machine, feature):
+    """
+    Display the description of a specific kernel feature available for
+    use in a BSP.
+    """
+    layer = find_bsp_layer(scripts_path, machine)
+
+    kernel = find_current_kernel(layer, machine)
+    if not kernel:
+        print "Couldn't determine the kernel for this BSP, exiting."
+        sys.exit(1)
+
+    context = create_context(machine, "arch", scripts_path)
+    context["name"] = "name"
+    context["filename"] = kernel
+    giturl = find_giturl(context)
+
+    desc = get_feature_desc(giturl, feature)
+
+    print desc
+
     
 def base_branches(context):
     """
diff --git a/scripts/yocto-kernel b/scripts/yocto-kernel
index a66a727..1f6ed67 100755
--- a/scripts/yocto-kernel
+++ b/scripts/yocto-kernel
@@ -243,6 +243,29 @@ def yocto_kernel_available_features_list_subcommand(args, usage_str):
     yocto_kernel_available_features_list(scripts_path, args[0])
 
 
+def yocto_kernel_feature_describe_subcommand(args, usage_str):
+    """
+    Command-line handling for listing the description of a specific
+    kernel feature available for use in a BSP.  This includes the
+    features present in the meta branch(es) of the pointed-to repo(s)
+    as well as the local features added in recipe-space to the current
+    BSP as well.  The real work is done by
+    bsp.kernel.yocto_kernel_feature_describe().
+    """
+    logging.debug("yocto_kernel_feature_describe_subcommand")
+
+    parser = optparse.OptionParser(usage = usage_str)
+
+    (options, args) = parser.parse_args(args)
+
+    if len(args) != 2:
+        logging.error("Wrong number of arguments, exiting\n")
+        parser.print_help()
+        sys.exit(1)
+
+    yocto_kernel_feature_describe(scripts_path, args[0], args[1])
+
+
 subcommands = {
     "config-list": [yocto_kernel_config_list_subcommand,
                     yocto_kernel_config_list_usage,
@@ -274,6 +297,9 @@ subcommands = {
     "features-list": [yocto_kernel_available_features_list_subcommand,
                  yocto_kernel_available_features_list_usage,
                  yocto_kernel_available_features_list_help],
+    "feature-describe": [yocto_kernel_feature_describe_subcommand,
+                 yocto_kernel_feature_describe_usage,
+                 yocto_kernel_feature_describe_help],
 }
 
 
-- 
1.7.11.4


