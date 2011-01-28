Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5A0B14C81271
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 18:36:45 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Jan 2011 16:36:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="651940856"
Received: from unknown (HELO helios) ([10.255.16.167])
	by fmsmga002.fm.intel.com with SMTP; 27 Jan 2011 16:36:42 -0800
Received: by helios (sSMTP sendmail emulation); Fri, 28 Jan 2011 00:36:43 +0000
Message-Id: <93afb5a16a88cd026eea90a6b9af98445fdbdd93.1296174472.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1296174472.git.paul.eggleton@linux.intel.com>
References: <cover.1296174472.git.paul.eggleton@linux.intel.com>
Old-Date: Fri, 14 Jan 2011 12:02:47 +0000
Date: Fri, 28 Jan 2011  0:36:43 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 08/11] qt4: Add qt4-tools-nativesdk based on qt4-tools-sdk from OpenEmbedded
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
X-List-Received-Date: Fri, 28 Jan 2011 00:36:45 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Differences from OpenEmbedded qt4-tools-sdk:

* Convert to nativesdk and make fixes necessary to build
* Use .inc file in 4.6.3 version
* Add LIC_FILES_CHKSUM
* Fix LICENSE to match other Qt4 recipes
* Use http source URL to match other Qt4 recipes
* Whitespace fixes

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../recipes-qt/qt4/files/compile.test-lflags.patch |   13 +++
 meta/recipes-qt/qt4/files/configure-lflags.patch   |   13 +++
 meta/recipes-qt/qt4/files/configure-paths.patch    |   21 ++++
 meta/recipes-qt/qt4/files/qmake-exists-check.patch |   18 +++
 meta/recipes-qt/qt4/qt4-tools-nativesdk.inc        |  111 ++++++++++++++++++++
 meta/recipes-qt/qt4/qt4-tools-nativesdk_4.6.3.bb   |    6 +
 meta/recipes-qt/qt4/qt4-tools-nativesdk_4.7.1.bb   |    6 +
 7 files changed, 188 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-qt/qt4/files/compile.test-lflags.patch
 create mode 100644 meta/recipes-qt/qt4/files/configure-lflags.patch
 create mode 100644 meta/recipes-qt/qt4/files/configure-paths.patch
 create mode 100644 meta/recipes-qt/qt4/files/qmake-exists-check.patch
 create mode 100644 meta/recipes-qt/qt4/qt4-tools-nativesdk.inc
 create mode 100644 meta/recipes-qt/qt4/qt4-tools-nativesdk_4.6.3.bb
 create mode 100644 meta/recipes-qt/qt4/qt4-tools-nativesdk_4.7.1.bb

diff --git a/meta/recipes-qt/qt4/files/compile.test-lflags.patch b/meta/recipes-qt/qt4/files/compile.test-lflags.patch
new file mode 100644
index 0000000..e4b256b
--- /dev/null
+++ b/meta/recipes-qt/qt4/files/compile.test-lflags.patch
@@ -0,0 +1,13 @@
+Index: qt-everywhere-opensource-src-4.6.3/config.tests/unix/compile.test
+===================================================================
+--- qt-everywhere-opensource-src-4.6.3.orig/config.tests/unix/compile.test	2010-06-02 06:03:18.000000000 +0400
++++ qt-everywhere-opensource-src-4.6.3/config.tests/unix/compile.test	2010-10-04 17:35:07.587783460 +0400
+@@ -11,7 +11,7 @@
+ EXE=`basename "$6"`
+ DESCRIPTION=$7
+ shift 7
+-LFLAGS=""
++LFLAGS="$LDFLAGS"
+ INCLUDEPATH=""
+ CXXFLAGS=""
+ MAC_ARCH_CXXFLAGS=""
diff --git a/meta/recipes-qt/qt4/files/configure-lflags.patch b/meta/recipes-qt/qt4/files/configure-lflags.patch
new file mode 100644
index 0000000..df19549
--- /dev/null
+++ b/meta/recipes-qt/qt4/files/configure-lflags.patch
@@ -0,0 +1,13 @@
+Index: qtopia-core-opensource-src-4.3.3/configure
+===================================================================
+--- qtopia-core-opensource-src-4.3.3.orig/configure	2008-01-14 08:53:51.000000000 +0000
++++ qtopia-core-opensource-src-4.3.3/configure	2008-01-14 08:54:07.000000000 +0000
+@@ -447,7 +447,7 @@
+ # initalize variables
+ #-------------------------------------------------------------------------------
+ 
+-SYSTEM_VARIABLES="CC CXX CFLAGS CXXFLAGS LDFLAGS"
++SYSTEM_VARIABLES="CC CXX CFLAGS CXXFLAGS LDFLAGS LFLAGS"
+ for varname in $SYSTEM_VARIABLES; do
+     cmd=`echo \
+ 'if [ -n "\$'${varname}'" ]; then
diff --git a/meta/recipes-qt/qt4/files/configure-paths.patch b/meta/recipes-qt/qt4/files/configure-paths.patch
new file mode 100644
index 0000000..c9259a1
--- /dev/null
+++ b/meta/recipes-qt/qt4/files/configure-paths.patch
@@ -0,0 +1,21 @@
+Index: qt-everywhere-opensource-src-4.6.3/configure
+===================================================================
+--- qt-everywhere-opensource-src-4.6.3.orig/configure	2011-01-10 15:47:37.100607001 +0000
++++ qt-everywhere-opensource-src-4.6.3/configure	2011-01-10 15:49:14.576606999 +0000
+@@ -7198,11 +7198,11 @@
+ QMAKE_MOC_SRC    = \$\$QT_BUILD_TREE/src/moc
+ 
+ #local paths that cannot be queried from the QT_INSTALL_* properties while building QTDIR
+-QMAKE_MOC        = \$\$QT_BUILD_TREE/bin/moc
+-QMAKE_UIC        = \$\$QT_BUILD_TREE/bin/uic
+-QMAKE_UIC3       = \$\$QT_BUILD_TREE/bin/uic3
+-QMAKE_RCC        = \$\$QT_BUILD_TREE/bin/rcc
+-QMAKE_QDBUSXML2CPP = \$\$QT_BUILD_TREE/bin/qdbusxml2cpp
++QMAKE_MOC        = \${OE_QMAKE_MOC}
++QMAKE_UIC        = \${OE_QMAKE_UIC}
++QMAKE_UIC3       = \${OE_QMAKE_UIC3}
++QMAKE_RCC        = \${OE_QMAKE_RCC}
++QMAKE_QDBUSXML2CPP = \${OE_QMAKE_QDBUSXML2CPP}
+ QMAKE_INCDIR_QT  = \$\$QT_BUILD_TREE/include
+ QMAKE_LIBDIR_QT  = \$\$QT_BUILD_TREE/lib
+ 
diff --git a/meta/recipes-qt/qt4/files/qmake-exists-check.patch b/meta/recipes-qt/qt4/files/qmake-exists-check.patch
new file mode 100644
index 0000000..cc73837
--- /dev/null
+++ b/meta/recipes-qt/qt4/files/qmake-exists-check.patch
@@ -0,0 +1,18 @@
+qt4-tools-nativesdk: avoid rebuilding qmake
+
+qt4-tools-nativesdk patch to avoids building qmake in configure if it already exists 
+(as it will, since we symlink it in from the native sysroot in do_configure)
+
+Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
+
+--- qt-everywhere-opensource-src-4.6.3.orig/configure	2011-01-10 12:01:56.260607001 +0000
++++ qt-everywhere-opensource-src-4.6.3/configure	2011-01-10 12:02:20.584607015 +0000
+@@ -4286,7 +4286,7 @@
+ }
+ 
+ # build qmake
+-if true; then ###[ '!' -f "$outpath/bin/qmake" ];
++if [ '!' -f "$outpath/bin/qmake" ]; then
+     echo "Creating qmake. Please wait..."
+ 
+     OLD_QCONFIG_H=
diff --git a/meta/recipes-qt/qt4/qt4-tools-nativesdk.inc b/meta/recipes-qt/qt4/qt4-tools-nativesdk.inc
new file mode 100644
index 0000000..f273c9f
--- /dev/null
+++ b/meta/recipes-qt/qt4/qt4-tools-nativesdk.inc
@@ -0,0 +1,111 @@
+DESCRIPTION = "SDK tools for Qt/[X11|Mac|Embedded] version 4.x"
+DEPENDS = "zlib-nativesdk dbus-nativesdk libx11-nativesdk qt4-tools-native"
+SECTION = "libs"
+HOMEPAGE = "http://qt.nokia.com"
+PRIORITY = "optional"
+LICENSE = "LGPLv2.1 | GPLv3"
+
+INC_PR = "r3"
+
+FILESPATHPKG =. "qt-${PV}:"
+inherit nativesdk qmake2
+
+SRC_URI = "http://get.qt.nokia.com/qt/source/qt-everywhere-opensource-src-${PV}.tar.gz \
+           file://configure-lflags.patch \
+           file://compile.test-lflags.patch \
+           file://qt-config.patch \
+           file://qmake-exists-check.patch \
+           file://configure-paths.patch \
+           file://g++.conf \
+           file://linux.conf"
+
+S = "${WORKDIR}/qt-everywhere-opensource-src-${PV}"
+
+LIC_FILES_CHKSUM = "file://LICENSE.LGPL;md5=fbc093901857fcd118f065f900982c24 \
+                    file://LICENSE.GPL3;md5=babc5b6b77441da277f5c06b2e547720 \
+                    file://LGPL_EXCEPTION.txt;md5=411080a56ff917a5a1aa08c98acae354"
+
+# FIXME: make it work with "${STAGING_BINDIR_NATIVE}/pkg-config --cflags dbus-1"
+EXTRA_OECONF = "-prefix ${prefix} \
+                -qt-libjpeg -qt-gif -system-zlib \
+                -no-libjpeg -no-libpng -no-libmng -no-libtiff \
+                -no-accessibility \
+                -no-cups \
+                -no-exceptions  \
+                -no-nas-sound \
+                -no-nis -no-openssl \
+                -verbose -release -fast -static \
+                -platform ${TARGET_OS}-oe-g++ \
+                -xplatform ${TARGET_OS}-oe-g++ \
+                -embedded -no-freetype -no-glib -no-iconv \
+                -qt3support \
+                -I${STAGING_DIR_HOST}${SDKPATHNATIVE}/usr/include \
+                -I${STAGING_DIR_HOST}${SDKPATHNATIVE}/usr/include/freetype2 \
+                -I${STAGING_DIR_HOST}${SDKPATHNATIVE}/usr/include/dbus-1.0 \
+                -I${STAGING_DIR_HOST}${SDKPATHNATIVE}/usr/lib/dbus-1.0/include \
+                -I${STAGING_DIR_HOST}${SDKPATHNATIVE}/usr/include/c++ \
+                -I${STAGING_DIR_HOST}${SDKPATHNATIVE}/usr/include/c++/${TARGET_SYS} \
+                -L${STAGING_DIR_HOST}${SDKPATHNATIVE}/lib \
+                -L${STAGING_DIR_HOST}${SDKPATHNATIVE}/usr/lib"
+
+# yank default -e, otherwise we get the following error:
+# moc_qbuffer.cpp: No such file or directory
+EXTRA_OEMAKE = " "
+
+do_configure() {
+    if [ ! -e bin/qmake ]; then
+        ln -sf ${STAGING_BINDIR_NATIVE}/qmake2 bin/qmake
+    fi
+
+    if [ ! -e mkspecs/${TARGET_OS}-oe-g++ ]; then
+        ln -sf linux-g++ mkspecs/${TARGET_OS}-oe-g++
+    fi
+
+    cp ../g++.conf mkspecs/common
+    cp ../linux.conf mkspecs/common
+
+    (echo o; echo yes) | ./configure ${EXTRA_OECONF} || die "Configuring qt failed. EXTRA_OECONF was ${EXTRA_OECONF}"
+}
+
+TOBUILD = "\
+  src/tools/bootstrap \
+  src/tools/moc \
+  src/corelib \
+  src/sql \
+  src/dbus \
+  src/qt3support \
+  src/xml \
+  src/tools/uic \
+  src/tools/rcc \
+  src/network \
+  src/gui \
+  src/tools/uic3 \
+  tools/linguist/lrelease \
+  tools/linguist/lupdate \
+  tools/qdbus \
+"
+
+do_compile() {
+    for i in ${TOBUILD}; do
+        cd ${S}/$i && oe_runmake CC="${CC}" CXX="${CXX}"
+    done
+}
+
+do_install() {
+    install -d ${D}${bindir}
+    install -m 0755 bin/qmake ${D}${bindir}/qmake2
+    for i in moc uic uic3 rcc lrelease lupdate qdbuscpp2xml qdbusxml2cpp; do
+        install -m 0755 bin/${i} ${D}${bindir}/${i}4
+    done
+
+    (cd ${D}${bindir}; \
+    ln -s qmake2 qmake; \
+    for i in moc uic uic3 rcc lrelease lupdate qdbuscpp2xml qdbusxml2cpp; do \
+        ln -s ${i}4 ${i}; \
+    done)
+
+    # make a symbolic link to mkspecs for compatibility with Nokia's SDK
+    # and QTCreator
+    (cd ${D}${bindir}/..; ln -s ${TARGET_SYS}/usr/share/qtopia/mkspecs mkspecs;)
+}
+
diff --git a/meta/recipes-qt/qt4/qt4-tools-nativesdk_4.6.3.bb b/meta/recipes-qt/qt4/qt4-tools-nativesdk_4.6.3.bb
new file mode 100644
index 0000000..d64542b
--- /dev/null
+++ b/meta/recipes-qt/qt4/qt4-tools-nativesdk_4.6.3.bb
@@ -0,0 +1,6 @@
+require qt4-tools-nativesdk.inc
+
+PR = "${INC_PR}.0"
+
+SRC_URI[md5sum] = "5c69f16d452b0bb3d44bc3c10556c072"
+SRC_URI[sha256sum] = "f4e0ada8d4d516bbb8600a3ee7d9046c9c79e38cd781df9ffc46d8f16acd1768"
diff --git a/meta/recipes-qt/qt4/qt4-tools-nativesdk_4.7.1.bb b/meta/recipes-qt/qt4/qt4-tools-nativesdk_4.7.1.bb
new file mode 100644
index 0000000..091a539
--- /dev/null
+++ b/meta/recipes-qt/qt4/qt4-tools-nativesdk_4.7.1.bb
@@ -0,0 +1,6 @@
+require qt4-tools-nativesdk.inc
+
+PR = "${INC_PR}.0"
+
+SRC_URI[md5sum] = "6f88d96507c84e9fea5bf3a71ebeb6d7"
+SRC_URI[sha256sum] = "8cb5277c41f824cfc6dcee0e95e0bf23a9ad2c8d18d245105137481d092b124a"
-- 
1.7.1


