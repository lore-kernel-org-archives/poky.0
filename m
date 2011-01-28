Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 084254C81262
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 18:36:27 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Jan 2011 16:36:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="597199348"
Received: from unknown (HELO helios) ([10.255.16.167])
	by orsmga002.jf.intel.com with SMTP; 27 Jan 2011 16:36:25 -0800
Received: by helios (sSMTP sendmail emulation); Fri, 28 Jan 2011 00:36:27 +0000
Message-Id: <09af42d39067fd9b87829f591968d38367f35da8.1296174472.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1296174472.git.paul.eggleton@linux.intel.com>
References: <cover.1296174472.git.paul.eggleton@linux.intel.com>
Old-Date: Thu, 13 Jan 2011 15:04:35 +0000
Date: Fri, 28 Jan 2011  0:36:27 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 03/11] qt4: add qt4-embedded 4.6.3 from meta-openembedded
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
X-List-Received-Date: Fri, 28 Jan 2011 00:36:28 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Changes from the meta-openembedded version:
* Change the order of includes so that embedded takes precedence (ensuring
  SRC_URI additions from qt-embedded.inc work)
* Specify -embedded in qt-embedded.inc
* Remove SRC_URI and S which should come from qt-${PV}.inc
* Remove QT_DIR_NAME and QT_LIBINFIX as these come from qt4e.bbclass
* Correct LICENSE
* Set DESCRIPTION instead of SUMMARY as SUMMARY will inherit by default
* Add qthelp-lib-qtclucene.patch (required to build)
* Whitespace fixes

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/classes/qt4e.bbclass                          |   18 ++++
 meta/recipes-qt/qt4/files/qte.sh                   |    7 ++
 .../qt4/files/qthelp-lib-qtclucene.patch           |   86 ++++++++++++++++++++
 meta/recipes-qt/qt4/qt4-embedded.inc               |   34 ++++++++
 meta/recipes-qt/qt4/qt4-embedded_4.6.3.bb          |    9 ++
 5 files changed, 154 insertions(+), 0 deletions(-)
 create mode 100644 meta/classes/qt4e.bbclass
 create mode 100644 meta/recipes-qt/qt4/files/qte.sh
 create mode 100644 meta/recipes-qt/qt4/files/qthelp-lib-qtclucene.patch
 create mode 100644 meta/recipes-qt/qt4/qt4-embedded.inc
 create mode 100644 meta/recipes-qt/qt4/qt4-embedded_4.6.3.bb

diff --git a/meta/classes/qt4e.bbclass b/meta/classes/qt4e.bbclass
new file mode 100644
index 0000000..670605b
--- /dev/null
+++ b/meta/classes/qt4e.bbclass
@@ -0,0 +1,18 @@
+DEPENDS_prepend = "${@["qt4-embedded ", ""][(bb.data.getVar('PN', d, 1)[:12] == 'qt4-embedded')]}"
+
+inherit qmake2
+
+QT_DIR_NAME = "qtopia"
+QT_LIBINFIX = "E"
+# override variables set by qmake-base to compile Qt/Embedded apps
+#
+export QMAKESPEC = "${STAGING_DATADIR}/${QT_DIR_NAME}/mkspecs/${TARGET_OS}-oe-g++"
+export OE_QMAKE_INCDIR_QT = "${STAGING_INCDIR}/${QT_DIR_NAME}"
+export OE_QMAKE_LIBDIR_QT = "${STAGING_LIBDIR}"
+export OE_QMAKE_LIBS_QT = "qt"
+export OE_QMAKE_LIBS_X11 = ""
+export OE_QMAKE_EXTRA_MODULES = "network"
+EXTRA_QMAKEVARS_PRE += " QT_LIBINFIX=${QT_LIBINFIX} "
+
+# Qt4 uses atomic instructions not supported in thumb mode
+ARM_INSTRUCTION_SET = "arm"
diff --git a/meta/recipes-qt/qt4/files/qte.sh b/meta/recipes-qt/qt4/files/qte.sh
new file mode 100644
index 0000000..21d6ecb
--- /dev/null
+++ b/meta/recipes-qt/qt4/files/qte.sh
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+if [ -e /dev/input/touchscreen0 ]
+then
+    QWS_MOUSE_PROTO=Tslib:/dev/input/touchscreen0
+    export QWS_MOUSE_PROTO
+fi
diff --git a/meta/recipes-qt/qt4/files/qthelp-lib-qtclucene.patch b/meta/recipes-qt/qt4/files/qthelp-lib-qtclucene.patch
new file mode 100644
index 0000000..1d250d8
--- /dev/null
+++ b/meta/recipes-qt/qt4/files/qthelp-lib-qtclucene.patch
@@ -0,0 +1,86 @@
+qt-embedded: fix linker error in do_compile
+
+This patch ensures that we link to libQtCLucene where required (i.e. when 
+linking to libQtHelp) avoiding a linker error.
+
+Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
+
+Index: qt-everywhere-opensource-src-4.6.3/demos/qtdemo/qtdemo.pro
+===================================================================
+--- qt-everywhere-opensource-src-4.6.3.orig/demos/qtdemo/qtdemo.pro	2011-01-11 16:06:47.382828004 +0000
++++ qt-everywhere-opensource-src-4.6.3/demos/qtdemo/qtdemo.pro	2011-01-11 16:10:06.906828001 +0000
+@@ -76,3 +76,10 @@
+ sources.files = $$SOURCES $$HEADERS $$FORMS $$RESOURCES qtdemo.pro images xml *.ico *.icns *.rc *.plist
+ sources.path = $$[QT_INSTALL_DEMOS]/qtdemo
+ 
++qclucene = QtCLucene$${QT_LIBINFIX}
++if(!debug_and_release|build_pass):CONFIG(debug, debug|release) {
++    mac:qclucene = $${qclucene}_debug
++    win32:qclucene = $${qclucene}d
++}
++linux-lsb-g++:LIBS_PRIVATE += --lsb-shared-libs=$$qclucene
++LIBS_PRIVATE += -l$$qclucene
+Index: qt-everywhere-opensource-src-4.6.3/examples/help/contextsensitivehelp/contextsensitivehelp.pro
+===================================================================
+--- qt-everywhere-opensource-src-4.6.3.orig/examples/help/contextsensitivehelp/contextsensitivehelp.pro	2011-01-11 16:05:56.598828002 +0000
++++ qt-everywhere-opensource-src-4.6.3/examples/help/contextsensitivehelp/contextsensitivehelp.pro	2011-01-11 16:09:57.762828002 +0000
+@@ -18,3 +18,11 @@
+ INSTALLS += target sources
+ 
+ symbian: include($$QT_SOURCE_TREE/examples/symbianpkgrules.pri)
++
++qclucene = QtCLucene$${QT_LIBINFIX}
++if(!debug_and_release|build_pass):CONFIG(debug, debug|release) {
++    mac:qclucene = $${qclucene}_debug
++    win32:qclucene = $${qclucene}d
++}
++linux-lsb-g++:LIBS_PRIVATE += --lsb-shared-libs=$$qclucene
++LIBS_PRIVATE += -l$$qclucene
+Index: qt-everywhere-opensource-src-4.6.3/tools/assistant/tools/assistant/assistant.pro
+===================================================================
+--- qt-everywhere-opensource-src-4.6.3.orig/tools/assistant/tools/assistant/assistant.pro	2011-01-11 14:56:50.902828001 +0000
++++ qt-everywhere-opensource-src-4.6.3/tools/assistant/tools/assistant/assistant.pro	2011-01-11 16:09:39.914828003 +0000
+@@ -85,3 +85,11 @@
+         DEFINES += USE_STATIC_SQLITE_PLUGIN
+     }
+ }
++
++qclucene = QtCLucene$${QT_LIBINFIX}
++if(!debug_and_release|build_pass):CONFIG(debug, debug|release) {
++    mac:qclucene = $${qclucene}_debug
++    win32:qclucene = $${qclucene}d
++}
++linux-lsb-g++:LIBS_PRIVATE += --lsb-shared-libs=$$qclucene
++LIBS_PRIVATE += -l$$qclucene
+Index: qt-everywhere-opensource-src-4.6.3/tools/assistant/tools/qcollectiongenerator/qcollectiongenerator.pro
+===================================================================
+--- qt-everywhere-opensource-src-4.6.3.orig/tools/assistant/tools/qcollectiongenerator/qcollectiongenerator.pro	2011-01-11 14:56:50.918828002 +0000
++++ qt-everywhere-opensource-src-4.6.3/tools/assistant/tools/qcollectiongenerator/qcollectiongenerator.pro	2011-01-11 16:09:44.538828001 +0000
+@@ -12,3 +12,11 @@
+            main.cpp
+ 
+ HEADERS += ../shared/helpgenerator.h
++
++qclucene = QtCLucene$${QT_LIBINFIX}
++if(!debug_and_release|build_pass):CONFIG(debug, debug|release) {
++    mac:qclucene = $${qclucene}_debug
++    win32:qclucene = $${qclucene}d
++}
++linux-lsb-g++:LIBS_PRIVATE += --lsb-shared-libs=$$qclucene
++LIBS_PRIVATE += -l$$qclucene
+Index: qt-everywhere-opensource-src-4.6.3/tools/assistant/tools/qhelpgenerator/qhelpgenerator.pro
+===================================================================
+--- qt-everywhere-opensource-src-4.6.3.orig/tools/assistant/tools/qhelpgenerator/qhelpgenerator.pro	2011-01-11 14:56:50.930828002 +0000
++++ qt-everywhere-opensource-src-4.6.3/tools/assistant/tools/qhelpgenerator/qhelpgenerator.pro	2011-01-11 16:09:50.274828003 +0000
+@@ -12,3 +12,11 @@
+            main.cpp
+ 
+ HEADERS += ../shared/helpgenerator.h
++
++qclucene = QtCLucene$${QT_LIBINFIX}
++if(!debug_and_release|build_pass):CONFIG(debug, debug|release) {
++    mac:qclucene = $${qclucene}_debug
++    win32:qclucene = $${qclucene}d
++}
++linux-lsb-g++:LIBS_PRIVATE += --lsb-shared-libs=$$qclucene
++LIBS_PRIVATE += -l$$qclucene
diff --git a/meta/recipes-qt/qt4/qt4-embedded.inc b/meta/recipes-qt/qt4/qt4-embedded.inc
new file mode 100644
index 0000000..2ed1819
--- /dev/null
+++ b/meta/recipes-qt/qt4/qt4-embedded.inc
@@ -0,0 +1,34 @@
+DESCRIPTION = "Qt is a versatile cross-platform application framework -- this is the embedded version."
+SECTION = "libs"
+LICENSE = "LGPLv2.1 | GPLv3"
+PRIORITY = "optional"
+HOMEPAGE = "http://qt.nokia.com"
+DEPENDS += "directfb tslib"
+INC_PR = "r26"
+
+QT_BASE_NAME ?= "qt4-embedded"
+QT_BASE_LIB  ?= "libqt-embedded"
+
+# Set necessary variables in the profile
+SRC_URI += "file://qte.sh"
+
+QT_CONFIG_FLAGS += " \
+    -embedded ${QT_ARCH} \
+    -qtlibinfix ${QT_LIBINFIX} \
+    -plugin-gfx-transformed -plugin-gfx-qvfb -plugin-gfx-vnc -plugin-gfx-directfb \
+    -plugin-mouse-tslib -qt-mouse-pc -qt-mouse-qvfb -qt-mouse-linuxinput \
+    -qt-kbd-tty \
+    -DQT_KEYPAD_NAVIGATION \
+    "
+
+require qt4.inc
+
+do_install_append() {
+    install -d ${D}${sysconfdir}/profile.d/
+    install -m 0755 ${WORKDIR}/qte.sh ${D}${sysconfdir}/profile.d/
+}
+
+FILES_${PN} += " ${sysconfdir}/profile.d/qte.sh"
+
+inherit qt4e
+
diff --git a/meta/recipes-qt/qt4/qt4-embedded_4.6.3.bb b/meta/recipes-qt/qt4/qt4-embedded_4.6.3.bb
new file mode 100644
index 0000000..dd662aa
--- /dev/null
+++ b/meta/recipes-qt/qt4/qt4-embedded_4.6.3.bb
@@ -0,0 +1,9 @@
+require qt-${PV}.inc
+require qt4-embedded.inc
+
+SRC_URI += "file://qthelp-lib-qtclucene.patch"
+
+PR = "${INC_PR}.1"
+
+QT_CONFIG_FLAGS_append_armv6 = " -no-neon "
+
-- 
1.7.1


