Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id BE38E4C80FD4
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 20:12:11 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Nov 2010 18:12:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="678236307"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga001.jf.intel.com with ESMTP; 16 Nov 2010 18:12:10 -0800
Message-Id: <58af75a9a184926ccdc13d8bf5753bc555a7b4ae.1289958240.git.ke.yu@intel.com>
In-Reply-To: <cover.1289958240.git.ke.yu@intel.com>
References: <cover.1289958240.git.ke.yu@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Date: Tue, 16 Nov 2010 23:17:24 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 10/12] xcmiscproto: upgrade from 1.2.0 to the latest version 1.2.1
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
X-List-Received-Date: Wed, 17 Nov 2010 02:12:11 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    6 +++---
 .../{xcmiscproto_1.2.0.bb => xcmiscproto_1.2.1.bb} |    2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{xcmiscproto_1.2.0.bb => xcmiscproto_1.2.1.bb} (95%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index 462727c..e74a849 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -99,9 +99,9 @@ PREFERRED_VERSION_videoproto ?= "2.3.1"
 PREFERRED_VERSION_windowswmproto ?= "1.0.4"
 PREFERRED_VERSION_x11perf ?= "1.5"
 PREFERRED_VERSION_xauth ?= "1.0.5"
-PREFERRED_VERSION_xcmiscproto ?= "1.2.0"
-PREFERRED_VERSION_xcmiscproto-native ?= "1.2.0"
-PREFERRED_VERSION_xcmiscproto-nativesdk ?= "1.2.0"
+PREFERRED_VERSION_xcmiscproto ?= "1.2.1"
+PREFERRED_VERSION_xcmiscproto-native ?= "1.2.1"
+PREFERRED_VERSION_xcmiscproto-nativesdk ?= "1.2.1"
 PREFERRED_VERSION_xdpyinfo ?= "1.1.0"
 PREFERRED_VERSION_xev ?= "1.0.3"
 PREFERRED_VERSION_xextproto ?= "7.1.1"
diff --git a/meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.0.bb b/meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.1.bb
similarity index 95%
rename from meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.0.bb
rename to meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.1.bb
index 1ed5a5f..fbd5284 100644
--- a/meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.0.bb
+++ b/meta/recipes-graphics/xorg-proto/xcmiscproto_1.2.1.bb
@@ -3,7 +3,7 @@ require xorg-proto-common.inc
 LICENSE = "MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=09d83047c15994e05db29b423ed6662e"
 
-PR = "r2"
+PR = "r0"
 PE = "1"
 
 DEPENDS += "gettext"
-- 
1.7.0.4


