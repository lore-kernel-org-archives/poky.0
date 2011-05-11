Return-Path: <dexuan.cui@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id D845E4C80FED
	for <poky@yoctoproject.org>; Wed, 11 May 2011 01:29:50 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 May 2011 23:29:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,350,1301900400"; d="scan'208";a="434107513"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by azsmga001.ch.intel.com with ESMTP; 10 May 2011 23:29:50 -0700
Message-Id: <d81dbf92794e317516a1b94c39544753992ecf49.1305094351.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1305094351.git.dexuan.cui@intel.com>
References: <cover.1305094351.git.dexuan.cui@intel.com>
Old-Date: Wed, 11 May 2011 13:45:38 +0800
Date: Wed, 11 May 2011 14:27:13 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 23/24] libxklavier: update its patch's Upstream-Status
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
X-List-Received-Date: Wed, 11 May 2011 06:29:51 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../libxklavier/libxklavier/pkgconfigfix.patch     |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta-demoapps/recipes-graphics/libxklavier/libxklavier/pkgconfigfix.patch b/meta-demoapps/recipes-graphics/libxklavier/libxklavier/pkgconfigfix.patch
index 4aaafb2..f58f30b 100644
--- a/meta-demoapps/recipes-graphics/libxklavier/libxklavier/pkgconfigfix.patch
+++ b/meta-demoapps/recipes-graphics/libxklavier/libxklavier/pkgconfigfix.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 Index: libxklavier-3.7/libxklavier.pc.in
 ===================================================================
 --- libxklavier-3.7.orig/libxklavier.pc.in	2009-06-10 15:58:46.000000000 +0100
-- 
1.7.2


