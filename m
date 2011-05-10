Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0A4704C80AA3
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:18 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 May 2011 01:56:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; 
   d="scan'208";a="231557"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga001.fm.intel.com with ESMTP; 10 May 2011 01:56:18 -0700
Message-Id: <a7c3f150e90c1baccb64d8b4913767b9d70fa1e4.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 15:24:02 +0800
Date: Tue, 10 May 2011 17:01:47 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 19/39] minicom: add upstream status for minicom patches
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
X-List-Received-Date: Tue, 10 May 2011 08:56:19 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../minicom/minicom-2.4/gcc4-scope.patch           |    2 ++
 .../minicom-2.4/rename-conflicting-functions.patch |    2 ++
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-extended/minicom/minicom-2.4/gcc4-scope.patch b/meta/recipes-extended/minicom/minicom-2.4/gcc4-scope.patch
index 5bd47bd..0660cb0 100644
--- a/meta/recipes-extended/minicom/minicom-2.4/gcc4-scope.patch
+++ b/meta/recipes-extended/minicom/minicom-2.4/gcc4-scope.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [others]
+
 --- minicom-2.1/src/window.c.orig	2006-06-14 17:49:53.000000000 +0200
 +++ minicom-2.1/src/window.c	2006-06-14 17:50:14.000000000 +0200
 @@ -62,7 +62,7 @@
diff --git a/meta/recipes-extended/minicom/minicom-2.4/rename-conflicting-functions.patch b/meta/recipes-extended/minicom/minicom-2.4/rename-conflicting-functions.patch
index c344203..1a50f18 100644
--- a/meta/recipes-extended/minicom/minicom-2.4/rename-conflicting-functions.patch
+++ b/meta/recipes-extended/minicom/minicom-2.4/rename-conflicting-functions.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 --- minicom-2.3/src/minicom.c-orig	2009-06-08 14:49:07.000000000 +0200
 +++ minicom-2.3/src/minicom.c	2009-06-08 14:50:23.000000000 +0200
 @@ -63,6 +63,10 @@
-- 
1.7.1


