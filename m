Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD9F5E0140A
	for <poky@yoctoproject.org>; Wed, 12 Dec 2012 20:56:48 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 Dec 2012 20:56:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,272,1355126400"; d="scan'208";a="263328149"
Received: from unknown (HELO localhost) ([10.255.13.197])
	by fmsmga002.fm.intel.com with ESMTP; 12 Dec 2012 20:56:47 -0800
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Wed, 12 Dec 2012 22:56:33 -0600
Message-Id: <5e75f2d3e097ae95ed2e26b3bbe57d84630788a4.1355373343.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <8884beae4cbc9a06d5bd8876c64fed93fe6eb546.1355373343.git.tom.zanussi@intel.com>
References: <8884beae4cbc9a06d5bd8876c64fed93fe6eb546.1355373343.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1355373343.git.tom.zanussi@intel.com>
References: <cover.1355373343.git.tom.zanussi@intel.com>
Subject: [PATCH 04/12] yocto-bsp: add 'edit-git-repo' input line
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
X-List-Received-Date: Thu, 13 Dec 2012 04:56:49 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a subclassed edit box that verifies the existence of a
user-specified git repo.

Also adds a verify_git_repo() function that can be used as a basic
sanity check for local git setup.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/engine.py | 76 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index 8d47bbf..bd776b2 100644
--- a/scripts/lib/bsp/engine.py
+++ b/scripts/lib/bsp/engine.py
@@ -37,6 +37,7 @@ from abc import ABCMeta, abstractmethod
 from tags import *
 import shlex
 import json
+import subprocess
 
 class Line():
     """
@@ -204,6 +205,45 @@ class EditBoxInputLine(InputLine):
         return line
 
 
+class GitRepoEditBoxInputLine(EditBoxInputLine):
+    """
+    Base class for 'editbox' Input lines for user input of remote git
+    repos.  This class verifies the existence and connectivity of the
+    specified git repo.
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
+        line = name + " = get_verified_git_repo(\"" + msg + "\"," + name + ")"
+
+        return line
+
+
 class BooleanInputLine(InputLine):
     """
     Base class for boolean Input lines.
@@ -435,6 +475,40 @@ def default(input_str, name):
     return input_str.strip()
 
 
+def verify_git_repo(giturl):
+    """
+    Verify that the giturl passed in can be connected to.  This can be
+    used as a check for the existence of the given repo and/or basic
+    git remote connectivity.
+
+    Returns True if the connection was successful, fals otherwise
+    """
+    if not giturl:
+        return False
+
+    gitcmd = "git ls-remote %s > /dev/null 2>&1" % (giturl)
+    rc = subprocess.call(gitcmd, shell=True)
+    if rc == 0:
+        return True
+
+    return False
+
+
+def get_verified_git_repo(input_str, name):
+    """
+    Return git repo if verified, otherwise loop forever asking user
+    for filename.
+    """
+    msg = input_str.strip() + " "
+
+    giturl = default(raw_input(msg), name)
+
+    while True:
+        if verify_git_repo(giturl):
+            return giturl
+        giturl = default(raw_input(msg), name)
+
+
 def boolean(input_str, name):
     """
     Return lowercase version of first char in string, or value in name.
@@ -649,6 +723,8 @@ class SubstrateBase(object):
             return BooleanInputLine(props, tag, lineno)
         if input_type == "edit":
             return EditBoxInputLine(props, tag, lineno)
+        if input_type == "edit-git-repo":
+            return GitRepoEditBoxInputLine(props, tag, lineno)
         elif input_type == "choicelist":
             self.prev_choicelist = ChoicelistInputLine(props, tag, lineno)
             return self.prev_choicelist
-- 
1.7.11.4


