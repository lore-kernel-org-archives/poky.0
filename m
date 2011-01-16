Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 90CD44C811F9
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 06:15:15 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 Jan 2011 04:15:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,329,1291622400"; d="scan'208";a="697350688"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 16 Jan 2011 04:15:14 -0800
Message-Id: <00f2e30334bea10df277a86dd398296ae3acb3cf.1295179186.git.ke.yu@intel.com>
In-Reply-To: <cover.1295179186.git.ke.yu@intel.com>
References: <cover.1295179186.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Fri, 14 Jan 2011 16:22:13 +0800
Date: Sun, 16 Jan 2011 20:19:50 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 14/19] xf86-video-intel: upgrade to 2.14.0
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
X-List-Received-Date: Sun, 16 Jan 2011 12:15:20 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 ...-intel_2.13.0.bb => xf86-video-intel_2.14.0.bb} |    4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/xorg-driver/{xf86-video-intel_2.13.0.bb => xf86-video-intel_2.14.0.bb} (72%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index 6bdfa9c..4d4a475 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -146,6 +146,6 @@ PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
 PREFERRED_VERSION_xf86-input-mouse ?= "1.6.0"
 PREFERRED_VERSION_xf86-input-keyboard ?= "1.5.0"
 PREFERRED_VERSION_xf86-input-synaptics ?= "1.3.0"
-PREFERRED_VERSION_xf86-video-intel ?= "2.13.0"
+PREFERRED_VERSION_xf86-video-intel ?= "2.14.0"
 
 
diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.13.0.bb b/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.14.0.bb
similarity index 72%
rename from meta/recipes-graphics/xorg-driver/xf86-video-intel_2.13.0.bb
rename to meta/recipes-graphics/xorg-driver/xf86-video-intel_2.14.0.bb
index 6f0c81c..54dc11b 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.13.0.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.14.0.bb
@@ -11,5 +11,5 @@ DEPENDS += "virtual/libx11 libxvmc drm xf86driproto glproto \
 
 COMPATIBLE_HOST = '(i.86|x86_64).*-linux'
 
-SRC_URI[md5sum] = "de2f8a5836d90c71f3175dcd46d03ec0"
-SRC_URI[sha256sum] = "d8b2fae8d0c4ae372994cb7df8de8aa995b8e89b1bc5766c53ea0751752fc887"
+SRC_URI[md5sum] = "05f187582aeabda57fcd6f2782cfbf8e"
+SRC_URI[sha256sum] = "e18c37a579a960516e69de5c6f74750ca02208c0e41cf763ae5630c84db507df"
-- 
1.7.0.4


