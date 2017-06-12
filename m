Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6A48E00B67; Mon, 12 Jun 2017 14:40:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 396E9E00A38
	for <poky@yoctoproject.org>; Mon, 12 Jun 2017 14:40:21 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Jun 2017 14:40:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,335,1493708400"; d="scan'208";a="979942000"
Received: from yctb05.ostc.intel.com ([10.54.69.59])
	by orsmga003.jf.intel.com with ESMTP; 12 Jun 2017 14:40:21 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Mon, 12 Jun 2017 14:40:08 -0700
Message-Id: <20170612214008.9145-1-leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.12.0
Subject: [morty][PATCH] scripts/lib/bsp/kernel.py: force patching when branch is machine branch is re-use
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
X-List-Received-Date: Mon, 12 Jun 2017 21:40:23 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

When a branch is re-used, the kernel tools turns off any patch pushing unless
'mark patching' is explicitly set.

[YOCTO #10674]

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 scripts/lib/bsp/kernel.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index a3ee325a8f..32cab3b642 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -331,6 +331,7 @@ def write_patch_items(scripts_path, machine, patch_items):
     patch list [${machine}-user-patches.scc].
     """
     f = open_user_file(scripts_path, machine, machine+"-user-patches.scc", "w")
+    f.write("mark patching start\n")
     for item in patch_items:
         f.write("patch " + item + "\n")
     f.close()
-- 
2.12.0


