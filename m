Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id A4B3D4C80A8C
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:15 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 May 2011 01:56:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; d="scan'208";a="433485454"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 10 May 2011 01:56:14 -0700
Message-Id: <90422de22ca49425f0fb88cca21287de4906ce08.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 15:18:22 +0800
Date: Tue, 10 May 2011 17:01:43 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 16/39] makedevs: add upstream status for makedevs's patch
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
X-List-Received-Date: Tue, 10 May 2011 08:56:15 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../makedevs/makedevs-1.0.0/COPYING.patch          |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/makedevs/makedevs-1.0.0/COPYING.patch b/meta/recipes-devtools/makedevs/makedevs-1.0.0/COPYING.patch
index 3208ad7..c63ab53 100644
--- a/meta/recipes-devtools/makedevs/makedevs-1.0.0/COPYING.patch
+++ b/meta/recipes-devtools/makedevs/makedevs-1.0.0/COPYING.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inapropriate [others]
+
 diff -ruN makedevs-1.0.0-orig/COPYING makedevs-1.0.0/COPYING
 --- makedevs-1.0.0-orig/COPYING	1970-01-01 08:00:00.000000000 +0800
 +++ makedevs-1.0.0/COPYING	2010-12-09 16:42:20.274984665 +0800
-- 
1.7.1


