Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id CD6964C8043A
	for <poky@yoctoproject.org>; Fri, 27 May 2011 03:10:08 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 May 2011 01:10:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,279,1304319600"; 
   d="scan'208";a="8525869"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.187])
	by fmsmga002.fm.intel.com with ESMTP; 27 May 2011 01:10:05 -0700
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org,
	richard.purdie@linuxfoundation.org
Date: Fri, 27 May 2011 16:14:25 +0800
Message-Id: <7782fb15d65bb7156da2f776c98832368f2d7c38.1306483559.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1306483559.git.ke.yu@intel.com>
References: <cover.1306483559.git.ke.yu@intel.com>
Subject: [PATCH 1/1] xorg.conf: update keyboard config with evdev
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
X-List-Received-Date: Fri, 27 May 2011 08:10:09 -0000

with xserver 1.10, the evdev driver is used by default, so update the
keyboard config entry in xorg.conf accordingly.

Fix [YOCTO #1108]

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../xserver-xf86-config/qemux86-64/xorg.conf       |    5 +++--
 .../xserver-xf86-config/qemux86/xorg.conf          |    5 +++--
 .../xorg-xserver/xserver-xf86-config_0.1.bb        |    2 +-
 3 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/meta/recipes-graphics/xorg-xserver/xserver-xf86-config/qemux86-64/xorg.conf b/meta/recipes-graphics/xorg-xserver/xserver-xf86-config/qemux86-64/xorg.conf
index 4216de7..10a6d9a 100644
--- a/meta/recipes-graphics/xorg-xserver/xserver-xf86-config/qemux86-64/xorg.conf
+++ b/meta/recipes-graphics/xorg-xserver/xserver-xf86-config/qemux86-64/xorg.conf
@@ -4,10 +4,11 @@ EndSection
 
 Section "InputDevice"
     Identifier    "Generic Keyboard"
-    Driver        "kbd"
+    Driver        "evdev"
     Option        "CoreKeyboard"
+    Option        "Device"      "/dev/input/by-path/platform-i8042-serio-0-event-kbd"
     Option        "XkbRules"    "xorg"
-    Option        "XkbModel"    "pc105"
+    Option        "XkbModel"    "evdev"
     Option        "XkbLayout"    "us"
 EndSection
 
diff --git a/meta/recipes-graphics/xorg-xserver/xserver-xf86-config/qemux86/xorg.conf b/meta/recipes-graphics/xorg-xserver/xserver-xf86-config/qemux86/xorg.conf
index 4216de7..10a6d9a 100644
--- a/meta/recipes-graphics/xorg-xserver/xserver-xf86-config/qemux86/xorg.conf
+++ b/meta/recipes-graphics/xorg-xserver/xserver-xf86-config/qemux86/xorg.conf
@@ -4,10 +4,11 @@ EndSection
 
 Section "InputDevice"
     Identifier    "Generic Keyboard"
-    Driver        "kbd"
+    Driver        "evdev"
     Option        "CoreKeyboard"
+    Option        "Device"      "/dev/input/by-path/platform-i8042-serio-0-event-kbd"
     Option        "XkbRules"    "xorg"
-    Option        "XkbModel"    "pc105"
+    Option        "XkbModel"    "evdev"
     Option        "XkbLayout"    "us"
 EndSection
 
diff --git a/meta/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bb b/meta/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bb
index 035a462..970b4bd 100644
--- a/meta/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bb
+++ b/meta/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bb
@@ -3,7 +3,7 @@ HOMEPAGE = "http://www.x.org"
 SECTION = "x11/base"
 LICENSE = "MIT-X"
 LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
-PR = "r9"
+PR = "r10"
 
 SRC_URI = "file://xorg.conf"
 
-- 
1.7.0.4


