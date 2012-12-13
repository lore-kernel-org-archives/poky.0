Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3DA7E01453
	for <poky@yoctoproject.org>; Wed, 12 Dec 2012 20:56:57 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 12 Dec 2012 20:56:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,272,1355126400"; d="scan'208";a="233209932"
Received: from unknown (HELO localhost) ([10.255.13.197])
	by orsmga001.jf.intel.com with ESMTP; 12 Dec 2012 20:56:56 -0800
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Wed, 12 Dec 2012 22:56:39 -0600
Message-Id: <5caf0546c55e6fa117a617752bdedb55804a93b9.1355373343.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <8884beae4cbc9a06d5bd8876c64fed93fe6eb546.1355373343.git.tom.zanussi@intel.com>
References: <8884beae4cbc9a06d5bd8876c64fed93fe6eb546.1355373343.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1355373343.git.tom.zanussi@intel.com>
References: <cover.1355373343.git.tom.zanussi@intel.com>
Subject: [PATCH 10/12] yocto-kernel: handle SRC_URIs in .bb files
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
X-List-Received-Date: Thu, 13 Dec 2012 04:56:57 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Previously we assumed we were always dealing with .bbappends.  With
custom kernels, we now have SRC_URIs in .bb files, so add .bb files to
the list of file types we examine and modify.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/kernel.py | 51 +++++++++++++++++++++++++++++++----------------
 1 file changed, 34 insertions(+), 17 deletions(-)

diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index f2ec9fd..d2e4f40 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -295,11 +295,11 @@ def find_current_kernel(bsp_layer, machine):
 
 def find_bsp_kernel_src_uri(scripts_path, machine, start_end_only = False):
     """
-    Parse the SRC_URI append in the kernel .bbappend, returing a list
-    of individual components, and the start/end positions of the
-    SRC_URI statement, so it can be regenerated in the same position.
-    If start_end_only is True, don't return the list of elements, only
-    the start and end positions.
+    Parse the SRC_URI append in the kernel .bb or .bbappend, returing
+    a list of individual components, and the start/end positions of
+    the SRC_URI statement, so it can be regenerated in the same
+    position.  If start_end_only is True, don't return the list of
+    elements, only the start and end positions.
 
     Returns (SRC_URI start line, SRC_URI end_line, list of split
     SRC_URI items).
@@ -318,9 +318,17 @@ def find_bsp_kernel_src_uri(scripts_path, machine, start_end_only = False):
         print "Couldn't determine the kernel for this BSP, exiting."
         sys.exit(1)
 
-    kernel_bbappend = os.path.join(layer, "recipes-kernel/linux/" + kernel + ".bbappend")
+    kernel_bbfile = os.path.join(layer, "recipes-kernel/linux/" + kernel + ".bbappend")
+    try:
+        f = open(kernel_bbfile, "r")
+    except IOError:
+        kernel_bbfile = os.path.join(layer, "recipes-kernel/linux/" + kernel + ".bb")
+        try:
+            f = open(kernel_bbfile, "r")
+        except IOError:
+            print "Couldn't find a .bb or .bbappend file for this BSP's kernel, exiting."
+            sys.exit(1)
 
-    f = open(kernel_bbappend, "r")
     src_uri_line = ""
     in_src_uri = False
     lines = f.readlines()
@@ -561,12 +569,16 @@ def kernel_contents_changed(scripts_path, machine):
         print "Couldn't determine the kernel for this BSP, exiting."
         sys.exit(1)
 
-    kernel_bbappend = os.path.join(layer, "recipes-kernel/linux/" + kernel + ".bbappend")
-    kernel_bbappend_prev = kernel_bbappend + ".prev"
-    shutil.copyfile(kernel_bbappend, kernel_bbappend_prev)
+    kernel_bbfile = os.path.join(layer, "recipes-kernel/linux/" + kernel + ".bbappend")
+    if not os.path.isfile(kernel_bbfile):
+        kernel_bbfile = os.path.join(layer, "recipes-kernel/linux/" + kernel + ".bb")
+        if not os.path.isfile(kernel_bbfile):
+            return
+    kernel_bbfile_prev = kernel_bbfile + ".prev"
+    shutil.copyfile(kernel_bbfile, kernel_bbfile_prev)
 
-    ifile = open(kernel_bbappend_prev, "r")
-    ofile = open(kernel_bbappend, "w")
+    ifile = open(kernel_bbfile_prev, "r")
+    ofile = open(kernel_bbfile, "w")
     ifile_lines = ifile.readlines()
     for ifile_line in ifile_lines:
         if ifile_line.strip().startswith("PR"):
@@ -588,14 +600,19 @@ def write_kernel_src_uri(scripts_path, machine, src_uri):
         print "Couldn't determine the kernel for this BSP, exiting."
         sys.exit(1)
 
-    kernel_bbappend = os.path.join(layer, "recipes-kernel/linux/" + kernel + ".bbappend")
+    kernel_bbfile = os.path.join(layer, "recipes-kernel/linux/" + kernel + ".bbappend")
+    if not os.path.isfile(kernel_bbfile):
+        kernel_bbfile = os.path.join(layer, "recipes-kernel/linux/" + kernel + ".bb")
+        if not os.path.isfile(kernel_bbfile):
+            print "Couldn't find a .bb or .bbappend file for this BSP's kernel, exiting."
+            sys.exit(1)
 
     (uri_start_line, uri_end_line, unused) = find_bsp_kernel_src_uri(scripts_path, machine, True)
 
-    kernel_bbappend_prev = kernel_bbappend + ".prev"
-    shutil.copyfile(kernel_bbappend, kernel_bbappend_prev)
-    ifile = open(kernel_bbappend_prev, "r")
-    ofile = open(kernel_bbappend, "w")
+    kernel_bbfile_prev = kernel_bbfile + ".prev"
+    shutil.copyfile(kernel_bbfile, kernel_bbfile_prev)
+    ifile = open(kernel_bbfile_prev, "r")
+    ofile = open(kernel_bbfile, "w")
 
     ifile_lines = ifile.readlines()
     if uri_start_line == -1:
-- 
1.7.11.4


