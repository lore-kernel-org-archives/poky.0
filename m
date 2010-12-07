Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id BD0054C81205
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 00:28:23 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 07 Dec 2010 22:28:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,315,1288594800"; d="scan'208";a="865769175"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga001.fm.intel.com with ESMTP; 07 Dec 2010 22:28:14 -0800
Message-Id: <5aab92ace21993c02038cf61d80d3e0df5750799.1291790130.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291790130.git.dongxiao.xu@intel.com>
References: <cover.1291790130.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 7 Dec 2010 16:55:01 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/7] gssdp: upgrade to version 0.9.0
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
X-List-Received-Date: Wed, 08 Dec 2010 06:28:23 -0000

Derive introspection.m4 from gobject-introspection package to solve the
autoreconf issue.

Add option "--disable-introspection" since gobject-introspection breaks
cross compile.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../gupnp/files/introspection.patch                |  101 ++++++++++++++++++++
 .../gupnp/{gssdp_0.7.1.bb => gssdp_0.9.0.bb}       |   12 ++-
 2 files changed, 112 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-connectivity/gupnp/files/introspection.patch
 rename meta/recipes-connectivity/gupnp/{gssdp_0.7.1.bb => gssdp_0.9.0.bb} (66%)

diff --git a/meta/recipes-connectivity/gupnp/files/introspection.patch b/meta/recipes-connectivity/gupnp/files/introspection.patch
new file mode 100644
index 0000000..15de41f
--- /dev/null
+++ b/meta/recipes-connectivity/gupnp/files/introspection.patch
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
diff --git a/meta/recipes-connectivity/gupnp/gssdp_0.7.1.bb b/meta/recipes-connectivity/gupnp/gssdp_0.9.0.bb
similarity index 66%
rename from meta/recipes-connectivity/gupnp/gssdp_0.7.1.bb
rename to meta/recipes-connectivity/gupnp/gssdp_0.9.0.bb
index 2143984..09bcc38 100644
--- a/meta/recipes-connectivity/gupnp/gssdp_0.7.1.bb
+++ b/meta/recipes-connectivity/gupnp/gssdp_0.9.0.bb
@@ -4,10 +4,20 @@ LICENSE = "LGPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7"
 DEPENDS = "glib-2.0 libsoup-2.4 libglade"
 
-SRC_URI = "http://gupnp.org/sites/all/files/sources/${PN}-${PV}.tar.gz"
+SRC_URI = "http://gupnp.org/sites/all/files/sources/${PN}-${PV}.tar.gz \
+           file://introspection.patch"
 
 inherit autotools pkgconfig
 
 PACKAGES =+ "gssdp-tools"
 
 FILES_gssdp-tools = "${bindir}/gssdp* ${datadir}/gssdp/*.glade"
+
+EXTRA_OECONF = "--disable-introspection"
+
+PR = "r0"
+
+SRC_URI[md5sum] = "8605138eac1e7fb8ec8cf502a928ea81"
+SRC_URI[sha256sum] = "6e4de2ecc90d2ac8b3694af1954984d04de25fb01dd2f2748d7221add8ead9e0" 
+
+
-- 
1.6.3.3


