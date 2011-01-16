Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6CA8D4C811F8
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 06:15:23 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Jan 2011 04:15:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,329,1291622400"; d="scan'208";a="697350703"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 16 Jan 2011 04:15:22 -0800
Message-Id: <ee5910f33d34150200627a863ae39e2650bac286.1295179186.git.ke.yu@intel.com>
In-Reply-To: <cover.1295179186.git.ke.yu@intel.com>
References: <cover.1295179186.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Sun, 16 Jan 2011 16:06:51 +0800
Date: Sun, 16 Jan 2011 20:19:58 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 19/19] xserver-xf86-dri-lite: upgrade to 1.9.3
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
X-List-Received-Date: Sun, 16 Jan 2011 12:15:23 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 ...ite_1.9.2.bb => xserver-xf86-dri-lite_1.9.3.bb} |    4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite_1.9.2.bb => xserver-xf86-dri-lite_1.9.3.bb} (75%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index 19dd340..3e375d6 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -129,7 +129,7 @@ PREFERRED_VERSION_xproxymanagementprotocol ?= "1.0.3"
 PREFERRED_VERSION_xrandr ?= "1.3.4"
 PREFERRED_VERSION_xrdb ?= "1.0.5"
 PREFERRED_VERSION_xserver-kdrive ?= "1.7.99.2"
-PREFERRED_VERSION_xserver-xf86-dri-lite ?= "1.9.2"
+PREFERRED_VERSION_xserver-xf86-dri-lite ?= "1.9.3"
 PREFERRED_VERSION_xset ?= "1.2.1"
 PREFERRED_VERSION_xtrans ?= "1.2.6"
 PREFERRED_VERSION_xtrans-native ?= "1.2.6"
diff --git a/meta/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.2.bb b/meta/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bb
similarity index 75%
rename from meta/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.2.bb
rename to meta/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bb
index 670604a..9ff85de 100644
--- a/meta/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.2.bb
+++ b/meta/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bb
@@ -16,7 +16,7 @@ SRC_URI += "file://nodolt.patch \
 # Misc build failure for master HEAD
 SRC_URI += "file://fix_open_max_preprocessor_error.patch"
 
-SRC_URI[md5sum] = "5c8773499a6a8c1ddaedf33577ec9634"
-SRC_URI[sha256sum] = "8b30800004c98fc7a8e6ff31a339f28451be5132e774443be22bf226e1791e34"
+SRC_URI[md5sum] = "5bef6839a76d029204ab31aa2fcb5201"
+SRC_URI[sha256sum] = "864831f51e841ff37f2445d1c85b86b559c8860a435fb496aead4f256a2b141d"
 
 EXTRA_OECONF += "--enable-dri --enable-dri2"
-- 
1.7.0.4


