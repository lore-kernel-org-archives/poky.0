Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id AFA154C80AC9
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:46 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 May 2011 01:56:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; d="scan'208";a="433485644"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 10 May 2011 01:56:39 -0700
Message-Id: <df4b5904e76b3055d114dd466484b22527f1e7c2.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 16:48:48 +0800
Date: Tue, 10 May 2011 17:02:08 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 35/39] libopensync-plugin-syncml: add upstream status for its patch
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
 .../libopensync-plugin-syncml/fixerror.patch       |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-syncml/fixerror.patch b/meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-syncml/fixerror.patch
index 7dad889..9e7a260 100644
--- a/meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-syncml/fixerror.patch
+++ b/meta-demoapps/recipes-connectivity/opensync/libopensync-plugin-syncml/fixerror.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [others]
+
 Index: libopensync-plugin-syncml-0.38/src/syncml_callbacks.c
 ===================================================================
 --- libopensync-plugin-syncml-0.38.orig/src/syncml_callbacks.c	2009-07-31 10:30:33.000000000 +0100
-- 
1.7.1


