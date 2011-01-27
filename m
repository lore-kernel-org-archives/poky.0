Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 95D064C81280
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 17:41:41 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 15:41:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="597180297"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by orsmga002.jf.intel.com with ESMTP; 27 Jan 2011 15:41:40 -0800
Message-Id: <9d29a14310158f68f2969870208d047a6be39cac.1296171289.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1296171287.git.dexuan.cui@intel.com>
References: <cover.1296171287.git.dexuan.cui@intel.com>
Old-Date: Thu, 27 Jan 2011 16:19:06 +0800
Date: Fri, 28 Jan 2011  7:41:00 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [Dexuan: Jan 28: PULL 15/16] preferred-xorg-versions.inc: remove libfs, update xvinfo, pixman, dmxproto, printproto, xineramaproto, xf86driproto, xf86vidmodeproto, libxp
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
X-List-Received-Date: Thu, 27 Jan 2011 23:41:41 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

libfs doesn't exist in poky now.
xvinfo has been upgraded to 1.1.1 and there isn't 1.0.2 now.

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |   17 ++++++++---------
 1 files changed, 8 insertions(+), 9 deletions(-)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index 3e375d6..52be0aa 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -8,7 +8,7 @@ PREFERRED_VERSION_bigreqsproto-native ?= "1.1.1"
 PREFERRED_VERSION_bigreqsproto-nativesdk ?= "1.1.1"
 PREFERRED_VERSION_compositeproto ?= "0.4.2"
 PREFERRED_VERSION_damageproto ?= "1.2.1"
-PREFERRED_VERSION_dmxproto ?= "2.3"
+PREFERRED_VERSION_dmxproto ?= "2.3.1"
 PREFERRED_VERSION_evieext ?= "1.1.0"
 PREFERRED_VERSION_fixesproto ?= "4.1.2"
 PREFERRED_VERSION_fontcacheproto ?= "0.1.3"
@@ -28,7 +28,6 @@ PREFERRED_VERSION_libapplewm ?= "1.0.0"
 PREFERRED_VERSION_libdmx ?= "1.1.1"
 PREFERRED_VERSION_libfontenc ?= "1.1.0"
 PREFERRED_VERSION_libfontenc-native ?= "1.1.0"
-PREFERRED_VERSION_libfs ?= "1.0.1"
 PREFERRED_VERSION_libice ?= "1.0.7"
 PREFERRED_VERSION_liblbxutil ?= "1.1.0"
 PREFERRED_VERSION_liboldx ?= "1.0.1"
@@ -62,7 +61,7 @@ PREFERRED_VERSION_libxinerama ?= "1.1.1"
 PREFERRED_VERSION_libxkbfile ?= "1.0.7"
 PREFERRED_VERSION_libxkbui ?= "1.0.2"
 PREFERRED_VERSION_libxmu ?= "1.1.0"
-PREFERRED_VERSION_libxp ?= "1.0.0"
+PREFERRED_VERSION_libxp ?= "1.0.1"
 PREFERRED_VERSION_libxpm ?= "3.5.9"
 PREFERRED_VERSION_libxprintapputil ?= "1.0.1"
 PREFERRED_VERSION_libxprintutil ?= "1.0.1"
@@ -83,8 +82,8 @@ PREFERRED_VERSION_libxxf86vm ?= "1.1.1"
 PREFERRED_VERSION_lndir ?= "1.0.1"
 PREFERRED_VERSION_makedepend ?= "1.0.3"
 PREFERRED_VERSION_makedepend-native ?= "1.0.3"
-PREFERRED_VERSION_pixman ?= "0.21.2"
-PREFERRED_VERSION_printproto ?= "1.0.4"
+PREFERRED_VERSION_pixman ?= "0.21.4"
+PREFERRED_VERSION_printproto ?= "1.0.5"
 PREFERRED_VERSION_randrproto ?= "1.3.2"
 PREFERRED_VERSION_randrproto-nativesdk ?= "1.3.2"
 PREFERRED_VERSION_recordproto ?= "1.14.1"
@@ -111,14 +110,14 @@ PREFERRED_VERSION_xf86bigfontproto ?= "1.2.0"
 PREFERRED_VERSION_xf86bigfontproto-native ?= "1.2.0"
 PREFERRED_VERSION_xf86bigfontproto-nativesdk ?= "1.2.0"
 PREFERRED_VERSION_xf86dgaproto ?= "2.1"
-PREFERRED_VERSION_xf86driproto ?= "2.1.0"
+PREFERRED_VERSION_xf86driproto ?= "2.1.1"
 PREFERRED_VERSION_dri2proto ?= "2.3"
 PREFERRED_VERSION_xf86miscproto ?= "0.9.3"
 PREFERRED_VERSION_xf86rushproto ?= "1.1.2"
-PREFERRED_VERSION_xf86vidmodeproto ?= "2.3"
+PREFERRED_VERSION_xf86vidmodeproto ?= "2.3.1"
 PREFERRED_VERSION_xhost ?= "1.0.4"
 PREFERRED_VERSION_xinit ?= "1.3.0"
-PREFERRED_VERSION_xineramaproto ?= "1.2"
+PREFERRED_VERSION_xineramaproto ?= "1.2.1"
 PREFERRED_VERSION_xmodmap ?= "1.0.5"
 PREFERRED_VERSION_xorg-cf-files ?= "1.0.3"
 PREFERRED_VERSION_xprop ?= "1.2.0"
@@ -134,7 +133,7 @@ PREFERRED_VERSION_xset ?= "1.2.1"
 PREFERRED_VERSION_xtrans ?= "1.2.6"
 PREFERRED_VERSION_xtrans-native ?= "1.2.6"
 PREFERRED_VERSION_xtrans-nativesdk ?= "1.2.6"
-PREFERRED_VERSION_xvinfo ?= "1.0.2"
+PREFERRED_VERSION_xvinfo ?= "1.1.1"
 PREFERRED_VERSION_xwininfo ?= "1.1.1"
 PREFERRED_VERSION_mesa-dri ?= "7.8.2"
 PREFERRED_VERSION_libdrm ?= "2.4.23"
-- 
1.7.2


