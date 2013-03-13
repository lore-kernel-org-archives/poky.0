Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A84B8E0042A
	for <poky@yoctoproject.org>; Wed, 13 Mar 2013 12:04:17 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Mar 2013 12:04:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,838,1355126400"; d="scan'208";a="270122366"
Received: from unknown (HELO localhost) ([10.255.12.139])
	by azsmga001.ch.intel.com with ESMTP; 13 Mar 2013 12:04:15 -0700
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Wed, 13 Mar 2013 14:03:57 -0500
Message-Id: <b43edcbd484f40375b3ae239d8eebc78d323096f.1363198817.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
References: <b76f685ce4d1be7a7f1fa59d2f0d17fd0ddbc7b5.1363198817.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1363198817.git.tom.zanussi@linux.intel.com>
References: <cover.1363198817.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 03/18] scripts/lib/bsp/engine.py: update map_standard_kbranch()
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
X-List-Received-Date: Wed, 13 Mar 2013 19:04:17 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

Update map_standard_kbranch() to be consistent with the new changes in
meta naming and remove obsolete standard/default mapping.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 scripts/lib/bsp/engine.py | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index aa26280..55f1e6b 100644
--- a/scripts/lib/bsp/engine.py
+++ b/scripts/lib/bsp/engine.py
@@ -1727,7 +1727,7 @@ def yocto_layer_list(args, scripts_path, properties_file):
 def map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch):
     """
     Return the linux-yocto bsp branch to use with the specified
-    kbranch.  This handles the -standard variants for 3.2 and 3.4; the
+    kbranch.  This handles the -standard variants for 3.4 and 3.8; the
     other variants don't need mappings.
     """
     if need_new_kbranch == "y":
@@ -1735,11 +1735,9 @@ def map_standard_kbranch(need_new_kbranch, new_kbranch, existing_kbranch):
     else:
         kbranch = existing_kbranch
 
-    if (kbranch.startswith("standard/default/common-pc-64") or
-        kbranch.startswith("standard/common-pc-64")):
-        return "bsp/common-pc-64/common-pc-64-standard"
-    if (kbranch.startswith("standard/default/common-pc") or
-        kbranch.startswith("standard/common-pc")):
-        return "bsp/common-pc/common-pc-standard"
+    if kbranch.startswith("standard/common-pc-64"):
+        return "bsp/common-pc-64/common-pc-64-standard.scc"
+    if kbranch.startswith("standard/common-pc"):
+        return "bsp/common-pc/common-pc-standard.scc"
     else:
-        return "ktypes/standard"
+        return "ktypes/standard/standard.scc"
-- 
1.7.11.4


