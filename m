Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 39D6B4C811D2
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 20:12:13 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Nov 2010 18:12:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="574548474"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga002.jf.intel.com with ESMTP; 16 Nov 2010 18:12:12 -0800
Message-Id: <11cbb33ddae469e372d4a76ff98995aef5583126.1289958240.git.ke.yu@intel.com>
In-Reply-To: <cover.1289958240.git.ke.yu@intel.com>
References: <cover.1289958240.git.ke.yu@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Date: Tue, 16 Nov 2010 23:18:18 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 11/12] xextproto: upgrade from 7.1.1 to the latest version 7.1.2
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
 .../{xextproto_7.1.1.bb => xextproto_7.1.2.bb}     |    0
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{xextproto_7.1.1.bb => xextproto_7.1.2.bb} (100%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index e74a849..56ae237 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -104,9 +104,9 @@ PREFERRED_VERSION_xcmiscproto-native ?= "1.2.1"
 PREFERRED_VERSION_xcmiscproto-nativesdk ?= "1.2.1"
 PREFERRED_VERSION_xdpyinfo ?= "1.1.0"
 PREFERRED_VERSION_xev ?= "1.0.3"
-PREFERRED_VERSION_xextproto ?= "7.1.1"
-PREFERRED_VERSION_xextproto-native ?= "7.1.1"
-PREFERRED_VERSION_xextproto-nativesdk ?= "7.1.1"
+PREFERRED_VERSION_xextproto ?= "7.1.2"
+PREFERRED_VERSION_xextproto-native ?= "7.1.2"
+PREFERRED_VERSION_xextproto-nativesdk ?= "7.1.2"
 PREFERRED_VERSION_xf86bigfontproto ?= "1.2.0"
 PREFERRED_VERSION_xf86bigfontproto-native ?= "1.2.0"
 PREFERRED_VERSION_xf86bigfontproto-nativesdk ?= "1.2.0"
diff --git a/meta/recipes-graphics/xorg-proto/xextproto_7.1.1.bb b/meta/recipes-graphics/xorg-proto/xextproto_7.1.2.bb
similarity index 100%
rename from meta/recipes-graphics/xorg-proto/xextproto_7.1.1.bb
rename to meta/recipes-graphics/xorg-proto/xextproto_7.1.2.bb
-- 
1.7.0.4


