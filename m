Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3F6B34C80AC9
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:46 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 May 2011 01:56:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; d="scan'208";a="433485637"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 10 May 2011 01:56:37 -0700
Message-Id: <1e434c98971fefb3dd38e584b4f2f74937f07311.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 16:48:00 +0800
Date: Tue, 10 May 2011 17:02:06 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 34/39] libopensync-plugin-evolution2: add upstream status for its patch
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
X-List-Received-Date: Tue, 10 May 2011 08:56:46 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../libopensync-plugin-evolution2/0.37-fixes.patch |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-evolution2/0.37-fixes.patch b/meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-evolution2/0.37-fixes.patch
index 4a1802c..9ef0353 100644
--- a/meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-evolution2/0.37-fixes.patch
+++ b/meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-evolution2/0.37-fixes.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 Index: libopensync-plugin-evolution2-0.36/cmake/modules/FindOpenSync.cmake
 ===================================================================
 --- libopensync-plugin-evolution2-0.36.orig/cmake/modules/FindOpenSync.cmake	2008-10-20 13:07:14.000000000 +0100
-- 
1.7.1


