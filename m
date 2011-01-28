Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 15E234C8126D
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 18:36:31 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 27 Jan 2011 16:36:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="651940413"
Received: from unknown (HELO helios) ([10.255.16.167])
	by fmsmga002.fm.intel.com with SMTP; 27 Jan 2011 16:36:28 -0800
Received: by helios (sSMTP sendmail emulation); Fri, 28 Jan 2011 00:36:30 +0000
Message-Id: <b9a93a3248b3b3fa9514c50bf3bbc287188e14ef.1296174472.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1296174472.git.paul.eggleton@linux.intel.com>
References: <cover.1296174472.git.paul.eggleton@linux.intel.com>
Old-Date: Fri, 21 Jan 2011 16:22:15 +0000
Date: Fri, 28 Jan 2011  0:36:30 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 04/11] qt4: add 4.7.1 version from meta-openembedded
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
X-List-Received-Date: Fri, 28 Jan 2011 00:36:31 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Differences from meta-openembedded version:
* Change the order of includes so that embedded/x11 overrides take precedence
* Move contents of do_install_append from qt-${PV}.inc to do_install in
  qt4.inc as this is the same for 4.6.3 and 4.7.1 and gets in the way of
  do_install_append in qt-embedded.inc.
* Don't add qte.sh to SRC_URI in qt-4.7.1.inc (this is embedded-specific)
* Don't specify DEFAULT_PREFERENCE
* Use http source URL to match other Qt4 recipes

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/recipes-qt/qt4/qt-4.7.1.inc                   |   58 +++++++++++++++++
 .../0001-Added-Openembedded-crossarch-option.patch |   44 +++++++++++++
 meta/recipes-qt/qt4/qt-4.7.1/g++.conf              |   60 ++++++++++++++++++
 .../qt4/qt-4.7.1/hack-out-pg2-4.7.0.patch          |   19 ++++++
 meta/recipes-qt/qt4/qt-4.7.1/linux.conf            |   66 ++++++++++++++++++++
 meta/recipes-qt/qt4/qt4-embedded_4.7.1.bb          |   10 +++
 meta/recipes-qt/qt4/qt4-x11-free_4.7.1.bb          |   12 ++++
 7 files changed, 269 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-qt/qt4/qt-4.7.1.inc
 create mode 100644 meta/recipes-qt/qt4/qt-4.7.1/0001-Added-Openembedded-crossarch-option.patch
 create mode 100644 meta/recipes-qt/qt4/qt-4.7.1/g++.conf
 create mode 100644 meta/recipes-qt/qt4/qt-4.7.1/hack-out-pg2-4.7.0.patch
 create mode 100644 meta/recipes-qt/qt4/qt-4.7.1/linux.conf
 create mode 100644 meta/recipes-qt/qt4/qt4-embedded_4.7.1.bb
 create mode 100644 meta/recipes-qt/qt4/qt4-x11-free_4.7.1.bb

diff --git a/meta/recipes-qt/qt4/qt-4.7.1.inc b/meta/recipes-qt/qt4/qt-4.7.1.inc
new file mode 100644
index 0000000..70ee596
--- /dev/null
+++ b/meta/recipes-qt/qt4/qt-4.7.1.inc
@@ -0,0 +1,58 @@
+LICENSE = "LGPLv2.1 | GPLv3"
+LIC_FILES_CHKSUM = "file://LICENSE.LGPL;md5=fbc093901857fcd118f065f900982c24 \
+                    file://LICENSE.GPL3;md5=babc5b6b77441da277f5c06b2e547720 \
+                    file://LGPL_EXCEPTION.txt;md5=411080a56ff917a5a1aa08c98acae354"
+
+FILESPATH =. "${FILE_DIRNAME}/qt-${PV}:"
+
+SRC_URI = "http://get.qt.nokia.com/qt/source/qt-everywhere-opensource-src-${PV}.tar.gz \
+           file://0004-no-qmake.patch \
+           file://hack-out-pg2-4.7.0.patch \
+           file://0006-freetype-host-includes.patch \
+           file://0001-Added-Openembedded-crossarch-option.patch \
+           file://g++.conf \
+           file://linux.conf \
+           "
+
+SRC_URI[md5sum] = "6f88d96507c84e9fea5bf3a71ebeb6d7"
+SRC_URI[sha256sum] = "8cb5277c41f824cfc6dcee0e95e0bf23a9ad2c8d18d245105137481d092b124a"
+
+S = "${WORKDIR}/qt-everywhere-opensource-src-${PV}"
+
+FILES_${QT_BASE_NAME}-tools                += "${bindir}/qml"
+
+do_configure_prepend() {
+    for pro in $(find ${S} -name "*.pro") ; do
+        sed -i 's:$$QT_BUILD_TREE/bin/lrelease:${OE_QMAKE_LRELEASE}:g' $pro
+    done
+
+    sed -i s:SEDME:${S}: ${WORKDIR}/linux.conf
+    sed -i \
+    -e /QMAKE_MOC\ /d \
+    -e /QMAKE_UIC\ /d \
+    -e /QMAKE_UIC3\ /d \
+    -e /QMAKE_RCC\ /d \
+    ${S}/configure
+}
+
+do_configure_append() {
+    sed -e '/QMAKE_TARGET /d' -e '/TARGET /d' -i ${S}/translations/Makefile
+}
+
+QT_GLFLAGS ?= ""
+QT_CONFIG_FLAGS += " -xmlpatterns -no-rpath -qt3support -reduce-relocations -silent ${QT_GLFLAGS}"
+
+do_compile() {
+    # Fixup missing wsegl header in some SGX SDKs
+    if ! [ -e ${STAGING_INCDIR}/wsegl.h ] ; then
+        cp src/3rdparty/powervr/wsegl.h src/plugins/gfxdrivers/powervr/QWSWSEGL/
+    fi
+
+    unset CFLAGS CXXFLAGS
+    install -m 0755 ${STAGING_BINDIR_NATIVE}/rcc4 ${S}/bin/rcc
+    install -m 0755 ${STAGING_BINDIR_NATIVE}/moc4 ${S}/bin/moc
+    install -m 0755 ${STAGING_BINDIR_NATIVE}/uic4 ${S}/bin/uic
+    install -m 0755 ${STAGING_BINDIR_NATIVE}/lrelease4 ${S}/bin/lrelease
+
+    oe_runmake ${EXTRA_ENV}
+}
diff --git a/meta/recipes-qt/qt4/qt-4.7.1/0001-Added-Openembedded-crossarch-option.patch b/meta/recipes-qt/qt4/qt-4.7.1/0001-Added-Openembedded-crossarch-option.patch
new file mode 100644
index 0000000..71a04a5
--- /dev/null
+++ b/meta/recipes-qt/qt4/qt-4.7.1/0001-Added-Openembedded-crossarch-option.patch
@@ -0,0 +1,44 @@
+From b1ba119f6a824dc01bd42ee00dba4a1653867b72 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Matthias=20G=C3=BCnther?= <matgnt@gmail.com>
+Date: Wed, 12 May 2010 16:52:45 +0200
+Subject: [PATCH 1/9] Added Openembedded "-crossarch" option
+
+---
+ configure |    7 ++++++-
+ 1 files changed, 6 insertions(+), 1 deletions(-)
+
+diff --git a/configure b/configure
+index facd192..9d15136 100755
+--- a/configure
++++ b/configure
+@@ -954,7 +954,7 @@ while [ "$#" -gt 0 ]; do
+         shift
+         VAL=$1
+         ;;
+-    -prefix|-docdir|-headerdir|-plugindir|-importdir|-datadir|-libdir|-bindir|-translationdir|-sysconfdir|-examplesdir|-demosdir|-depths|-make|-nomake|-platform|-xplatform|-buildkey|-sdk|-arch|-host-arch|-mysql_config)
++    -prefix|-docdir|-headerdir|-plugindir|-importdir|-datadir|-libdir|-bindir|-translationdir|-sysconfdir|-examplesdir|-demosdir|-depths|-make|-nomake|-platform|-xplatform|-buildkey|-sdk|-arch|-host-arch|-mysql_config|-crossarch)
+         VAR=`echo $1 | sed "s,^-\(.*\),\1,"`
+         shift
+         VAL="$1"
+@@ -1443,6 +1443,9 @@ while [ "$#" -gt 0 ]; do
+     xplatform)
+         XPLATFORM="$VAL"
+         ;;
++	crossarch)
++		CROSSARCH="$VAL"
++		;;
+     debug-and-release)
+         if [ "$VAL" = "yes" ] || [ "$VAL" = "no" ]; then
+             CFG_DEBUG_RELEASE="$VAL"
+@@ -2918,6 +2921,8 @@ elif [ "$PLATFORM_MAC" = "yes" ] || [ -z "$CFG_ARCH" ]; then
+     CFG_ARCH=$CFG_HOST_ARCH
+ fi
+ 
++CFG_ARCH="$CROSSARCH"
++
+ if [ -d "$relpath/src/corelib/arch/$CFG_ARCH" ]; then
+     if [ "$OPT_VERBOSE" = "yes" ]; then
+         echo "    '$CFG_ARCH' is supported"
+-- 
+1.7.0.4
+
diff --git a/meta/recipes-qt/qt4/qt-4.7.1/g++.conf b/meta/recipes-qt/qt4/qt-4.7.1/g++.conf
new file mode 100644
index 0000000..80f925c
--- /dev/null
+++ b/meta/recipes-qt/qt4/qt-4.7.1/g++.conf
@@ -0,0 +1,60 @@
+#
+# qmake configuration for common gcc
+#
+
+QMAKE_CC       = $(OE_QMAKE_CC)
+QMAKE_CFLAGS       += -pipe $(OE_QMAKE_CFLAGS)
+QMAKE_CFLAGS_RELEASE_WITH_DEBUGINFO += $(OE_QMAKE_CFLAGS)
+QMAKE_CFLAGS_DEPS	+= -M
+QMAKE_CFLAGS_WARN_ON	+= -Wall -W
+QMAKE_CFLAGS_WARN_OFF	+= -w
+QMAKE_CFLAGS_RELEASE	+=
+QMAKE_CFLAGS_DEBUG	+= -g
+QMAKE_CFLAGS_SHLIB	+= -fPIC
+QMAKE_CFLAGS_STATIC_LIB	+= -fPIC
+QMAKE_CFLAGS_YACC	+= -Wno-unused -Wno-parentheses
+QMAKE_CFLAGS_HIDESYMS   += -fvisibility=hidden
+QMAKE_CFLAGS_PRECOMPILE += -x c-header -c ${QMAKE_PCH_INPUT} -o ${QMAKE_PCH_OUTPUT}
+QMAKE_CFLAGS_USE_PRECOMPILE += -include ${QMAKE_PCH_OUTPUT_BASE}
+
+QMAKE_CXX      = $(OE_QMAKE_CXX)
+QMAKE_CXXFLAGS     += $$QMAKE_CFLAGS $(OE_QMAKE_CXXFLAGS)
+QMAKE_CXXFLAGS_DEPS	+= $$QMAKE_CFLAGS_DEPS
+QMAKE_CXXFLAGS_WARN_ON	+= $$QMAKE_CFLAGS_WARN_ON
+QMAKE_CXXFLAGS_WARN_OFF	+= $$QMAKE_CFLAGS_WARN_OFF
+QMAKE_CXXFLAGS_RELEASE	+= $$QMAKE_CFLAGS_RELEASE
+QMAKE_CXXFLAGS_RELEASE_WITH_DEBUGINFO += $$QMAKE_CFLAGS_RELEASE_WITH_DEBUGINFO
+QMAKE_CXXFLAGS_DEBUG	+= $$QMAKE_CFLAGS_DEBUG
+QMAKE_CXXFLAGS_SHLIB	+= $$QMAKE_CFLAGS_SHLIB
+QMAKE_CXXFLAGS_STATIC_LIB += $$QMAKE_CFLAGS_STATIC_LIB
+QMAKE_CXXFLAGS_YACC	+= $$QMAKE_CFLAGS_YACC
+QMAKE_CXXFLAGS_HIDESYMS += $$QMAKE_CFLAGS_HIDESYMS -fvisibility-inlines-hidden
+QMAKE_CXXFLAGS_PRECOMPILE += -x c++-header -c ${QMAKE_PCH_INPUT} -o ${QMAKE_PCH_OUTPUT}
+QMAKE_CXXFLAGS_USE_PRECOMPILE = $$QMAKE_CFLAGS_USE_PRECOMPILE
+
+QMAKE_LINK     = $(OE_QMAKE_LINK)
+QMAKE_LINK_SHLIB   = $(OE_QMAKE_LINK)
+QMAKE_LINK_C		= $(OE_QMAKE_LINK)
+QMAKE_LINK_C_SHLIB	= $(OE_QMAKE_LINK)
+QMAKE_LFLAGS       += $(OE_QMAKE_LDFLAGS)
+QMAKE_LFLAGS_RELEASE	+=
+QMAKE_LFLAGS_DEBUG	+=
+QMAKE_LFLAGS_APP	+=
+QMAKE_LFLAGS_SHLIB	+= -shared
+QMAKE_LFLAGS_PLUGIN	+= $$QMAKE_LFLAGS_SHLIB
+QMAKE_LFLAGS_SONAME	+= -Wl,-soname,
+QMAKE_LFLAGS_THREAD	+=
+QMAKE_LFLAGS_NOUNDEF	+= -Wl,--no-undefined
+QMAKE_LFLAGS_RPATH        = -Wl,-rpath-link,
+
+QMAKE_PCH_OUTPUT_EXT    = .gch
+
+# -Bsymbolic-functions (ld) support
+QMAKE_LFLAGS_BSYMBOLIC_FUNC = -Wl,-Bsymbolic-functions
+QMAKE_LFLAGS_DYNAMIC_LIST = -Wl,--dynamic-list,
+
+# some linking helper...
+CONFIG += rpath_libdirs
+
+# for the SDK
+isEmpty(QMAKE_QT_CONFIG):QMAKE_QT_CONFIG = $(OE_QMAKE_QT_CONFIG)
diff --git a/meta/recipes-qt/qt4/qt-4.7.1/hack-out-pg2-4.7.0.patch b/meta/recipes-qt/qt4/qt-4.7.1/hack-out-pg2-4.7.0.patch
new file mode 100644
index 0000000..5c588ff
--- /dev/null
+++ b/meta/recipes-qt/qt4/qt-4.7.1/hack-out-pg2-4.7.0.patch
@@ -0,0 +1,19 @@
+Index: qt-everywhere-opensource-src-4.7.0/configure
+===================================================================
+--- qt-everywhere-opensource-src-4.7.0.orig/configure	2010-09-22 15:43:51.191162141 -0400
++++ qt-everywhere-opensource-src-4.7.0/configure	2010-09-22 15:44:35.179981232 -0400
+@@ -4921,10 +4921,10 @@
+         psql)
+             if [ "$CFG_SQL_psql" != "no" ]; then
+                 # Be careful not to use native pg_config when cross building.
+-                if [ "$XPLATFORM_MINGW" != "yes" ] && "$WHICH" pg_config >/dev/null 2>&1; then
+-                    QT_CFLAGS_PSQL=`pg_config --includedir 2>/dev/null`
+-                    QT_LFLAGS_PSQL=`pg_config --libdir 2>/dev/null`
+-                fi
++#                if [ "$XPLATFORM_MINGW" != "yes" ] && "$WHICH" pg_config >/dev/null 2>&1; then
++#                    QT_CFLAGS_PSQL=`pg_config --includedir 2>/dev/null`
++#                    QT_LFLAGS_PSQL=`pg_config --libdir 2>/dev/null`
++#                fi
+                 [ -z "$QT_CFLAGS_PSQL" ] || QT_CFLAGS_PSQL="-I$QT_CFLAGS_PSQL"
+                 [ -z "$QT_LFLAGS_PSQL" ] || QT_LFLAGS_PSQL="-L$QT_LFLAGS_PSQL"
+                 # But, respect PSQL_LIBS if set
diff --git a/meta/recipes-qt/qt4/qt-4.7.1/linux.conf b/meta/recipes-qt/qt4/qt-4.7.1/linux.conf
new file mode 100644
index 0000000..a541355
--- /dev/null
+++ b/meta/recipes-qt/qt4/qt-4.7.1/linux.conf
@@ -0,0 +1,66 @@
+#
+# qmake configuration for common linux
+#
+
+QMAKE_CFLAGS_THREAD	+= -D_REENTRANT
+QMAKE_CXXFLAGS_THREAD	+= $$QMAKE_CFLAGS_THREAD
+
+QMAKE_INCDIR          =
+QMAKE_LIBDIR          =
+QMAKE_INCDIR_X11      =
+QMAKE_LIBDIR_X11      =
+QMAKE_INCDIR_QT       = $(OE_QMAKE_INCDIR_QT)
+QMAKE_LIBDIR_QT       = $(OE_QMAKE_LIBDIR_QT)
+QMAKE_INCDIR_OPENGL   =
+QMAKE_LIBDIR_OPENGL   =
+QMAKE_INCDIR_OPENGL_ES1 = $$QMAKE_INCDIR_OPENGL
+QMAKE_LIBDIR_OPENGL_ES1 = $$QMAKE_LIBDIR_OPENGL
+QMAKE_INCDIR_OPENGL_ES2 = $$QMAKE_INCDIR_OPENGL
+QMAKE_LIBDIR_OPENGL_ES2 = $$QMAKE_LIBDIR_OPENGL
+QMAKE_INCDIR_EGL      =
+QMAKE_LIBDIR_EGL      =
+QMAKE_INCDIR_OPENVG   =
+QMAKE_LIBDIR_OPENVG   =
+
+
+QMAKE_LIBS            =
+QMAKE_LIBS_DYNLOAD    = -ldl
+QMAKE_LIBS_X11        = $(OE_QMAKE_LIBS_X11)
+QMAKE_LIBS_X11SM      = $(OE_QMAKE_LIBS_X11SM)
+QMAKE_LIBS_NIS        = -lnsl
+QMAKE_LIBS_EGL        = -lEGL
+QMAKE_LIBS_OPENGL     = -lGLU -lGL
+QMAKE_LIBS_OPENGL_QT  = -lGL
+QMAKE_LIBS_OPENGL_ES1 = -lGLES_CM
+QMAKE_LIBS_OPENGL_ES2 = -lGLESv2
+QMAKE_LIBS_OPENVG     = -lOpenVG
+QMAKE_LIBS_THREAD     = -lpthread
+
+QMAKE_MOC             = $(OE_QMAKE_MOC)
+QMAKE_UIC             = $(OE_QMAKE_UIC)
+QMAKE_UIC3            = $(OE_QMAKE_UIC3)
+QMAKE_RCC             = $(OE_QMAKE_RCC)
+QMAKE_QDBUSCPP2XML    = $(OE_QMAKE_QDBUSCPP2XML)
+QMAKE_QDBUSXML2CPP    = $(OE_QMAKE_QDBUSXML2CPP)
+
+QMAKE_AR              = $(OE_QMAKE_AR) cqs
+QMAKE_OBJCOPY         = objcopy
+QMAKE_RANLIB          =
+
+QMAKE_TAR             = tar -cf
+QMAKE_GZIP            = gzip -9f
+
+QMAKE_COPY            = cp -f
+QMAKE_COPY_FILE       = $(COPY)
+QMAKE_COPY_DIR        = $(COPY) -r
+QMAKE_MOVE            = mv -f
+QMAKE_DEL_FILE        = rm -f
+QMAKE_DEL_DIR         = rmdir
+QMAKE_STRIP           = $(OE_QMAKE_STRIP)
+QMAKE_STRIPFLAGS_LIB += --strip-unneeded
+QMAKE_CHK_DIR_EXISTS  = test -d
+QMAKE_MKDIR           = mkdir -p
+QMAKE_INSTALL_FILE    = install -m 644 -p
+QMAKE_INSTALL_PROGRAM = install -m 755 -p
+
+include(unix.conf)
diff --git a/meta/recipes-qt/qt4/qt4-embedded_4.7.1.bb b/meta/recipes-qt/qt4/qt4-embedded_4.7.1.bb
new file mode 100644
index 0000000..c3f6713
--- /dev/null
+++ b/meta/recipes-qt/qt4/qt4-embedded_4.7.1.bb
@@ -0,0 +1,10 @@
+require qt-${PV}.inc
+require qt4-embedded.inc
+
+PR = "${INC_PR}.1"
+
+QT_CONFIG_FLAGS_append_armv6 = " -no-neon "
+
+QT_CONFIG_FLAGS += " \
+ -exceptions \
+"
diff --git a/meta/recipes-qt/qt4/qt4-x11-free_4.7.1.bb b/meta/recipes-qt/qt4/qt4-x11-free_4.7.1.bb
new file mode 100644
index 0000000..75c6314
--- /dev/null
+++ b/meta/recipes-qt/qt4/qt4-x11-free_4.7.1.bb
@@ -0,0 +1,12 @@
+require qt4-x11-free.inc
+require qt-${PV}.inc
+
+PR = "${INC_PR}.1"
+
+QT_CONFIG_FLAGS_append_armv6 = " -no-neon "
+
+QT_CONFIG_FLAGS += " \
+ -no-embedded \
+ -xrandr \
+ -x11"
+
-- 
1.7.1


