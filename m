Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5D9D04C811F1
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 06:15:05 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Jan 2011 04:15:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,329,1291622400"; d="scan'208";a="593465360"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 16 Jan 2011 04:15:04 -0800
Message-Id: <0619d9405a2532245d6fa016f8fad46f9c84e0ac.1295179186.git.ke.yu@intel.com>
In-Reply-To: <cover.1295179186.git.ke.yu@intel.com>
References: <cover.1295179186.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Fri, 14 Jan 2011 12:00:06 +0800
Date: Sun, 16 Jan 2011 20:19:40 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 07/19] xdpyinfo: upgrade to 1.2.0
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
X-List-Received-Date: Sun, 16 Jan 2011 12:15:05 -0000

- update license checksume due to the commit "COPYING: replace stub with actual copyright notice". it provide more accurate license info. the license type is unchanged.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../{xdpyinfo_1.1.0.bb => xdpyinfo_1.2.0.bb}       |    6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)
 rename meta/recipes-graphics/xorg-app/{xdpyinfo_1.1.0.bb => xdpyinfo_1.2.0.bb} (56%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index f0dd923..e3cba65 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -102,7 +102,7 @@ PREFERRED_VERSION_xauth ?= "1.0.5"
 PREFERRED_VERSION_xcmiscproto ?= "1.2.1"
 PREFERRED_VERSION_xcmiscproto-native ?= "1.2.1"
 PREFERRED_VERSION_xcmiscproto-nativesdk ?= "1.2.1"
-PREFERRED_VERSION_xdpyinfo ?= "1.1.0"
+PREFERRED_VERSION_xdpyinfo ?= "1.2.0"
 PREFERRED_VERSION_xev ?= "1.0.3"
 PREFERRED_VERSION_xextproto ?= "7.1.2"
 PREFERRED_VERSION_xextproto-native ?= "7.1.2"
diff --git a/meta/recipes-graphics/xorg-app/xdpyinfo_1.1.0.bb b/meta/recipes-graphics/xorg-app/xdpyinfo_1.2.0.bb
similarity index 56%
rename from meta/recipes-graphics/xorg-app/xdpyinfo_1.1.0.bb
rename to meta/recipes-graphics/xorg-app/xdpyinfo_1.2.0.bb
index ff5a58f..e448d3c 100644
--- a/meta/recipes-graphics/xorg-app/xdpyinfo_1.1.0.bb
+++ b/meta/recipes-graphics/xorg-app/xdpyinfo_1.2.0.bb
@@ -1,14 +1,14 @@
 require xorg-app-common.inc
 
 DESCRIPTION = "X display information utility"
-LIC_FILES_CHKSUM = "file://COPYING;md5=4641deddaa80fe7ca88e944e1fd94a94"
+LIC_FILES_CHKSUM = "file://COPYING;md5=f3d09e6b9e203a1af489e16c708f4fb3"
 DEPENDS += "libxtst libxext libxxf86vm libxxf86dga libxxf86misc libxi libxrender libxinerama libdmx libxp libxau"
 PR = "r0"
 PE = "1"
 
 SRC_URI += "file://disable-xkb.patch"
 
-SRC_URI[md5sum] = "d1d516610316138105cd07064b257c5c"
-SRC_URI[sha256sum] = "780d8dfe65653f42ee26d35928ab7f72f5f27ab08eda692fe4baad05126a0631"
+SRC_URI[md5sum] = "c52fda7bbc80e74b7839f29298cb1d77"
+SRC_URI[sha256sum] = "fe5bad498ecfbf21f9a2a18eee5ece9de5d52f68878f250db8f575c9b872b5ce"
 
 EXTRA_OECONF = "--disable-xkb"
-- 
1.7.0.4


