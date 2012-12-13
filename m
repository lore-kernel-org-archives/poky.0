Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72AEEE01443
	for <poky@yoctoproject.org>; Wed, 12 Dec 2012 20:56:55 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 Dec 2012 20:56:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,272,1355126400"; d="scan'208";a="230862766"
Received: from unknown (HELO localhost) ([10.255.13.197])
	by azsmga001.ch.intel.com with ESMTP; 12 Dec 2012 20:56:50 -0800
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Wed, 12 Dec 2012 22:56:35 -0600
Message-Id: <90c709205edc1a226c8d3d236f823342375b173e.1355373343.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <8884beae4cbc9a06d5bd8876c64fed93fe6eb546.1355373343.git.tom.zanussi@intel.com>
References: <8884beae4cbc9a06d5bd8876c64fed93fe6eb546.1355373343.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1355373343.git.tom.zanussi@intel.com>
References: <cover.1355373343.git.tom.zanussi@intel.com>
Subject: [PATCH 06/12] yocto-bsp: add replace_file()
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
X-List-Received-Date: Thu, 13 Dec 2012 04:56:55 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a function that can be used to replace a template file by a
user-specified file.  The initial use of this capability is to allow
users-specified defconfigs.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/engine.py                              | 18 +++++++++++++++---
 .../defconfig"                                         |  1 +
 scripts/lib/bsp/tags.py                                |  2 +-
 3 files changed, 17 insertions(+), 4 deletions(-)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index 6309e29..8985544 100644
--- a/scripts/lib/bsp/engine.py
+++ b/scripts/lib/bsp/engine.py
@@ -38,6 +38,7 @@ from tags import *
 import shlex
 import json
 import subprocess
+import shutil
 
 class Line():
     """
@@ -83,7 +84,7 @@ class NormalLine(Line):
 
     def gen(self, context = None):
         if self.is_filename:
-            line = "of = open(\"" + os.path.join(self.out_filebase, self.escape(self.line)) + "\", \"w\")"
+            line = "current_file = \"" + os.path.join(self.out_filebase, self.escape(self.line)) + "\"; of = open(current_file, \"w\")"
         elif self.is_dirname:
             dirname = os.path.join(self.out_filebase, self.escape(self.line))
             line = "if not os.path.exists(\"" + dirname + "\"): os.mkdir(\"" + dirname + "\")"
@@ -134,7 +135,7 @@ class AssignmentLine(NormalLine):
             idx = line.find(ASSIGN_TAG)
             line = line[:idx] + replacement + line[idx + assignment.end - assignment.start:]
         if self.is_filename:
-            return "of = open(\"" + os.path.join(self.out_filebase, line) + "\", \"w\")"
+            return "current_file = \"" + os.path.join(self.out_filebase, line) + "\"; of = open(current_file, \"w\")"
         elif self.is_dirname:
             dirname = os.path.join(self.out_filebase, line)
             return "if not os.path.exists(\"" + dirname + "\"): os.mkdir(\"" + dirname + "\")"
@@ -564,6 +565,17 @@ def get_verified_file(input_str, name, filename_can_be_null):
         filename = default(raw_input(msg), name)
 
 
+def replace_file(replace_this, with_this):
+    """
+    Replace the given file with the contents of filename, retaining
+    the original filename.
+    """
+    try:
+        shutil.copy(with_this, replace_this)
+    except IOError:
+        pass
+
+
 def boolean(input_str, name):
     """
     Return lowercase version of first char in string, or value in name.
@@ -1197,7 +1209,7 @@ def gen_program_header_lines(program_lines):
     """
     Generate any imports we need.
     """
-    pass
+    program_lines.append("current_file = \"\"")
 
 
 def gen_supplied_property_vals(properties, program_lines):
diff --git "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/defconfig" "b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/defconfig"
index c2745c5..e544a0a 100644
--- "a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/defconfig"	
+++ "b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/{{ if kernel_choice == \"custom\": }} linux-yocto-custom/defconfig"	
@@ -2,3 +2,4 @@
 # Placeholder for custom default kernel configuration.  yocto-bsp will
 # replace this file with a user-specified defconfig.
 #
+{{ if custom_kernel_defconfig: replace_file(current_file, custom_kernel_defconfig) }}
diff --git a/scripts/lib/bsp/tags.py b/scripts/lib/bsp/tags.py
index 869b1d0..256b25c 100644
--- a/scripts/lib/bsp/tags.py
+++ b/scripts/lib/bsp/tags.py
@@ -35,7 +35,7 @@ INDENT_STR =  "    "
 
 BLANKLINE_STR = "of.write(\"\\n\")"
 NORMAL_START =  "of.write"
-OPEN_START =    "of = open"
+OPEN_START =    "current_file ="
 
 INPUT_TYPE_PROPERTY = "type"
 
-- 
1.7.11.4


