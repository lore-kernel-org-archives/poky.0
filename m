Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id AABF04C804E4
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 06:17:33 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 15 Mar 2011 04:17:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,321,1297065600"; d="scan'208";a="613142688"
Received: from unknown (HELO localhost) ([10.255.16.25])
	by orsmga002.jf.intel.com with ESMTP; 15 Mar 2011 04:17:32 -0700
Message-Id: <7d2d0368d51cb05b3d24fa30fcdaca4034bbee16.1300185095.git.josh@linux.intel.com>
In-Reply-To: <cover.1300185095.git.josh@linux.intel.com>
References: <cover.1300185095.git.josh@linux.intel.com>
Old-Date: Tue, 15 Mar 2011 10:31:04 +0000
Date: Tue, 15 Mar 2011 11:17:27 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 1/1] bblayers.conf.sample: include meta-yocto in default layers
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
X-List-Received-Date: Tue, 15 Mar 2011 11:17:33 -0000

From: Joshua Lock <josh@linux.intel.com>

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta-yocto/conf/bblayers.conf.sample |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta-yocto/conf/bblayers.conf.sample b/meta-yocto/conf/bblayers.conf.sample
index b2f37c0..ee85a98 100644
--- a/meta-yocto/conf/bblayers.conf.sample
+++ b/meta-yocto/conf/bblayers.conf.sample
@@ -5,4 +5,5 @@ LCONF_VERSION = "4"
 BBFILES ?= ""
 BBLAYERS = " \
   ##POKYBASE##/meta \
+  ##POKYBASE##/meta-yocto \
   "
-- 
1.7.4


