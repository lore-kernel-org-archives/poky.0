Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3BD864C811F0
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 06:15:11 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 Jan 2011 04:15:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,329,1291622400"; d="scan'208";a="697350677"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 16 Jan 2011 04:15:10 -0800
Message-Id: <9c7e6173386372ecb8cc630f922d2616a85a8f80.1295179186.git.ke.yu@intel.com>
In-Reply-To: <cover.1295179186.git.ke.yu@intel.com>
References: <cover.1295179186.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Fri, 14 Jan 2011 14:47:07 +0800
Date: Sun, 16 Jan 2011 20:19:46 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 11/19] xf86-input-synaptics: upgrade to 1.3.0
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
X-List-Received-Date: Sun, 16 Jan 2011 12:15:11 -0000

- update license checksum due to commit "COPYING: add three missing authors listed in synaptics.c". the license type is unchanged.
- Pass correct "sdkdir" value for cross compiling

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../xorg-driver/xf86-input-synaptics_1.2.1.bb      |   10 ----------
 .../xorg-driver/xf86-input-synaptics_1.3.0.bb      |   16 ++++++++++++++++
 3 files changed, 17 insertions(+), 11 deletions(-)
 delete mode 100644 meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.2.1.bb
 create mode 100644 meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.3.0.bb

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index 32d5d80..2a982ba 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -145,7 +145,7 @@ PREFERRED_VERSION_libpciaccess ?= "0.12.0"
 PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
 PREFERRED_VERSION_xf86-input-mouse ?= "1.6.0"
 PREFERRED_VERSION_xf86-input-keyboard ?= "1.5.0"
-PREFERRED_VERSION_xf86-input-synaptics ?= "1.2.1"
+PREFERRED_VERSION_xf86-input-synaptics ?= "1.3.0"
 PREFERRED_VERSION_xf86-video-intel ?= "2.13.0"
 
 
diff --git a/meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.2.1.bb b/meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.2.1.bb
deleted file mode 100644
index 84adb85..0000000
--- a/meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.2.1.bb
+++ /dev/null
@@ -1,10 +0,0 @@
-require xf86-input-common.inc
-
-DESCRIPTION = "X.Org X server -- keyboard input driver"
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=08955125302e95a16628a4bec64ade5f"
-
-DEPENDS += "libxi"
-
-SRC_URI[md5sum] = "29a6f9da5123149e4abc8ff83880ed5c"
-SRC_URI[sha256sum] = "a63b48c5c8eb09416b941dea591a948e111d1b2e14d4620f25377cf47cf877e6"
diff --git a/meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.3.0.bb b/meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.3.0.bb
new file mode 100644
index 0000000..8c2999f
--- /dev/null
+++ b/meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.3.0.bb
@@ -0,0 +1,16 @@
+require xf86-input-common.inc
+
+DESCRIPTION = "X.Org X server -- keyboard input driver"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=e395e21f3c21d4fc3a243783e85e9ab5"
+
+DEPENDS += "libxi"
+
+#
+# the xorg-synaptics.pc has hardcoded sdkdir=/usr/include/xorg, which is not correct
+# for cross compiling, so pass the correct sdkdir as include path
+#
+EXTRA_OEMAKE += " sdkdir=${STAGING_INCDIR}/xorg "
+
+SRC_URI[md5sum] = "b4e58eba1bdca13f0929a4b03b262135"
+SRC_URI[sha256sum] = "30a33250c4f3d2daa8a61cab847dc7befd3248db0fca139d17fd7b890b5a8fd7"
-- 
1.7.0.4


