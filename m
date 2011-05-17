Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id D1C6D4C80B65
	for <poky@yoctoproject.org>; Tue, 17 May 2011 03:42:15 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 May 2011 01:42:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,224,1304319600"; d="scan'208";a="437365937"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 17 May 2011 01:42:15 -0700
Message-Id: <05c84581a1b896a48d6d0b5702e6e14a424469a4.1305622072.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305622072.git.dongxiao.xu@intel.com>
References: <cover.1305622072.git.dongxiao.xu@intel.com>
Old-Date: Tue, 17 May 2011 16:26:52 +0800
Date: Tue, 17 May 2011 16:49:00 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 6/8] glib-2.0: add upstream status for glib-2.0's patch
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
X-List-Received-Date: Tue, 17 May 2011 08:42:16 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-core/glib-2.0/glib-2.0/no-iconv.patch |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-core/glib-2.0/glib-2.0/no-iconv.patch b/meta/recipes-core/glib-2.0/glib-2.0/no-iconv.patch
index cca57d4..a100192 100644
--- a/meta/recipes-core/glib-2.0/glib-2.0/no-iconv.patch
+++ b/meta/recipes-core/glib-2.0/glib-2.0/no-iconv.patch
@@ -6,6 +6,8 @@ impact on case when they are available.
 
 Signed-off-by: Khem Raj <raj.khem@gmail.com>
 
+Upstream-Status: Inappropriate [embedded specific]
+
 
 Index: glib-2.26.1/glib/gconvert.c
 ===================================================================
-- 
1.7.1


