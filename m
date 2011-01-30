Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6787A4C811C3
	for <poky@yoctoproject.org>; Sat, 29 Jan 2011 20:25:23 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 29 Jan 2011 18:25:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,398,1291622400"; d="scan'208";a="381677894"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by azsmga001.ch.intel.com with ESMTP; 29 Jan 2011 18:25:22 -0800
Message-Id: <7d3813ab7ba4edd3560259188e7cddc68ae88f3f.1296354078.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1296354078.git.dexuan.cui@intel.com>
References: <cover.1296354078.git.dexuan.cui@intel.com>
Old-Date: Fri, 28 Jan 2011 01:36:16 +0800
Date: Sun, 30 Jan 2011 10:24:39 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [Dexuan: Jan 30: PULL 1/1] xkeyboard-config: upgrade from 2.0 to 2.1
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
X-List-Received-Date: Sun, 30 Jan 2011 02:25:23 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 ...board-config_2.0.bb => xkeyboard-config_2.1.bb} |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-graphics/xorg-lib/{xkeyboard-config_2.0.bb => xkeyboard-config_2.1.bb} (83%)

diff --git a/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.0.bb b/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.bb
similarity index 83%
rename from meta/recipes-graphics/xorg-lib/xkeyboard-config_2.0.bb
rename to meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.bb
index 358bf84..e36280e 100644
--- a/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.0.bb
+++ b/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.bb
@@ -6,9 +6,9 @@ LICENSE = "MIT & MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=0e7f21ca7db975c63467d2e7624a12f9"
 
 SRC_URI = "http://people.freedesktop.org/~svu/xkeyboard-config-${PV}.tar.bz2"
+SRC_URI[md5sum] = "6ce65480445fb2d9c071ad1f002a7675"
+SRC_URI[sha256sum] = "e293aa4b0dd259dbb4f0e7f56fdd95db5047d052c7b3b80922fe5663923a805d"
 
-SRC_URI[md5sum] = "bb8a98ee61cdc4bd835fdfd2b5cee3e6"
-SRC_URI[sha256sum] = "175f275f5a041edda41fe0f27e59061d1d9c6615959475e4d68ad773b6a2e376"
 SECTION = "x11/libs"
 DEPENDS = "intltool xkbcomp-native glib-2.0"
 
-- 
1.7.2


