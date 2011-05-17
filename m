Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 29C294C80AE6
	for <poky@yoctoproject.org>; Tue, 17 May 2011 03:42:13 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 May 2011 01:42:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,224,1304319600"; d="scan'208";a="437365926"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 17 May 2011 01:42:12 -0700
Message-Id: <bee6bd70b11bf594e6e010a7a3b4455bb80b1487.1305622072.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305622072.git.dongxiao.xu@intel.com>
References: <cover.1305622072.git.dongxiao.xu@intel.com>
Old-Date: Tue, 17 May 2011 16:24:18 +0800
Date: Tue, 17 May 2011 16:48:57 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 4/8] hostap: add upstream status for hostap's patch
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
X-List-Received-Date: Tue, 17 May 2011 08:42:13 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Mart it as inappropriate since it is a copying patch.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-bsp/hostap/files/COPYING.patch |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-bsp/hostap/files/COPYING.patch b/meta/recipes-bsp/hostap/files/COPYING.patch
index fe5471e..05c70c9 100644
--- a/meta/recipes-bsp/hostap/files/COPYING.patch
+++ b/meta/recipes-bsp/hostap/files/COPYING.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [other]
+
 diff -ruN hostap-conf-1.0-orig/COPYING hostap-conf-1.0/COPYING
 --- hostap-conf-1.0-orig/COPYING	1970-01-01 08:00:00.000000000 +0800
 +++ hostap-conf-1.0/COPYING	2010-12-09 16:36:48.000000000 +0800
-- 
1.7.1


