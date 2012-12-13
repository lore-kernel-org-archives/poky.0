Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FE08E01438
	for <poky@yoctoproject.org>; Wed, 12 Dec 2012 20:56:50 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Dec 2012 20:56:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,272,1355126400"; d="scan'208";a="256768244"
Received: from unknown (HELO localhost) ([10.255.13.197])
	by orsmga002.jf.intel.com with ESMTP; 12 Dec 2012 20:56:49 -0800
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Wed, 12 Dec 2012 22:56:34 -0600
Message-Id: <2f1fa4abefe220274e1e9f70e5e536832620d725.1355373343.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <8884beae4cbc9a06d5bd8876c64fed93fe6eb546.1355373343.git.tom.zanussi@intel.com>
References: <8884beae4cbc9a06d5bd8876c64fed93fe6eb546.1355373343.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1355373343.git.tom.zanussi@intel.com>
References: <cover.1355373343.git.tom.zanussi@intel.com>
Subject: [PATCH 05/12] yocto-bsp: add 'edit-file' input line
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
X-List-Received-Date: Thu, 13 Dec 2012 04:56:50 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a subclassed edit box that verifies the existence of a
user-specified file.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/engine.py | 57 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index bd776b2..6309e29 100644
--- a/scripts/lib/bsp/engine.py
+++ b/scripts/lib/bsp/engine.py
@@ -244,6 +244,44 @@ class GitRepoEditBoxInputLine(EditBoxInputLine):
         return line
 
 
+class FileEditBoxInputLine(EditBoxInputLine):
+    """
+    Base class for 'editbox' Input lines for user input of existing
+    files.  This class verifies the existence of the specified file.
+
+    props:
+        name: example - "Load address"
+        msg: example - "Please enter the load address"
+    result:
+        Sets the value of the variable specified by 'name' to
+        whatever the user typed.
+    """
+    def __init__(self, props, tag, lineno):
+        EditBoxInputLine.__init__(self, props, tag, lineno)
+
+    def gen(self, context = None):
+        EditBoxInputLine.gen(self, context)
+        name = self.props["name"]
+        if not name:
+            self.parse_error("No input 'name' property found",
+                             self.lineno, self.line)
+        msg = self.props["msg"]
+        if not msg:
+            self.parse_error("No input 'msg' property found",
+                             self.lineno, self.line)
+
+        try:
+            default_choice = self.props["default"]
+        except KeyError:
+            default_choice = ""
+
+        msg += " [default: " + default_choice + "]"
+
+        line = name + " = get_verified_file(\"" + msg + "\"," + name + ", True)"
+
+        return line
+
+
 class BooleanInputLine(InputLine):
     """
     Base class for boolean Input lines.
@@ -509,6 +547,23 @@ def get_verified_git_repo(input_str, name):
         giturl = default(raw_input(msg), name)
 
 
+def get_verified_file(input_str, name, filename_can_be_null):
+    """
+    Return filename if the file exists, otherwise loop forever asking
+    user for filename.
+    """
+    msg = input_str.strip() + " "
+
+    filename = default(raw_input(msg), name)
+
+    while True:
+        if not filename and filename_can_be_null:
+            return filename
+        if os.path.isfile(filename):
+            return filename
+        filename = default(raw_input(msg), name)
+
+
 def boolean(input_str, name):
     """
     Return lowercase version of first char in string, or value in name.
@@ -725,6 +780,8 @@ class SubstrateBase(object):
             return EditBoxInputLine(props, tag, lineno)
         if input_type == "edit-git-repo":
             return GitRepoEditBoxInputLine(props, tag, lineno)
+        if input_type == "edit-file":
+            return FileEditBoxInputLine(props, tag, lineno)
         elif input_type == "choicelist":
             self.prev_choicelist = ChoicelistInputLine(props, tag, lineno)
             return self.prev_choicelist
-- 
1.7.11.4


