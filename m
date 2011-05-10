Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id DCFB34C80578
	for <poky@yoctoproject.org>; Tue, 10 May 2011 15:49:10 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 May 2011 13:49:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,347,1301900400"; d="scan'208";a="745273648"
Received: from unknown (HELO localhost) ([10.255.12.106])
	by orsmga001.jf.intel.com with ESMTP; 10 May 2011 13:49:08 -0700
Message-Id: <52dd0703c6b1499dc532a11af57ea3da3bf1eb3c.1305058857.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1305058857.git.tom.zanussi@intel.com>
References: <cover.1305058857.git.tom.zanussi@intel.com>
Old-Date: Fri, 22 Apr 2011 15:55:12 -0500
Date: Tue, 10 May 2011 15:48:59 -0500
To: bruce.ashfield@windriver.com,poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [KERNEL][linux-yocto-dev PATCH] bsp/crownbay: merge emgd branch
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
X-List-Received-Date: Tue, 10 May 2011 20:49:11 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add scc commands to merge the yocto/emgd branch into the crownbay BSP.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
index 89a0725..0d02b98 100644
--- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
+++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
@@ -1,6 +1,8 @@
 kconf hardware crownbay.cfg
 kconf hardware eg20t.cfg
 
+git merge yocto/emgd
+
 include features/latencytop/latencytop.scc
 include features/profiling/profiling.scc
 include features/serial/8250.scc
-- 
1.7.0.4


