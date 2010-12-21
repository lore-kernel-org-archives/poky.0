Return-Path: <qing.he@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0B6534C808B0
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 11:25:43 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Dec 2010 09:25:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,208,1291622400"; d="scan'208";a="689374217"
Received: from qhe2-db.sh.intel.com ([10.239.13.38])
	by orsmga001.jf.intel.com with ESMTP; 21 Dec 2010 09:25:43 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PV5sq-0007yL-Ne; Wed, 22 Dec 2010 01:20:20 +0800
Message-Id: <be6b3503413022d610767fbc35300a637b92759a.1292950144.git.qing.he@intel.com>
In-Reply-To: <cover.1292950144.git.qing.he@intel.com>
References: <cover.1292950144.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Wed, 22 Dec 2010 00:19:44 +0800
To: poky@yoctoproject.org
Subject: [PATCH 1/4] python method fix
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
X-List-Received-Date: Tue, 21 Dec 2010 17:25:44 -0000

1. substitute '_' to '-' to avoid misrepresentation by smart data
2. export _parsed_fns

Signed-off-by: Qing He <qing.he@intel.com>
---
 bitbake/lib/bb/methodpool.py |    6 ++++++
 bitbake/lib/bb/parse/ast.py  |    2 +-
 2 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/methodpool.py b/bitbake/lib/bb/methodpool.py
index 1485b13..299c54d 100644
--- a/bitbake/lib/bb/methodpool.py
+++ b/bitbake/lib/bb/methodpool.py
@@ -82,3 +82,9 @@ def get_parsed_dict():
     shortcut
     """
     return _parsed_methods
+
+def get_parsed_fns():
+    """
+    used by environment restruct
+    """
+    return _parsed_fns
diff --git a/bitbake/lib/bb/parse/ast.py b/bitbake/lib/bb/parse/ast.py
index 870ae65..dc56f21 100644
--- a/bitbake/lib/bb/parse/ast.py
+++ b/bitbake/lib/bb/parse/ast.py
@@ -138,7 +138,7 @@ class MethodNode:
 
 class PythonMethodNode(AstNode):
     def __init__(self, funcname, root, body, fn):
-        self.func_name = funcname
+        self.func_name = re.sub('_', '-', funcname)
         self.root = root
         self.body = body
         self.fn = fn
-- 
1.7.0


