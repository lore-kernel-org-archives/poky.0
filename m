Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 53D2C4C80FA4
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 20:48:55 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Nov 2010 18:48:55 -0800
Message-Id: <b9dded$h7k3g9@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,274,1288594800"; d="scan'208";a="578424335"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.36])
	by orsmga002.jf.intel.com with ESMTP; 28 Nov 2010 18:48:54 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Mon, 29 Nov 2010 10:21:48 +0800
To: poky@pokylinux.org
Subject: [PATCH 2/4] font-alias: remove unnecessary patch on COPYING
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
X-List-Received-Date: Mon, 29 Nov 2010 02:48:55 -0000

since the COPYING is up-to-date already, or else it simply causes confusion to do_patch

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 .../recipes-graphics/xorg-font/font-alias_1.0.3.bb |    4 +---
 1 files changed, 1 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb b/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb
index 667d615..c146439 100644
--- a/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb
+++ b/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb
@@ -9,11 +9,9 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=bf0158b89be493d523d69d9f29265038 \
                     file://misc/fonts.alias;md5=a8ec05d528431d4c9703b55a7efd67a8 \
                     file://100dpi/fonts.alias;md5=85bebd6ca213aa656c301a72eb4397cb"
 
-SRC_URI += "file://fix_COPYING_1f8141a5e3b585dfccc748400b05c9c24b41e767.patch"
-
 DEPENDS = "virtual/xserver font-util"
 RDEPENDS = "encodings font-util"
 RDEPENDS_virtclass-native = "font-util"
 
 PE = "1"
-PR = "${INC_PR}.0"
+PR = "${INC_PR}.1"
-- 
1.6.0.4


