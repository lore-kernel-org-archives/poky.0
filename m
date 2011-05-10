Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 801684C80A1D
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:21 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 May 2011 01:56:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; 
   d="scan'208";a="231569"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga001.fm.intel.com with ESMTP; 10 May 2011 01:56:20 -0700
Message-Id: <d0446f2f9177ea1b490464bb9e643888ef2c9c63.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 15:32:39 +0800
Date: Tue, 10 May 2011 17:01:49 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 21/39] which: add upstream status for which's patch
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
X-List-Received-Date: Tue, 10 May 2011 08:56:21 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../which/which-2.20/remove-declaration.patch      |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-extended/which/which-2.20/remove-declaration.patch b/meta/recipes-extended/which/which-2.20/remove-declaration.patch
index 09b8143..d3340a3 100644
--- a/meta/recipes-extended/which/which-2.20/remove-declaration.patch
+++ b/meta/recipes-extended/which/which-2.20/remove-declaration.patch
@@ -3,6 +3,8 @@ declared in unistd.h
 
 Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
 
+Upstream-Status: Inappropriate [embedded specific]
+
 diff -ruN which-2.20-orig/bash.c which-2.20/bash.c
 --- which-2.20-orig/bash.c	2010-08-03 12:59:08.897088878 +0800
 +++ which-2.20/bash.c	2010-08-03 13:17:23.406097212 +0800
-- 
1.7.1


