Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id CE7B34C80510
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 08:38:06 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Feb 2011 06:38:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,239,1297065600"; d="scan'208";a="395066343"
Received: from unknown (HELO helios) ([10.255.16.249])
	by azsmga001.ch.intel.com with SMTP; 28 Feb 2011 06:38:03 -0800
Received: by helios (sSMTP sendmail emulation); Mon, 28 Feb 2011 14:38:03 +0000
Message-Id: <897fc47f85fc5c4493675ba35004d40897aca687.1298903625.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1298903625.git.paul.eggleton@linux.intel.com>
References: <cover.1298903625.git.paul.eggleton@linux.intel.com>
Old-Date: Mon, 28 Feb 2011 13:29:15 +0000
Date: Mon, 28 Feb 2011 14:38:03 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 2/3] sstate.bbclass: always delete stamp files in sstate_clean
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
X-List-Received-Date: Mon, 28 Feb 2011 14:38:07 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

For safety, always delete the stamp files in sstate_clean regardless of
whether the manifest file exists or not.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/classes/sstate.bbclass |   16 +++++++---------
 1 files changed, 7 insertions(+), 9 deletions(-)

diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
index 722e3c4..b91c0b0 100644
--- a/meta/classes/sstate.bbclass
+++ b/meta/classes/sstate.bbclass
@@ -229,17 +229,15 @@ def sstate_clean(ss, d):
 
     manifest = bb.data.expand("${SSTATE_MANFILEPREFIX}.%s" % ss['name'], d)
 
-    if not os.path.exists(manifest):
-       return
+    if os.path.exists(manifest):
+        locks = []
+        for lock in ss['lockfiles']:
+            locks.append(bb.utils.lockfile(lock))
 
-    locks = []
-    for lock in ss['lockfiles']:
-        locks.append(bb.utils.lockfile(lock))
+        sstate_clean_manifest(manifest, d)
 
-    sstate_clean_manifest(manifest, d)
-
-    for lock in locks:
-        bb.utils.unlockfile(lock)
+        for lock in locks:
+            bb.utils.unlockfile(lock)
 
     stfile = d.getVar("STAMP", True) + ".do_" + ss['task']
     oe.path.remove(stfile)
-- 
1.7.1


