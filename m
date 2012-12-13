Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49CBAE01453
	for <poky@yoctoproject.org>; Wed, 12 Dec 2012 20:56:59 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 12 Dec 2012 20:56:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,272,1355126400"; d="scan'208";a="263328202"
Received: from unknown (HELO localhost) ([10.255.13.197])
	by fmsmga002.fm.intel.com with ESMTP; 12 Dec 2012 20:56:58 -0800
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Wed, 12 Dec 2012 22:56:40 -0600
Message-Id: <43530e8fbe3a63454a67528fe22efec77c19367c.1355373343.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <8884beae4cbc9a06d5bd8876c64fed93fe6eb546.1355373343.git.tom.zanussi@intel.com>
References: <8884beae4cbc9a06d5bd8876c64fed93fe6eb546.1355373343.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1355373343.git.tom.zanussi@intel.com>
References: <cover.1355373343.git.tom.zanussi@intel.com>
Subject: [PATCH 11/12] yocto-bsp: remove patch-related SRC_URI processing
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
X-List-Received-Date: Thu, 13 Dec 2012 04:56:59 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

We no longer have to include patches in the SRC_URI, since things now
work using only patch in the .scc file, so remove anything to do with
maintaining patches in the SRC_URI and fix up all previous users of
that code.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/kernel.py | 227 +++++++---------------------------------------
 1 file changed, 34 insertions(+), 193 deletions(-)

diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index d2e4f40..883beac 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -199,18 +199,6 @@ def yocto_kernel_config_list(scripts_path, machine):
     print gen_choices_str(config_items)
 
 
-def map_choice(choice_str, array):
-    """
-    Match the text of a choice with a list of choices, returning the
-    index of the match, or -1 if not found.
-    """
-    for i, item in enumerate(array):
-        if choice_str == array[i]:
-            return i
-
-    return -1
-
-
 def yocto_kernel_config_rm(scripts_path, machine):
     """
     Display the list of config items (CONFIG_XXX) in a machine's
@@ -293,109 +281,24 @@ def find_current_kernel(bsp_layer, machine):
         return preferred_kernel
 
 
-def find_bsp_kernel_src_uri(scripts_path, machine, start_end_only = False):
+def find_filesdir(scripts_path, machine):
     """
-    Parse the SRC_URI append in the kernel .bb or .bbappend, returing
-    a list of individual components, and the start/end positions of
-    the SRC_URI statement, so it can be regenerated in the same
-    position.  If start_end_only is True, don't return the list of
-    elements, only the start and end positions.
-
-    Returns (SRC_URI start line, SRC_URI end_line, list of split
-    SRC_URI items).
-
-    If no SRC_URI, start line = -1.
-
-    NOTE: this and all the src_uri functions are temporary and
-    deprecated and will be removed, but are needed until the
-    equivalent .scc mechanism works.  i.e. for now we unfortunately
-    can't get around putting patches in the SRC_URI.
+    Find the name of the 'files' dir associated with the machine
+    (could be in files/, linux-yocto-custom/, etc).  Returns the name
+    of the files dir if found, None otherwise.
     """
     layer = find_bsp_layer(scripts_path, machine)
+    filesdir = None
+    linuxdir = os.path.join(layer, "recipes-kernel/linux")
+    linuxdir_list = os.listdir(linuxdir)
+    for fileobj in linuxdir_list:
+        fileobj_path = os.path.join(linuxdir, fileobj)
+        if os.path.isdir(fileobj_path):
+            # this could be files/ or linux-yocto-custom/, we have no way of distinguishing
+            # so we take the first (and normally only) dir we find as the 'filesdir'
+            filesdir = fileobj_path
 
-    kernel = find_current_kernel(layer, machine)
-    if not kernel:
-        print "Couldn't determine the kernel for this BSP, exiting."
-        sys.exit(1)
-
-    kernel_bbfile = os.path.join(layer, "recipes-kernel/linux/" + kernel + ".bbappend")
-    try:
-        f = open(kernel_bbfile, "r")
-    except IOError:
-        kernel_bbfile = os.path.join(layer, "recipes-kernel/linux/" + kernel + ".bb")
-        try:
-            f = open(kernel_bbfile, "r")
-        except IOError:
-            print "Couldn't find a .bb or .bbappend file for this BSP's kernel, exiting."
-            sys.exit(1)
-
-    src_uri_line = ""
-    in_src_uri = False
-    lines = f.readlines()
-    first_line = last_line = -1
-    quote_start = quote_end = -1
-    for n, line in enumerate(lines):
-        line = line.strip()
-        if line.startswith("SRC_URI"):
-            first_line = n
-            in_src_uri = True
-        if in_src_uri:
-            src_uri_line += line
-            if quote_start == -1:
-                idx = line.find("\"")
-                if idx != -1:
-                    quote_start = idx + 1
-            idx = line.find("\"", quote_start)
-            quote_start = 0 # set to 0 for all but first line
-            if idx != -1:
-                quote_end = idx
-                last_line = n
-                break
-
-    if first_line == -1: # no SRC_URI, which is fine too
-        return (-1, -1, None)
-    if quote_start == -1:
-        print "Bad kernel SRC_URI (missing opening quote), exiting."
-        sys.exit(1)
-    if quote_end == -1:
-        print "Bad SRC_URI (missing closing quote), exiting."
-        sys.exit(1)
-    if start_end_only:
-        return (first_line, last_line, None)
-
-    idx = src_uri_line.find("\"")
-    src_uri_line = src_uri_line[idx + 1:]
-    idx = src_uri_line.find("\"")
-    src_uri_line = src_uri_line[:idx]
-
-    src_uri = src_uri_line.split()
-    for i, item in enumerate(src_uri):
-        idx = item.find("\\")
-        if idx != -1:
-            src_uri[i] = item[idx + 1:]
-
-    if not src_uri[len(src_uri) - 1]:
-        src_uri.pop()
-
-    for i, item in enumerate(src_uri):
-        idx = item.find(SRC_URI_FILE)
-        if idx == -1:
-            print "Bad SRC_URI (invalid item, %s), exiting." % item
-            sys.exit(1)
-        src_uri[i] = item[idx + len(SRC_URI_FILE):]
-
-    return (first_line, last_line, src_uri)     
-
-
-def find_patches(src_uri):
-    """
-    Filter out the top-level patches from the SRC_URI.
-    """
-    patches = []
-    for item in src_uri:
-        if item.endswith(".patch") and "/" not in item:
-            patches.append(item)
-    return patches
+    return filesdir
 
 
 def read_patch_items(scripts_path, machine):
@@ -426,10 +329,7 @@ def write_patch_items(scripts_path, machine, patch_items):
     """
     f = open_user_file(scripts_path, machine, "user-patches.scc", "w")
     for item in patch_items:
-        pass
-        # this currently breaks do_patch, but is really what we want
-        # once this works, we can remove all the src_uri stuff
-        # f.write("patch " + item + "\n")
+        f.write("patch " + item + "\n")
     f.close()
 
     kernel_contents_changed(scripts_path, machine)
@@ -440,8 +340,7 @@ def yocto_kernel_patch_list(scripts_path, machine):
     Display the list of patches in a machine's user-defined patch list
     [user-patches.scc].
     """
-    (start_line, end_line, src_uri) = find_bsp_kernel_src_uri(scripts_path, machine)
-    patches = find_patches(src_uri)
+    patches = read_patch_items(scripts_path, machine)
 
     print "The current set of machine-specific patches for %s is:" % machine
     print gen_choices_str(patches)
@@ -452,8 +351,7 @@ def yocto_kernel_patch_rm(scripts_path, machine):
     Remove one or more patches from a machine's user-defined patch
     list [user-patches.scc].
     """
-    (start_line, end_line, src_uri) = find_bsp_kernel_src_uri(scripts_path, machine)
-    patches = find_patches(src_uri)
+    patches = read_patch_items(scripts_path, machine)
 
     print "Specify the patches to remove:"
     input = raw_input(gen_choices_str(patches))
@@ -462,8 +360,10 @@ def yocto_kernel_patch_rm(scripts_path, machine):
 
     removed = []
 
-    layer = find_bsp_layer(scripts_path, machine)
-    src_uri_dir = os.path.join(layer, "recipes-kernel/linux/files")
+    filesdir = find_filesdir(scripts_path, machine)
+    if not filesdir:
+        print "Couldn't rm patch(es) since we couldn't find a 'files' dir"
+        sys.exit(1)
 
     for choice in reversed(rm_choices):
         try:
@@ -474,14 +374,13 @@ def yocto_kernel_patch_rm(scripts_path, machine):
         if idx < 0 or idx >= len(patches):
             print "Invalid choice (%d), exiting" % (idx + 1)
             sys.exit(1)
-        src_uri_patch = os.path.join(src_uri_dir, patches[idx])
-        if os.path.isfile(src_uri_patch):
-            os.remove(src_uri_patch)
-        idx = map_choice(patches[idx], src_uri)
-        removed.append(src_uri.pop(idx))
+        filesdir_patch = os.path.join(filesdir, patches[idx])
+        if os.path.isfile(filesdir_patch):
+            os.remove(filesdir_patch)
+        removed.append(patches[idx])
+        patches.pop(idx)
 
     write_patch_items(scripts_path, machine, patches)
-    write_kernel_src_uri(scripts_path, machine, src_uri)
 
     print "Removed patches:"
     for r in removed:
@@ -493,16 +392,17 @@ def yocto_kernel_patch_add(scripts_path, machine, patches):
     Add one or more patches to a machine's user-defined patch list
     [user-patches.scc].
     """
-    (start_line, end_line, src_uri) = find_bsp_kernel_src_uri(scripts_path, machine)
-    src_uri_patches = find_patches(src_uri)
+    existing_patches = read_patch_items(scripts_path, machine)
 
     for patch in patches:
-        if os.path.basename(patch) in src_uri_patches:
+        if os.path.basename(patch) in existing_patches:
             print "Couldn't add patch (%s) since it's already been added" % os.path.basename(patch)
             sys.exit(1)
 
-    layer = find_bsp_layer(scripts_path, machine)
-    src_uri_dir = os.path.join(layer, "recipes-kernel/linux/files")
+    filesdir = find_filesdir(scripts_path, machine)
+    if not filesdir:
+        print "Couldn't add patch (%s) since we couldn't find a 'files' dir to add it to" % os.path.basename(patch)
+        sys.exit(1)
 
     new_patches = []
 
@@ -511,33 +411,19 @@ def yocto_kernel_patch_add(scripts_path, machine, patches):
             print "Couldn't find patch (%s), exiting" % patch
             sys.exit(1)
         basename = os.path.basename(patch)
-        src_uri_patch = os.path.join(src_uri_dir, basename)
-        shutil.copyfile(patch, src_uri_patch)
+        filesdir_patch = os.path.join(filesdir, basename)
+        shutil.copyfile(patch, filesdir_patch)
         new_patches.append(basename)
 
     cur_items = read_patch_items(scripts_path, machine)
     cur_items.extend(new_patches)
     write_patch_items(scripts_path, machine, cur_items)
 
-    (unused, unused, src_uri) = find_bsp_kernel_src_uri(scripts_path, machine)
-    src_uri.extend(new_patches)
-    write_kernel_src_uri(scripts_path, machine, src_uri)
-
     print "Added patches:"
     for n in new_patches:
         print "\t%s" % n
 
 
-def write_uri_lines(ofile, src_uri):
-    """
-    Write URI elements to output file ofile.
-    """
-    ofile.write("SRC_URI += \" \\\n")
-    for item in src_uri:
-        ofile.write("\t%s%s \\\n" % (SRC_URI_FILE, item))
-    ofile.write("\t\"\n")
-
-
 def inc_pr(line):
     """
     Add 1 to the PR value in the given bbappend PR line.  For the PR
@@ -588,51 +474,6 @@ def kernel_contents_changed(scripts_path, machine):
     ifile.close()
 
 
-def write_kernel_src_uri(scripts_path, machine, src_uri):
-    """
-    Write (replace) the SRC_URI append for a machine from a list
-    SRC_URI elements.
-    """
-    layer = find_bsp_layer(scripts_path, machine)
-
-    kernel = find_current_kernel(layer, machine)
-    if not kernel:
-        print "Couldn't determine the kernel for this BSP, exiting."
-        sys.exit(1)
-
-    kernel_bbfile = os.path.join(layer, "recipes-kernel/linux/" + kernel + ".bbappend")
-    if not os.path.isfile(kernel_bbfile):
-        kernel_bbfile = os.path.join(layer, "recipes-kernel/linux/" + kernel + ".bb")
-        if not os.path.isfile(kernel_bbfile):
-            print "Couldn't find a .bb or .bbappend file for this BSP's kernel, exiting."
-            sys.exit(1)
-
-    (uri_start_line, uri_end_line, unused) = find_bsp_kernel_src_uri(scripts_path, machine, True)
-
-    kernel_bbfile_prev = kernel_bbfile + ".prev"
-    shutil.copyfile(kernel_bbfile, kernel_bbfile_prev)
-    ifile = open(kernel_bbfile_prev, "r")
-    ofile = open(kernel_bbfile, "w")
-
-    ifile_lines = ifile.readlines()
-    if uri_start_line == -1:
-        uri_end_line = len(ifile_lines) # make sure we add at end
-    wrote_src_uri = False
-    for i, ifile_line in enumerate(ifile_lines):
-        if ifile_line.strip().startswith("PR"):
-            ifile_line = inc_pr(ifile_line)
-        if i < uri_start_line:
-            ofile.write(ifile_line)
-        elif i > uri_end_line:
-            ofile.write(ifile_line)
-        else:
-            if not wrote_src_uri:
-                write_uri_lines(ofile, src_uri)
-                wrote_src_uri = True
-    if uri_start_line == -1:
-        write_uri_lines(ofile, src_uri)
-
-
 def kernels(context):
     """
     Return the list of available kernels in the BSP i.e. corresponding
-- 
1.7.11.4


