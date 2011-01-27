Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4F9DB4C8127D
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 17:41:38 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 15:41:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="597180272"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by orsmga002.jf.intel.com with ESMTP; 27 Jan 2011 15:41:38 -0800
Message-Id: <17a26b55ed1004cc28d4e2d39da5ca09ee868939.1296171289.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1296171287.git.dexuan.cui@intel.com>
References: <cover.1296171287.git.dexuan.cui@intel.com>
Old-Date: Fri, 28 Jan 2011 01:36:16 +0800
Date: Fri, 28 Jan 2011  7:40:57 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [Dexuan: Jan 28: PULL 13/16] xkeyboard-config: upgrade from 2.0 to 2.1
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
X-List-Received-Date: Thu, 27 Jan 2011 23:41:39 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 ...board-config_2.0.bb => xkeyboard-config_2.1.bb} |    6 ++----
 1 files changed, 2 insertions(+), 4 deletions(-)
 rename meta/recipes-graphics/xorg-lib/{xkeyboard-config_2.0.bb => xkeyboard-config_2.1.bb} (76%)

diff --git a/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.0.bb b/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.bb
similarity index 76%
rename from meta/recipes-graphics/xorg-lib/xkeyboard-config_2.0.bb
rename to meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.bb
index 358bf84..637f880 100644
--- a/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.0.bb
+++ b/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.bb
@@ -7,10 +7,8 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=0e7f21ca7db975c63467d2e7624a12f9"
 
 SRC_URI = "http://people.freedesktop.org/~svu/xkeyboard-config-${PV}.tar.bz2"
 
-SRC_URI[md5sum] = "bb8a98ee61cdc4bd835fdfd2b5cee3e6"
-SRC_URI[sha256sum] = "175f275f5a041edda41fe0f27e59061d1d9c6615959475e4d68ad773b6a2e376"
-SECTION = "x11/libs"
-DEPENDS = "intltool xkbcomp-native glib-2.0"
+SRC_URI[md5sum] = "6ce65480445fb2d9c071ad1f002a7675"
+SRC_URI[sha256sum] = "e293aa4b0dd259dbb4f0e7f56fdd95db5047d052c7b3b80922fe5663923a805d"
 
 PR = "r0"
 
-- 
1.7.2


