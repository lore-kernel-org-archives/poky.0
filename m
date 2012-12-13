Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4931DE0144D
	for <poky@yoctoproject.org>; Wed, 12 Dec 2012 20:56:56 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Dec 2012 20:56:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,272,1355126400"; d="scan'208";a="261474684"
Received: from unknown (HELO localhost) ([10.255.13.197])
	by fmsmga001.fm.intel.com with ESMTP; 12 Dec 2012 20:56:55 -0800
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Wed, 12 Dec 2012 22:56:38 -0600
Message-Id: <5dfe3b0bac3b43a8b4ed3b1100c10bd278643a56.1355373343.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <8884beae4cbc9a06d5bd8876c64fed93fe6eb546.1355373343.git.tom.zanussi@intel.com>
References: <8884beae4cbc9a06d5bd8876c64fed93fe6eb546.1355373343.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1355373343.git.tom.zanussi@intel.com>
References: <cover.1355373343.git.tom.zanussi@intel.com>
Subject: [PATCH 09/12] yocto-kernel: remove assumption that kernel has a version
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
X-List-Received-Date: Thu, 13 Dec 2012 04:56:56 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Kernels don't need to have a PREFERRED_VERSION, so remove that
assumption from the code that looks for the kernel definition.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/kernel.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index 272c3eb..f2ec9fd 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -289,6 +289,8 @@ def find_current_kernel(bsp_layer, machine):
 
     if preferred_kernel and preferred_kernel_version:
         return preferred_kernel + "_" + preferred_kernel_version
+    elif preferred_kernel:
+        return preferred_kernel
 
 
 def find_bsp_kernel_src_uri(scripts_path, machine, start_end_only = False):
-- 
1.7.11.4


