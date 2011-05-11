Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 392934C80AC1
	for <poky@yoctoproject.org>; Wed, 11 May 2011 01:29:38 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 May 2011 23:29:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,350,1301900400"; d="scan'208";a="641092957"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by orsmga002.jf.intel.com with ESMTP; 10 May 2011 23:29:37 -0700
Message-Id: <3ef79453f7e67ca290d18aad038ef3c1d679c5d1.1305094351.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1305094351.git.dexuan.cui@intel.com>
References: <cover.1305094351.git.dexuan.cui@intel.com>
Old-Date: Wed, 11 May 2011 13:16:38 +0800
Date: Wed, 11 May 2011 14:27:01 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 13/24] libxcalibrate: update its patch's Upstream-Status
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
X-List-Received-Date: Wed, 11 May 2011 06:29:38 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../xorg-lib/libxcalibrate/fix-xcb.patch           |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/xorg-lib/libxcalibrate/fix-xcb.patch b/meta/recipes-graphics/xorg-lib/libxcalibrate/fix-xcb.patch
index 0d7efc7..d614883 100644
--- a/meta/recipes-graphics/xorg-lib/libxcalibrate/fix-xcb.patch
+++ b/meta/recipes-graphics/xorg-lib/libxcalibrate/fix-xcb.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 There is no extra reply data and if we say not to disgard it, xcb
 throws fatal asserts.
 
-- 
1.7.2


