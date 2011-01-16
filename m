Return-Path: <ke.yu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id C31074C811F8
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 06:15:09 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 16 Jan 2011 04:15:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,329,1291622400"; d="scan'208";a="375291502"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by azsmga001.ch.intel.com with ESMTP; 16 Jan 2011 04:15:08 -0800
Message-Id: <cca0648342b6c905327e1e90f2b6e27ec1cbbabe.1295179186.git.ke.yu@intel.com>
In-Reply-To: <cover.1295179186.git.ke.yu@intel.com>
References: <cover.1295179186.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Fri, 14 Jan 2011 14:41:22 +0800
Date: Sun, 16 Jan 2011 20:19:44 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 10/19] xf86-input-evdev: upgrade to 2.6.0
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
X-List-Received-Date: Sun, 16 Jan 2011 12:15:10 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 ...ut-evdev_2.5.0.bb => xf86-input-evdev_2.6.0.bb} |    4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/xorg-driver/{xf86-input-evdev_2.5.0.bb => xf86-input-evdev_2.6.0.bb} (54%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index a093653..32d5d80 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -142,7 +142,7 @@ PREFERRED_VERSION_xcb-proto ?= "1.6"
 PREFERRED_VERSION_libxcb ?= "1.7"
 PREFERRED_VERSION_libxcb-nativesdk ?= "1.7"
 PREFERRED_VERSION_libpciaccess ?= "0.12.0"
-PREFERRED_VERSION_xf86-input-evdev ?= "2.5.0"
+PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
 PREFERRED_VERSION_xf86-input-mouse ?= "1.6.0"
 PREFERRED_VERSION_xf86-input-keyboard ?= "1.5.0"
 PREFERRED_VERSION_xf86-input-synaptics ?= "1.2.1"
diff --git a/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.5.0.bb b/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.6.0.bb
similarity index 54%
rename from meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.5.0.bb
rename to meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.6.0.bb
index 1b4470c..79e5f18 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.5.0.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.6.0.bb
@@ -6,5 +6,5 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=fefe33b1cf0cacba0e72e3b0fa0f0e16"
 
 PR = "r0"
 
-SRC_URI[md5sum] = "eceb6dc517c0649b772f18708a1aade8"
-SRC_URI[sha256sum] = "9dec173ac9d8d09ef5cb2f79e74471f5f3ddd108827f3e95958b623766260333"
+SRC_URI[md5sum] = "f33fe9413bde68936d8909206a13e8a1"
+SRC_URI[sha256sum] = "b0e7f3991a8183a4743196c3e16d7184d439b80bf43653aa2f45b0756a6753ac"
-- 
1.7.0.4


