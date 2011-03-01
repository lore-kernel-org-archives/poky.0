Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 245494C80510
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 01:12:22 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p217CLlD012812
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 23:12:21 -0800 (PST)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 28 Feb 2011 23:12:20 -0800
Message-ID: <066fd0390ed551f38b1f4c632d9a34719450b466.1298961777.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1298961777.git.xiaofeng.yan@windriver.com>
References: <cover.1298961777.git.xiaofeng.yan@windriver.com>
Old-Date: Fri, 18 Feb 2011 16:19:31 +0800
Date: Tue, 1 Mar 2011 15:12:13 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/2] qt3: Add qt3 because lsb test need it
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
X-List-Received-Date: Tue, 01 Mar 2011 07:12:22 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

These package has been added from meta-openembedded.
Changes from the meta-openembedded version:
1 Add "-L ${STAGING_LIBDIR} -I ${STAGING_INCDIR_NATIVE}" to function do_configure() in file qt-x11-free-native_3.3.5.bb
2 Remove do_stage and transfer contents from do_stage to do_install in file qt-x11-free-native_3.3.5.bb
3 Add LIC_FILES_CHKSUM in file qt-x11-free-native_3.3.5.bb
4 Remove -plugin-sql-mysql from "QT_CONFIG_FLAGS" in file qt-x11-free-common.inc
5 Add "install -m 0755 ${STAGING_BINDIR_NATIVE}/moc3 ${S}/bin/moc install -m 0755 ${STAGING_BINDIR_NATIVE}/uic3 ${S}/bin/uic" to function do_compile() in file qt-x11-free-common.inc
6 Change do_stage to do_install_prepend in file qt-x11-free-common.inc
7 Add LIC_FILES_CHKSUM in file qt-x11-free_3.3.7.bb

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta/recipes-qt/qt3/qt-x11-free-common.inc        |   91 +++++++++++++++++++++
 meta/recipes-qt/qt3/qt-x11-free-native_3.3.5.bb   |   65 +++++++++++++++
 meta/recipes-qt/qt3/qt-x11-free/configure.patch   |   51 ++++++++++++
 meta/recipes-qt/qt3/qt-x11-free/gcc4_1-HACK.patch |   28 +++++++
 meta/recipes-qt/qt3/qt-x11-free/no-examples.patch |   16 ++++
 meta/recipes-qt/qt3/qt-x11-free_3.3.6.bb          |   13 +++
 meta/recipes-qt/qt3/qt-x11-free_3.3.7.bb          |   16 ++++
 7 files changed, 280 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-qt/qt3/qt-x11-free-common.inc
 create mode 100644 meta/recipes-qt/qt3/qt-x11-free-native_3.3.5.bb
 create mode 100644 meta/recipes-qt/qt3/qt-x11-free/configure.patch
 create mode 100644 meta/recipes-qt/qt3/qt-x11-free/gcc4_1-HACK.patch
 create mode 100644 meta/recipes-qt/qt3/qt-x11-free/no-examples.patch
 create mode 100644 meta/recipes-qt/qt3/qt-x11-free_3.3.6.bb
 create mode 100644 meta/recipes-qt/qt3/qt-x11-free_3.3.7.bb

diff --git a/meta/recipes-qt/qt3/qt-x11-free-common.inc b/meta/recipes-qt/qt3/qt-x11-free-common.inc
new file mode 100644
index 0000000..8afcbd8
--- /dev/null
+++ b/meta/recipes-qt/qt3/qt-x11-free-common.inc
@@ -0,0 +1,91 @@
+DESCRIPTION = "Qt/X11 Version ${PV} is a full fledged cross-platform application framework"
+SECTION = "x11/libs"
+PRIORITY = "optional"
+LICENSE = "GPL QPL"
+HOMEPAGE = "http://www.trolltech.com"
+
+S = "${WORKDIR}/qt-x11-free-${PV}"
+
+inherit qmake_base qt3x11
+
+export QTDIR = "${S}"
+STAGING_QT_DIR = "${STAGING_DIR_HOST}/qt3"
+ARCH_i686 = "x86"
+EXTRA_OEMAKE = "-e"
+
+QT_CONFIG_FLAGS = "-release -shared -qt-zlib -no-nas-sound -no-sm -qt-libpng -no-gif -no-xinerama \
+                   -no-tablet -no-xkb -no-dlopen-opengl -no-nis -no-cups -thread  -verbose"
+
+EXTRA_ENV = 'QMAKE="${STAGING_BINDIR_NATIVE}/qmake -after INCPATH+=${STAGING_INCDIR} \
+             INCPATH+=${STAGING_INCDIR}/freetype2 LIBS+=-L${STAGING_LIBDIR}" \
+             QMAKESPEC="${QMAKESPEC}" LINK="${CXX} -Wl,-rpath-link,${STAGING_LIBDIR}" \
+             AR="${TARGET_PREFIX}ar cqs" \
+             MOC="${STAGING_BINDIR_NATIVE}/moc3" UIC="${STAGING_BINDIR_NATIVE}/uic3" MAKE="make -e"'
+
+do_configure() {
+	echo "yes" | ./configure -prefix ${prefix} ${QT_CONFIG_FLAGS} -no-fast \
+		-L${STAGING_LIBDIR} -I${STAGING_INCDIR} -I${STAGING_INCDIR}/freetype2 -I${STAGING_INCDIR}/mysql
+
+	# force regenerate
+	rm -f src/qtmain.pro
+	cat Makefile >makefile
+	find . -name "Makefile"|xargs rm -f
+	(cd src && qmake -spec ${QMAKESPEC} )
+	(cd plugins/src && qmake -spec ${QMAKESPEC} )
+	(cd tools && qmake -spec ${QMAKESPEC} )
+	(cd tools/qvfb && qmake -spec ${QMAKESPEC} )
+}
+
+do_compile() {
+	unset CFLAGS
+	unset CXXFLAGS
+    install -m 0755 ${STAGING_BINDIR_NATIVE}/moc3 ${S}/bin/moc
+    install -m 0755 ${STAGING_BINDIR_NATIVE}/uic3 ${S}/bin/uic
+
+	oe_runmake -C src ${EXTRA_ENV}
+	oe_runmake -C plugins/src ${EXTRA_ENV}
+	oe_runmake -C tools ${EXTRA_ENV}
+	oe_runmake -C tools/qvfb ${EXTRA_ENV}
+}
+
+do_install_prepend() {
+	install -d ${STAGING_QT_DIR}/bin
+	ln -sf ${STAGING_BINDIR_NATIVE}/moc3 ${STAGING_QT_DIR}/bin/moc
+	ln -sf ${STAGING_BINDIR_NATIVE}/uic3 ${STAGING_QT_DIR}/bin/uic
+	ln -sf ${STAGING_BINDIR_NATIVE}/qmake ${STAGING_QT_DIR}/bin/qmake
+	install -d ${STAGING_QT_DIR}/lib
+	oe_soinstall lib/libqt-mt.so.${PV} ${STAGING_QT_DIR}/lib
+	install -d ${STAGING_QT_DIR}/include/private
+	for f in include/*.h
+	do
+		install -m 0644 $f ${STAGING_QT_DIR}/include/
+	done
+	for f in include/private/*.h
+	do
+		install -m 0644 $f ${STAGING_QT_DIR}/include/private
+	done
+	for f in lib/*.prl
+	do
+		install -m 0644 $f ${STAGING_QT_DIR}/lib
+	done
+}
+
+do_install() {
+	install -d ${D}${libdir}/
+	oe_soinstall lib/libqt-mt.so.${PV} ${D}${libdir}/
+	install -d ${D}${bindir}/
+	install -m 0755 bin/designer bin/assistant tools/qvfb/qvfb bin/qtconfig ${D}${bindir}
+	install -d ${D}${prefix}/plugins/
+	cp -pPR plugins/imageformats plugins/sqldrivers plugins/designer ${D}${prefix}/plugins/
+}
+
+PACKAGES =+ "qt-x11-plugins-imageformats qt-x11-plugins-sqldrivers qt-x11-plugins-designer \
+             qt-x11-designer qt-x11-assistant qt-x11-qvfb qt-x11-qtconfig"
+FILES_qt-x11-plugins-imageformats = "${prefix}/plugins/imageformats/*.so"
+FILES_qt-x11-plugins-sqldrivers = "${prefix}/plugins/sqldrivers/*.so"
+FILES_qt-x11-plugins-designer = "${prefix}/plugins/designer/*.so"
+FILES_qt-x11-designer = "${bindir}/designer"
+FILES_qt-x11-assistant = "${bindir}/assistant"
+FILES_qt-x11-qvfb = "${bindir}/qvfb"
+FILES_qt-x11-qtconfig = "${bindir}/qtconfig"
+FILES_qt-x11-dbg += "${prefix}/plugins/*/.debug ${D}/qt-x11-plugins-debug"
diff --git a/meta/recipes-qt/qt3/qt-x11-free-native_3.3.5.bb b/meta/recipes-qt/qt3/qt-x11-free-native_3.3.5.bb
new file mode 100644
index 0000000..62ae18f
--- /dev/null
+++ b/meta/recipes-qt/qt3/qt-x11-free-native_3.3.5.bb
@@ -0,0 +1,65 @@
+DESCRIPTION = "Qt/X11 Version ${PV}"
+SECTION = "libs"
+PRIORITY = "optional"
+LICENSE = "GPL QPL"
+DEPENDS = "qmake-native x11-native"
+HOMEPAGE = "http://www.trolltech.com"
+
+FILESDIR = "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/qt-x11-free"
+
+LIC_FILES_CHKSUM = "file://LICENSE.GPL;md5=629178675a7d49c9fa19dfe9f43ea256 \
+                    file://LICENSE.QPL;md5=fff372435cb41647bc0b3cb940ea5c51"
+
+SRC_URI = "ftp://ftp.trolltech.com/qt/source/qt-x11-free-${PV}.tar.bz2 \
+	   file://no-examples.patch"
+S = "${WORKDIR}/qt-x11-free-${PV}"
+
+#
+# FIXME - This should be updated to use OE's qmake_base.oeclass
+#         or the full qmake.oeclass.
+#
+
+export QTDIR = "${S}"
+export SYSCONF_CXX = "${CCACHE} g++"
+export SYSCONF_CC  = "${CCACHE} gcc"
+export SYSCONF_LINK  = "${CCACHE} g++"
+THIS_QMAKESPEC = "${STAGING_DATADIR}/qmake/${TARGET_OS}-oe-g++"
+export QMAKESPEC = ""
+ARCH_i686 = "x86"
+
+QT_CONFIG_FLAGS = "-release -shared -qt-zlib -no-nas-sound -no-sm -qt-libpng -qt-gif -no-xshape -no-xinerama -no-xcursor -no-xrandr \
+                   -no-xrender -no-xft -no-tablet -no-xkb -no-dlopen-opengl -no-freetype -no-nis -no-cups -stl -thread -no-exceptions"
+
+
+inherit native
+
+do_configure() {
+	echo "yes" | ./configure -prefix ${prefix} ${QT_CONFIG_FLAGS} -fast -L ${STAGING_LIBDIR} \
+                -I ${STAGING_INCDIR_NATIVE} 
+}
+
+do_compile() {
+	LD_LIBRARY_PATH=${S}/lib oe_runmake \
+		QMAKE="${STAGING_BINDIR_NATIVE}/qmake -after INCLUDEPATH+=${STAGING_INCDIR} LIBS+=-L${STAGING_LIBDIR}" \
+		QMAKESPEC="${THIS_QMAKESPEC}"
+}
+
+
+do_install() {
+	install -d ${D}${bindir}/
+    install -m 0755 bin/qmake ${D}${bindir}/qmake2
+    for i in moc uic  lrelease lupdate; do
+        install -m 0755 bin/${i} ${D}${bindir}/${i}3
+    done
+ 
+	install -d ${D}${datadir}/qt3/
+	cp -PfR mkspecs ${D}${datadir}/qt3/
+    ln -sf linux-g++ ${D}${datadir}/qt3/mkspecs/${BUILD_OS}-oe-g++
+	ln -s ${D}${datadir}/qt3/mkspecs/ ${D}${datadir}/qmake
+ 	install -d ${D}${libdir}/
+	oe_soinstall lib/libqt-mt.so.${PV} ${D}${libdir}/
+}
+
+
+SRC_URI[md5sum] = "05d04688c0c0230ed54e89102d689ca4"
+SRC_URI[sha256sum] = "aac89e862c74b2f3ead768e50e9fa7ada1e4225fe9d1d9e05723a3279259eb96"
diff --git a/meta/recipes-qt/qt3/qt-x11-free/configure.patch b/meta/recipes-qt/qt3/qt-x11-free/configure.patch
new file mode 100644
index 0000000..9d6c1e8
--- /dev/null
+++ b/meta/recipes-qt/qt3/qt-x11-free/configure.patch
@@ -0,0 +1,51 @@
+
+#
+# Patch managed by http://www.holgerschurig.de/patcher.html
+#
+
+--- qt-x11-free-3.3.2/configure~configure.patch
++++ qt-x11-free-3.3.2/configure
+@@ -1754,21 +1754,14 @@
+ 	    CFG_FREETYPE=yes
+ 	fi
+     fi
+-    # add freetype2 include path
+-    if [ "$CFG_FREETYPE" = "yes" ] && [ -f $outpath/config.tests/x11/xft.inc ];then
+-	QMAKE_VARS="$QMAKE_VARS \"INCLUDEPATH+=`cat $outpath/config.tests/x11/xft.inc`\""
+-    fi
+-    rm -f $outpath/config.tests/x11/xft.inc
+     # add Xft specific libraries
+     if [ "$CFG_FREETYPE" = "yes" ] && [ -f $outpath/config.tests/x11/xft.lib ]; then
+ 	QMAKE_VARS="$QMAKE_VARS \"QMAKE_LIBS_X11=`cat $outpath/config.tests/x11/xft.lib` \$\$QMAKE_LIBS_X11\""
+     fi
+-    rm -f $outpath/config.tests/x11/xft.lib
+     # add Xft specific config options
+     if [ "$CFG_FREETYPE" = "yes" ] && [ -f $outpath/config.tests/x11/xft.cfg ]; then
+ 	QMAKE_CONFIG="$QMAKE_CONFIG `cat $outpath/config.tests/x11/xft.cfg`"
+     fi
+-    rm -f $outpath/config.tests/x11/xft.cfg
+     # auto-detect Session Management support
+     if [ "$CFG_SM" = "auto" ]; then
+ 	if $x11tests/sm.test $XQMAKESPEC $OPT_VERBOSE $L_FLAGS $I_FLAGS; then
+@@ -2553,12 +2546,6 @@
+     (cd $outpath/qmake; $MAKE || (echo "qmake failed to build. Aborting." && exit 2)) || exit 2
+ fi
+ 
+-# clean up temporary qconfig.h and qmodules.h
+-rm -f $outpath/include/qmake/qconfig.h
+-rm -f $outpath/include/qmake/qmodules.h
+-rmdir $outpath/include/qmake
+-
+-
+ #-------------------------------------------------------------------------------
+ # tests that need qmake
+ #-------------------------------------------------------------------------------
+@@ -3605,7 +3592,7 @@
+ 
+ EOF
+ 	else
+-	    EXEC="$outpath/bin/qmake $QMAKE_SWITCHES $QMAKE_SPEC_ARGS -o $OUTDIR $a"
++	    EXEC="$outpath/bin/qmake $QMAKE_SWITCHES $QMAKE_SPEC_ARGS -o $OUTDIR $a $OE_EXTRA_QMAKE"
+ 	    if [ "$OPT_VERBOSE" = "yes" ]; then
+ 		echo " (`basename $SPEC`)"
+ 		if echo '\c' | grep '\c' >/dev/null; then
diff --git a/meta/recipes-qt/qt3/qt-x11-free/gcc4_1-HACK.patch b/meta/recipes-qt/qt3/qt-x11-free/gcc4_1-HACK.patch
new file mode 100644
index 0000000..818bced
--- /dev/null
+++ b/meta/recipes-qt/qt3/qt-x11-free/gcc4_1-HACK.patch
@@ -0,0 +1,28 @@
+
+#
+# Patch managed by http://www.holgerschurig.de/patcher.html
+#
+
+--- qt-x11-free-3.3.6/src/tools/qstring.h~gcc4_1.patch
++++ qt-x11-free-3.3.6/src/tools/qstring.h
+@@ -60,7 +60,7 @@
+ #endif
+ #endif
+ 
+-
++#define Q_NO_PACKED_REFERENCE
+ /*****************************************************************************
+   QString class
+  *****************************************************************************/
+@@ -194,9 +194,9 @@
+     char latin1() const { return ucs > 0xff ? 0 : (char) ucs; }
+     ushort unicode() const { return ucs; }
+ #ifdef Q_NO_PACKED_REFERENCE
+-    ushort &unicode() { return *(&ucs); }
++    ushort &unicode() { return *((ushort*)&ucs); }
+ #else
+-    ushort &unicode() { return ucs; }
++    ushort &unicode() { return (ushort)ucs; }
+ #endif
+ #ifndef QT_NO_CAST_ASCII
+     // like all ifdef'd code this is undocumented
diff --git a/meta/recipes-qt/qt3/qt-x11-free/no-examples.patch b/meta/recipes-qt/qt3/qt-x11-free/no-examples.patch
new file mode 100644
index 0000000..b0ee637
--- /dev/null
+++ b/meta/recipes-qt/qt3/qt-x11-free/no-examples.patch
@@ -0,0 +1,16 @@
+
+#
+# Patch managed by http://www.mn-logistik.de/unsupported/pxa250/patcher
+#
+
+--- qt-embedded-free-3.3.2/Makefile~no-examples	2003-08-11 16:37:25.000000000 +0200
++++ qt-embedded-free-3.3.2/Makefile	2004-05-11 15:53:53.000000000 +0200
+@@ -11,7 +11,7 @@
+ install: FORCE
+ 	@$(MAKE) qt.install
+ 
+-all: symlinks src-qmake src-moc sub-src sub-tools sub-tutorial sub-examples
++all: symlinks src-qmake src-moc sub-src sub-tools
+ 	@echo
+ 	@echo "The Qt library is now built in ./lib"
+ 	@echo "The Qt examples are built in the directories in ./examples"
diff --git a/meta/recipes-qt/qt3/qt-x11-free_3.3.6.bb b/meta/recipes-qt/qt3/qt-x11-free_3.3.6.bb
new file mode 100644
index 0000000..789e6fb
--- /dev/null
+++ b/meta/recipes-qt/qt3/qt-x11-free_3.3.6.bb
@@ -0,0 +1,13 @@
+DEPENDS = "uicmoc3-native freetype virtual/libx11 libxft libxext libxrender libxrandr libxcursor mysql virtual/libgl"
+PROVIDES = "qt3x11"
+PR = "r3"
+
+SRC_URI = "ftp://ftp.trolltech.com/qt/source/qt-x11-free-${PV}.tar.bz2 \
+	   file://configure.patch \
+	   file://no-examples.patch \
+           file://gcc4_1-HACK.patch"
+
+require qt-x11-free-common.inc
+
+SRC_URI[md5sum] = "dc1384c03ac08af21f6fefab32d982cf"
+SRC_URI[sha256sum] = "04f12083f6a6f7a8fd4d34a6c1efd37db76a67580c424f4fb7b7c43c0565e6ae"
diff --git a/meta/recipes-qt/qt3/qt-x11-free_3.3.7.bb b/meta/recipes-qt/qt3/qt-x11-free_3.3.7.bb
new file mode 100644
index 0000000..61d4f1f
--- /dev/null
+++ b/meta/recipes-qt/qt3/qt-x11-free_3.3.7.bb
@@ -0,0 +1,16 @@
+DEPENDS = "uicmoc3-native freetype virtual/libx11 libxmu libxft libxext libxrender libxrandr libxcursor  virtual/libgl"
+PROVIDES = "qt3x11"
+PR = "r4"
+
+LIC_FILES_CHKSUM = "file://LICENSE.GPL;md5=b07b0d5ac6b1822effe47173a1744433 \
+                    file://LICENSE.QPL;md5=b81b6b6fc04ed873adde5aa901c0613b"
+
+SRC_URI = "ftp://ftp.trolltech.com/qt/source/qt-x11-free-${PV}.tar.bz2 \
+	   file://configure.patch \
+	   file://no-examples.patch \
+       file://gcc4_1-HACK.patch"
+
+require qt-x11-free-common.inc
+
+SRC_URI[md5sum] = "655e21cf6a7e66daf8ec6ceda81aae1e"
+SRC_URI[sha256sum] = "48c05b501029f0640db665fbc7f981a0efbf69ad3cf87a43c5eea4872f4f7ba1"
-- 
1.7.0.4


