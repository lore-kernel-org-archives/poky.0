Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 43A3F4C8086E
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 06:14:56 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Jan 2011 04:14:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,329,1291622400"; d="scan'208";a="697350601"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 16 Jan 2011 04:14:55 -0800
Message-Id: <dbe37ec6d65519a294de97fceeb515745fc3d403.1295179186.git.ke.yu@intel.com>
In-Reply-To: <cover.1295179186.git.ke.yu@intel.com>
References: <cover.1295179186.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Thu, 13 Jan 2011 15:29:28 +0800
Date: Sun, 16 Jan 2011 20:19:30 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 01/19] xhost: upgrade to 1.0.4
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
X-List-Received-Date: Sun, 16 Jan 2011 12:14:56 -0000

- LICENSE checksum changes due to that "Sun's copyrights now belong to Oracle". it is corp name change only, the license is still MIT-X.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 meta/recipes-graphics/xorg-app/xhost_1.0.3.bb      |   10 ----------
 meta/recipes-graphics/xorg-app/xhost_1.0.4.bb      |   10 ++++++++++
 3 files changed, 11 insertions(+), 11 deletions(-)
 delete mode 100644 meta/recipes-graphics/xorg-app/xhost_1.0.3.bb
 create mode 100644 meta/recipes-graphics/xorg-app/xhost_1.0.4.bb

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index 84e42eb..bb85cfc 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -116,7 +116,7 @@ PREFERRED_VERSION_dri2proto ?= "2.3"
 PREFERRED_VERSION_xf86miscproto ?= "0.9.3"
 PREFERRED_VERSION_xf86rushproto ?= "1.1.2"
 PREFERRED_VERSION_xf86vidmodeproto ?= "2.3"
-PREFERRED_VERSION_xhost ?= "1.0.3"
+PREFERRED_VERSION_xhost ?= "1.0.4"
 PREFERRED_VERSION_xinit ?= "1.2.1"
 PREFERRED_VERSION_xineramaproto ?= "1.2"
 PREFERRED_VERSION_xmodmap ?= "1.0.5"
diff --git a/meta/recipes-graphics/xorg-app/xhost_1.0.3.bb b/meta/recipes-graphics/xorg-app/xhost_1.0.3.bb
deleted file mode 100644
index d39058a..0000000
--- a/meta/recipes-graphics/xorg-app/xhost_1.0.3.bb
+++ /dev/null
@@ -1,10 +0,0 @@
-require xorg-app-common.inc
-
-DESCRIPTION = "Server access control program for X"
-LIC_FILES_CHKSUM = "file://COPYING;md5=cbe6a2ee97dc38c7265adfec5644689b"
-DEPENDS += "libxmu libxau"
-PR = "r0"
-PE = "1"
-
-SRC_URI[md5sum] = "c7f91b4a750d297f269c2a0a3206a1b2"
-SRC_URI[sha256sum] = "2d63007c65e89fe273a43f3e45b3c0133acbc3ceeda6bfc9671388409134ad17"
diff --git a/meta/recipes-graphics/xorg-app/xhost_1.0.4.bb b/meta/recipes-graphics/xorg-app/xhost_1.0.4.bb
new file mode 100644
index 0000000..602027b
--- /dev/null
+++ b/meta/recipes-graphics/xorg-app/xhost_1.0.4.bb
@@ -0,0 +1,10 @@
+require xorg-app-common.inc
+
+DESCRIPTION = "Server access control program for X"
+LIC_FILES_CHKSUM = "file://COPYING;md5=8fbed71dddf48541818cef8079124199"
+DEPENDS += "libxmu libxau"
+PR = "r0"
+PE = "1"
+
+SRC_URI[md5sum] = "2be663a0afbcc0856c1591477d5bf32a"
+SRC_URI[sha256sum] = "5e02c06caeb7a258f3621bf11459a7820cfeaf9bf269c1f8da86d7071346a594"
-- 
1.7.0.4


