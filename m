Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E15D94C810C1
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 15:18:39 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 31 Jan 2011 13:18:39 -0800
Message-Id: <b9dded$hqfh0r@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,405,1291622400"; d="scan'208";a="598197280"
Received: from unknown (HELO localhost) ([10.255.14.127])
	by orsmga002.jf.intel.com with ESMTP; 31 Jan 2011 13:18:38 -0800
Old-Date: Fri, 21 Jan 2011 10:29:41 -0600
Date: Mon, 31 Jan 2011 15:18:37 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 2/2] sugarbay: enable i915 graphics
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
X-List-Received-Date: Mon, 31 Jan 2011 21:18:40 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Which includes snb support...

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc |    8 ++++++--
 1 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc
index 716f9e4..86346f6 100644
--- a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc
+++ b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc
@@ -1,6 +1,10 @@
 kconf hardware sugarbay.cfg
 
-include features/latencytop/latencytop.scc
-include features/profiling/profiling.scc
+include features/i915/i915.scc
 include features/serial/8250.scc
+
 include features/logbuf/size-normal.scc
+
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
+
-- 
1.7.0.4


