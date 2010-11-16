Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8C92C4C81068
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 11:07:32 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Nov 2010 09:07:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,218,1288594800"; d="scan'208";a="859033637"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by fmsmga001.fm.intel.com with ESMTP; 18 Nov 2010 09:07:31 -0800
Message-Id: <f60e909acc03027b0d407d47587aa420a91a24d7.1290097804.git.ke.yu@intel.com>
In-Reply-To: <cover.1290097804.git.ke.yu@intel.com>
References: <cover.1290097804.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Tue, 16 Nov 2010 21:25:02 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/5] xserver-xf86-dri-lite: upgrade from 1.9.0 rc4 to 1.9.2
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
X-List-Received-Date: Thu, 18 Nov 2010 17:07:32 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 ....8.99.904.bb => xserver-xf86-dri-lite_1.9.2.bb} |    5 ++++-
 2 files changed, 5 insertions(+), 2 deletions(-)
 rename meta/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite_1.8.99.904.bb => xserver-xf86-dri-lite_1.9.2.bb} (76%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index a042e35..d49eacf 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -129,7 +129,7 @@ PREFERRED_VERSION_xproxymanagementprotocol ?= "1.0.3"
 PREFERRED_VERSION_xrandr ?= "1.3.2"
 PREFERRED_VERSION_xrdb ?= "1.0.5"
 PREFERRED_VERSION_xserver-kdrive ?= "1.7.99.2"
-PREFERRED_VERSION_xserver-xf86-dri-lite ?= "1.8.99.904"
+PREFERRED_VERSION_xserver-xf86-dri-lite ?= "1.9.2"
 PREFERRED_VERSION_xset ?= "1.2.1"
 PREFERRED_VERSION_xtrans ?= "1.2.5"
 PREFERRED_VERSION_xtrans-native ?= "1.2.5"
diff --git a/meta/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.8.99.904.bb b/meta/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.2.bb
similarity index 76%
rename from meta/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.8.99.904.bb
rename to meta/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.2.bb
index 98d79a1..0433fe3 100644
--- a/meta/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.8.99.904.bb
+++ b/meta/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.2.bb
@@ -7,7 +7,7 @@ PROTO_DEPS += "xf86driproto dri2proto"
 DEPENDS += "font-util"
 
 PE = "1"
-PR = "r1"
+PR = "r0"
 
 SRC_URI += "file://nodolt.patch \
             file://crosscompile.patch"
@@ -17,4 +17,7 @@ SRC_URI += "file://nodolt.patch \
 # Misc build failure for master HEAD
 SRC_URI += "file://fix_open_max_preprocessor_error.patch"
 
+SRC_URI[md5sum] = "5c8773499a6a8c1ddaedf33577ec9634"
+SRC_URI[sha256sum] = "8b30800004c98fc7a8e6ff31a339f28451be5132e774443be22bf226e1791e34"
+
 EXTRA_OECONF += "--enable-dri --enable-dri2"
-- 
1.7.0.4


