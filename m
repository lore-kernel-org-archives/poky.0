Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B45F0E0155F
	for <poky@yoctoproject.org>; Mon, 26 Aug 2013 15:14:07 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 26 Aug 2013 15:11:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,962,1367996400"; d="scan'208";a="368819957"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.196.147])
	by orsmga001.jf.intel.com with ESMTP; 26 Aug 2013 15:14:05 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>
Date: Mon, 26 Aug 2013 15:18:09 -0700
Message-Id: <cec55f943762e7de120e332711f8663e7142c8d7.1377555271.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <c8d44d43e68a20099bdecb7277f3771fbcd300c0.1377555271.git.dvhart@linux.intel.com>
References: <c8d44d43e68a20099bdecb7277f3771fbcd300c0.1377555271.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1377555271.git.dvhart@linux.intel.com>
References: <cover.1377555271.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 3/6] layer.conf: Bumping LAYERVERSION_yoctobsp to account for atom-pc
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
X-List-Received-Date: Mon, 26 Aug 2013 22:14:07 -0000

From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>

In order to maintain autobuilder compatibility with prior releases
we'll need to decide on if we should build atom-pc or genericx86
based on LAYERVERSION_yoctobsp.

if LAYERVERSION_yoctobsp < 2 we build out atom-pc else
we build out genericx86

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
Cc: Ross Burton <ross.burton@intel.com>
Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-yocto-bsp/conf/layer.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/layer.conf b/meta-yocto-bsp/conf/layer.conf
index 2be7cc3..9e416fe 100644
--- a/meta-yocto-bsp/conf/layer.conf
+++ b/meta-yocto-bsp/conf/layer.conf
@@ -8,4 +8,4 @@ BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 BBFILE_COLLECTIONS += "yoctobsp"
 BBFILE_PATTERN_yoctobsp = "^${LAYERDIR}/"
 BBFILE_PRIORITY_yoctobsp = "5"
-
+LAYERVERSION_yoctobsp = "2"
-- 
1.7.9.5


