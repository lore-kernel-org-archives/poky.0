Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12289E01454
	for <poky@yoctoproject.org>; Wed, 12 Dec 2012 20:57:01 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 Dec 2012 20:57:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,272,1355126400"; d="scan'208";a="230862794"
Received: from unknown (HELO localhost) ([10.255.13.197])
	by azsmga001.ch.intel.com with ESMTP; 12 Dec 2012 20:57:00 -0800
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Wed, 12 Dec 2012 22:56:41 -0600
Message-Id: <3335c27dcf9347c547cefe80f63f195cfe08b7bc.1355373343.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <8884beae4cbc9a06d5bd8876c64fed93fe6eb546.1355373343.git.tom.zanussi@intel.com>
References: <8884beae4cbc9a06d5bd8876c64fed93fe6eb546.1355373343.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1355373343.git.tom.zanussi@intel.com>
References: <cover.1355373343.git.tom.zanussi@intel.com>
Subject: [PATCH 12/12] yocto-kernel: add support for PRs of the form rN to pr_inc()
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
X-List-Received-Date: Thu, 13 Dec 2012 04:57:01 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

With the addition of custom kernel support, we also need to handle the
normal PR format found in .bb files.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/kernel.py | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index 883beac..5935e66 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -427,16 +427,20 @@ def yocto_kernel_patch_add(scripts_path, machine, patches):
 def inc_pr(line):
     """
     Add 1 to the PR value in the given bbappend PR line.  For the PR
-    lines in kernel .bbappends after modifications.
+    lines in kernel .bbappends after modifications.  Handles PRs of
+    the form PR := "${PR}.1" as well as PR = "r0".
     """
     idx = line.find("\"")
 
     pr_str = line[idx:]
     pr_str = pr_str.replace('\"','')
     fields = pr_str.split('.')
-    fields[1] = str(int(fields[1]) + 1)
-    pr_str = "\"" + '.'.join(fields) + "\"\n"
-
+    if len(fields) > 1:
+        fields[1] = str(int(fields[1]) + 1)
+        pr_str = "\"" + '.'.join(fields) + "\"\n"
+    else:
+        pr_val = pr_str[1:]
+        pr_str = "\"" + "r" + str(int(pr_val) + 1) + "\"\n"
     idx2 = line.find("\"", idx + 1)
     line = line[:idx] + pr_str
     
-- 
1.7.11.4


