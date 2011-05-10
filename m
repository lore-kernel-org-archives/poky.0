Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B45604C80A92
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:16 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 May 2011 01:56:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; 
   d="scan'208";a="231548"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga001.fm.intel.com with ESMTP; 10 May 2011 01:56:15 -0700
Message-Id: <9b17aaa85f5933644afc1c229aa9907892ce992e.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 15:20:12 +0800
Date: Tue, 10 May 2011 17:01:44 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 17/39] opkg: add upstream status for opkg's patches
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
X-List-Received-Date: Tue, 10 May 2011 08:56:16 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-devtools/opkg/opkg/add_vercmp.patch |    2 ++
 meta/recipes-devtools/opkg/opkg/headerfix.patch  |    2 ++
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/opkg/opkg/add_vercmp.patch b/meta/recipes-devtools/opkg/opkg/add_vercmp.patch
index 540be83..1203c54 100644
--- a/meta/recipes-devtools/opkg/opkg/add_vercmp.patch
+++ b/meta/recipes-devtools/opkg/opkg/add_vercmp.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [function not used]
+
 Index: trunk/libopkg/opkg.c
 ===================================================================
 --- trunk.orig/libopkg/opkg.c	2010-01-26 20:32:19.000000000 +0000
diff --git a/meta/recipes-devtools/opkg/opkg/headerfix.patch b/meta/recipes-devtools/opkg/opkg/headerfix.patch
index d0711ec..b3515a0 100644
--- a/meta/recipes-devtools/opkg/opkg/headerfix.patch
+++ b/meta/recipes-devtools/opkg/opkg/headerfix.patch
@@ -2,6 +2,8 @@ Without this, the FILE reference in this header can cause compile issues.
 
 RP - 29/1/10
 
+Upstream-Status: Pending
+
 Index: trunk/libopkg/pkg_dest.h
 ===================================================================
 --- trunk.orig/libopkg/pkg_dest.h	2010-01-29 09:37:22.000000000 +0000
-- 
1.7.1


