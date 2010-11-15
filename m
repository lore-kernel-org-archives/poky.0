Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3444E4C810CE
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 02:49:39 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 17 Nov 2010 00:49:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,210,1288594800"; d="scan'208";a="858464063"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by fmsmga001.fm.intel.com with ESMTP; 17 Nov 2010 00:49:38 -0800
Message-Id: <1cf000df36f5fe2f3143794358a0c68c7392ba8d.1289982119.git.ke.yu@intel.com>
In-Reply-To: <cover.1289982119.git.ke.yu@intel.com>
References: <cover.1289982119.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Mon, 15 Nov 2010 21:01:34 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 08/10] pixman: upgrade from 0.18.2 to 0.20.0
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
X-List-Received-Date: Wed, 17 Nov 2010 08:49:39 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../{pixman_0.18.2.bb => pixman_0.20.0.bb}         |    0
 2 files changed, 1 insertions(+), 1 deletions(-)
 rename meta/recipes-graphics/xorg-lib/{pixman_0.18.2.bb => pixman_0.20.0.bb} (100%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index ae59129..efd150c 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -83,7 +83,7 @@ PREFERRED_VERSION_libxxf86vm ?= "1.1.0"
 PREFERRED_VERSION_lndir ?= "1.0.1"
 PREFERRED_VERSION_makedepend ?= "1.0.2"
 PREFERRED_VERSION_makedepend-native ?= "1.0.2"
-PREFERRED_VERSION_pixman ?= "0.18.2"
+PREFERRED_VERSION_pixman ?= "0.20.0"
 PREFERRED_VERSION_printproto ?= "1.0.4"
 PREFERRED_VERSION_randrproto ?= "1.3.1"
 PREFERRED_VERSION_randrproto-nativesdk ?= "1.3.1"
diff --git a/meta/recipes-graphics/xorg-lib/pixman_0.18.2.bb b/meta/recipes-graphics/xorg-lib/pixman_0.20.0.bb
similarity index 100%
rename from meta/recipes-graphics/xorg-lib/pixman_0.18.2.bb
rename to meta/recipes-graphics/xorg-lib/pixman_0.20.0.bb
-- 
1.7.0.4


