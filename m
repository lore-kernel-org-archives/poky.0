Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id DC65F4C811CC
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 20:12:00 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Nov 2010 18:12:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="627534075"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by fmsmga002.fm.intel.com with ESMTP; 16 Nov 2010 18:11:59 -0800
Message-Id: <82d7605dfffdbaba352cfc6307aab474c5cd6cf5.1289958240.git.ke.yu@intel.com>
In-Reply-To: <cover.1289958240.git.ke.yu@intel.com>
References: <cover.1289958240.git.ke.yu@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Date: Tue, 16 Nov 2010 23:13:45 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 04/12] glproto: upgrade from 1.4.11 to the latest version 1.4.12
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
X-List-Received-Date: Wed, 17 Nov 2010 02:12:01 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../{glproto_1.4.11.bb => glproto_1.4.12.bb}       |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{glproto_1.4.11.bb => glproto_1.4.12.bb} (96%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index c1b04b1..ef95e6b 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -16,7 +16,7 @@ PREFERRED_VERSION_fontcacheproto-native ?= "0.1.3"
 PREFERRED_VERSION_fontsproto ?= "2.1.1"
 PREFERRED_VERSION_fontsproto-native ?= "2.1.1"
 PREFERRED_VERSION_gccmakedep ?= "1.0.2"
-PREFERRED_VERSION_glproto ?= "1.4.11"
+PREFERRED_VERSION_glproto ?= "1.4.12"
 PREFERRED_VERSION_imake ?= "1.0.2"
 #PREFERRED_VERSION_inputproto ?= "2.0"
 #PREFERRED_VERSION_inputproto-native ?= "2.0"
diff --git a/meta/recipes-graphics/xorg-proto/glproto_1.4.11.bb b/meta/recipes-graphics/xorg-proto/glproto_1.4.12.bb
similarity index 96%
rename from meta/recipes-graphics/xorg-proto/glproto_1.4.11.bb
rename to meta/recipes-graphics/xorg-proto/glproto_1.4.12.bb
index c1ade41..90076d9 100644
--- a/meta/recipes-graphics/xorg-proto/glproto_1.4.11.bb
+++ b/meta/recipes-graphics/xorg-proto/glproto_1.4.12.bb
@@ -4,7 +4,7 @@ LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=4641deddaa80fe7ca88e944e1fd94a94 \
                     file://glxproto.h;beginline=4;endline=32;md5=6b79c570f644363b356456e7d44471d9"
 
-PR = "r1"
+PR = "r0"
 PE = "1"
 
 BBCLASSEXTEND = "nativesdk"
-- 
1.7.0.4


