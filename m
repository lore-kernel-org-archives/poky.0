Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 25CD04C811CC
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 20:12:05 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Nov 2010 18:12:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="678236301"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga001.jf.intel.com with ESMTP; 16 Nov 2010 18:12:04 -0800
Message-Id: <7dc3654620c4837debfa37f5ec4d568c20d4dfb3.1289958240.git.ke.yu@intel.com>
In-Reply-To: <cover.1289958240.git.ke.yu@intel.com>
References: <cover.1289958240.git.ke.yu@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Date: Tue, 16 Nov 2010 23:14:56 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 06/12] randrproto: upgrade from 1.3.1 to the latest version 1.3.2
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
X-List-Received-Date: Wed, 17 Nov 2010 02:12:05 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    4 ++--
 .../{randrproto_1.3.1.bb => randrproto_1.3.2.bb}   |    2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{randrproto_1.3.1.bb => randrproto_1.3.2.bb} (96%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index baec854..341e994 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -85,8 +85,8 @@ PREFERRED_VERSION_makedepend ?= "1.0.2"
 PREFERRED_VERSION_makedepend-native ?= "1.0.2"
 PREFERRED_VERSION_pixman ?= "0.18.2"
 PREFERRED_VERSION_printproto ?= "1.0.4"
-PREFERRED_VERSION_randrproto ?= "1.3.1"
-PREFERRED_VERSION_randrproto-nativesdk ?= "1.3.1"
+PREFERRED_VERSION_randrproto ?= "1.3.2"
+PREFERRED_VERSION_randrproto-nativesdk ?= "1.3.2"
 PREFERRED_VERSION_recordproto ?= "1.14"
 PREFERRED_VERSION_renderproto ?= "0.11"
 PREFERRED_VERSION_renderproto-nativesdk ?= "0.11"
diff --git a/meta/recipes-graphics/xorg-proto/randrproto_1.3.1.bb b/meta/recipes-graphics/xorg-proto/randrproto_1.3.2.bb
similarity index 96%
rename from meta/recipes-graphics/xorg-proto/randrproto_1.3.1.bb
rename to meta/recipes-graphics/xorg-proto/randrproto_1.3.2.bb
index 725be1d..1e116d9 100644
--- a/meta/recipes-graphics/xorg-proto/randrproto_1.3.1.bb
+++ b/meta/recipes-graphics/xorg-proto/randrproto_1.3.2.bb
@@ -5,7 +5,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=5fa3f85d9eefaa3a945071485be11343 \
                     file://randrproto.h;endline=30;md5=3885957c6048fdf3310ac8ba54ca2c3f"
 
 CONFLICTS = "randrext"
-PR = "r1"
+PR = "r0"
 PE = "1"
 
 BBCLASSEXTEND = "nativesdk"
-- 
1.7.0.4


