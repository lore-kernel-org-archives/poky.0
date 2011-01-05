Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8AE6F4C811E7
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 07:06:35 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jan 2011 05:06:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,278,1291622400"; d="scan'208";a="643647900"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jan 2011 05:06:34 -0800
Message-Id: <e13ade044efa2c3b03cd16e587f7e7838c5cb158.1294232460.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1294232460.git.dexuan.cui@intel.com>
References: <cover.1294232460.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Wed, 5 Jan 2011 20:15:58 +0800
Date: Wed, 05 Jan 2011 21:05:58 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 07/12] pixman: upgrade from 0.20.0 to 0.21.2
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
X-List-Received-Date: Wed, 05 Jan 2011 13:06:35 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../{pixman_0.20.0.bb => pixman_0.21.2.bb}         |    7 ++++---
 1 files changed, 4 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/xorg-lib/{pixman_0.20.0.bb => pixman_0.21.2.bb} (79%)

diff --git a/meta/recipes-graphics/xorg-lib/pixman_0.20.0.bb b/meta/recipes-graphics/xorg-lib/pixman_0.21.2.bb
similarity index 79%
rename from meta/recipes-graphics/xorg-lib/pixman_0.20.0.bb
rename to meta/recipes-graphics/xorg-lib/pixman_0.21.2.bb
index 0ccadcd..224b160 100644
--- a/meta/recipes-graphics/xorg-lib/pixman_0.20.0.bb
+++ b/meta/recipes-graphics/xorg-lib/pixman_0.21.2.bb
@@ -10,9 +10,10 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=fea989a44fb012b5e79584972a863d22 \
 
 DEPENDS = "virtual/libx11"
 
-PR="r0"
+PR = "r0"
 
 EXTRA_OECONF="--disable-gtk"
 
-SRC_URI[md5sum] = "512ec766a911142b901157ba581f6e75"
-SRC_URI[sha256sum] = "4798a9961bf38a1b25cabef0a8a73fd7dcc6b98da187ce55b1420894360188b5"
+SRC_URI[md5sum] = "4bc4cf052635265f7a98ad3e890ae329"
+SRC_URI[sha256sum] = "7ea3601f6ab411645d73db2f37096f5979425d309784a865444ecfa18614d06d"
+
-- 
1.7.2


