Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 45CB34C80BD7
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 01:43:13 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 25 Apr 2011 23:43:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,267,1301900400"; d="scan'208";a="683961434"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga002.fm.intel.com with ESMTP; 25 Apr 2011 23:43:12 -0700
Message-Id: <695d40dcbc6403a3c64a61e5d3aaa0d58db09d77.1303798223.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1303798223.git.dongxiao.xu@intel.com>
References: <cover.1303798223.git.dongxiao.xu@intel.com>
Old-Date: Wed, 20 Apr 2011 13:57:30 +0800
Date: Tue, 26 Apr 2011 14:46:07 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 08/13] polkit: upgrade to version 0.101.
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
X-List-Received-Date: Tue, 26 Apr 2011 06:43:13 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Derive introspection.patch from gobject to fix autoconf issue.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../polkit/polkit-0.101/introspection.patch        |  104 ++++++++++++++++++++
 .../polkit/{polkit_0.99.bb => polkit_0.101.bb}     |   11 +-
 2 files changed, 110 insertions(+), 5 deletions(-)
 create mode 100644 meta/recipes-extended/polkit/polkit-0.101/introspection.patch
 rename meta/recipes-extended/polkit/{polkit_0.99.bb => polkit_0.101.bb} (77%)

diff --git a/meta/recipes-extended/polkit/polkit-0.101/introspection.patch b/meta/recipes-extended/polkit/polkit-0.101/introspection.patch
new file mode 100644
index 0000000..58c27ab
--- /dev/null
+++ b/meta/recipes-extended/polkit/polkit-0.101/introspection.patch
@@ -0,0 +1,104 @@
+Copied from gobject-introspection/m4/introspection.m4
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-By: Dongxiao Xu <dongxiao.xu@intel.com>
+
+diff -ruN polkit-0.101-orig/m4/introspection.m4 polkit-0.101/m4/introspection.m4
+--- polkit-0.101-orig/m4/introspection.m4	1970-01-01 08:00:00.000000000 +0800
++++ polkit-0.101/m4/introspection.m4	2010-12-06 11:08:16.000000000 +0800
+@@ -0,0 +1,94 @@
++dnl -*- mode: autoconf -*-
++dnl Copyright 2009 Johan Dahlin
++dnl
++dnl This file is free software; the author(s) gives unlimited
++dnl permission to copy and/or distribute it, with or without
++dnl modifications, as long as this notice is preserved.
++dnl
++
++# serial 1
++
++m4_define([_GOBJECT_INTROSPECTION_CHECK_INTERNAL],
++[
++    AC_BEFORE([AC_PROG_LIBTOOL],[$0])dnl setup libtool first
++    AC_BEFORE([AM_PROG_LIBTOOL],[$0])dnl setup libtool first
++    AC_BEFORE([LT_INIT],[$0])dnl setup libtool first
++
++    dnl enable/disable introspection
++    m4_if([$2], [require],
++    [dnl
++        enable_introspection=yes
++    ],[dnl
++        AC_ARG_ENABLE(introspection,
++                  AS_HELP_STRING([--enable-introspection[=@<:@no/auto/yes@:>@]],
++                                 [Enable introspection for this build]),, 
++                                 [enable_introspection=auto])
++    ])dnl
++
++    AC_MSG_CHECKING([for gobject-introspection])
++
++    dnl presence/version checking
++    AS_CASE([$enable_introspection],
++    [no], [dnl
++        found_introspection="no (disabled, use --enable-introspection to enable)"
++    ],dnl
++    [yes],[dnl
++        PKG_CHECK_EXISTS([gobject-introspection-1.0],,
++                         AC_MSG_ERROR([gobject-introspection-1.0 is not installed]))
++        PKG_CHECK_EXISTS([gobject-introspection-1.0 >= $1],
++                         found_introspection=yes,
++                         AC_MSG_ERROR([You need to have gobject-introspection >= $1 installed to build AC_PACKAGE_NAME]))
++    ],dnl
++    [auto],[dnl
++        PKG_CHECK_EXISTS([gobject-introspection-1.0 >= $1], found_introspection=yes, found_introspection=no)
++    ],dnl
++    [dnl	
++        AC_MSG_ERROR([invalid argument passed to --enable-introspection, should be one of @<:@no/auto/yes@:>@])
++    ])dnl
++
++    AC_MSG_RESULT([$found_introspection])
++
++    INTROSPECTION_SCANNER=
++    INTROSPECTION_COMPILER=
++    INTROSPECTION_GENERATE=
++    INTROSPECTION_GIRDIR=
++    INTROSPECTION_TYPELIBDIR=
++    if test "x$found_introspection" = "xyes"; then
++       INTROSPECTION_SCANNER=`$PKG_CONFIG --variable=g_ir_scanner gobject-introspection-1.0`
++       INTROSPECTION_COMPILER=`$PKG_CONFIG --variable=g_ir_compiler gobject-introspection-1.0`
++       INTROSPECTION_GENERATE=`$PKG_CONFIG --variable=g_ir_generate gobject-introspection-1.0`
++       INTROSPECTION_GIRDIR=`$PKG_CONFIG --variable=girdir gobject-introspection-1.0`
++       INTROSPECTION_TYPELIBDIR="$($PKG_CONFIG --variable=typelibdir gobject-introspection-1.0)"
++       INTROSPECTION_CFLAGS=`$PKG_CONFIG --cflags gobject-introspection-1.0`
++       INTROSPECTION_LIBS=`$PKG_CONFIG --libs gobject-introspection-1.0`
++       INTROSPECTION_MAKEFILE=`$PKG_CONFIG --variable=datadir gobject-introspection-1.0`/gobject-introspection-1.0/Makefile.introspection
++    fi
++    AC_SUBST(INTROSPECTION_SCANNER)
++    AC_SUBST(INTROSPECTION_COMPILER)
++    AC_SUBST(INTROSPECTION_GENERATE)
++    AC_SUBST(INTROSPECTION_GIRDIR)
++    AC_SUBST(INTROSPECTION_TYPELIBDIR)
++    AC_SUBST(INTROSPECTION_CFLAGS)
++    AC_SUBST(INTROSPECTION_LIBS)
++    AC_SUBST(INTROSPECTION_MAKEFILE)
++
++    AM_CONDITIONAL(HAVE_INTROSPECTION, test "x$found_introspection" = "xyes")
++])
++
++
++dnl Usage:
++dnl   GOBJECT_INTROSPECTION_CHECK([minimum-g-i-version])
++
++AC_DEFUN([GOBJECT_INTROSPECTION_CHECK],
++[
++  _GOBJECT_INTROSPECTION_CHECK_INTERNAL([$1])
++])
++
++dnl Usage:
++dnl   GOBJECT_INTROSPECTION_REQUIRE([minimum-g-i-version])
++
++
++AC_DEFUN([GOBJECT_INTROSPECTION_REQUIRE],
++[
++  _GOBJECT_INTROSPECTION_CHECK_INTERNAL([$1], [require])
++])
diff --git a/meta/recipes-extended/polkit/polkit_0.99.bb b/meta/recipes-extended/polkit/polkit_0.101.bb
similarity index 77%
rename from meta/recipes-extended/polkit/polkit_0.99.bb
rename to meta/recipes-extended/polkit/polkit_0.101.bb
index 7f96979..6769914 100644
--- a/meta/recipes-extended/polkit/polkit_0.99.bb
+++ b/meta/recipes-extended/polkit/polkit_0.101.bb
@@ -4,10 +4,11 @@ HOMEPAGE = "http://code.google.com/p/polkit/"
 LICENSE = "LGPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=155db86cdbafa7532b41f390409283eb \
                     file://src/polkit/polkit.h;beginline=1;endilne=20;md5=9f797b8912dac8a806be820c14e783f8 \
-                    file://docs/polkit/html/license.html;md5=54750ec6ece444c50b823234d445dd99"
+                    file://docs/polkit/html/license.html;md5=07ddbf5f29e44c80c99be19c1690ec1f"
 
-SRC_URI = "http://hal.freedesktop.org/releases/polkit-${PV}.tar.gz"
-PR = "r1"
+SRC_URI = "http://hal.freedesktop.org/releases/polkit-${PV}.tar.gz \
+           file://introspection.patch"
+PR = "r0"
 DEPENDS = "libpam expat dbus-glib eggdbus intltool"
 RDEPENDS_${PN} = "libpam"
 EXTRA_OECONF = "--with-authfw=pam --with-os-type=moblin --disable-man-pages --disable-gtk-doc --disable-introspection"
@@ -19,5 +20,5 @@ FILES_${PN} += "${libdir}/${PN}-1/extensions/*.so \
                 ${datadir}/dbus-1/system-services/*"
 FILES_${PN}-dbg += "${libdir}/${PN}-1/extensions/.debug/*.so"
 
-SRC_URI[md5sum] = "fcc4d7b19c08ad54d3ce0eae0ab12398"
-SRC_URI[sha256sum] = "f612c7c26ec822f67751420057a4ae113fc50ab51070758faacf2ad30bb3583f"
+SRC_URI[md5sum] = "f925ac93aba3c072977370c1e27feb7f"
+SRC_URI[sha256sum] = "927f65760e4fce23d7cdeae90245c22986eb0a39335a344915302158f73f9f1b"
-- 
1.7.1


