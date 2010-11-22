Return-Path: <lei.mei@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B7544C810E8
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 03:48:27 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 22 Nov 2010 01:48:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,235,1288594800"; d="scan'208";a="351663798"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by azsmga001.ch.intel.com with ESMTP; 22 Nov 2010 01:48:25 -0800
Message-Id: <978c80cbca57e728b8822819ee3c0b449b25c43a.1290418904.git.lei.mei@intel.com>
In-Reply-To: <cover.1290418904.git.lei.mei@intel.com>
References: <cover.1290418904.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Mon, 22 Nov 2010 16:58:34 +0800
To: poky@yoctoproject.org
Subject: [PATCH 1/1] This patch contains five recipes license checksum information.
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
X-List-Received-Date: Mon, 22 Nov 2010 09:48:27 -0000

galago-daemon: COPYING file checksum
gccmakedep: COPYING file checksum
gnome-doc-utils: LGPL file and GPL file checksum
libart-lgpl: COPYING file checksum
liberation-fonts:COPYING file checksum

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../galago/galago-daemon_0.5.1.bb                  |    1 +
 meta/recipes-gnome/gnome/gnome-doc-utils_0.12.0.bb |    3 ++-
 meta/recipes-gnome/gnome/libart-lgpl_2.3.19.bb     |    1 +
 .../ttf-fonts/liberation-fonts_1.04.bb             |    1 +
 .../recipes-graphics/xorg-util/gccmakedep_1.0.2.bb |    2 +-
 5 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-connectivity/galago/galago-daemon_0.5.1.bb b/meta/recipes-connectivity/galago/galago-daemon_0.5.1.bb
index da49b3d..31b9e47 100644
--- a/meta/recipes-connectivity/galago/galago-daemon_0.5.1.bb
+++ b/meta/recipes-connectivity/galago/galago-daemon_0.5.1.bb
@@ -2,6 +2,7 @@ SUMMARY =       "Desktop presence framework"
 DESCRIPTION =   "Galago is a desktop presence framework, designed to transmit presence information between programs."
 HOMEPAGE =      "http://www.galago-project.org/"
 LICENSE =       "GPL"
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 DEPENDS =       "gettext libgalago dbus glib-2.0"
 
 SRC_URI =       "http://www.galago-project.org/files/releases/source/${PN}/${P}.tar.gz "
diff --git a/meta/recipes-gnome/gnome/gnome-doc-utils_0.12.0.bb b/meta/recipes-gnome/gnome/gnome-doc-utils_0.12.0.bb
index 2499ac3..09121db 100644
--- a/meta/recipes-gnome/gnome/gnome-doc-utils_0.12.0.bb
+++ b/meta/recipes-gnome/gnome/gnome-doc-utils_0.12.0.bb
@@ -1,3 +1,4 @@
 require gnome-doc-utils.inc
-
+LIC_FILES_CHKSUM = "file://COPYING.GPL;md5=eb723b61539feef013de476e68b5c50a \
+		    file://COPYING.LGPL;md5=a6f89e2100d9b6cdffcea4f398e37343 "
 PR = "r1"
diff --git a/meta/recipes-gnome/gnome/libart-lgpl_2.3.19.bb b/meta/recipes-gnome/gnome/libart-lgpl_2.3.19.bb
index fa565f3..dad0f05 100644
--- a/meta/recipes-gnome/gnome/libart-lgpl_2.3.19.bb
+++ b/meta/recipes-gnome/gnome/libart-lgpl_2.3.19.bb
@@ -1,6 +1,7 @@
 DESCRIPTION = "Library of functions for 2D graphics"
 SECTION = "x11/gnome"
 LICENSE = "LGPL"
+LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7"
 PR = "r1"
 
 ART_CONFIG = "${HOST_ARCH}/art_config.h"
diff --git a/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb b/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb
index 6b887e3..afb4a57 100644
--- a/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb
+++ b/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb
@@ -5,6 +5,7 @@ BUGTRACKER = "https://bugzilla.redhat.com/"
 SECTION = "x11/fonts"
 PRIORITY = "optional"
 LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 PACKAGE_ARCH = "all"
 RDEPENDS = "fontconfig-utils"
 PE = "1"
diff --git a/meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb b/meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb
index b103567..b6c7989 100644
--- a/meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb
+++ b/meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb
@@ -3,6 +3,6 @@ require xorg-util-common.inc
 DESCRIPTION = "create dependencies in makefiles using 'gcc -M'"
 DEPENDS = "util-macros"
 RDEPENDS = "gcc"
-
+LIC_FILES_CHKSUM = "file://COPYING;md5=4641deddaa80fe7ca88e944e1fd94a94"
 PR = "r2"
 PE = "1"
-- 
1.6.3.3


