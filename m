Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89C2EE0144D
	for <poky@yoctoproject.org>; Wed, 12 Dec 2012 20:56:56 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 12 Dec 2012 20:56:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,272,1355126400"; d="scan'208";a="180259336"
Received: from unknown (HELO localhost) ([10.255.13.197])
	by AZSMGA002.ch.intel.com with ESMTP; 12 Dec 2012 20:56:44 -0800
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Wed, 12 Dec 2012 22:56:31 -0600
Message-Id: <662a87966b0f1382bec8e90d7deae2f0cd5678bd.1355373343.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <8884beae4cbc9a06d5bd8876c64fed93fe6eb546.1355373343.git.tom.zanussi@intel.com>
References: <8884beae4cbc9a06d5bd8876c64fed93fe6eb546.1355373343.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1355373343.git.tom.zanussi@intel.com>
References: <cover.1355373343.git.tom.zanussi@intel.com>
Subject: [PATCH 02/12] yocto-bsp: add 'custom' choice to kernels()
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

Add a synthetic choice for linux-yocto-custom to the list of available
kernels.  Choosing this will lead the user down the path of options
needed to specify a custom kernel.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/kernel.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index 128fad0..a953372 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -623,6 +623,8 @@ def kernels(context):
             filename = filename[idx + len(CLOSE_TAG):].strip()
         kernels.append(filename)
 
+    kernels.append("custom")
+
     return kernels
 
 
-- 
1.7.11.4


