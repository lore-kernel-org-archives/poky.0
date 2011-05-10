Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 99A5D4C80A47
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:06 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 May 2011 01:56:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; d="scan'208";a="433485387"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 10 May 2011 01:56:05 -0700
Message-Id: <f14f43eeeb5c5ad12c29b6f3c24ceed8ca64c136.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 13:25:54 +0800
Date: Tue, 10 May 2011 17:01:34 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 09/39] libtelepathy: add upstream status for libtelepathy's patches
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
X-List-Received-Date: Tue, 10 May 2011 08:56:06 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../telepathy/libtelepathy/doublefix.patch         |    2 ++
 .../telepathy/libtelepathy/prefer_python_2.5.patch |    2 ++
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-connectivity/telepathy/libtelepathy/doublefix.patch b/meta/recipes-connectivity/telepathy/libtelepathy/doublefix.patch
index 5ff1c43..a7737fb 100644
--- a/meta/recipes-connectivity/telepathy/libtelepathy/doublefix.patch
+++ b/meta/recipes-connectivity/telepathy/libtelepathy/doublefix.patch
@@ -2,6 +2,8 @@ Fix double reference to this file to work with recent autoconf+automake
 
 RP 1/2/10
 
+Upstream-Status: Inappropriate [configuration]
+
 Index: libtelepathy-0.3.3/src/Makefile.am
 ===================================================================
 --- libtelepathy-0.3.3.orig/src/Makefile.am	2010-02-01 13:13:50.869038984 +0000
diff --git a/meta/recipes-connectivity/telepathy/libtelepathy/prefer_python_2.5.patch b/meta/recipes-connectivity/telepathy/libtelepathy/prefer_python_2.5.patch
index ec01567..37679ab 100644
--- a/meta/recipes-connectivity/telepathy/libtelepathy/prefer_python_2.5.patch
+++ b/meta/recipes-connectivity/telepathy/libtelepathy/prefer_python_2.5.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 Index: libtelepathy-0.3.1/configure.ac
 ===================================================================
 --- libtelepathy-0.3.1.orig/configure.ac	2007-11-22 19:05:56.000000000 +0000
-- 
1.7.1


