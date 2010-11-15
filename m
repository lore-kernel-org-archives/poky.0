Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id A174B4C811A5
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 11:07:35 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Nov 2010 09:07:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,218,1288594800"; d="scan'208";a="350464171"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by azsmga001.ch.intel.com with ESMTP; 18 Nov 2010 09:07:34 -0800
Message-Id: <b4e68b64804498c904f62fc865c601e454335e4a.1290097804.git.ke.yu@intel.com>
In-Reply-To: <cover.1290097804.git.ke.yu@intel.com>
References: <cover.1290097804.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Mon, 15 Nov 2010 21:01:34 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 5/5] pixman: upgrade from 0.18.2 to 0.20.0
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
X-List-Received-Date: Thu, 18 Nov 2010 17:07:35 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../{pixman_0.18.2.bb => pixman_0.20.0.bb}         |    3 +++
 2 files changed, 4 insertions(+), 1 deletions(-)
 rename meta/recipes-graphics/xorg-lib/{pixman_0.18.2.bb => pixman_0.20.0.bb} (80%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index afa3422..b93d0f4 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -83,7 +83,7 @@ PREFERRED_VERSION_libxxf86vm ?= "1.1.0"
 PREFERRED_VERSION_lndir ?= "1.0.1"
 PREFERRED_VERSION_makedepend ?= "1.0.2"
 PREFERRED_VERSION_makedepend-native ?= "1.0.2"
-PREFERRED_VERSION_pixman ?= "0.18.2"
+PREFERRED_VERSION_pixman ?= "0.20.0"
 PREFERRED_VERSION_printproto ?= "1.0.4"
 PREFERRED_VERSION_randrproto ?= "1.3.1"
 PREFERRED_VERSION_randrproto-nativesdk ?= "1.3.1"
diff --git a/meta/recipes-graphics/xorg-lib/pixman_0.18.2.bb b/meta/recipes-graphics/xorg-lib/pixman_0.20.0.bb
similarity index 80%
rename from meta/recipes-graphics/xorg-lib/pixman_0.18.2.bb
rename to meta/recipes-graphics/xorg-lib/pixman_0.20.0.bb
index 3bc1f02..0ccadcd 100644
--- a/meta/recipes-graphics/xorg-lib/pixman_0.18.2.bb
+++ b/meta/recipes-graphics/xorg-lib/pixman_0.20.0.bb
@@ -13,3 +13,6 @@ DEPENDS = "virtual/libx11"
 PR="r0"
 
 EXTRA_OECONF="--disable-gtk"
+
+SRC_URI[md5sum] = "512ec766a911142b901157ba581f6e75"
+SRC_URI[sha256sum] = "4798a9961bf38a1b25cabef0a8a73fd7dcc6b98da187ce55b1420894360188b5"
-- 
1.7.0.4


