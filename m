Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 61DBB4C80FD4
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 20:12:08 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Nov 2010 18:12:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="627534115"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by fmsmga002.fm.intel.com with ESMTP; 16 Nov 2010 18:12:07 -0800
Message-Id: <a1286c5be86603a0227edd91f1a64f03c2749e82.1289958240.git.ke.yu@intel.com>
In-Reply-To: <cover.1289958240.git.ke.yu@intel.com>
References: <cover.1289958240.git.ke.yu@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Date: Tue, 16 Nov 2010 23:16:18 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 08/12] scrnsaverproto: upgrade from 1.2.0 to the latest version 1.2.1
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
X-List-Received-Date: Wed, 17 Nov 2010 02:12:08 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 ...bxscrnsaver_1.2.0.bb => libxscrnsaver_1.2.1.bb} |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-graphics/xorg-lib/{libxscrnsaver_1.2.0.bb => libxscrnsaver_1.2.1.bb} (95%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index 98b04a8..b00dbc0 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -91,7 +91,7 @@ PREFERRED_VERSION_recordproto ?= "1.14.1"
 PREFERRED_VERSION_renderproto ?= "0.11"
 PREFERRED_VERSION_renderproto-nativesdk ?= "0.11"
 PREFERRED_VERSION_resourceproto ?= "1.1.0"
-PREFERRED_VERSION_scrnsaverproto ?= "1.2.0"
+PREFERRED_VERSION_scrnsaverproto ?= "1.2.1"
 PREFERRED_VERSION_trapproto ?= "3.4.3"
 PREFERRED_VERSION_util-macros ?= "1.10.0"
 PREFERRED_VERSION_util-macros-native ?= "1.10.0"
diff --git a/meta/recipes-graphics/xorg-lib/libxscrnsaver_1.2.0.bb b/meta/recipes-graphics/xorg-lib/libxscrnsaver_1.2.1.bb
similarity index 95%
rename from meta/recipes-graphics/xorg-lib/libxscrnsaver_1.2.0.bb
rename to meta/recipes-graphics/xorg-lib/libxscrnsaver_1.2.1.bb
index ff22c33..fd3641d 100644
--- a/meta/recipes-graphics/xorg-lib/libxscrnsaver_1.2.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libxscrnsaver_1.2.1.bb
@@ -5,7 +5,7 @@ LICENSE = "GPL"
 DEPENDS += "libxext scrnsaverproto"
 PROVIDES = "libxss"
 RREPLACES = "libxss"
-PR = "r1"
+PR = "r0"
 PE = "1"
 
 XORG_PN = "libXScrnSaver"
-- 
1.7.0.4


