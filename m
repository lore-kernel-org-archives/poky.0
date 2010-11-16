Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E371F4C81146
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 02:49:35 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 17 Nov 2010 00:49:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,210,1288594800"; d="scan'208";a="678301509"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga001.jf.intel.com with ESMTP; 17 Nov 2010 00:49:35 -0800
Message-Id: <af2b3e0d9dd08eead65cbd6ff960ce95233a487b.1289982119.git.ke.yu@intel.com>
In-Reply-To: <cover.1289982119.git.ke.yu@intel.com>
References: <cover.1289982119.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Tue, 16 Nov 2010 21:25:02 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 06/10] xserver-xf86-dri-lite: upgrade from 1.9.0 rc4 to 1.9.2
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
X-List-Received-Date: Wed, 17 Nov 2010 08:49:36 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 ....8.99.904.bb => xserver-xf86-dri-lite_1.9.2.bb} |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite_1.8.99.904.bb => xserver-xf86-dri-lite_1.9.2.bb} (98%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index 0cf844f..5fba521 100644
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
similarity index 98%
rename from meta/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.8.99.904.bb
rename to meta/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.2.bb
index 98d79a1..0be57a5 100644
--- a/meta/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.8.99.904.bb
+++ b/meta/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.2.bb
@@ -7,7 +7,7 @@ PROTO_DEPS += "xf86driproto dri2proto"
 DEPENDS += "font-util"
 
 PE = "1"
-PR = "r1"
+PR = "r0"
 
 SRC_URI += "file://nodolt.patch \
             file://crosscompile.patch"
-- 
1.7.0.4


