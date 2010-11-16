Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3F6034C80FA7
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 11:09:22 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Nov 2010 09:07:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,218,1288594800"; d="scan'208";a="575168832"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga002.jf.intel.com with ESMTP; 18 Nov 2010 09:07:29 -0800
Message-Id: <0184eea6287a56f6f8645da06abf1c2d3699274d.1290097804.git.ke.yu@intel.com>
In-Reply-To: <cover.1290097804.git.ke.yu@intel.com>
References: <cover.1290097804.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Tue, 16 Nov 2010 21:50:53 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/5] xf86-video-intel: upgrade from 2.12.0 to 2.13.0
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
X-List-Received-Date: Thu, 18 Nov 2010 17:09:22 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 ...-intel_2.12.0.bb => xf86-video-intel_2.13.0.bb} |    3 +++
 2 files changed, 4 insertions(+), 1 deletions(-)
 rename meta/recipes-graphics/xorg-driver/{xf86-video-intel_2.12.0.bb => xf86-video-intel_2.13.0.bb} (67%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index 506d214..a042e35 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -146,6 +146,6 @@ PREFERRED_VERSION_xf86-input-evdev ?= "2.5.0"
 PREFERRED_VERSION_xf86-input-mouse ?= "1.6.0"
 PREFERRED_VERSION_xf86-input-keyboard ?= "1.4.0"
 PREFERRED_VERSION_xf86-input-synaptics ?= "1.2.1"
-PREFERRED_VERSION_xf86-video-intel ?= "2.12.0"
+PREFERRED_VERSION_xf86-video-intel ?= "2.13.0"
 
 
diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.12.0.bb b/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.13.0.bb
similarity index 67%
rename from meta/recipes-graphics/xorg-driver/xf86-video-intel_2.12.0.bb
rename to meta/recipes-graphics/xorg-driver/xf86-video-intel_2.13.0.bb
index 968c201..f902005 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.12.0.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.13.0.bb
@@ -8,3 +8,6 @@ DEPENDS += "virtual/libx11 libxvmc drm xf86driproto glproto \
 	    virtual/libgl xineramaproto xf86driproto libpciaccess"
 
 COMPATIBLE_HOST = '(i.86|x86_64).*-linux'
+
+SRC_URI[md5sum] = "de2f8a5836d90c71f3175dcd46d03ec0"
+SRC_URI[sha256sum] = "d8b2fae8d0c4ae372994cb7df8de8aa995b8e89b1bc5766c53ea0751752fc887"
-- 
1.7.0.4


