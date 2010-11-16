Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id D1C934C811CF
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 02:49:32 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Nov 2010 00:49:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,210,1288594800"; d="scan'208";a="627604438"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by fmsmga002.fm.intel.com with ESMTP; 17 Nov 2010 00:49:32 -0800
Message-Id: <df83e573651f479f8d670ba93c672df3472c5135.1289982119.git.ke.yu@intel.com>
In-Reply-To: <cover.1289982119.git.ke.yu@intel.com>
References: <cover.1289982119.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Tue, 16 Nov 2010 14:39:13 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 04/10] libdrm: upgrade from 2.4.21 to 2.4.22
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
X-List-Received-Date: Wed, 17 Nov 2010 08:49:33 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../installtests.patch                             |    0
 .../drm/{libdrm_2.4.21.bb => libdrm_2.4.22.bb}     |    0
 3 files changed, 1 insertions(+), 1 deletions(-)
 rename meta/recipes-graphics/drm/{libdrm-2.4.21 => libdrm-2.4.22}/installtests.patch (100%)
 rename meta/recipes-graphics/drm/{libdrm_2.4.21.bb => libdrm_2.4.22.bb} (100%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index 0010e72..b8e9d37 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -137,7 +137,7 @@ PREFERRED_VERSION_xtrans-nativesdk ?= "1.2.5"
 PREFERRED_VERSION_xvinfo ?= "1.0.2"
 PREFERRED_VERSION_xwininfo ?= "1.1.0"
 PREFERRED_VERSION_mesa-dri ?= "7.9"
-PREFERRED_VERSION_libdrm ?= "2.4.21"
+PREFERRED_VERSION_libdrm ?= "2.4.22"
 PREFERRED_VERSION_xcb-proto ?= "1.6"
 PREFERRED_VERSION_libxcb ?= "1.6"
 PREFERRED_VERSION_libxcb-nativesdk ?= "1.6"
diff --git a/meta/recipes-graphics/drm/libdrm-2.4.21/installtests.patch b/meta/recipes-graphics/drm/libdrm-2.4.22/installtests.patch
similarity index 100%
rename from meta/recipes-graphics/drm/libdrm-2.4.21/installtests.patch
rename to meta/recipes-graphics/drm/libdrm-2.4.22/installtests.patch
diff --git a/meta/recipes-graphics/drm/libdrm_2.4.21.bb b/meta/recipes-graphics/drm/libdrm_2.4.22.bb
similarity index 100%
rename from meta/recipes-graphics/drm/libdrm_2.4.21.bb
rename to meta/recipes-graphics/drm/libdrm_2.4.22.bb
-- 
1.7.0.4


