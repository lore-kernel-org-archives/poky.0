Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3C0EE01482
	for <poky@yoctoproject.org>; Wed, 13 Mar 2013 12:04:35 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Mar 2013 12:04:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,838,1355126400"; d="scan'208";a="278490231"
Received: from unknown (HELO localhost) ([10.255.12.139])
	by orsmga001.jf.intel.com with ESMTP; 13 Mar 2013 12:04:18 -0700
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Wed, 13 Mar 2013 14:03:59 -0500
Message-Id: <fdafd32ab78d8bb0479c949a16540ac216bcfa08.1363198817.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
References: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1363198817.git.tom.zanussi@linux.intel.com>
References: <cover.1363198817.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 05/18] scripts/lib/bsp/engine.py: add preempt-rt and tiny to map_standard_kbranch()
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
X-List-Received-Date: Wed, 13 Mar 2013 19:04:35 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

Update map_standard_kbranch() with preempt-rt and tiny variants.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 scripts/lib/bsp/engine.py | 36 ++++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index 55f1e6b..86cb51c 100644
--- a/scripts/lib/bsp/engine.py
+++ b/scripts/lib/bsp/engine.py
@@ -1741,3 +1741,39 @@ def map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch):
         return "bsp/common-pc/common-pc-standard.scc"
     else:
         return "ktypes/standard/standard.scc"
+
+
+def map_preempt_rt_kbranch(need_new_kbranch, new_kbranch, existing_kbranch):
+    """
+    Return the linux-yocto bsp branch to use with the specified
+    kbranch.  This handles the -preempt-rt variants for 3.4 and 3.8;
+    the other variants don't need mappings.
+    """
+    if need_new_kbranch == "y":
+        kbranch = new_kbranch
+    else:
+        kbranch = existing_kbranch
+
+    if kbranch.startswith("standard/preempt-rt/common-pc-64"):
+        return "bsp/common-pc-64/common-pc-64-preempt-rt.scc"
+    if kbranch.startswith("standard/preempt-rt/common-pc"):
+        return "bsp/common-pc/common-pc-preempt-rt.scc"
+    else:
+        return "ktypes/preempt-rt/preempt-rt.scc"
+
+
+def map_tiny_kbranch(need_new_kbranch, new_kbranch, existing_kbranch):
+    """
+    Return the linux-yocto bsp branch to use with the specified
+    kbranch.  This handles the -tiny variants for 3.4 and 3.8; the
+    other variants don't need mappings.
+    """
+    if need_new_kbranch == "y":
+        kbranch = new_kbranch
+    else:
+        kbranch = existing_kbranch
+
+    if kbranch.startswith("standard/tiny/common-pc"):
+        return "bsp/common-pc/common-pc-tiny.scc"
+    else:
+        return "ktypes/tiny/tiny.scc"
-- 
1.7.11.4


