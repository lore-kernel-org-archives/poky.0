Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22345E00857; Mon, 25 Apr 2016 10:42:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DATE_IN_PAST_06_12
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.5 DATE_IN_PAST_06_12 Date: is 6 to 12 hours before
	Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADC0BE0077F
	for <poky@yoctoproject.org>; Mon, 25 Apr 2016 10:42:21 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 25 Apr 2016 10:42:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,533,1455004800"; d="scan'208";a="939852781"
Received: from yctb05.ostc.intel.com ([10.54.69.59])
	by orsmga001.jf.intel.com with ESMTP; 25 Apr 2016 10:42:21 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Mon, 25 Apr 2016 09:40:22 +0000
Message-Id: <1461577222-39048-1-git-send-email-leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.6.6
Subject: [PATCH] scripts/lib/bsp/kernel.py: force patching when branch is machine branch is re-use
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
X-List-Received-Date: Mon, 25 Apr 2016 17:42:23 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

When a branch is re-used, the kernel tools turns off any patch pushing unless
'mark patching' is explicitly set.

[YOCTO #9120]

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 scripts/lib/bsp/kernel.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index ba68b60..0783228 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -333,6 +333,7 @@ def write_patch_items(scripts_path, machine, patch_items):
     patch list [${machine}-user-patches.scc].
     """
     f = open_user_file(scripts_path, machine, machine+"-user-patches.scc", "w")
+    f.write("mark patching start\n")
     for item in patch_items:
         f.write("patch " + item + "\n")
     f.close()
-- 
2.6.6


