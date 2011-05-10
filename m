Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 672894C80A47
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:11 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 May 2011 01:56:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; d="scan'208";a="433485423"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 10 May 2011 01:56:10 -0700
Message-Id: <c5e186deb84c7aeb5729eddb136d2ff07d6c3e69.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 14:06:37 +0800
Date: Tue, 10 May 2011 17:01:39 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 13/39] zeroconf: add upstream status for zeroconf's patch
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
X-List-Received-Date: Tue, 10 May 2011 08:56:11 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../zeroconf/zeroconf/compilefix.patch             |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-connectivity/zeroconf/zeroconf/compilefix.patch b/meta/recipes-connectivity/zeroconf/zeroconf/compilefix.patch
index b7b917d..328e574 100644
--- a/meta/recipes-connectivity/zeroconf/zeroconf/compilefix.patch
+++ b/meta/recipes-connectivity/zeroconf/zeroconf/compilefix.patch
@@ -3,6 +3,8 @@
 
 RP - 4/9/09
 
+Upstream-Status: Pending
+
 Index: zeroconf-0.9/zeroconf.c
 ===================================================================
 --- zeroconf-0.9.orig/zeroconf.c	2009-09-04 10:05:25.000000000 +0100
-- 
1.7.1


