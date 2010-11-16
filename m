Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7862E4C811D2
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 20:12:13 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 16 Nov 2010 18:12:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="349705604"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by azsmga001.ch.intel.com with ESMTP; 16 Nov 2010 18:12:01 -0800
Message-Id: <b1195d883dd7d21ae1978c235e43cd7733e885e1.1289958240.git.ke.yu@intel.com>
In-Reply-To: <cover.1289958240.git.ke.yu@intel.com>
References: <cover.1289958240.git.ke.yu@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Date: Tue, 16 Nov 2010 23:14:19 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 05/12] kbproto: upgrade from 1.0.4 to the latest version 1.0.5
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
X-List-Received-Date: Wed, 17 Nov 2010 02:12:13 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    6 +++---
 .../{kbproto_1.0.4.bb => kbproto_1.0.5.bb}         |    2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{kbproto_1.0.4.bb => kbproto_1.0.5.bb} (96%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index ef95e6b..baec854 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -21,9 +21,9 @@ PREFERRED_VERSION_imake ?= "1.0.2"
 #PREFERRED_VERSION_inputproto ?= "2.0"
 #PREFERRED_VERSION_inputproto-native ?= "2.0"
 #PREFERRED_VERSION_inputproto-nativesdk ?= "2.0"
-PREFERRED_VERSION_kbproto ?= "1.0.4"
-PREFERRED_VERSION_kbproto-native ?= "1.0.4"
-PREFERRED_VERSION_kbproto-nativesdk ?= "1.0.4"
+PREFERRED_VERSION_kbproto ?= "1.0.5"
+PREFERRED_VERSION_kbproto-native ?= "1.0.5"
+PREFERRED_VERSION_kbproto-nativesdk ?= "1.0.5"
 PREFERRED_VERSION_libapplewm ?= "1.0.0"
 PREFERRED_VERSION_libdmx ?= "1.1.0"
 PREFERRED_VERSION_libfontenc ?= "1.0.5"
diff --git a/meta/recipes-graphics/xorg-proto/kbproto_1.0.4.bb b/meta/recipes-graphics/xorg-proto/kbproto_1.0.5.bb
similarity index 96%
rename from meta/recipes-graphics/xorg-proto/kbproto_1.0.4.bb
rename to meta/recipes-graphics/xorg-proto/kbproto_1.0.5.bb
index b49d5a6..e98d3d6 100644
--- a/meta/recipes-graphics/xorg-proto/kbproto_1.0.4.bb
+++ b/meta/recipes-graphics/xorg-proto/kbproto_1.0.5.bb
@@ -4,7 +4,7 @@ LICENSE = "MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=7dd6ea99e2a83a552c02c80963623c38 \
                     file://XKBproto.h;beginline=2;endline=26;md5=5744eeff407aeb6e7a1346eebab486a2"
 
-PR = "r2"
+PR = "r0"
 PE = "1"
 
 DEPENDS += "gettext"
-- 
1.7.0.4


