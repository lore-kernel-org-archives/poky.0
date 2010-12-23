Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2AF594C811C5
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 09:10:51 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 23 Dec 2010 07:10:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="365836655"
Received: from unknown (HELO helios) ([10.255.16.56])
	by azsmga001.ch.intel.com with SMTP; 23 Dec 2010 07:10:48 -0800
Received: by helios (sSMTP sendmail emulation); Thu, 23 Dec 2010 15:10:49 +0000
Message-Id: <82c7f4fb49739ec455296cb48ea7c619b3b8f982.1293116495.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1293116495.git.paul.eggleton@linux.intel.com>
References: <cover.1293116495.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Old-Date: Wed, 22 Dec 2010 18:22:13 +0000
Date: Thu, 23 Dec 2010 15:10:49 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 4/4] qmmp: fix dependencies and packaging
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
X-List-Received-Date: Thu, 23 Dec 2010 15:10:51 -0000

* Don't drag in all of Qt as runtime dependencies
* Use cmake instead of qmake. This ensures plugins are configured correctly.
* Split out vorbis and mad input plugins into separate packages
* Fix main package to include an output plugin and various other base files.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/recipes-qt/qt-apps/qmmp_0.4.1.bb |   54 +++++++++++++++++++--------------
 1 files changed, 31 insertions(+), 23 deletions(-)

diff --git a/meta/recipes-qt/qt-apps/qmmp_0.4.1.bb b/meta/recipes-qt/qt-apps/qmmp_0.4.1.bb
index c5afd91..bf99697 100644
--- a/meta/recipes-qt/qt-apps/qmmp_0.4.1.bb
+++ b/meta/recipes-qt/qt-apps/qmmp_0.4.1.bb
@@ -4,32 +4,40 @@ LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
 SECTION = "multimedia"
 
-PR = "r1"
+PR = "r2"
 
-DEPENDS = "qt4-x11-free taglib"
-RDEPENDS = "qt4-x11-free libmad libvorbis libogg taglib alsa-lib curl"
+DEPENDS = "qt4-x11-free taglib libmad libvorbis libogg alsa-lib"
+RDEPENDS_${PN} += "taglib alsa-lib curl"
 
 SRC_URI = "http://qmmp.ylsoftware.com/files/qmmp-0.4.1.tar.bz2"
 
 PARALLEL_MAKE = ""
 
-inherit qmake2 pkgconfig
-
-do_configure_prepend() {
-	# fix qt4 lrelease name
-	sed -i -e 's/lrelease-qt4/lrelease4/' ${S}/qmmp.pro
-
-	# disable the unsupported plugin
-	for plugin in sndfile wavpack ; do
-		sed -i -e "s/$plugin//" ${S}/src/plugins/Input/Input.pro
-	done
-	sed -i -e 's/mms//' ${S}/src/plugins/Transports/Transports.pro
-	sed -i -e 's/srconverter//' ${S}/src/plugins/Effect/Effect.pro
-
-	sed -i -e 's/^CONFIG/#CONFIG/' ${S}/qmmp.pri
-	sed -i -e 's/CONFIG += WITH_ENCA/#CONFIG += WITH_ENCA/' ${S}/qmmp.pri
-}
-
-do_install() {
-	oe_runmake INSTALL_ROOT=${D} install
-}
+inherit qmake2 cmake
+
+export EXTRA_OECMAKE = "-DQT_QMAKE_EXECUTABLE=${OE_QMAKE_QMAKE} \
+                        -DQT_LRELEASE_EXECUTABLE=${OE_QMAKE_LRELEASE} \
+                        -DQT_MOC_EXECUTABLE=${OE_QMAKE_MOC} \
+                        -DQT_UIC_EXECUTABLE=${OE_QMAKE_UIC} \
+                        -DQT_RCC_EXECUTABLE=${OE_QMAKE_RCC} \
+                        -DQT_LIBRARY_DIR=${OE_QMAKE_LIBDIR_QT} \
+                        -DQT_HEADERS_DIR=${OE_QMAKE_INCDIR_QT} \
+                        -DQT_QTCORE_INCLUDE_DIR=${OE_QMAKE_INCDIR_QT}/QtCore \
+                        "
+
+FILES_${PN} = "${bindir}/qmmp ${libdir}/*.so* \ 
+               ${libdir}/qmmp/PlaylistFormats/*.so \
+               ${libdir}/qmmp/Output/libalsa.so \
+               ${libdir}/qmmp/Transports/libhttp.so \
+               ${libdir}/qmmp/Visual/libanalyzer.so \
+               ${datadir}/icons/* \
+               ${datadir}/qmmp/images/* \
+               ${datadir}/applications/qmmp.desktop \
+               "
+
+PACKAGES += "${PN}-plugin-input-mad ${PN}-plugin-input-vorbis"
+
+FILES_${PN}-plugin-input-mad = "${libdir}/qmmp/Input/libmad.so"
+RDEPENDS_${PN}-plugin-input-mad = "libmad"
+FILES_${PN}-plugin-input-vorbis = "${libdir}/qmmp/Input/libvorbis.so"
+RDEPENDS_${PN}-plugin-input-vorbis = "libvorbis libogg"
-- 
1.7.1


