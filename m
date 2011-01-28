Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 34A7F4C81250
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 18:36:25 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 16:36:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="701485284"
Received: from unknown (HELO helios) ([10.255.16.167])
	by orsmga001.jf.intel.com with SMTP; 27 Jan 2011 16:36:22 -0800
Received: by helios (sSMTP sendmail emulation); Fri, 28 Jan 2011 00:36:24 +0000
Message-Id: <f25a1a79fcaa84aaa6d995455ecaf87931168c76.1296174472.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1296174472.git.paul.eggleton@linux.intel.com>
References: <cover.1296174472.git.paul.eggleton@linux.intel.com>
Old-Date: Fri, 21 Jan 2011 15:38:29 +0000
Date: Fri, 28 Jan 2011  0:36:24 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 02/11] qt4: Bring in improvements from meta-openembedded
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
X-List-Received-Date: Fri, 28 Jan 2011 00:36:25 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Differences from meta-openembedded version:
* SRC_URI and S now come from qt-${PV}.inc since these are version specific
* Source checksums are also now in qt-${PV}.inc
* Remove do_compile as this is handled in qt-${PV}.inc
* Move contents of do_install_append from qt-${PV}.inc to do_install in
  qt4.inc as this is the same for 4.6.3 and 4.7.1 and will get in the way of
  do_install_append in qt-embedded.inc.
* Don't enable PostgreSQL, MySQL or SQLite 2.x plugins as we don't currently
  have recipes for these DBMSs in Poky. These can be re-enabled easily when
  or if we do.
* Use INC_PR in qt4-x11-free_4.6.3.bb
* Don't always specify -embedded config option in qt4.inc
* Don't add qte.sh to SRC_URI in qt-4.6.3.inc (this is embedded-specific)

Differences from what we have currently in Poky (plus the above):
* Set DESCRIPTION based on embedded/X11
* Move out arch-specific settings to qt4-arch.inc
* Add qt4x11.bbclass which can be inherited by application recipes to select
  the X11 version (this makes more sense once the embedded version is added).
* Update HOMEPAGE

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/classes/qt4x11.bbclass               |    9 +
 meta/recipes-qt/qt4/qt-4.6.3.inc          |   54 +++----
 meta/recipes-qt/qt4/qt4-x11-free.inc      |    9 +-
 meta/recipes-qt/qt4/qt4-x11-free_4.6.3.bb |    7 +-
 meta/recipes-qt/qt4/qt4.inc               |  232 ++++++++++++++---------------
 meta/recipes-qt/qt4/qt4_arch.inc          |   25 +++
 6 files changed, 179 insertions(+), 157 deletions(-)
 create mode 100644 meta/classes/qt4x11.bbclass
 create mode 100644 meta/recipes-qt/qt4/qt4_arch.inc

diff --git a/meta/classes/qt4x11.bbclass b/meta/classes/qt4x11.bbclass
new file mode 100644
index 0000000..abb1d9d
--- /dev/null
+++ b/meta/classes/qt4x11.bbclass
@@ -0,0 +1,9 @@
+DEPENDS_prepend = "${@["qt4-x11-free ", ""][(bb.data.getVar('PN', d, 1)[:12] == 'qt4-x11-free')]}"
+
+inherit qmake2
+
+QT_DIR_NAME = "qt4"
+QT_LIBINFIX = ""
+
+# Qt4 uses atomic instructions not supported in thumb mode
+ARM_INSTRUCTION_SET = "arm"
diff --git a/meta/recipes-qt/qt4/qt-4.6.3.inc b/meta/recipes-qt/qt4/qt-4.6.3.inc
index 155af66..a41b483 100644
--- a/meta/recipes-qt/qt4/qt-4.6.3.inc
+++ b/meta/recipes-qt/qt4/qt-4.6.3.inc
@@ -19,48 +19,38 @@ SRC_URI = "http://get.qt.nokia.com/qt/source/qt-everywhere-opensource-src-${PV}.
            file://mips-relocate.patch \
            "
 
+SRC_URI[md5sum] = "5c69f16d452b0bb3d44bc3c10556c072"
+SRC_URI[sha256sum] = "f4e0ada8d4d516bbb8600a3ee7d9046c9c79e38cd781df9ffc46d8f16acd1768"
+
 S = "${WORKDIR}/qt-everywhere-opensource-src-${PV}"
 
 do_configure_prepend() {
-	for pro in $(find ${S} -name "*.pro") ; do
-		sed -i 's:$$QT_BUILD_TREE/bin/lrelease:${OE_QMAKE_LRELEASE}:g' $pro
-	done
-
-	sed -i s:SEDME:${S}: ${WORKDIR}/linux.conf
-	sed -i \
-	-e /QMAKE_MOC\ /d \
-	-e /QMAKE_UIC\ /d \
-	-e /QMAKE_UIC3\ /d \
-	-e /QMAKE_RCC\ /d \
-	${S}/configure
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
 }
 
 do_configure_append() {
-	sed -e '/QMAKE_TARGET /d' -e '/TARGET /d' -i ${S}/translations/Makefile
+    sed -e '/QMAKE_TARGET /d' -e '/TARGET /d' -i ${S}/translations/Makefile
 }
 
 QT_GLFLAGS ?= ""
-QT_CONFIG_FLAGS += " -no-rpath -qt3support -silent ${QT_GLFLAGS}"
+QT_CONFIG_FLAGS += " -no-rpath -qt3support -reduce-relocations -silent ${QT_GLFLAGS}"
 
 do_compile() {
-	# Fixup missing wsegl header in some SGX SDKs
-	if ! [ -e ${STAGING_INCDIR}/wsegl.h ] ; then
-		cp src/3rdparty/powervr/wsegl.h src/plugins/gfxdrivers/powervr/QWSWSEGL/
-	fi
-
-	unset CFLAGS CXXFLAGS
-	oe_runmake ${EXTRA_ENV}
-}
-
-do_install_append() {
-	install -d ${D}${bindir}
-	for i in rcc uic moc ; do
-		install -m 0755 ${S}/bin/$i ${D}${bindir}/
-	done
+    # Fixup missing wsegl header in some SGX SDKs
+    if ! [ -e ${STAGING_INCDIR}/wsegl.h ] ; then
+        cp src/3rdparty/powervr/wsegl.h src/plugins/gfxdrivers/powervr/QWSWSEGL/
+    fi
 
-	#Append an E to the qtdemo file
-	if [ -n "${QT_LIBINFIX}" ] ; then
-		mv ${D}${bindir}/qtdemo ${D}${bindir}/qtdemo${QT_LIBINFIX}
-	fi
+    unset CFLAGS CXXFLAGS
+    oe_runmake ${EXTRA_ENV}
 }
-
diff --git a/meta/recipes-qt/qt4/qt4-x11-free.inc b/meta/recipes-qt/qt4/qt4-x11-free.inc
index 22eef7c..057a129 100644
--- a/meta/recipes-qt/qt4/qt4-x11-free.inc
+++ b/meta/recipes-qt/qt4/qt4-x11-free.inc
@@ -1,9 +1,13 @@
 require qt4.inc
 
+DESCRIPTION = "Qt is a versatile cross-platform application framework -- this is the X11 version."
+HOMEPAGE = "http://qt.nokia.com"
 SECTION = "x11/libs"
 PRIORITY = "optional"
 DEPENDS += "virtual/libx11 fontconfig libxft libxext libxrender libxrandr libxcursor"
 
+INC_PR = "r21"
+
 QT_GLFLAGS ?= "-no-opengl"
 QT_GLFLAGS_qemux86 = "-opengl"
 QT_GLFLAGS_emenlow = "-opengl"
@@ -11,7 +15,6 @@ QT_GLFLAGS_atom-pc = "-opengl"
 QT_CONFIG_FLAGS += "-no-xinerama -no-xkb ${QT_GLFLAGS}"
 QT_BASE_NAME ?= "qt4"
 QT_BASE_LIB  ?= "libqt"
-QT_DIR_NAME = "qt4"
-QT_LIBINFIX = ""
 
-inherit qmake2
+inherit qt4x11
+
diff --git a/meta/recipes-qt/qt4/qt4-x11-free_4.6.3.bb b/meta/recipes-qt/qt4/qt4-x11-free_4.6.3.bb
index f13b947..8cf5449 100644
--- a/meta/recipes-qt/qt4/qt4-x11-free_4.6.3.bb
+++ b/meta/recipes-qt/qt4/qt4-x11-free_4.6.3.bb
@@ -1,9 +1,6 @@
+require qt-${PV}.inc
 require qt4-x11-free.inc
-require qt-4.6.3.inc
 
-PR = "r2"
+PR = "${INC_PR}.0"
 
 QT_CONFIG_FLAGS += " -xrandr "
-
-SRC_URI[md5sum] = "5c69f16d452b0bb3d44bc3c10556c072"
-SRC_URI[sha256sum] = "f4e0ada8d4d516bbb8600a3ee7d9046c9c79e38cd781df9ffc46d8f16acd1768"
diff --git a/meta/recipes-qt/qt4/qt4.inc b/meta/recipes-qt/qt4/qt4.inc
index 3382445..f0957db 100644
--- a/meta/recipes-qt/qt4/qt4.inc
+++ b/meta/recipes-qt/qt4/qt4.inc
@@ -1,9 +1,10 @@
-DESCRIPTION = "Qt is a comprehensive cross-platform C++ application framework"
-HOMEPAGE = "http://qt.nokia.com"
+inherit qmake_base
 
 DEPENDS += "qt4-tools-native freetype jpeg libpng zlib dbus openssl glib-2.0 gstreamer gst-plugins-base sqlite3"
 
-inherit qmake_base
+require qt4_arch.inc
+QT_ARCH := "${@qt_arch(d)}"
+QT_ENDIAN = "${@qt_endian(d)}"
 
 QT_DISTRO_FLAGS ?= "-no-accessibility -no-sm"
 QT_DISTRO_FLAGS_poky-lsb = "-sm"
@@ -12,7 +13,7 @@ QT_CONFIG_FLAGS += "-release -no-cups -reduce-relocations \
                     -shared -no-nas-sound -no-nis \
                     -qt-gif -system-libjpeg -system-libpng -system-zlib \
                     -no-sql-ibase -no-sql-mysql -no-sql-psql -no-sql-odbc -plugin-sql-sqlite \
-                    -no-pch -dbus -stl -glib -phonon -webkit \
+                    -no-pch -qdbus -stl -glib -phonon -webkit \
                     ${QT_DISTRO_FLAGS} "
 
 EXTRA_OEMAKE = "-e"
@@ -26,7 +27,7 @@ EXTRA_ENV = 'QMAKE="${STAGING_BINDIR_NATIVE}/qmake2 -after \
 export QT_CONF_PATH="${WORKDIR}/qt.conf"
 
 # Library packages
-QT_LIB_NAMES = "Qt3Support QtAssistantClient QtCLucene QtCore QtDBus QtDesigner QtDesignerComponents QtGui QtHelp QtNetwork QtOpenGL QtScript QtScriptTools QtSql QtSvg QtTest QtUiTools QtWebKit QtXml QtXmlPatterns phonon QtMultimedia QtOpenVG QtMediaServices"
+QT_LIB_NAMES = "Qt3Support QtAssistantClient QtCLucene QtCore QtDBus QtDesigner QtDesignerComponents QtGui QtHelp QtNetwork QtOpenGL QtScript QtScriptTools QtSql QtSvg QtTest QtUiTools QtWebKit QtXml QtXmlPatterns phonon QtMultimedia QtOpenVG QtMediaServices QtDeclarative"
 
 QT_EXTRA_LIBS = "pvrQWSWSEGL"
 
@@ -37,7 +38,7 @@ python __anonymous () {
     dev_packages = []
     dbg_packages = []
     for name in bb.data.getVar("QT_LIB_NAMES", d, 1).split():
-        pkg = "${QT_BASE_LIB}" + name.lower().replace("qt", "") + "4"
+        pkg = "${QT_BASE_LIB}" + name.lower().replace("qt", "").replace("_", "-") + "4"
         # NOTE: the headers for QtAssistantClient are different
         incname = name.replace("QtAssistantClient", "QtAssistant")
         bb.data.setVar("FILES_%s" % pkg, "${libdir}/lib%(name)s${QT_LIBINFIX}.so.*" % locals(), d)
@@ -55,7 +56,7 @@ python __anonymous () {
         dbg_packages.append("%s-dbg" % name)
 
     for name in bb.data.getVar("QT_EXTRA_LIBS", d, 1).split():
-        pkg = "${QT_BASE_LIB}" + name.lower().replace("qt", "") + "4"
+        pkg = "${QT_BASE_LIB}" + name.lower().replace("qt", "").replace("_", "-") + "4"
         bb.data.setVar("FILES_%s" % pkg, "${libdir}/lib%(name)s.so.*" % locals(), d)
         bb.data.setVar("FILES_%s-dev" % pkg, """${libdir}/lib%(name)s.prl
                   ${libdir}/lib%(name)s.a
@@ -91,6 +92,8 @@ OTHER_PACKAGES = "\
              ${QT_BASE_NAME}-makeqpf \
              ${QT_BASE_NAME}-mkspecs \
              ${QT_BASE_NAME}-pixeltool \
+             ${QT_BASE_NAME}-qmlviewer \
+             ${QT_BASE_NAME}-xmlpatterns \
              ${QT_BASE_NAME}-qt3to4"
 
 PACKAGES += "${LIB_PACKAGES} ${DEV_PACKAGES} ${DBG_PACKAGES} ${OTHER_PACKAGES}"
@@ -112,6 +115,7 @@ RRECOMMENDS_${QT_BASE_NAME}-fonts = " \
              ${QT_BASE_NAME}-fonts-qpf"
 
 FILES_${QT_BASE_NAME}-tools                = "${bindir}/uic* ${bindir}/moc ${bindir}/rcc ${bindir}/qttracereplay ${bindir}/qdoc*"
+FILES_${QT_BASE_NAME}-tools-dbg            = "${bindir}/.debug/uic* ${bindir}/.debug/moc ${bindir}/.debug/rcc ${bindir}/.debug/qttracereplay ${bindir}/.debug/qdoc*"
 FILES_${QT_BASE_NAME}-assistant            = "${bindir}/*assistant* ${bindir}/qcollectiongenerator ${bindir}/qhelpconverter ${bindir}/qhelpgenerator"
 FILES_${QT_BASE_NAME}-assistant-dbg        = "${bindir}/.debug/*assistant* ${bindir}/.debug/qcollectiongenerator ${bindir}/.debug/qhelpconverter ${bindir}/.debug/qhelpgenerator"
 FILES_${QT_BASE_NAME}-common               = "${bindir}/qtconfig"
@@ -123,7 +127,7 @@ FILES_${QT_BASE_NAME}-demos-dbg            = "${bindir}/.debug/qtdemo* ${bindir}
 FILES_${QT_BASE_NAME}-designer             = "${bindir}/*designer*"
 FILES_${QT_BASE_NAME}-designer-dbg         = "${bindir}/.debug/*designer*"
 FILES_${QT_BASE_NAME}-examples             = "${bindir}/${QT_DIR_NAME}/examples/*"
-FILES_${QT_BASE_NAME}-examples-dbg         = "${bindir}/${QT_DIR_NAME}/examples/.debug ${bindir}/${QT_DIR_NAME}/examples/*/.debug ${bindir}/${QT_DIR_NAME}/examples/*/*/.debug ${bindir}/${QT_DIR_NAME}/examples/*/*/*/.debug ${bindir}/${QT_DIR_NAME}/examples/*/*/*/*/.debug"
+FILES_${QT_BASE_NAME}-examples-dbg         = "${bindir}/${QT_DIR_NAME}/examples/.debug ${bindir}/${QT_DIR_NAME}/examples/*/.debug ${bindir}/${QT_DIR_NAME}/examples/*/*/.debug ${bindir}/${QT_DIR_NAME}/examples/*/*/*/.debug ${bindir}/${QT_DIR_NAME}/examples/*/*/*/*/.debug ${bindir}/${QT_DIR_NAME}/examples/declarative/*/*/*/*/*/.debug/* ${bindir}/${QT_DIR_NAME}/examples/declarative/*/*/*/*/.debug/*"
 FILES_${QT_BASE_NAME}-fonts-ttf-vera       = "${libdir}/fonts/Vera*.ttf"
 FILES_${QT_BASE_NAME}-fonts-ttf-dejavu     = "${libdir}/fonts/DejaVu*.ttf"
 FILES_${QT_BASE_NAME}-fonts-pfa            = "${libdir}/fonts/*.pfa"
@@ -135,91 +139,74 @@ FILES_${QT_BASE_NAME}-pixeltool            = "${bindir}/pixeltool"
 FILES_${QT_BASE_NAME}-pixeltool-dbg        = "${bindir}/.debug/pixeltool"
 FILES_${QT_BASE_NAME}-qt3to4               = "${bindir}/qt3to4 ${datadir}/${QT_DIR_NAME}/q3porting.xml"
 FILES_${QT_BASE_NAME}-qt3to4-dbg           = "${bindir}/.debug/qt3to4"
+FILES_${QT_BASE_NAME}-qmlviewer            = "${bindir}/qmlviewer"
+FILES_${QT_BASE_NAME}-qmlviewer-dbg        = "${bindir}/.debug/qmlviewer"
 FILES_${QT_BASE_NAME}-makeqpf              = "${bindir}/makeqpf"
 FILES_${QT_BASE_NAME}-makeqpf-dbg          = "${bindir}/.debug/makeqpf"
 FILES_${QT_BASE_NAME}-mkspecs              = "${datadir}/${QT_DIR_NAME}/mkspecs/*"
+FILES_${QT_BASE_NAME}-xmlpatterns          = "${bindir}/xmlpatterns*"
+FILES_${QT_BASE_NAME}-xmlpatterns-dbg      = "${bindir}/.debug/xmlpatterns*"
 
-ARM_INSTRUCTION_SET = "arm"
-
-set_arch() {
-	case ${TARGET_ARCH} in
-		arm*)     QT_ARCH=arm ;;
-		i*86*)    QT_ARCH=i386 ;;
-		mips*)    QT_ARCH=mips ;;
-		powerpc*) QT_ARCH=powerpc ;;
-		x86_64*)  QT_ARCH=x86_64 ;;
-	esac
-}
 
 do_configure() {
-	unset QMAKESPEC
-	unset QTDIR
-
-	set_arch
-
-	if [ ! -e bin/qmake ]; then
-		ln -sf ${STAGING_BINDIR_NATIVE}/qmake2 bin/qmake
-	fi
-
-	if [ ! -e mkspecs/${TARGET_OS}-oe-g++ ]; then
-		ln -sf linux-g++ mkspecs/${TARGET_OS}-oe-g++
-	fi
-
-	cp -f ${WORKDIR}/g++.conf ${WORKDIR}/linux.conf mkspecs/common/
-
-	echo "[Paths]"                                 > $QT_CONF_PATH
-	echo "Prefix=${prefix}/"                      >> $QT_CONF_PATH
-	echo "Documentation=${docdir}/${QT_DIR_NAME}" >> $QT_CONF_PATH
-	echo "Headers=${includedir}/${QT_DIR_NAME}"   >> $QT_CONF_PATH
-	echo "Libraries=${libdir}"                    >> $QT_CONF_PATH
-	echo "Binaries=${bindir}"                     >> $QT_CONF_PATH
-	echo "Plugins=${libdir}/${QT_DIR_NAME}/plugins" >> $QT_CONF_PATH
-	echo "Data=${datadir}/${QT_DIR_NAME}"         >> $QT_CONF_PATH
-	echo "Translations=${datadir}/${QT_DIR_NAME}/translations" >> $QT_CONF_PATH
-	echo "Settings=${sysconfdir}/${QT_DIR_NAME}"  >> $QT_CONF_PATH
-	echo "Examples=${bindir}/${QT_DIR_NAME}/examples" >> $QT_CONF_PATH
-	echo "Demos=${bindir}/${QT_DIR_NAME}/demos"   >> $QT_CONF_PATH
-
-	${EXTRA_QMAKE_MUNGE}|| true
-
-	(echo o; echo yes) | ./configure -v \
-			-prefix ${prefix}/ \
-			-bindir ${bindir} \
-			-libdir ${libdir} \
-			-datadir ${datadir}/${QT_DIR_NAME} \
-			-sysconfdir ${sysconfdir}/${QT_DIR_NAME} \
-			-docdir ${docdir}/${QT_DIR_NAME} \
-			-headerdir ${includedir}/${QT_DIR_NAME} \
-			-plugindir ${libdir}/${QT_DIR_NAME}/plugins \
-			-translationdir ${datadir}/${QT_DIR_NAME}/translations \
-			-examplesdir ${bindir}/${QT_DIR_NAME}/examples \
-			-demosdir ${bindir}/${QT_DIR_NAME}/demos \
-			-platform ${TARGET_OS}-oe-g++ \
-			-xplatform ${TARGET_OS}-oe-g++ \
-			-crossarch ${QT_ARCH} \
-			${QT_CONFIG_FLAGS} -no-fast \
-			-L${STAGING_LIBDIR} -I${STAGING_INCDIR} \
-			-I${STAGING_INCDIR}/freetype2
-}
-
-do_compile() {
-	unset CFLAGS CXXFLAGS
-	install -m 0755 ${STAGING_BINDIR_NATIVE}/rcc4 ${S}/bin/rcc
-	install -m 0755 ${STAGING_BINDIR_NATIVE}/moc4 ${S}/bin/moc
-	install -m 0755 ${STAGING_BINDIR_NATIVE}/uic4 ${S}/bin/uic
-
-	oe_runmake ${EXTRA_ENV}
+    unset QMAKESPEC
+    unset QTDIR
+
+    if [ ! -e bin/qmake ]; then
+        ln -sf ${STAGING_BINDIR_NATIVE}/qmake2 bin/qmake
+    fi
+
+    if [ ! -e mkspecs/${TARGET_OS}-oe-g++ ]; then
+        ln -sf linux-g++ mkspecs/${TARGET_OS}-oe-g++
+    fi
+
+    cp -f ${WORKDIR}/g++.conf ${WORKDIR}/linux.conf mkspecs/common/
+
+    echo "[Paths]"                                 > $QT_CONF_PATH
+    echo "Prefix=${prefix}/"                      >> $QT_CONF_PATH
+    echo "Documentation=${docdir}/${QT_DIR_NAME}" >> $QT_CONF_PATH
+    echo "Headers=${includedir}/${QT_DIR_NAME}"   >> $QT_CONF_PATH
+    echo "Libraries=${libdir}"                    >> $QT_CONF_PATH
+    echo "Binaries=${bindir}"                     >> $QT_CONF_PATH
+    echo "Plugins=${libdir}/${QT_DIR_NAME}/plugins" >> $QT_CONF_PATH
+    echo "Data=${datadir}/${QT_DIR_NAME}"         >> $QT_CONF_PATH
+    echo "Translations=${datadir}/${QT_DIR_NAME}/translations" >> $QT_CONF_PATH
+    echo "Settings=${sysconfdir}/${QT_DIR_NAME}"  >> $QT_CONF_PATH
+    echo "Examples=${bindir}/${QT_DIR_NAME}/examples" >> $QT_CONF_PATH
+    echo "Demos=${bindir}/${QT_DIR_NAME}/demos"   >> $QT_CONF_PATH
+
+    ${EXTRA_QMAKE_MUNGE}|| true
+
+    (echo o; echo yes) | ./configure -v \
+            -prefix ${prefix}/ \
+            -bindir ${bindir} \
+            -libdir ${libdir} \
+            -datadir ${datadir}/${QT_DIR_NAME} \
+            -sysconfdir ${sysconfdir}/${QT_DIR_NAME} \
+            -docdir ${docdir}/${QT_DIR_NAME} \
+            -headerdir ${includedir}/${QT_DIR_NAME} \
+            -plugindir ${libdir}/${QT_DIR_NAME}/plugins \
+            -translationdir ${datadir}/${QT_DIR_NAME}/translations \
+            -examplesdir ${bindir}/${QT_DIR_NAME}/examples \
+            -demosdir ${bindir}/${QT_DIR_NAME}/demos \
+            -platform ${TARGET_OS}-oe-g++ \
+            -xplatform ${TARGET_OS}-oe-g++ \
+            ${QT_ENDIAN} \
+            -crossarch ${QT_ARCH} \
+            ${QT_CONFIG_FLAGS} -no-fast \
+            -L${STAGING_LIBDIR} -I${STAGING_INCDIR} \
+            -I${STAGING_INCDIR}/freetype2
 }
 
 python populate_packages_prepend() {
         translation_dir = bb.data.expand('${datadir}/${QT_DIR_NAME}/translations/', d)
         translation_name = bb.data.expand('${QT_BASE_NAME}-translation-%s', d)
         do_split_packages(d, translation_dir, '^(assistant|designer|linguist|qt|qtconfig|qvfb)_(.*)\.qm$', translation_name, '${PN} translation for %s', extra_depends='' )
-
+ 
         phrasebook_dir = bb.data.expand('${datadir}/${QT_DIR_NAME}/phrasebooks/', d)
         phrasebook_name = bb.data.expand('${QT_BASE_NAME}-phrasebook-%s', d)
         do_split_packages(d, phrasebook_dir, '^(.*)\.qph$', phrasebook_name, '${PN} phrasebook for %s', extra_depends='' )
-
+ 
         # Package all the plugins and their -dbg version and create a meta package
         import os
         def qtopia_split(path, name, glob):
@@ -231,7 +218,7 @@ python populate_packages_prepend() {
                 if not os.path.exists("%s%s" % (bb.data.expand('${D}',d), plugin_dir)):
                         bb.note("The path does not exist:", bb.data.expand('${D}', d), plugin_dir)
                         return
-
+ 
                 plugin_name = bb.data.expand('${QT_BASE_NAME}-plugin-%s-%%s' % name, d)
                 dev_packages = []
                 dev_hook = lambda file,pkg,b,c,d:dev_packages.append((file,pkg))
@@ -246,7 +233,7 @@ python populate_packages_prepend() {
                         bb.data.setVar("DESCRIPTION_%s-dbg" % package, "${PN} %s for %s" % (name, package), d)
 
                 bb.data.setVar('PACKAGES', packages, d)
-
+ 
         qtopia_split('accessible',    'accessible',    '^libq(.*)\.so$')
         qtopia_split('codecs',        'codec',         '^libq(.*)\.so$')
         qtopia_split('decorations',   'decoration',    '^libqdecoration(.*)\.so$')
@@ -261,44 +248,55 @@ python populate_packages_prepend() {
         qtopia_split('script',        'script',        '^libqtscript(.*)\.so$')
         qtopia_split('styles',        'style',         '^libq(.*)\.so$')
         qtopia_split('phonon_backend','phonon-backend','^libphonon_(.*)\.so$')
+        qtopia_split('bearer',        'bearer',        '^libq(.*)bearer\.so$')
 }
 
 do_install() {
-	oe_runmake install INSTALL_ROOT=${D}
-
-	# These are host binaries, we should only use them in staging
-	rm -rf ${D}/${bindir}/qmake
-
-	# fix pkgconfig, libtool and prl files
-	sed -i -e s#-L${S}/lib##g \
-			-e s#-L${STAGING_LIBDIR}##g \
-			-e 's#STAGING_LIBDIR}#libdir}'#g \
-			-e s#-L${libdir}##g \
-			-e s#'$(OE_QMAKE_LIBS_X11)'#"${OE_QMAKE_LIBS_X11}"#g \
-			-e s#" -Wl,-rpath-link,${S}/lib"##g \
-			-e s#" -Wl,-rpath-link,${libdir}"##g \
-			-e 's#I/usr/include#Iincludedir}#g' \ 
-			-e 's#Iin#I${in#g' \
-			${D}${libdir}/*.la ${D}${libdir}/*.prl ${D}${libdir}/pkgconfig/*.pc
-
-	sed -i -e s#" -Wl,-rpath-link,${S}/lib"##g \
-			${D}${datadir}/${QT_DIR_NAME}/mkspecs/common/linux.conf
-
-	# fix pkgconfig files
-	sed -i -e s#"moc_location=.*$"#"moc_location=${bindir}/moc4"# \
-			-e s#"uic_location=.*$"#"uic_location=${bindir}/uic4"# \
-			${D}${libdir}/pkgconfig/*.pc
-	for name in ${QT_LIB_NAMES}; do
-			sed -i -e /Requires/s#"${name}"#"${name}${QT_LIBINFIX}"#g ${D}${libdir}/pkgconfig/*.pc
-	done
-
-	# QT abuses $includedir to point to its headers, which breaks pkgconfig sysroot, so manually fix it up here:
-	for pc in ${D}${libdir}/pkgconfig/*.pc ; do
-		sed -i -e "s:prefix}include/${QT_BASE_NAME}/$(basename $pc .pc):prefix}/include:" \
-				-e "s,Cflags: ,Cflags: -IP{includedir}/${QT_BASE_NAME}/$(basename $pc .pc) ," \
-				-e 's:IP{:I${:g' $pc
-	done
-
-	install -d ${D}/${libdir}/fonts
-	touch ${D}/${libdir}/fonts/fontdir
+    oe_runmake install INSTALL_ROOT=${D}
+
+    # These are host binaries, we should only use them in staging
+    rm -rf ${D}/${bindir}/qmake
+
+    # fix pkgconfig, libtool and prl files
+    sed -i -e s#-L${S}/lib##g \
+           -e s#-L${STAGING_LIBDIR}##g \
+           -e 's#STAGING_LIBDIR}#libdir}'#g \ 
+           -e s#-L${libdir}##g \
+           -e s#'$(OE_QMAKE_LIBS_X11)'#"${OE_QMAKE_LIBS_X11}"#g \
+           -e s#" -Wl,-rpath-link,${S}/lib"##g \
+           -e s#" -Wl,-rpath-link,${libdir}"##g \
+           -e 's#I/usr/include#Iincludedir}#g' \ 
+           -e 's#Iin#I${in#g' \
+           ${D}${libdir}/*.la ${D}${libdir}/*.prl ${D}${libdir}/pkgconfig/*.pc
+
+    sed -i -e s#" -Wl,-rpath-link,${S}/lib"##g \
+            ${D}${datadir}/${QT_DIR_NAME}/mkspecs/common/linux.conf
+
+    # fix pkgconfig files
+    sed -i -e s#"moc_location=.*$"#"moc_location=${bindir}/moc4"# \
+           -e s#"uic_location=.*$"#"uic_location=${bindir}/uic4"# \
+           ${D}${libdir}/pkgconfig/*.pc
+    for name in ${QT_LIB_NAMES}; do
+        sed -i -e /Requires/s#"${name}"#"${name}${QT_LIBINFIX}"#g ${D}${libdir}/pkgconfig/*.pc
+    done
+
+    # QT abuses $includedir to point to its headers, which breaks pkgconfig sysroot, so manually fix it up here:
+    for pc in ${D}${libdir}/pkgconfig/*.pc ; do
+        sed -i -e "s:prefix}include/${QT_BASE_NAME}/$(basename $pc .pc):prefix}/include:" \
+               -e "s,Cflags: ,Cflags: -IP{includedir}/${QT_BASE_NAME}/$(basename $pc .pc) ," \
+               -e 's:IP{:I${:g' $pc
+    done
+
+    install -d ${D}/${libdir}/fonts
+    touch ${D}/${libdir}/fonts/fontdir
+
+    install -d ${D}${bindir}
+    for i in rcc uic moc ; do
+        install -m 0755 ${S}/bin/$i ${D}${bindir}/
+    done
+
+    #Append an E to the qtdemo file
+    if [ -n "${QT_LIBINFIX}" ] ; then
+        mv ${D}${bindir}/qtdemo ${D}${bindir}/qtdemo${QT_LIBINFIX}
+    fi
 }
diff --git a/meta/recipes-qt/qt4/qt4_arch.inc b/meta/recipes-qt/qt4/qt4_arch.inc
new file mode 100644
index 0000000..7f4be63
--- /dev/null
+++ b/meta/recipes-qt/qt4/qt4_arch.inc
@@ -0,0 +1,25 @@
+inherit siteinfo
+
+ARM_INSTRUCTION_SET = "arm"
+
+def qt_arch(d):
+    import bb, re
+    arch = bb.data.getVar('TARGET_ARCH', d, 1)
+    if re.match("^i.86$", arch):
+        arch = "i386"
+    elif re.match("^arm.*", arch):
+        arch = "arm"
+    elif arch == "x86_64":
+        arch = "x86"
+    elif arch == "mipsel":
+        arch = "mips"
+    return arch
+
+def qt_endian(d):
+    import bb
+    if bb.data.getVar('SITEINFO_ENDIANESS', d, True) == "le":
+        return "-little-endian"
+    elif bb.data.getVar('SITEINFO_ENDIANESS', d, True) == "be":
+        return "-big-endian"
+    else:
+        assert False
-- 
1.7.1


