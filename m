Return-Path: <ke.yu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 441604C811F0
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 06:15:02 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 16 Jan 2011 04:15:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,329,1291622400"; d="scan'208";a="375291441"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by azsmga001.ch.intel.com with ESMTP; 16 Jan 2011 04:15:01 -0800
Message-Id: <bd4d06e0bec06d9ae41d4394717c66330c39d860.1295179186.git.ke.yu@intel.com>
In-Reply-To: <cover.1295179186.git.ke.yu@intel.com>
References: <cover.1295179186.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Fri, 14 Jan 2011 11:32:59 +0800
Date: Sun, 16 Jan 2011 20:19:37 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 05/19] xprop: upgrade to 1.2.0
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
X-List-Received-Date: Sun, 16 Jan 2011 12:15:02 -0000

- LICENSE_CHECKSUM changed due to the commit "COPYING: replace stub with copyright notices". this commit add more accurate license info, and the license type is still MIT-X.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 meta/recipes-graphics/xorg-app/xprop_1.1.0.bb      |   13 -------------
 meta/recipes-graphics/xorg-app/xprop_1.2.0.bb      |   13 +++++++++++++
 3 files changed, 14 insertions(+), 14 deletions(-)
 delete mode 100644 meta/recipes-graphics/xorg-app/xprop_1.1.0.bb
 create mode 100644 meta/recipes-graphics/xorg-app/xprop_1.2.0.bb

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index a716281..f0dd923 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -121,7 +121,7 @@ PREFERRED_VERSION_xinit ?= "1.3.0"
 PREFERRED_VERSION_xineramaproto ?= "1.2"
 PREFERRED_VERSION_xmodmap ?= "1.0.5"
 PREFERRED_VERSION_xorg-cf-files ?= "1.0.3"
-PREFERRED_VERSION_xprop ?= "1.1.0"
+PREFERRED_VERSION_xprop ?= "1.2.0"
 PREFERRED_VERSION_xproto ?= "7.0.20"
 PREFERRED_VERSION_xproto-native ?= "7.0.20"
 PREFERRED_VERSION_xproto-nativesdk ?= "7.0.20"
diff --git a/meta/recipes-graphics/xorg-app/xprop_1.1.0.bb b/meta/recipes-graphics/xorg-app/xprop_1.1.0.bb
deleted file mode 100644
index cfa02dd..0000000
--- a/meta/recipes-graphics/xorg-app/xprop_1.1.0.bb
+++ /dev/null
@@ -1,13 +0,0 @@
-require xorg-app-common.inc
-
-DESCRIPTION = "utility to display window and font properties of an X server"
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=4641deddaa80fe7ca88e944e1fd94a94"
-
-DEPENDS += " libxmu virtual/libx11"
-
-PR = "r0"
-PE = "1"
-
-SRC_URI[md5sum] = "f0bacbd30f0dd1c1e9ccafe97687b7a4"
-SRC_URI[sha256sum] = "cc8e07901574895f113baffda19272c54545879e02012314527ebbf2dcc66226"
diff --git a/meta/recipes-graphics/xorg-app/xprop_1.2.0.bb b/meta/recipes-graphics/xorg-app/xprop_1.2.0.bb
new file mode 100644
index 0000000..4d35636
--- /dev/null
+++ b/meta/recipes-graphics/xorg-app/xprop_1.2.0.bb
@@ -0,0 +1,13 @@
+require xorg-app-common.inc
+
+DESCRIPTION = "utility to display window and font properties of an X server"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=e226ab8db88ac0bc0391673be40c9f91"
+
+DEPENDS += " libxmu virtual/libx11"
+
+PR = "r0"
+PE = "1"
+
+SRC_URI[md5sum] = "e6d0673a1e1e469f0a6220a6868fb94b"
+SRC_URI[sha256sum] = "53508c082b03dbbfd68489cb21392023f3e62ca9c921e1fb39b92ad10fbe6b9c"
-- 
1.7.0.4


