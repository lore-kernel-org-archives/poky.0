Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33F23E0143A
	for <poky@yoctoproject.org>; Wed, 12 Dec 2012 20:56:53 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Dec 2012 20:56:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,272,1355126400"; d="scan'208";a="261474673"
Received: from unknown (HELO localhost) ([10.255.13.197])
	by fmsmga001.fm.intel.com with ESMTP; 12 Dec 2012 20:56:52 -0800
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Wed, 12 Dec 2012 22:56:36 -0600
Message-Id: <51a557bcabe8cdf707cafbeee50b943962ccf7b7.1355373343.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <8884beae4cbc9a06d5bd8876c64fed93fe6eb546.1355373343.git.tom.zanussi@intel.com>
References: <8884beae4cbc9a06d5bd8876c64fed93fe6eb546.1355373343.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1355373343.git.tom.zanussi@intel.com>
References: <cover.1355373343.git.tom.zanussi@intel.com>
Subject: [PATCH 07/12] yocto-kernel: create open_user_file() wrapper function
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
X-List-Received-Date: Thu, 13 Dec 2012 04:56:53 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

With the addition of custom kernels, we can no longer rely on a
hard-coded /files directory for BSPs - we need to be able to find the
user_config/patches files in a number of different directories.

We now hide the search inside a new open_user_file() function that
accomplishes the same thing as before but with a more flexible scope.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/kernel.py | 45 ++++++++++++++++++++++++++++-----------------
 1 file changed, 28 insertions(+), 17 deletions(-)

diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index a953372..0b7e69b 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -133,6 +133,30 @@ def gen_choices_str(choices):
     return choices_str
 
 
+def open_user_file(scripts_path, machine, userfile, mode):
+    """
+    Find one of the user files (user-config.cfg, user-patches.scc)
+    associated with the machine (could be in files/,
+    linux-yocto-custom/, etc).  Returns the open file if found, None
+    otherwise.
+
+    The caller is responsible for closing the file returned.
+    """
+    layer = find_bsp_layer(scripts_path, machine)
+    linuxdir = os.path.join(layer, "recipes-kernel/linux")
+    linuxdir_list = os.listdir(linuxdir)
+    for fileobj in linuxdir_list:
+        fileobj_path = os.path.join(linuxdir, fileobj)
+        if os.path.isdir(fileobj_path):
+            userfile_name = os.path.join(fileobj_path, userfile)
+            try:
+                f = open(userfile_name, mode)
+                return f
+            except IOError:
+                continue
+    return None
+
+
 def read_config_items(scripts_path, machine):
     """
     Find and return a list of config items (CONFIG_XXX) in a machine's
@@ -140,10 +164,7 @@ def read_config_items(scripts_path, machine):
     """
     config_items = []
 
-    layer = find_bsp_layer(scripts_path, machine)
-    cfg = os.path.join(layer, "recipes-kernel/linux/files/user-config.cfg")
-
-    f = open(cfg, "r")
+    f = open_user_file(scripts_path, machine, "user-config.cfg", "r")
     lines = f.readlines()
     for line in lines:
         s = line.strip()
@@ -159,10 +180,7 @@ def write_config_items(scripts_path, machine, config_items):
     Write (replace) the list of config items (CONFIG_XXX) in a
     machine's user-defined config fragment [user-config.cfg].
     """
-    layer = find_bsp_layer(scripts_path, machine)
-    cfg = os.path.join(layer, "recipes-kernel/linux/files/user-config.cfg")
-
-    f = open(cfg, "w")
+    f = open_user_file(scripts_path, machine, "user-config.cfg", "w")
     for item in config_items:
         f.write(item + "\n")
     f.close()
@@ -377,10 +395,7 @@ def read_patch_items(scripts_path, machine):
     """
     patch_items = []
 
-    layer = find_bsp_layer(scripts_path, machine)
-    patches = os.path.join(layer, "recipes-kernel/linux/files/user-patches.scc")
-
-    f = open(patches, "r")
+    f = open_user_file(scripts_path, machine, "user-patches.scc", "r")
     lines = f.readlines()
     for line in lines:
         s = line.strip()
@@ -399,11 +414,7 @@ def write_patch_items(scripts_path, machine, patch_items):
     Write (replace) the list of patches in a machine's user-defined
     patch list [user-patches.scc].
     """
-    layer = find_bsp_layer(scripts_path, machine)
-
-    patches = os.path.join(layer, "recipes-kernel/linux/files/user-patches.scc")
-
-    f = open(patches, "w")
+    f = open_user_file(scripts_path, machine, "user-patches.scc", "w")
     for item in patch_items:
         pass
         # this currently breaks do_patch, but is really what we want
-- 
1.7.11.4


