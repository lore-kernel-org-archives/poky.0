Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 84E9A4C81277
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 18:36:37 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 27 Jan 2011 16:36:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="380973640"
Received: from unknown (HELO helios) ([10.255.16.167])
	by azsmga001.ch.intel.com with SMTP; 27 Jan 2011 16:36:32 -0800
Received: by helios (sSMTP sendmail emulation); Fri, 28 Jan 2011 00:36:32 +0000
Message-Id: <3e701c04b8b3036c80b83b49395f4f54eda3884a.1296174472.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1296174472.git.paul.eggleton@linux.intel.com>
References: <cover.1296174472.git.paul.eggleton@linux.intel.com>
Old-Date: Fri, 21 Jan 2011 16:15:03 +0000
Date: Fri, 28 Jan 2011  0:36:32 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 05/11] qt4-tools-native: update from OpenEmbedded
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
X-List-Received-Date: Fri, 28 Jan 2011 00:36:37 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Differences from OE version:
* Add source checksums
* Correct LICENCE and move to .inc file
* Update HOMEPAGE
* Don't specify DEFAULT_PREFERENCE
* Remove S and SRC_URI from 4.7.1 (duplicates of .inc file values)
* Use http source URL to match other Qt4 recipes
* Don't add back tools previously disabled in poky

Differences from current (plus the above):
* Add Qt 4.7.1 recipe
* Specify -embedded to remove dependency on X (as we are only building tools)
* Disable some other options to reduce dependencies
* Specify -no-freetype / -no-fontconfig in .inc file rather than in .bb
* Use INC_PR
* Whitespace fixes
---
 meta/recipes-qt/qt4/qt4-tools-native.inc      |   44 ++++++++++++++----------
 meta/recipes-qt/qt4/qt4-tools-native_4.6.3.bb |   12 +++---
 meta/recipes-qt/qt4/qt4-tools-native_4.7.1.bb |   13 +++++++
 3 files changed, 45 insertions(+), 24 deletions(-)
 create mode 100644 meta/recipes-qt/qt4/qt4-tools-native_4.7.1.bb

diff --git a/meta/recipes-qt/qt4/qt4-tools-native.inc b/meta/recipes-qt/qt4/qt4-tools-native.inc
index 6dca218..9114e7d 100644
--- a/meta/recipes-qt/qt4/qt4-tools-native.inc
+++ b/meta/recipes-qt/qt4/qt4-tools-native.inc
@@ -1,9 +1,16 @@
 DESCRIPTION = "Native tools for Qt/[X11|Mac|Embedded] version 4.x"
-DEPENDS = "zlib-native dbus-native libsm-native"
+DEPENDS = "zlib-native dbus-native"
 SECTION = "libs"
 HOMEPAGE = "http://qt.nokia.com"
 PRIORITY = "optional"
 
+LICENSE = "LGPLv2.1 | GPLv3"
+LIC_FILES_CHKSUM = "file://LICENSE.LGPL;md5=fbc093901857fcd118f065f900982c24 \
+                    file://LICENSE.GPL3;md5=babc5b6b77441da277f5c06b2e547720 \
+                    file://LGPL_EXCEPTION.txt;md5=411080a56ff917a5a1aa08c98acae354"
+
+INC_PR = "r11"
+
 inherit native
 
 SRC_URI = "http://get.qt.nokia.com/qt/source/qt-everywhere-opensource-src-${PV}.tar.gz \
@@ -16,13 +23,14 @@ EXTRA_OECONF = "-prefix ${prefix} \
                 -L ${STAGING_LIBDIR_NATIVE} \
                 -I ${STAGING_INCDIR_NATIVE} \
                 -qt-libjpeg -qt-gif -system-zlib \
-                -no-libjpeg -no-libpng \
+                -no-libjpeg -no-libpng -no-libmng -no-libtiff \
                 -no-accessibility \
                 -no-cups \
                 -no-exceptions  \
                 -no-nas-sound \
-                -no-nis \
+                -no-nis -no-openssl \
                 -verbose -release -static \
+                -embedded -no-freetype -no-glib -no-iconv \
                 -qt3support"
 
 # yank default -e, otherwise we get the following error:
@@ -30,7 +38,7 @@ EXTRA_OECONF = "-prefix ${prefix} \
 EXTRA_OEMAKE = " "
 
 do_configure() {
-	(echo o; echo yes) | ./configure ${EXTRA_OECONF} || die "Configuring qt failed. EXTRA_OECONF was ${EXTRA_OECONF}"
+   (echo o; echo yes) | ./configure ${EXTRA_OECONF} || die "Configuring qt failed. EXTRA_OECONF was ${EXTRA_OECONF}"
 }
 
 TOBUILD = "\
@@ -48,22 +56,22 @@ TOBUILD = "\
 "
 
 do_compile() {
-	for i in ${TOBUILD}; do
-		cd ${S}/$i && oe_runmake CC="${CC}" CXX="${CXX}"
-	done
+    for i in ${TOBUILD}; do
+        cd ${S}/$i && oe_runmake CC="${CC}" CXX="${CXX}"
+    done
 }
 
 do_install() {
-	install -d ${D}${bindir}/
-	install -m 0755 bin/qmake ${D}${bindir}/qmake2
-	for i in moc uic rcc lrelease lupdate; do
-		install -m 0755 bin/${i} ${D}${bindir}/${i}4
-	done
-
-	install -d ${D}${datadir}/qt4/
-	cp -PfR mkspecs ${D}${datadir}/qt4/
-	ln -sf linux-g++ ${D}${datadir}/qt4/mkspecs/${BUILD_OS}-oe-g++
-	cp -f ${WORKDIR}/g++.conf ${WORKDIR}/linux.conf ${D}${datadir}/qt4/mkspecs/common/
+    install -d ${D}${bindir}/
+    install -m 0755 bin/qmake ${D}${bindir}/qmake2
+    for i in moc uic rcc lrelease lupdate; do
+        install -m 0755 bin/${i} ${D}${bindir}/${i}4
+    done
+    
+    install -d ${D}${datadir}/qt4/
+    cp -PfR mkspecs ${D}${datadir}/qt4/
+    ln -sf linux-g++ ${D}${datadir}/qt4/mkspecs/${BUILD_OS}-oe-g++
+    cp -f ${WORKDIR}/g++.conf ${WORKDIR}/linux.conf ${D}${datadir}/qt4/mkspecs/common/
 
-	install -m 0644 tools/porting/src/q3porting.xml ${D}${datadir}/qt4/
+    install -m 0644 tools/porting/src/q3porting.xml ${D}${datadir}/qt4/
 }
diff --git a/meta/recipes-qt/qt4/qt4-tools-native_4.6.3.bb b/meta/recipes-qt/qt4/qt4-tools-native_4.6.3.bb
index ac66eb3..dae8cd1 100644
--- a/meta/recipes-qt/qt4/qt4-tools-native_4.6.3.bb
+++ b/meta/recipes-qt/qt4/qt4-tools-native_4.6.3.bb
@@ -1,11 +1,11 @@
 require qt4-tools-native.inc
 
-LICENSE = "LGPLv2.1 | GPLv3"
-LIC_FILES_CHKSUM = "file://LICENSE.LGPL;md5=fbc093901857fcd118f065f900982c24 \
-                    file://LICENSE.GPL3;md5=babc5b6b77441da277f5c06b2e547720 \
-                    file://LGPL_EXCEPTION.txt;md5=411080a56ff917a5a1aa08c98acae354"
-PR = "r2"
+PR = "${INC_PR}.0"
 
-EXTRA_OECONF += " -no-fast -silent -no-rpath -no-freetype -no-fontconfig"
+EXTRA_OECONF += " -no-fast -silent -no-rpath"
 
 TOBUILD := "src/tools/bootstrap ${TOBUILD}"
+
+SRC_URI[md5sum] = "5c69f16d452b0bb3d44bc3c10556c072"
+SRC_URI[sha256sum] = "f4e0ada8d4d516bbb8600a3ee7d9046c9c79e38cd781df9ffc46d8f16acd1768"
+
diff --git a/meta/recipes-qt/qt4/qt4-tools-native_4.7.1.bb b/meta/recipes-qt/qt4/qt4-tools-native_4.7.1.bb
new file mode 100644
index 0000000..e9de510
--- /dev/null
+++ b/meta/recipes-qt/qt4/qt4-tools-native_4.7.1.bb
@@ -0,0 +1,13 @@
+require qt4-tools-native.inc
+
+PR = "${INC_PR}.0"
+
+# Find the g++.conf/linux.conf in the right directory.
+FILESPATHPKG =. "qt-${PV}:"
+
+EXTRA_OECONF += " -no-fast -silent -no-rpath"
+
+TOBUILD := "src/tools/bootstrap ${TOBUILD}"
+
+SRC_URI[md5sum] = "6f88d96507c84e9fea5bf3a71ebeb6d7"
+SRC_URI[sha256sum] = "8cb5277c41f824cfc6dcee0e95e0bf23a9ad2c8d18d245105137481d092b124a"
-- 
1.7.1


