Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A54B14C810AE
	for <poky@yoctoproject.org>; Sun, 28 Nov 2010 07:06:16 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Nov 2010 05:06:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,270,1288594800"; d="scan'208";a="681700125"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga001.jf.intel.com with ESMTP; 28 Nov 2010 05:06:07 -0800
Message-Id: <3dd176d65c3dbfd883b2c93223d3306663dbb049.1290943560.git.ke.yu@intel.com>
In-Reply-To: <cover.1290943560.git.ke.yu@intel.com>
References: <cover.1290943560.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Sat, 27 Nov 2010 20:48:49 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 07/11] glew: add new recipes glew 1.5.7
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
X-List-Received-Date: Sun, 28 Nov 2010 13:06:17 -0000

The OpenGL Extension Wrangler Library (GLEW) is a cross-platform open-source C/C++ extension loading library. GLEW provides efficient run-time mechanisms for determining which OpenGL extensions are supported on the target platform.

mesa-demos requires glew, so port it from OE, with the following changes:
- upgrade it from 1.5.1 to 1.5.7
- add license checksum

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/recipes-graphics/glew/files/autotools.patch |  146 ++++++++++++++++++++++
 meta/recipes-graphics/glew/glew_1.5.7.bb         |   19 +++
 2 files changed, 165 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-graphics/glew/files/autotools.patch
 create mode 100644 meta/recipes-graphics/glew/glew_1.5.7.bb

diff --git a/meta/recipes-graphics/glew/files/autotools.patch b/meta/recipes-graphics/glew/files/autotools.patch
new file mode 100644
index 0000000..7fe1d6e
--- /dev/null
+++ b/meta/recipes-graphics/glew/files/autotools.patch
@@ -0,0 +1,146 @@
+Index: glew/Makefile.am
+===================================================================
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ glew/Makefile.am	2009-12-02 00:30:23.296641663 +0100
+@@ -0,0 +1,5 @@
++
++ACLOCAL_AMFLAGS = -I m4 --install
++
++SUBDIRS = include src
++
+Index: glew/configure.ac
+===================================================================
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ glew/configure.ac	2009-12-02 00:30:23.296641663 +0100
+@@ -0,0 +1,67 @@
++#                                               -*- Autoconf -*-
++# Process this file with autoconf to produce a configure script.
++
++AC_PREREQ([2.62])
++AC_INIT([glew], [1.5.7], [BUG-REPORT-ADDRESS])
++AC_CONFIG_SRCDIR([src/glew.c])
++AC_CONFIG_HEADERS([config.h])
++AM_INIT_AUTOMAKE([-Wall -Werror foreign])
++AC_CONFIG_MACRO_DIR([m4])
++
++LT_INIT
++
++# Checks for programs.
++AC_PROG_CC
++AC_PROG_INSTALL
++AC_PROG_LN_S
++
++# Checks for libraries.
++
++# Checks for header files.
++AC_CHECK_HEADERS([inttypes.h stddef.h stdint.h stdlib.h string.h])
++
++# Checks for typedefs, structures, and compiler characteristics.
++AC_TYPE_INT32_T
++AC_TYPE_INT64_T
++AC_TYPE_UINT64_T
++AC_CHECK_TYPES([ptrdiff_t])
++
++# Checks for library functions.
++AC_FUNC_MALLOC
++AC_CHECK_FUNCS([strtol])
++
++# Check for pkgconfig libs
++
++PKG_CHECK_MODULES([X11], [x11])
++AC_SUBST([X11_LIBS])
++AC_SUBST([X11_CFLAGS])
++
++PKG_CHECK_MODULES([XMU], [xmu])
++AC_SUBST([XMU_LIBS])
++AC_SUBST([XMU_CFLAGS])
++
++PKG_CHECK_MODULES([XI], [xi])
++AC_SUBST([XI_LIBS])
++AC_SUBST([XI_CFLAGS])
++
++PKG_CHECK_MODULES([XEXT], [xext])
++AC_SUBST([XEXT_LIBS])
++AC_SUBST([XEXT_CFLAGS])
++
++# Check for GLU is enough and imples gl so no doubled -lGL in LDFLAGS
++PKG_CHECK_MODULES([GLU], [glu])
++AC_SUBST([GLU_LIBS])
++AC_SUBST([GLU_CFLAGS])
++
++# ENABLE option for Multiple Rendering Contexts support
++AC_CHECK_ENABLE_GLEWMX
++
++# for now we use the same version as the package, but that should be avoided
++# in the future
++
++AC_SUBST([LIBGLEW_SO_VERSION], [1:5:7])
++
++AC_CONFIG_FILES([Makefile
++                 include/Makefile
++                 src/Makefile])
++AC_OUTPUT
+Index: glew/src/Makefile.am
+===================================================================
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ glew/src/Makefile.am	2009-12-02 00:33:48.690786110 +0100
+@@ -0,0 +1,35 @@
++
++AM_CPPFLAGS = -I$(top_srcdir)/include
++
++if ENABLE_GLEWMX
++AM_CPPFLAGS += -DGLEW_MX
++endif
++
++AM_CFLAGS = @X11_CFLAGS@ \
++            @XMU_CFLAGS@ \
++            @XI_CFLAGS@ \
++            @XEXT_CFLAGS@ \
++            @GLU_CFLAGS@
++
++lib_LTLIBRARIES = libGLEW.la
++
++libGLEW_la_SOURCES = glew.c
++
++libGLEW_la_LIBADD = @X11_LIBS@ \
++                    @XMU_LIBS@ \
++                    @XI_LIBS@ \
++                    @XEXT_LIBS@ \
++                    @GLU_LIBS@
++
++libGLEW_la_LDFLAGS = -version-number @LIBGLEW_SO_VERSION@
++
++bin_PROGRAMS = glewinfo visualinfo
++
++glewinfo_SOURCES = glewinfo.c
++
++glewinfo_LDADD = libGLEW.la
++
++visualinfo_SOURCES =  visualinfo.c
++
++visualinfo_LDADD = libGLEW.la
++
+Index: glew/m4/glewmx.m4
+===================================================================
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ glew/m4/glewmx.m4	2009-12-02 00:30:23.296641663 +0100
+@@ -0,0 +1,11 @@
++
++AC_DEFUN([AC_CHECK_ENABLE_GLEWMX],[
++AC_MSG_CHECKING([whether to include Multiple Rendering Contexts support])
++AC_ARG_ENABLE([glewmx],
++   [AS_HELP_STRING([--enable-glewmx], [enable GLEW Multiple Rendering Contexts (default is no)])],
++   [ENABLE_GLEWMX="$enableval"],
++   [ENABLE_GLEWMX="no"])
++AC_MSG_RESULT([${ENABLE_GLEWMX}])
++AM_CONDITIONAL([ENABLE_GLEWMX], [test x"${ENABLE_GLEWMX}" = "xyes"])
++])
++
+Index: glew/include/Makefile.am
+===================================================================
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ glew/include/Makefile.am	2009-12-02 00:30:23.296641663 +0100
+@@ -0,0 +1,3 @@
++
++nobase_include_HEADERS = GL/glew.h  GL/glxew.h  GL/wglew.h
++
diff --git a/meta/recipes-graphics/glew/glew_1.5.7.bb b/meta/recipes-graphics/glew/glew_1.5.7.bb
new file mode 100644
index 0000000..e2e6b43
--- /dev/null
+++ b/meta/recipes-graphics/glew/glew_1.5.7.bb
@@ -0,0 +1,19 @@
+DESCRIPTION = "The OpenGL Extension Wrangler Library (GLEW) is a cross-platform open-source C/C++ extension loading library."
+HOMEPAGE = "http://glew.sourceforge.net/"
+BUGTRACKER = "http://sourceforge.net/tracker/?group_id=67586"
+SECTION = "x11"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=2ac251558de685c6b9478d89be3149c2"
+
+DEPENDS = "virtual/libx11 virtual/libgl libxext libxi libxmu"
+
+PR = "r0"
+
+SRC_URI = "${SOURCEFORGE_MIRROR}/project/glew/glew/${PV}/glew-${PV}.tgz \
+           file://autotools.patch \
+          "
+
+SRC_URI[md5sum] = "f913ce9dbde4cd250b932731b3534ded"
+SRC_URI[sha256sum] = "86bd36a163640d6027ec6be5fdd8a6e3b90f02dcf55f95c3c2429ebb58be3107"
+
+inherit autotools lib_package
-- 
1.7.0.4


