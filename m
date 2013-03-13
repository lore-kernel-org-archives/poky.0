Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 656E3E01489
	for <poky@yoctoproject.org>; Wed, 13 Mar 2013 12:04:41 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 13 Mar 2013 12:04:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,838,1355126400"; d="scan'208";a="214167894"
Received: from unknown (HELO localhost) ([10.255.12.139])
	by AZSMGA002.ch.intel.com with ESMTP; 13 Mar 2013 12:04:40 -0700
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Wed, 13 Mar 2013 14:04:11 -0500
Message-Id: <05c8d8cf69874d36a5b4f0f755afd252424dc9d8.1363198817.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
References: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1363198817.git.tom.zanussi@linux.intel.com>
References: <cover.1363198817.git.tom.zanussi@linux.intel.com>
Subject: [PATCH 17/18] yocto-kernel: add support for destroying recipe-space kernel features
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

Add a yocto-kernel command allowing users to destroy a recipe-space
kernel feature local to a particular BSP.  The removed feature is
subsequently no longer available for the normal feature addition and
removal yocto-kernel commands.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/help.py   | 31 +++++++++++++++++++
 scripts/lib/bsp/kernel.py | 79 +++++++++++++++++++++++++++++++++++++++++++++++
 scripts/yocto-kernel      | 23 ++++++++++++++
 3 files changed, 133 insertions(+)

diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
index d7c0360..427b5a0 100644
--- a/scripts/lib/bsp/help.py
+++ b/scripts/lib/bsp/help.py
@@ -389,6 +389,7 @@ yocto_kernel_usage = """
    features list     List the features available to BSPs
    feature describe  Describe a particular feature
    feature create    Create a new BSP-local feature
+   feature destroy   Remove a BSP-local feature
 
  See 'yocto-kernel help COMMAND' for more information on a specific command.
 
@@ -788,6 +789,36 @@ DESCRIPTION
     (which for the time being can be one of: 'all' or 'board').
 """
 
+
+yocto_kernel_feature_destroy_usage = """
+
+ Destroy a recipe-space kernel feature in a BSP
+
+ usage: yocto-kernel feature destroy <bsp-name> feature.scc
+
+ This command destroys a kernel feature defined in the specified BSP's
+ recipe-space kernel definition.
+"""
+
+
+yocto_kernel_feature_destroy_help = """
+
+NAME
+    yocto-kernel feature destroy <bsp-name> feature.scc - destroy a
+    recipe-space kernel feature in a BSP
+
+SYNOPSIS
+    yocto-kernel feature destroy <bsp-name> feature.scc
+
+DESCRIPTION
+    This command destroys a kernel feature defined in the specified
+    BSP's recipe-space kernel definition.  The named feature must end
+    with .scc and must not contain a feature directory to contain the
+    feature (this will be determined automatically).  If the kernel
+    feature is in use by a BSP, it can't be removed until the BSP
+    stops using it (see yocto-kernel feature rm to stop using it).
+"""
+
 ##
 # yocto-layer help and usage strings
 ##
diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index ac6861e..fc1e6bd 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -910,6 +910,85 @@ def yocto_kernel_feature_create(scripts_path, machine, feature_items):
     print "\t%s" % feature_dirname + "/" + feature
 
 
+def feature_in_use(scripts_path, machine, feature):
+    """
+    Determine whether the specified feature is in use by the BSP.
+    Return True if so, False otherwise.
+    """
+    features = read_features(scripts_path, machine)
+    for f in features:
+        if f == feature:
+            return True
+    return False
+
+
+def feature_remove(scripts_path, machine, feature):
+    """
+    Remove the specified feature from the available recipe-space
+    features defined for the BSP.
+    """
+    features = read_features(scripts_path, machine)
+    new_features = []
+    for f in features:
+        if f == feature:
+            continue
+        new_features.append(f)
+    write_features(scripts_path, machine, new_features)
+
+
+def yocto_kernel_feature_destroy(scripts_path, machine, feature):
+    """
+    Remove a recipe-space kernel feature from a BSP.
+    """
+    if not check_feature_name(feature):
+        sys.exit(1)
+
+    if feature_in_use(scripts_path, machine, "features/" + feature) or \
+            feature_in_use(scripts_path, machine, "cfg/" + feature):
+        print "Feature %s is in use (use 'feature rm' to un-use it first), exiting" % feature
+        sys.exit(1)
+
+    filesdir = find_filesdir(scripts_path, machine)
+    if not filesdir:
+        print "Couldn't destroy feature (%s), no 'files' dir found" % feature
+        sys.exit(1)
+
+    feature_dirname = "features"
+    featdir = os.path.join(filesdir, feature_dirname)
+    if not os.path.exists(featdir):
+        print "Couldn't find feature directory (%s)" % feature_dirname
+        sys.exit(1)
+
+    feature_fqn = os.path.join(featdir, feature)
+    if not os.path.exists(feature_fqn):
+        feature_dirname = "cfg"
+        featdir = os.path.join(filesdir, feature_dirname)
+        if not os.path.exists(featdir):
+            print "Couldn't find feature directory (%s)" % feature_dirname
+            sys.exit(1)
+        feature_fqn = os.path.join(featdir, feature_filename)
+        if not os.path.exists(feature_fqn):
+            print "Couldn't find feature (%s)" % feature
+            sys.exit(1)
+
+    f = open(feature_fqn, "r")
+    lines = f.readlines()
+    for line in lines:
+        s = line.strip()
+        if s.startswith("patch ") or s.startswith("kconf "):
+            split_line = s.split()
+            filename = os.path.join(featdir, split_line[-1])
+            if os.path.exists(filename):
+                os.remove(filename)
+    f.close()
+    os.remove(feature_fqn)
+
+    feature_remove(scripts_path, machine, feature)
+
+    print "Removed feature:"
+    print "\t%s" % feature_dirname + "/" + feature
+
+
 def base_branches(context):
     """
     Return a list of the base branches found in the kernel git repo.
diff --git a/scripts/yocto-kernel b/scripts/yocto-kernel
index 69fe344..c9b2821 100755
--- a/scripts/yocto-kernel
+++ b/scripts/yocto-kernel
@@ -287,6 +287,26 @@ def yocto_kernel_feature_create_subcommand(args, usage_str):
     yocto_kernel_feature_create(scripts_path, machine, args)
 
 
+def yocto_kernel_feature_destroy_subcommand(args, usage_str):
+    """
+    Command-line handling for removing a recipe-space kernel feature
+    from a BSP.  The real work is done by
+    bsp.kernel.yocto_kernel_feature_destroy().
+    """
+    logging.debug("yocto_kernel_feature_destroy_subcommand")
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
+    yocto_kernel_feature_destroy(scripts_path, args[0], args[1])
+
+
 subcommands = {
     "config-list": [yocto_kernel_config_list_subcommand,
                     yocto_kernel_config_list_usage,
@@ -324,6 +344,9 @@ subcommands = {
     "feature-create": [yocto_kernel_feature_create_subcommand,
                  yocto_kernel_feature_create_usage,
                  yocto_kernel_feature_create_help],
+    "feature-destroy": [yocto_kernel_feature_destroy_subcommand,
+                 yocto_kernel_feature_destroy_usage,
+                 yocto_kernel_feature_destroy_help],
 }
 
 
-- 
1.7.11.4


