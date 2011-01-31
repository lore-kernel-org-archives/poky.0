Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8F12D4C8018D
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 00:12:14 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 30 Jan 2011 22:12:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,403,1291622400"; d="scan'208";a="597955986"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by orsmga002.jf.intel.com with ESMTP; 30 Jan 2011 22:12:13 -0800
Message-Id: <b4e07e9bc5e73140a9354abae16e1dc2fac0122c.1296453989.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1296453989.git.dexuan.cui@intel.com>
References: <cover.1296453989.git.dexuan.cui@intel.com>
Old-Date: Mon, 31 Jan 2011 13:35:12 +0800
Date: Mon, 31 Jan 2011 14:11:28 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [Dexuan: Jan 31: pixman: PULL 1/2] pixman: downgrade from development release 0.21.4 to stable release 0.20.2
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
X-List-Received-Date: Mon, 31 Jan 2011 06:12:14 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

pixman's stable releases have even minor version numbers, e.g., 0.18.x, 0.20.x.
Odd minor version numbers mean development snapshots that may contain bugs and
experimental features.
The next stable release should be 0.22.0.

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../{pixman_0.21.4.bb => pixman_0.20.2.bb}         |    7 ++++---
 2 files changed, 5 insertions(+), 4 deletions(-)
 rename meta/recipes-graphics/xorg-lib/{pixman_0.21.4.bb => pixman_0.20.2.bb} (70%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index 52be0aa..3a4bd33 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -82,7 +82,7 @@ PREFERRED_VERSION_libxxf86vm ?= "1.1.1"
 PREFERRED_VERSION_lndir ?= "1.0.1"
 PREFERRED_VERSION_makedepend ?= "1.0.3"
 PREFERRED_VERSION_makedepend-native ?= "1.0.3"
-PREFERRED_VERSION_pixman ?= "0.21.4"
+PREFERRED_VERSION_pixman ?= "0.20.2"
 PREFERRED_VERSION_printproto ?= "1.0.5"
 PREFERRED_VERSION_randrproto ?= "1.3.2"
 PREFERRED_VERSION_randrproto-nativesdk ?= "1.3.2"
diff --git a/meta/recipes-graphics/xorg-lib/pixman_0.21.4.bb b/meta/recipes-graphics/xorg-lib/pixman_0.20.2.bb
similarity index 70%
rename from meta/recipes-graphics/xorg-lib/pixman_0.21.4.bb
rename to meta/recipes-graphics/xorg-lib/pixman_0.20.2.bb
index 45f6b19..dfd883e 100644
--- a/meta/recipes-graphics/xorg-lib/pixman_0.21.4.bb
+++ b/meta/recipes-graphics/xorg-lib/pixman_0.20.2.bb
@@ -3,17 +3,18 @@ DESCRIPTION = "Library for lowlevel pixel operations"
 require xorg-lib-common.inc
 
 LICENSE = "MIT & MIT-style & Public Domain"
-LIC_FILES_CHKSUM = "file://COPYING;md5=14096c769ae0cbb5fcb94ec468be11b3 \
+LIC_FILES_CHKSUM = "file://COPYING;md5=fea989a44fb012b5e79584972a863d22 \
                     file://pixman/pixman-matrix.c;endline=25;md5=ba6e8769bfaaee2c41698755af04c4be \
                     file://pixman/pixman-arm-neon-asm.h;endline=24;md5=9a9cc1e51abbf1da58f4d9528ec9d49b \
                     file://pixman/pixman-x64-mmx-emulation.h;beginline=4;endline=9;md5=4e32716f2efaa6c4659222667c339bb8"
 
 DEPENDS = "virtual/libx11"
 
+PE = "1"
 PR = "r0"
 
 EXTRA_OECONF="--disable-gtk"
 
-SRC_URI[md5sum] = "ae57f4fa9121ab9895b9789b2e81f1e0"
-SRC_URI[sha256sum] = "7809f8aa7dcd99bc0e3a12eef65266d34e1f2988df4c814e5f747ddceed22ddf"
+SRC_URI[md5sum] = "7ed10a0f0fde6853613105a99735e7e7"
+SRC_URI[sha256sum] = "30316f269a6b84c32b47545ca7fc428fd16875849fea644dc6910b3f8c33f4a9"
 
-- 
1.7.2


