Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id DEE1B4C8126E
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 17:41:35 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 15:41:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="597180247"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by orsmga002.jf.intel.com with ESMTP; 27 Jan 2011 15:41:35 -0800
Message-Id: <692f44e2bda5e0399c5e3ec09b4040b755dfcf7c.1296171289.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1296171287.git.dexuan.cui@intel.com>
References: <cover.1296171287.git.dexuan.cui@intel.com>
Old-Date: Fri, 28 Jan 2011 01:18:39 +0800
Date: Fri, 28 Jan 2011  7:40:54 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [Dexuan: Jan 28: PULL 11/16] xf86vidmodeproto: upgrade from 2.3 to 2.3.1
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
X-List-Received-Date: Thu, 27 Jan 2011 23:41:36 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 ...dmodeproto_2.3.bb => xf86vidmodeproto_2.3.1.bb} |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{xf86vidmodeproto_2.3.bb => xf86vidmodeproto_2.3.1.bb} (54%)

diff --git a/meta/recipes-graphics/xorg-proto/xf86vidmodeproto_2.3.bb b/meta/recipes-graphics/xorg-proto/xf86vidmodeproto_2.3.1.bb
similarity index 54%
rename from meta/recipes-graphics/xorg-proto/xf86vidmodeproto_2.3.bb
rename to meta/recipes-graphics/xorg-proto/xf86vidmodeproto_2.3.1.bb
index 49f8c5c..f88e2bd 100644
--- a/meta/recipes-graphics/xorg-proto/xf86vidmodeproto_2.3.bb
+++ b/meta/recipes-graphics/xorg-proto/xf86vidmodeproto_2.3.1.bb
@@ -8,5 +8,5 @@ CONFLICTS = "xxf86vmext"
 PR = "r0"
 PE = "1"
 
-SRC_URI[md5sum] = "4434894fc7d4eeb4a22e6b876d56fdaa"
-SRC_URI[sha256sum] = "8f704613a5407b31c594d05cf8e053f2b05777172a44e7cd2abd8090bd2ac247"
+SRC_URI[md5sum] = "e793ecefeaecfeabd1aed6a01095174e"
+SRC_URI[sha256sum] = "45d9499aa7b73203fd6b3505b0259624afed5c16b941bd04fcf123e5de698770"
-- 
1.7.2


