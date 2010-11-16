Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id A6C304C811CC
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 20:12:00 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Nov 2010 18:11:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="858380675"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by fmsmga001.fm.intel.com with ESMTP; 16 Nov 2010 18:11:58 -0800
Message-Id: <dcb71f4b2a9ea6748484cc4c0c5e3aae8addae07.1289958240.git.ke.yu@intel.com>
In-Reply-To: <cover.1289958240.git.ke.yu@intel.com>
References: <cover.1289958240.git.ke.yu@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Date: Tue, 16 Nov 2010 23:12:54 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 03/12] fontsproto: upgrade from 2.1.0 to the latest version 2.1.1
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
X-List-Received-Date: Wed, 17 Nov 2010 02:12:00 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    4 ++--
 .../{fontsproto_2.1.0.bb => fontsproto_2.1.1.bb}   |    2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{fontsproto_2.1.0.bb => fontsproto_2.1.1.bb} (96%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index 49ccbe8..c1b04b1 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -13,8 +13,8 @@ PREFERRED_VERSION_evieext ?= "1.1.0"
 PREFERRED_VERSION_fixesproto ?= "4.1.2"
 PREFERRED_VERSION_fontcacheproto ?= "0.1.3"
 PREFERRED_VERSION_fontcacheproto-native ?= "0.1.3"
-PREFERRED_VERSION_fontsproto ?= "2.1.0"
-PREFERRED_VERSION_fontsproto-native ?= "2.1.0"
+PREFERRED_VERSION_fontsproto ?= "2.1.1"
+PREFERRED_VERSION_fontsproto-native ?= "2.1.1"
 PREFERRED_VERSION_gccmakedep ?= "1.0.2"
 PREFERRED_VERSION_glproto ?= "1.4.11"
 PREFERRED_VERSION_imake ?= "1.0.2"
diff --git a/meta/recipes-graphics/xorg-proto/fontsproto_2.1.0.bb b/meta/recipes-graphics/xorg-proto/fontsproto_2.1.1.bb
similarity index 96%
rename from meta/recipes-graphics/xorg-proto/fontsproto_2.1.0.bb
rename to meta/recipes-graphics/xorg-proto/fontsproto_2.1.1.bb
index 74b2fed..44f6a34 100644
--- a/meta/recipes-graphics/xorg-proto/fontsproto_2.1.0.bb
+++ b/meta/recipes-graphics/xorg-proto/fontsproto_2.1.1.bb
@@ -4,7 +4,7 @@ LICENSE = "MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=c3e48aa9ce868c8e90f0401db41c11a2 \
                     file://FSproto.h;endline=44;md5=d2e58e27095e5ea7d4ad456ccb91986c"
 
-PR = "r1"
+PR = "r0"
 PE = "1"
 
 BBCLASSEXTEND = "native"
-- 
1.7.0.4


