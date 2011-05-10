Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5622E4C80AAD
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:20 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 May 2011 01:56:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; d="scan'208";a="744945523"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by orsmga001.jf.intel.com with ESMTP; 10 May 2011 01:56:19 -0700
Message-Id: <9d2d3b7998fba5df667fffdb8ef7bd98372e92f2.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 15:26:53 +0800
Date: Tue, 10 May 2011 17:01:48 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 20/39] rpcbind: add upstream status for rpcbind's patch
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
X-List-Received-Date: Tue, 10 May 2011 08:56:20 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../rpcbind/rpcbind/fix_host_path.patch            |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-extended/rpcbind/rpcbind/fix_host_path.patch b/meta/recipes-extended/rpcbind/rpcbind/fix_host_path.patch
index 1b12d83..590b344 100644
--- a/meta/recipes-extended/rpcbind/rpcbind/fix_host_path.patch
+++ b/meta/recipes-extended/rpcbind/rpcbind/fix_host_path.patch
@@ -2,6 +2,8 @@ This fixes the hardcoded HOST path
 
 Signed-off-by: Saul Wold <saul.wold@intel.com>
 
+Upstream-Status: Inappropriate [configuration]
+
 --- rpcbind-0.2.0/src/Makefile.am	2010-09-02 11:47:16.725763886 -0700
 +++ rpcbind-0.2.0_fixed/src/Makefile.am	2010-09-02 11:47:36.077763138 -0700
 @@ -29,6 +29,6 @@
-- 
1.7.1


