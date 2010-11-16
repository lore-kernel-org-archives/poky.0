Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8287E4C80FA7
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 11:09:00 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 18 Nov 2010 09:07:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,218,1288594800"; d="scan'208";a="678796468"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga001.jf.intel.com with ESMTP; 18 Nov 2010 09:07:06 -0800
Message-Id: <d95bd78eca2a2449d7f2582996a33eeb6c22309f.1290097804.git.ke.yu@intel.com>
In-Reply-To: <cover.1290097804.git.ke.yu@intel.com>
References: <cover.1290097804.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Tue, 16 Nov 2010 14:39:13 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/5] libdrm: upgrade from 2.4.21 to 2.4.22
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
X-List-Received-Date: Thu, 18 Nov 2010 17:09:00 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../installtests.patch                             |    0
 meta/recipes-graphics/drm/libdrm_2.4.21.bb         |    4 ----
 meta/recipes-graphics/drm/libdrm_2.4.22.bb         |    7 +++++++
 4 files changed, 8 insertions(+), 5 deletions(-)
 rename meta/recipes-graphics/drm/{libdrm-2.4.21 => libdrm-2.4.22}/installtests.patch (100%)
 delete mode 100644 meta/recipes-graphics/drm/libdrm_2.4.21.bb
 create mode 100644 meta/recipes-graphics/drm/libdrm_2.4.22.bb

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index 64dbadd..506d214 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -137,7 +137,7 @@ PREFERRED_VERSION_xtrans-nativesdk ?= "1.2.5"
 PREFERRED_VERSION_xvinfo ?= "1.0.2"
 PREFERRED_VERSION_xwininfo ?= "1.1.0"
 PREFERRED_VERSION_mesa-dri ?= "7.8.2"
-PREFERRED_VERSION_libdrm ?= "2.4.21"
+PREFERRED_VERSION_libdrm ?= "2.4.22"
 PREFERRED_VERSION_xcb-proto ?= "1.6"
 PREFERRED_VERSION_libxcb ?= "1.6"
 PREFERRED_VERSION_libxcb-nativesdk ?= "1.6"
diff --git a/meta/recipes-graphics/drm/libdrm-2.4.21/installtests.patch b/meta/recipes-graphics/drm/libdrm-2.4.22/installtests.patch
similarity index 100%
rename from meta/recipes-graphics/drm/libdrm-2.4.21/installtests.patch
rename to meta/recipes-graphics/drm/libdrm-2.4.22/installtests.patch
diff --git a/meta/recipes-graphics/drm/libdrm_2.4.21.bb b/meta/recipes-graphics/drm/libdrm_2.4.21.bb
deleted file mode 100644
index 97ca069..0000000
--- a/meta/recipes-graphics/drm/libdrm_2.4.21.bb
+++ /dev/null
@@ -1,4 +0,0 @@
-require libdrm.inc
-
-SRC_URI += "file://installtests.patch"
-PR = "r0"
diff --git a/meta/recipes-graphics/drm/libdrm_2.4.22.bb b/meta/recipes-graphics/drm/libdrm_2.4.22.bb
new file mode 100644
index 0000000..e0c0f01
--- /dev/null
+++ b/meta/recipes-graphics/drm/libdrm_2.4.22.bb
@@ -0,0 +1,7 @@
+require libdrm.inc
+
+SRC_URI += "file://installtests.patch"
+SRC_URI[md5sum] = "3bdfa33f35d1c902e5115cceb5500c83"
+SRC_URI[sha256sum] = "0bb0e594e4094d9000d80f38e96e8f640b6364f96cfef5b970cf4481443c6b3d"
+
+PR = "r0"
-- 
1.7.0.4


