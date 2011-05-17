Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id BF8014C80AC9
	for <poky@yoctoproject.org>; Tue, 17 May 2011 03:42:18 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 May 2011 01:42:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,224,1304319600"; d="scan'208";a="437365957"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 17 May 2011 01:42:18 -0700
Message-Id: <451113e90199ae0bd68626186a39e26569a5fcd1.1305622072.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305622072.git.dongxiao.xu@intel.com>
References: <cover.1305622072.git.dongxiao.xu@intel.com>
Old-Date: Tue, 17 May 2011 16:33:50 +0800
Date: Tue, 17 May 2011 16:49:02 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 8/8] add upstream status for opkg's patches
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
X-List-Received-Date: Tue, 17 May 2011 08:42:19 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

mark add_vercmp.patch as inappropriate since the added function is not
used.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../opkg/opkg-0.1.8/add_vercmp.patch               |    2 ++
 .../opkg/opkg-0.1.8/headerfix.patch                |    2 ++
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/opkg/opkg-0.1.8/add_vercmp.patch b/meta/recipes-devtools/opkg/opkg-0.1.8/add_vercmp.patch
index 540be83..c3396d5 100644
--- a/meta/recipes-devtools/opkg/opkg-0.1.8/add_vercmp.patch
+++ b/meta/recipes-devtools/opkg/opkg-0.1.8/add_vercmp.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [other]
+
 Index: trunk/libopkg/opkg.c
 ===================================================================
 --- trunk.orig/libopkg/opkg.c	2010-01-26 20:32:19.000000000 +0000
diff --git a/meta/recipes-devtools/opkg/opkg-0.1.8/headerfix.patch b/meta/recipes-devtools/opkg/opkg-0.1.8/headerfix.patch
index d0711ec..b3515a0 100644
--- a/meta/recipes-devtools/opkg/opkg-0.1.8/headerfix.patch
+++ b/meta/recipes-devtools/opkg/opkg-0.1.8/headerfix.patch
@@ -2,6 +2,8 @@ Without this, the FILE reference in this header can cause compile issues.
 
 RP - 29/1/10
 
+Upstream-Status: Pending
+
 Index: trunk/libopkg/pkg_dest.h
 ===================================================================
 --- trunk.orig/libopkg/pkg_dest.h	2010-01-29 09:37:22.000000000 +0000
-- 
1.7.1


