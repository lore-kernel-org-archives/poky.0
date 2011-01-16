Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 469554C8086E
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 06:15:14 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Jan 2011 04:15:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,329,1291622400"; d="scan'208";a="877893676"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 16 Jan 2011 04:15:13 -0800
Message-Id: <cdf0bec4fb0d9f2e0d033de3da75f5165a3970f3.1295179186.git.ke.yu@intel.com>
In-Reply-To: <cover.1295179186.git.ke.yu@intel.com>
References: <cover.1295179186.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Fri, 14 Jan 2011 16:07:07 +0800
Date: Sun, 16 Jan 2011 20:19:49 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 13/19] xwininfo: upgrade to 1.1.1
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
X-List-Received-Date: Sun, 16 Jan 2011 12:15:14 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../{xwininfo_1.1.0.bb => xwininfo_1.1.1.bb}       |    4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/xorg-app/{xwininfo_1.1.0.bb => xwininfo_1.1.1.bb} (58%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index 84460ca..6bdfa9c 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -135,7 +135,7 @@ PREFERRED_VERSION_xtrans ?= "1.2.6"
 PREFERRED_VERSION_xtrans-native ?= "1.2.6"
 PREFERRED_VERSION_xtrans-nativesdk ?= "1.2.6"
 PREFERRED_VERSION_xvinfo ?= "1.0.2"
-PREFERRED_VERSION_xwininfo ?= "1.1.0"
+PREFERRED_VERSION_xwininfo ?= "1.1.1"
 PREFERRED_VERSION_mesa-dri ?= "7.9"
 PREFERRED_VERSION_libdrm ?= "2.4.23"
 PREFERRED_VERSION_xcb-proto ?= "1.6"
diff --git a/meta/recipes-graphics/xorg-app/xwininfo_1.1.0.bb b/meta/recipes-graphics/xorg-app/xwininfo_1.1.1.bb
similarity index 58%
rename from meta/recipes-graphics/xorg-app/xwininfo_1.1.0.bb
rename to meta/recipes-graphics/xorg-app/xwininfo_1.1.1.bb
index 8e37294..0011a0a 100644
--- a/meta/recipes-graphics/xorg-app/xwininfo_1.1.0.bb
+++ b/meta/recipes-graphics/xorg-app/xwininfo_1.1.1.bb
@@ -7,5 +7,5 @@ DEPENDS += "libxext libxmu"
 PR = "r0"
 PE = "0"
 
-SRC_URI[md5sum] = "932cb1393dee3caaf26f3515f640d783"
-SRC_URI[sha256sum] = "759e03d80b2a8bc843d501d5fd91fe1506da403019b6f165d32aa1b9909f8cf8"
+SRC_URI[md5sum] = "7a7f44b826d877ba39c19cf5913978d7"
+SRC_URI[sha256sum] = "645a57be4870fb6aba459e7dc96f4d8eaafa3b31bbcd42c997ac4cb021a2343d"
-- 
1.7.0.4


