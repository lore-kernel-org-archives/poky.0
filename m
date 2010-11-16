Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5EED04C81146
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 20:11:59 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 Nov 2010 18:11:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="678236274"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga001.jf.intel.com with ESMTP; 16 Nov 2010 18:11:54 -0800
Message-Id: <dc89fecd7422ab8817654fe0c20e30ccf367bf3c.1289958240.git.ke.yu@intel.com>
In-Reply-To: <cover.1289958240.git.ke.yu@intel.com>
References: <cover.1289958240.git.ke.yu@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Date: Tue, 16 Nov 2010 23:09:27 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 01/12] damageproto: upgrade from 1.2.0 to the latest version 1.2.1
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
X-List-Received-Date: Wed, 17 Nov 2010 02:11:59 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../{damageproto_1.2.0.bb => damageproto_1.2.1.bb} |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{damageproto_1.2.0.bb => damageproto_1.2.1.bb} (96%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index 64dbadd..6f5b019 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -7,7 +7,7 @@ PREFERRED_VERSION_bigreqsproto ?= "1.1.0"
 PREFERRED_VERSION_bigreqsproto-native ?= "1.1.0"
 PREFERRED_VERSION_bigreqsproto-nativesdk ?= "1.1.0"
 PREFERRED_VERSION_compositeproto ?= "0.4"
-PREFERRED_VERSION_damageproto ?= "1.2.0"
+PREFERRED_VERSION_damageproto ?= "1.2.1"
 PREFERRED_VERSION_dmxproto ?= "2.3"
 PREFERRED_VERSION_evieext ?= "1.1.0"
 PREFERRED_VERSION_fixesproto ?= "4.1.1"
diff --git a/meta/recipes-graphics/xorg-proto/damageproto_1.2.0.bb b/meta/recipes-graphics/xorg-proto/damageproto_1.2.1.bb
similarity index 96%
rename from meta/recipes-graphics/xorg-proto/damageproto_1.2.0.bb
rename to meta/recipes-graphics/xorg-proto/damageproto_1.2.1.bb
index af61d03..db92da3 100644
--- a/meta/recipes-graphics/xorg-proto/damageproto_1.2.0.bb
+++ b/meta/recipes-graphics/xorg-proto/damageproto_1.2.1.bb
@@ -5,5 +5,5 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=d5f5a2de65c3a84cbde769f07a769608 \
                     file://damagewire.h;endline=23;md5=4a4501a592dbc7de5ce89255e50d0296"
 
 CONFLICTS = "damageext"
-PR = "r1"
+PR = "r0"
 PE = "1"
-- 
1.7.0.4


