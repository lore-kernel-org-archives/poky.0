Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B76CE01498
	for <poky@yoctoproject.org>; Mon,  2 Jul 2012 15:14:42 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 02 Jul 2012 15:14:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="172691819"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.11])
	by fmsmga001.fm.intel.com with ESMTP; 02 Jul 2012 15:14:41 -0700
From: Dongxiao Xu <dongxiao.xu@intel.com>
To: poky@yoctoproject.org
Date: Tue,  3 Jul 2012 06:09:22 +0800
Message-Id: <143f3d11aa26ce16aa8d31a0cdfa063ae5a608e4.1341266885.git.dongxiao.xu@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1341266885.git.dongxiao.xu@intel.com>
References: <cover.1341266885.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1341266885.git.dongxiao.xu@intel.com>
References: <cover.1341266885.git.dongxiao.xu@intel.com>
Subject: [PATCH 1/1] scripts/multilib-check: Check for multilib build results
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 02 Jul 2012 22:14:42 -0000

This script is used to check whether the multilib build for a certain
recipe outcomes the right files/directories.

The usage for the script is:

$ source oe-init-build-env
$ multilib-check recipeA recipeB ...

or

$ source oe-init-build-env
$ multilib-check world

This fixes [YOCTO #2038]

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 scripts/multilib-check |  117 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 117 insertions(+), 0 deletions(-)
 create mode 100755 scripts/multilib-check

diff --git a/scripts/multilib-check b/scripts/multilib-check
new file mode 100755
index 0000000..69a5dd3
--- /dev/null
+++ b/scripts/multilib-check
@@ -0,0 +1,117 @@
+#!/usr/bin/env python
+
+import os
+import os.path
+import sys
+
+# AAA: BBB
+# AAA is the multilib prefix, BBB is its DEFAULTTUNE.
+multilib_arch_tune = {"lib32": "x86", "lib64": "x86-64"}
+
+# The machine we now support is x86 and x86-64.
+machine = "qemux86"
+
+def usage():
+    print("Usage: multilib-check recipe_name1 recipe_name2 ... \n \
+           or multilib-check world")
+
+def generate_multilib_config():
+    os.system("cp -f conf/local.conf conf/local.conf.orig")
+    f = open("conf/local.conf", "a")
+    f.write('require conf/multilib.conf\n')
+    multilibs = ""
+    for i in multilib_arch_tune.keys():
+        f.write('DEFAULTTUNE_virtclass-multilib-%s="%s"\n' % (i, multilib_arch_tune[i]))
+        multilibs += "multilib:%s " % i
+    f.write('MULTILIBS="%s"\n' % multilibs.strip())
+    f.close()
+    
+def restore_original_config():
+    os.system("mv -f conf/local.conf.orig conf/local.conf")
+
+def build_recipe(mach, recipe_name):
+    print("INFO: Building %s ..." % recipe_name)
+    return os.system("MACHINE=%s bitbake %s &> /dev/null" % (mach, recipe_name))
+
+def get_variable(mach, recipe_name, variable):
+    return os.popen('bitbake -e %s | grep "^%s="' % (recipe_name, variable)).readline().split("%s=" % variable)[1].strip("\"\n")
+
+# Check if dir2 contains the same set of files as in dir1.
+def compare_folders(dir1, dir2):
+    if not os.path.exists(dir1):
+        return
+    for i in os.listdir(dir1):
+        path_normal = os.path.join(dir1, i)
+        path_multilib = os.path.join(dir2, i)
+
+        if not os.path.exists(path_multilib):
+            print("ERROR: %s exists while %s doesn't" % (path_normal, path_multilib))
+            continue
+
+        if os.path.isdir(path_normal):
+            if not os.path.isdir(path_multilib):
+                print("ERROR: %s is a directory while %s is a file" % (path_normal, path_multilib))
+                continue
+            compare_folders(path_normal, path_multilib)
+        else:
+            if not os.path.isfile(path_multilib):
+                print("ERROR: %s is a file while %s is a directory" % (path_normal, path_multilib))
+
+def multilib_sanity_check(rootdir_normal, baselib_normal, rootdir_multilib, baselib_multilib):
+    compare_folders(rootdir_normal+"/usr/"+baselib_normal, rootdir_multilib+"/usr/"+baselib_multilib)
+    compare_folders(rootdir_normal+"/"+baselib_normal, rootdir_multilib+"/"+baselib_multilib)
+
+# Use bitbake -s to get the recipe list, for example "world"
+def get_recipe_list(name):
+    begin = False
+    recipe_list = []
+    fd = os.popen('bitbake -s %s' % name)
+    for i in fd:
+        if i.startswith("============"):
+            begin = True
+            continue
+        if begin and i.strip("\n"):
+            recipe_name = i.split()[0].strip()
+            if "native" in recipe_name:
+                continue
+            else:
+                recipe_list.append(recipe_name)
+
+    return recipe_list
+
+def main():
+    if len(sys.argv) <= 1:
+        usage()
+        exit(1)
+    elif len(sys.argv) == 2 and sys.argv[1] == "world":
+        recipe_list = get_recipe_list("world")
+    else:
+        recipe_list = sys.argv[1:]
+
+    mach = machine
+    generate_multilib_config()
+    try:
+        for i in range(0, len(recipe_list)):
+            print("INFO: checking for recipe %s ..." % recipe_list[i])
+            ret = build_recipe(mach, recipe_list[i])
+            if ret:
+                print("ERROR: Build %s failed" % recipe_list[i])
+                continue
+            rootdir_normal = get_variable(mach, recipe_list[i], "WORKDIR") + "/image"
+            baselib_normal = get_variable(mach, recipe_list[i], "baselib")
+
+            for j in multilib_arch_tune.keys():
+                ret = build_recipe(mach, j + "-" + recipe_list[i])
+                if ret:
+                    print("ERROR: Build %s failed" % (j + "-" + recipe_list[i]))
+                    continue
+                rootdir_multilib = get_variable(mach, j + "-" + recipe_list[i], "WORKDIR") + "/image"
+                baselib_multilib = get_variable(mach, j + "-" + recipe_list[i], "baselib")
+
+                multilib_sanity_check(rootdir_normal, baselib_normal, rootdir_multilib, baselib_multilib)
+    except Exception as e:
+        print "ERROR: %s" % e
+    finally:
+        restore_original_config()
+
+main()
-- 
1.7.4.1


