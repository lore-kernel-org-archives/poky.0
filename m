Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 270344C80AC5
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:43 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 May 2011 01:56:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; d="scan'208";a="433485518"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 10 May 2011 01:56:23 -0700
Message-Id: <491deebb115f9a919f46081d645c997945fd86ec.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 15:41:07 +0800
Date: Tue, 10 May 2011 17:01:52 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 23/39] flac: add upstream status for flac's patches
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
X-List-Received-Date: Tue, 10 May 2011 08:56:43 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../flac/flac-1.2.1/disable-xmms-plugin.patch      |    1 +
 .../flac/flac-1.2.1/flac-gcc43-fixes.patch         |    1 +
 2 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-multimedia/flac/flac-1.2.1/disable-xmms-plugin.patch b/meta/recipes-multimedia/flac/flac-1.2.1/disable-xmms-plugin.patch
index e2f4fa1..80769a8 100644
--- a/meta/recipes-multimedia/flac/flac-1.2.1/disable-xmms-plugin.patch
+++ b/meta/recipes-multimedia/flac/flac-1.2.1/disable-xmms-plugin.patch
@@ -1,4 +1,5 @@
 # Acquired from OpenEmbedded
+Upstream-Status: Inappropriate [disable feature]
 
 diff -ruN flac-1.2.1-orig/src/Makefile.am flac-1.2.1-new/src/Makefile.am
 --- flac-1.2.1-orig/src/Makefile.am	2010-06-23 15:06:29.167865355 +0800
diff --git a/meta/recipes-multimedia/flac/flac-1.2.1/flac-gcc43-fixes.patch b/meta/recipes-multimedia/flac/flac-1.2.1/flac-gcc43-fixes.patch
index fdb6f13..9c528c2 100644
--- a/meta/recipes-multimedia/flac/flac-1.2.1/flac-gcc43-fixes.patch
+++ b/meta/recipes-multimedia/flac/flac-1.2.1/flac-gcc43-fixes.patch
@@ -1,5 +1,6 @@
 # Acquired from OpenEmbedded
 # Fix no declaration of memcmp()
+Upstream-Status: Pending
 
 diff -urN flac-1.2.1-orig/examples/cpp/encode/file/main.cpp flac-1.2.1/examples/cpp/encode/file/main.cpp
 --- flac-1.2.1-orig/examples/cpp/encode/file/main.cpp	2010-06-23 15:06:29.159481339 +0800
-- 
1.7.1


