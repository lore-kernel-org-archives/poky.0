Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 93AD74C811F0
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 07:06:38 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jan 2011 05:06:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,278,1291622400"; d="scan'208";a="643647918"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jan 2011 05:06:37 -0800
Message-Id: <3d9ab96e3a66438b372078923f96f646b687212b.1294232460.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1294232460.git.dexuan.cui@intel.com>
References: <cover.1294232460.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Wed, 5 Jan 2011 20:17:30 +0800
Date: Wed, 05 Jan 2011 21:06:21 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 09/12] libxxf86misc: upgrade from 1.0.2 to 1.0.3
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
X-List-Received-Date: Wed, 05 Jan 2011 13:06:38 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 ...libxxf86misc_1.0.2.bb => libxxf86misc_1.0.3.bb} |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)
 rename meta/recipes-graphics/xorg-lib/{libxxf86misc_1.0.2.bb => libxxf86misc_1.0.3.bb} (66%)

diff --git a/meta/recipes-graphics/xorg-lib/libxxf86misc_1.0.2.bb b/meta/recipes-graphics/xorg-lib/libxxf86misc_1.0.3.bb
similarity index 66%
rename from meta/recipes-graphics/xorg-lib/libxxf86misc_1.0.2.bb
rename to meta/recipes-graphics/xorg-lib/libxxf86misc_1.0.3.bb
index 12a1ad7..e90ecc7 100644
--- a/meta/recipes-graphics/xorg-lib/libxxf86misc_1.0.2.bb
+++ b/meta/recipes-graphics/xorg-lib/libxxf86misc_1.0.3.bb
@@ -13,5 +13,6 @@ PE = "1"
 
 XORG_PN = "libXxf86misc"
 
-SRC_URI[md5sum] = "51fed53e8de067d4b8666f75a0212400"
-SRC_URI[sha256sum] = "8e64b6b1bf34fcd112b1fd866d77e110b47794e825a996e4492c0ee408957cb3"
+SRC_URI[md5sum] = "6bc0bf78909fd71021c466c793d4385c"
+SRC_URI[sha256sum] = "563f4200862efd3334c33a669e0a0aae5bab31f3998db75b87a99a697cc26b5b"
+
-- 
1.7.2


