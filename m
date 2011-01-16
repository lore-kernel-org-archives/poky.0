Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B48E94C81205
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 06:15:42 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Jan 2011 04:15:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,329,1291622400"; d="scan'208";a="593465387"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 16 Jan 2011 04:15:11 -0800
Message-Id: <3fa0aa89f544d25aab07333ee5e6dbd8b607a517.1295179186.git.ke.yu@intel.com>
In-Reply-To: <cover.1295179186.git.ke.yu@intel.com>
References: <cover.1295179186.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Fri, 14 Jan 2011 15:56:34 +0800
Date: Sun, 16 Jan 2011 20:19:47 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 12/19] libdrm: upgrade to 2.4.23
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
X-List-Received-Date: Sun, 16 Jan 2011 12:15:42 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../installtests.patch                             |    0
 .../drm/{libdrm_2.4.22.bb => libdrm_2.4.23.bb}     |    4 ++--
 3 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/drm/{libdrm-2.4.22 => libdrm-2.4.23}/installtests.patch (100%)
 rename meta/recipes-graphics/drm/{libdrm_2.4.22.bb => libdrm_2.4.23.bb} (54%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index 2a982ba..84460ca 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -137,7 +137,7 @@ PREFERRED_VERSION_xtrans-nativesdk ?= "1.2.6"
 PREFERRED_VERSION_xvinfo ?= "1.0.2"
 PREFERRED_VERSION_xwininfo ?= "1.1.0"
 PREFERRED_VERSION_mesa-dri ?= "7.9"
-PREFERRED_VERSION_libdrm ?= "2.4.22"
+PREFERRED_VERSION_libdrm ?= "2.4.23"
 PREFERRED_VERSION_xcb-proto ?= "1.6"
 PREFERRED_VERSION_libxcb ?= "1.7"
 PREFERRED_VERSION_libxcb-nativesdk ?= "1.7"
diff --git a/meta/recipes-graphics/drm/libdrm-2.4.22/installtests.patch b/meta/recipes-graphics/drm/libdrm-2.4.23/installtests.patch
similarity index 100%
rename from meta/recipes-graphics/drm/libdrm-2.4.22/installtests.patch
rename to meta/recipes-graphics/drm/libdrm-2.4.23/installtests.patch
diff --git a/meta/recipes-graphics/drm/libdrm_2.4.22.bb b/meta/recipes-graphics/drm/libdrm_2.4.23.bb
similarity index 54%
rename from meta/recipes-graphics/drm/libdrm_2.4.22.bb
rename to meta/recipes-graphics/drm/libdrm_2.4.23.bb
index d8e0fff..1546cea 100644
--- a/meta/recipes-graphics/drm/libdrm_2.4.22.bb
+++ b/meta/recipes-graphics/drm/libdrm_2.4.23.bb
@@ -3,7 +3,7 @@ require libdrm.inc
 LIC_FILES_CHKSUM = "file://xf86drm.c;beginline=9;endline=32;md5=c8a3b961af7667c530816761e949dc71"
 
 SRC_URI += "file://installtests.patch"
-SRC_URI[md5sum] = "3bdfa33f35d1c902e5115cceb5500c83"
-SRC_URI[sha256sum] = "0bb0e594e4094d9000d80f38e96e8f640b6364f96cfef5b970cf4481443c6b3d"
+SRC_URI[md5sum] = "7577ff36ec364d88fae466d4f7fc5fc6"
+SRC_URI[sha256sum] = "c0f06d68c3edba7a1ad937f5481a8c287efd4cd368cee66cd9e678b06a911c18"
 
 PR = "r0"
-- 
1.7.0.4


