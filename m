Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2843A4C81199
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 01:01:55 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Dec 2010 23:01:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,310,1288594800"; d="scan'208";a="633839578"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga002.fm.intel.com with ESMTP; 06 Dec 2010 23:01:54 -0800
Message-Id: <094ee33e39312dabac262f016b8e4b52f2c6538c.1291705845.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291705845.git.dongxiao.xu@intel.com>
References: <cover.1291705845.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 7 Dec 2010 15:08:35 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 6/7] gupnp: upgrade to version 0.14.0
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
X-List-Received-Date: Tue, 07 Dec 2010 07:01:55 -0000

Derive introspection.m4 from gobject-introspection package to solve the
autoreconf issue.

Add option "--disable-introspection" since gobject-introspection breaks
cross compile.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../gupnp/gupnp-0.14.0/introspection.patch         |  101 ++++++++++++++++++++
 .../gupnp/{gupnp_0.13.2.bb => gupnp_0.14.0.bb}     |   10 ++-
 2 files changed, 109 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-connectivity/gupnp/gupnp-0.14.0/introspection.patch
 rename meta/recipes-connectivity/gupnp/{gupnp_0.13.2.bb => gupnp_0.14.0.bb} (81%)

diff --git a/meta/recipes-connectivity/gupnp/gupnp-0.14.0/introspection.patch b/meta/recipes-connectivity/gupnp/gupnp-0.14.0/introspection.patch
new file mode 100644
index 0000000..15de41f
--- /dev/null
+++ b/meta/recipes-connectivity/gupnp/gupnp-0.14.0/introspection.patch
@@ -0,0 +1,101 @@
+Copied from gobject-introspection/m4/introspection.m4
+By Dongxiao Xu <dongxiao.xu@intel.com>
+
+diff -ruN gssdp-0.9.0-orig/m4/introspection.m4 gssdp-0.9.0/m4/introspection.m4
+--- gssdp-0.9.0-orig/m4/introspection.m4	1970-01-01 08:00:00.000000000 +0800
++++ gssdp-0.9.0/m4/introspection.m4	2010-12-06 11:08:16.000000000 +0800
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
diff --git a/meta/recipes-connectivity/gupnp/gupnp_0.13.2.bb b/meta/recipes-connectivity/gupnp/gupnp_0.14.0.bb
similarity index 81%
rename from meta/recipes-connectivity/gupnp/gupnp_0.13.2.bb
rename to meta/recipes-connectivity/gupnp/gupnp_0.14.0.bb
index 1a3517b..2fa2f7b 100644
--- a/meta/recipes-connectivity/gupnp/gupnp_0.13.2.bb
+++ b/meta/recipes-connectivity/gupnp/gupnp_0.14.0.bb
@@ -5,8 +5,11 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7 \
                     file://libgupnp/gupnp.h;beginline=1;endline=20;md5=28c49b17d623afc3335efc2e511879e1"
 DEPENDS = "e2fsprogs gssdp libsoup-2.4 libxml2 gnome-icon-theme"
 
-SRC_URI = "http://gupnp.org/sites/all/files/sources/${PN}-${PV}.tar.gz"
-PR = "r1"
+SRC_URI = "http://gupnp.org/sites/all/files/sources/${PN}-${PV}.tar.gz \
+           file://introspection.patch"
+PR = "r0"
+
+EXTRA_OECONF = "--disable-introspection"
 
 inherit autotools pkgconfig
 
@@ -19,3 +22,6 @@ gupnp_sysroot_preprocess () {
 	install -d ${SYSROOT_DESTDIR}${STAGING_BINDIR_CROSS}/
 	install -m 755 ${D}${bindir}/gupnp-binding-tool ${SYSROOT_DESTDIR}${STAGING_BINDIR_CROSS}/
 }
+
+SRC_URI[md5sum] = "8598922256faa5adb28657d0c10a3e3e"
+SRC_URI[sha256sum] = "6ac13efe46c6f1e5d05e48e1041bf37dfa702839ce5fbb01e0f314f3904b6a16"
-- 
1.6.3.3


