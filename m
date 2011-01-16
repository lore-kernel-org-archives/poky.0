Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D4A6D4C811F6
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 06:15:06 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Jan 2011 04:15:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,329,1291622400"; d="scan'208";a="877893649"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 16 Jan 2011 04:15:06 -0800
Message-Id: <5d1c7f39c47ab875a36e8f56989b290a398a71f5.1295179186.git.ke.yu@intel.com>
In-Reply-To: <cover.1295179186.git.ke.yu@intel.com>
References: <cover.1295179186.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Fri, 14 Jan 2011 12:14:11 +0800
Date: Sun, 16 Jan 2011 20:19:41 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 08/19] xf86-input-keyboard: upgrade to 1.5.0
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
X-List-Received-Date: Sun, 16 Jan 2011 12:15:07 -0000

- update license checksum due to commit "Sun's copyrights now belong to Oracle". the license type is unchanged.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../xorg-driver/xf86-input-keyboard_1.4.0.bb       |   10 ----------
 .../xorg-driver/xf86-input-keyboard_1.5.0.bb       |   10 ++++++++++
 3 files changed, 11 insertions(+), 11 deletions(-)
 delete mode 100644 meta/recipes-graphics/xorg-driver/xf86-input-keyboard_1.4.0.bb
 create mode 100644 meta/recipes-graphics/xorg-driver/xf86-input-keyboard_1.5.0.bb

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index e3cba65..a093653 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -144,7 +144,7 @@ PREFERRED_VERSION_libxcb-nativesdk ?= "1.7"
 PREFERRED_VERSION_libpciaccess ?= "0.12.0"
 PREFERRED_VERSION_xf86-input-evdev ?= "2.5.0"
 PREFERRED_VERSION_xf86-input-mouse ?= "1.6.0"
-PREFERRED_VERSION_xf86-input-keyboard ?= "1.4.0"
+PREFERRED_VERSION_xf86-input-keyboard ?= "1.5.0"
 PREFERRED_VERSION_xf86-input-synaptics ?= "1.2.1"
 PREFERRED_VERSION_xf86-video-intel ?= "2.13.0"
 
diff --git a/meta/recipes-graphics/xorg-driver/xf86-input-keyboard_1.4.0.bb b/meta/recipes-graphics/xorg-driver/xf86-input-keyboard_1.4.0.bb
deleted file mode 100644
index f5e51e0..0000000
--- a/meta/recipes-graphics/xorg-driver/xf86-input-keyboard_1.4.0.bb
+++ /dev/null
@@ -1,10 +0,0 @@
-require xf86-input-common.inc
-
-DESCRIPTION = "X.Org X server -- keyboard input driver"
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=eae2c98cbb8c60401893ff9313ff3826"
-
-PR = "r1"
-
-SRC_URI[md5sum] = "fd17158ffeacecc8cc670604460cb98b"
-SRC_URI[sha256sum] = "842d36cfca68ddab4f2c562c73bfd43ba76de2d490d60034f0c5dd524aa6d6a5"
diff --git a/meta/recipes-graphics/xorg-driver/xf86-input-keyboard_1.5.0.bb b/meta/recipes-graphics/xorg-driver/xf86-input-keyboard_1.5.0.bb
new file mode 100644
index 0000000..d3b58b3
--- /dev/null
+++ b/meta/recipes-graphics/xorg-driver/xf86-input-keyboard_1.5.0.bb
@@ -0,0 +1,10 @@
+require xf86-input-common.inc
+
+DESCRIPTION = "X.Org X server -- keyboard input driver"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=ea2099d24ac9e316a6d4b9f20b3d4e10"
+
+PR = "r0"
+
+SRC_URI[md5sum] = "b74d7162db5ce7899c17927c6cfa9522"
+SRC_URI[sha256sum] = "2303510e905465ebee91f22cdd75706a15afb108258bc220c7500f213de19cb0"
-- 
1.7.0.4


