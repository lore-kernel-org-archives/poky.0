Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2C2A44C80ACB
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:44 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 May 2011 01:56:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; d="scan'208";a="433485540"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 10 May 2011 01:56:26 -0700
Message-Id: <f0e85f72b3e7297d83ac9e08553f9f9879ba03f4.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 15:57:57 +0800
Date: Tue, 10 May 2011 17:01:54 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 25/39] liba52: add upstream status for liba52's patch
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
X-List-Received-Date: Tue, 10 May 2011 08:56:44 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../liba52/liba52/buildcleanup.patch               |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-multimedia/liba52/liba52/buildcleanup.patch b/meta/recipes-multimedia/liba52/liba52/buildcleanup.patch
index a86c5a8..5168100 100644
--- a/meta/recipes-multimedia/liba52/liba52/buildcleanup.patch
+++ b/meta/recipes-multimedia/liba52/liba52/buildcleanup.patch
@@ -4,6 +4,8 @@ around.
 
 RP 23/2/10
 
+Upstream-Status: Inappropriate [configuration]
+
 Index: a52dec-0.7.4/configure.in
 ===================================================================
 --- a52dec-0.7.4.orig/configure.in	2010-02-23 14:51:50.000000000 +0000
-- 
1.7.1


