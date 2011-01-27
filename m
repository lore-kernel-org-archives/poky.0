Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 500884C81258
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 17:41:29 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 27 Jan 2011 15:41:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="380951407"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by azsmga001.ch.intel.com with ESMTP; 27 Jan 2011 15:41:28 -0800
Message-Id: <444bda4d5ed4cbefc241d41a99940d37d6785427.1296171289.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1296171287.git.dexuan.cui@intel.com>
References: <cover.1296171287.git.dexuan.cui@intel.com>
Old-Date: Fri, 28 Jan 2011 00:30:48 +0800
Date: Fri, 28 Jan 2011  7:40:47 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [Dexuan: Jan 28: PULL 06/16] pixman: upgrade from 0.21.2 to 0.21.4
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
X-List-Received-Date: Thu, 27 Jan 2011 23:41:29 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../{pixman_0.21.2.bb => pixman_0.21.4.bb}         |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/xorg-lib/{pixman_0.21.2.bb => pixman_0.21.4.bb} (70%)

diff --git a/meta/recipes-graphics/xorg-lib/pixman_0.21.2.bb b/meta/recipes-graphics/xorg-lib/pixman_0.21.4.bb
similarity index 70%
rename from meta/recipes-graphics/xorg-lib/pixman_0.21.2.bb
rename to meta/recipes-graphics/xorg-lib/pixman_0.21.4.bb
index 562ba14..45f6b19 100644
--- a/meta/recipes-graphics/xorg-lib/pixman_0.21.2.bb
+++ b/meta/recipes-graphics/xorg-lib/pixman_0.21.4.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "Library for lowlevel pixel operations"
 require xorg-lib-common.inc
 
 LICENSE = "MIT & MIT-style & Public Domain"
-LIC_FILES_CHKSUM = "file://COPYING;md5=71e682cc54eaaf251f96a9038423a5c3 \
+LIC_FILES_CHKSUM = "file://COPYING;md5=14096c769ae0cbb5fcb94ec468be11b3 \
                     file://pixman/pixman-matrix.c;endline=25;md5=ba6e8769bfaaee2c41698755af04c4be \
                     file://pixman/pixman-arm-neon-asm.h;endline=24;md5=9a9cc1e51abbf1da58f4d9528ec9d49b \
                     file://pixman/pixman-x64-mmx-emulation.h;beginline=4;endline=9;md5=4e32716f2efaa6c4659222667c339bb8"
@@ -14,6 +14,6 @@ PR = "r0"
 
 EXTRA_OECONF="--disable-gtk"
 
-SRC_URI[md5sum] = "4bc4cf052635265f7a98ad3e890ae329"
-SRC_URI[sha256sum] = "7ea3601f6ab411645d73db2f37096f5979425d309784a865444ecfa18614d06d"
+SRC_URI[md5sum] = "ae57f4fa9121ab9895b9789b2e81f1e0"
+SRC_URI[sha256sum] = "7809f8aa7dcd99bc0e3a12eef65266d34e1f2988df4c814e5f747ddceed22ddf"
 
-- 
1.7.2


