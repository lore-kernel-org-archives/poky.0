Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 330E14C811D4
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 20:12:07 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Nov 2010 18:12:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="858380823"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by fmsmga001.fm.intel.com with ESMTP; 16 Nov 2010 18:12:05 -0800
Message-Id: <f696678cf79f8781867bb59cd88087d9620a6903.1289958240.git.ke.yu@intel.com>
In-Reply-To: <cover.1289958240.git.ke.yu@intel.com>
References: <cover.1289958240.git.ke.yu@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Date: Tue, 16 Nov 2010 23:15:45 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 07/12] recordproto: upgrade from 1.14 to the latest version 1.14.1
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
X-List-Received-Date: Wed, 17 Nov 2010 02:12:07 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../{recordproto_1.14.bb => recordproto_1.14.1.bb} |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{recordproto_1.14.bb => recordproto_1.14.1.bb} (96%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index 341e994..98b04a8 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -87,7 +87,7 @@ PREFERRED_VERSION_pixman ?= "0.18.2"
 PREFERRED_VERSION_printproto ?= "1.0.4"
 PREFERRED_VERSION_randrproto ?= "1.3.2"
 PREFERRED_VERSION_randrproto-nativesdk ?= "1.3.2"
-PREFERRED_VERSION_recordproto ?= "1.14"
+PREFERRED_VERSION_recordproto ?= "1.14.1"
 PREFERRED_VERSION_renderproto ?= "0.11"
 PREFERRED_VERSION_renderproto-nativesdk ?= "0.11"
 PREFERRED_VERSION_resourceproto ?= "1.1.0"
diff --git a/meta/recipes-graphics/xorg-proto/recordproto_1.14.bb b/meta/recipes-graphics/xorg-proto/recordproto_1.14.1.bb
similarity index 96%
rename from meta/recipes-graphics/xorg-proto/recordproto_1.14.bb
rename to meta/recipes-graphics/xorg-proto/recordproto_1.14.1.bb
index abb91d7..0ba3d65 100644
--- a/meta/recipes-graphics/xorg-proto/recordproto_1.14.bb
+++ b/meta/recipes-graphics/xorg-proto/recordproto_1.14.1.bb
@@ -5,5 +5,5 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=575827a0f554bbed332542976d5f3d40 \
                     file://recordproto.h;endline=19;md5=1cbb0dd45a0b060ff833901620a3e738"
 
 CONFLICTS = "recordext"
-PR = "r1"
+PR = "r0"
 PE = "1"
-- 
1.7.0.4


