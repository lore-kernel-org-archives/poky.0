Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 47C874C80FAD
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 08:57:17 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 22 Nov 2010 06:57:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,236,1288594800"; d="scan'208";a="860186945"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga001.fm.intel.com with ESMTP; 22 Nov 2010 06:56:52 -0800
Message-Id: <def90c654e56e69b8e1eb557dc74a8f09091aa62.1290437405.git.lei.mei@intel.com>
In-Reply-To: <cover.1290437405.git.lei.mei@intel.com>
References: <cover.1290437405.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Mon, 22 Nov 2010 14:35:46 +0800
To: poky@yoctoproject.org
Subject: [PATCH 1/1] This patch contains five recipes license checksum information
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
X-List-Received-Date: Mon, 22 Nov 2010 14:57:17 -0000

libunique
libxpm
libxprintapputil
libxprintutil
ttf-bitstream-vera

Signed-off-by: Mei Lei<lei.mei@intel.com>
---
 .../ttf-fonts/ttf-bitstream-vera_1.10.bb           |    1 +
 meta/recipes-graphics/xorg-lib/libxpm_3.5.7.bb     |    1 +
 .../xorg-lib/libxprintapputil_1.0.1.bb             |    1 +
 .../xorg-lib/libxprintutil_1.0.1.bb                |    1 +
 meta/recipes-tbd/libunique/libunique_1.1.6.bb      |    2 +-
 5 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/ttf-fonts/ttf-bitstream-vera_1.10.bb b/meta/recipes-graphics/ttf-fonts/ttf-bitstream-vera_1.10.bb
index a6f4cd6..1001e29 100644
--- a/meta/recipes-graphics/ttf-fonts/ttf-bitstream-vera_1.10.bb
+++ b/meta/recipes-graphics/ttf-fonts/ttf-bitstream-vera_1.10.bb
@@ -2,6 +2,7 @@ DESCRIPTION = "The Bitstream Vera fonts - TTF Edition"
 SECTION = "x11/fonts"
 PRIORITY = "optional"
 LICENSE = "Bitstream Vera"
+LIC_FILES_CHKSUM = "file://COPYRIGHT.TXT;md5=27d7484b1e18d0ee4ce538644a3f04be"
 PACKAGE_ARCH = "all"
 PR = "r3"
 RDEPENDS = "fontconfig-utils"
diff --git a/meta/recipes-graphics/xorg-lib/libxpm_3.5.7.bb b/meta/recipes-graphics/xorg-lib/libxpm_3.5.7.bb
index 75c10bf..2794600 100644
--- a/meta/recipes-graphics/xorg-lib/libxpm_3.5.7.bb
+++ b/meta/recipes-graphics/xorg-lib/libxpm_3.5.7.bb
@@ -2,6 +2,7 @@ require xorg-lib-common.inc
 
 DESCRIPTION = "X11 Pixmap library"
 LICENSE = "X-BSD"
+LIC_FILES_CHKSUM = "file://COPYING;md5=1e8b098093f3bb7a8fed64938e8e465e"
 DEPENDS += "libxext libsm libxt"
 PR = "r3"
 PE = "1"
diff --git a/meta/recipes-graphics/xorg-lib/libxprintapputil_1.0.1.bb b/meta/recipes-graphics/xorg-lib/libxprintapputil_1.0.1.bb
index 3a24a88..75723aa 100644
--- a/meta/recipes-graphics/xorg-lib/libxprintapputil_1.0.1.bb
+++ b/meta/recipes-graphics/xorg-lib/libxprintapputil_1.0.1.bb
@@ -3,6 +3,7 @@ require xorg-lib-common.inc
 DESCRIPTION = "Xprint job utility client library"
 DEPENDS += "libxp libxt libxprintutil"
 PR = "r1"
+LIC_FILES_CHKSUM = "file://src/xpapputil.c;beginline=2;endline=27;md5=be811cca90200613a672dc96206a767b"
 PE = "1"
 
 XORG_PN = "libXprintAppUtil"
diff --git a/meta/recipes-graphics/xorg-lib/libxprintutil_1.0.1.bb b/meta/recipes-graphics/xorg-lib/libxprintutil_1.0.1.bb
index 327138e..6fb1af5 100644
--- a/meta/recipes-graphics/xorg-lib/libxprintutil_1.0.1.bb
+++ b/meta/recipes-graphics/xorg-lib/libxprintutil_1.0.1.bb
@@ -1,4 +1,5 @@
 require xorg-lib-common.inc
+LIC_FILES_CHKSUM = "file://src/xprintutil.c;endline=29;md5=22d5a98494dd356a2c6c9c355886f3af"
 
 DESCRIPTION = "Xprint printer utility client library"
 DEPENDS += "libxp libxt"
diff --git a/meta/recipes-tbd/libunique/libunique_1.1.6.bb b/meta/recipes-tbd/libunique/libunique_1.1.6.bb
index 964da57..0c1b9a0 100644
--- a/meta/recipes-tbd/libunique/libunique_1.1.6.bb
+++ b/meta/recipes-tbd/libunique/libunique_1.1.6.bb
@@ -4,7 +4,7 @@ PR = "r1"
 DEPENDS = "glib-2.0 gtk+ dbus"
 
 LICENSE = "LGPLv2.1"
-
+LIC_FILES_CHKSUM = "file://COPYING;md5=2d5025d4aa3495befef8f17206a5b0a1"
 #S = "${WORKDIR}/unique-${PV}"
 
 inherit autotools
-- 
1.6.3.3


