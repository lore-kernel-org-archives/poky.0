Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2C7454C81016
	for <poky@yoctoproject.org>; Wed, 11 May 2011 01:29:52 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 May 2011 23:29:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,350,1301900400"; d="scan'208";a="745544828"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by orsmga001.jf.intel.com with ESMTP; 10 May 2011 23:29:51 -0700
Message-Id: <290fc18499df0e94ebb43b4e688a6f675b5ce763.1305094351.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1305094351.git.dexuan.cui@intel.com>
References: <cover.1305094351.git.dexuan.cui@intel.com>
Old-Date: Wed, 11 May 2011 13:48:36 +0800
Date: Wed, 11 May 2011 14:27:15 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 24/24] liblbxutil: update its patch's Upstream-Status
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
X-List-Received-Date: Wed, 11 May 2011 06:29:52 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../xorg-lib/liblbxutil/mkg3states.patch           |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta-demoapps/recipes-graphics/xorg-lib/liblbxutil/mkg3states.patch b/meta-demoapps/recipes-graphics/xorg-lib/liblbxutil/mkg3states.patch
index 029d761..63c1847 100644
--- a/meta-demoapps/recipes-graphics/xorg-lib/liblbxutil/mkg3states.patch
+++ b/meta-demoapps/recipes-graphics/xorg-lib/liblbxutil/mkg3states.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 During the build process the mkg3states binary needs to be run. This patch
 allows it to be built with the build systems gcc allowing this to work.
 
-- 
1.7.2


