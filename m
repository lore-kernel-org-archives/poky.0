Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9396A4C80A70
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:07 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 May 2011 01:56:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; d="scan'208";a="433485397"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 10 May 2011 01:56:06 -0700
Message-Id: <cb15d2f876b8cb192bd7d9c3c1e7601d04db23bd.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 13:27:06 +0800
Date: Tue, 10 May 2011 17:01:35 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 10/39] telepathy-python: add upstream status for telepahty-python's patches
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
X-List-Received-Date: Tue, 10 May 2011 08:56:07 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../telepathy-python-0.15.19/parallel_make.patch   |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-connectivity/telepathy/telepathy-python-0.15.19/parallel_make.patch b/meta/recipes-connectivity/telepathy/telepathy-python-0.15.19/parallel_make.patch
index 145e17b..f1f3f56 100644
--- a/meta/recipes-connectivity/telepathy/telepathy-python-0.15.19/parallel_make.patch
+++ b/meta/recipes-connectivity/telepathy/telepathy-python-0.15.19/parallel_make.patch
@@ -5,6 +5,8 @@ src/_generated directory that tasks are based on.
 
 Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
 
+Upstream-Status: Pending
+
 diff -ruN telepathy-python-0.15.19-orig/src/Makefile.am telepathy-python-0.15.19/src/Makefile.am
 --- telepathy-python-0.15.19-orig/src/Makefile.am	2011-03-10 08:51:49.000000000 +0800
 +++ telepathy-python-0.15.19/src/Makefile.am	2011-03-10 08:54:45.000000000 +0800
-- 
1.7.1


