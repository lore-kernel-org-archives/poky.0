Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id CBF884C811F7
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 19:45:40 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Jan 2011 17:45:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,394,1291622400"; d="scan'208";a="597538631"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga002.jf.intel.com with ESMTP; 28 Jan 2011 17:45:39 -0800
Message-Id: <7385902ec21d3a17b5af35a0d90930ff9789c597.1296265268.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1296265268.git.scott.a.garman@intel.com>
References: <cover.1296265268.git.scott.a.garman@intel.com>
Old-Date: Wed, 26 Jan 2011 13:35:37 -0800
Date: Fri, 28 Jan 2011 17:46:32 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 6/9] openjade: new recipe v1.3.2
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
X-List-Received-Date: Sat, 29 Jan 2011 01:45:41 -0000

From: Scott Garman <scott.a.garman@intel.com>

Recipe derived from OpenEmbedded.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../openjade/openjade-1.3.2/autoconf.patch         |  173 ++++++++++++++++++++
 .../openjade/openjade-1.3.2/configure.patch        |   68 ++++++++
 .../openjade/openjade-1.3.2/makefile.patch         |   34 ++++
 .../openjade-1.3.2/oj-native-libosp-fix.patch      |   15 ++
 meta/recipes-devtools/openjade/openjade_1.3.2.bb   |   66 ++++++++
 5 files changed, 356 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-devtools/openjade/openjade-1.3.2/autoconf.patch
 create mode 100644 meta/recipes-devtools/openjade/openjade-1.3.2/configure.patch
 create mode 100644 meta/recipes-devtools/openjade/openjade-1.3.2/makefile.patch
 create mode 100644 meta/recipes-devtools/openjade/openjade-1.3.2/oj-native-libosp-fix.patch
 create mode 100644 meta/recipes-devtools/openjade/openjade_1.3.2.bb

diff --git a/meta/recipes-devtools/openjade/openjade-1.3.2/autoconf.patch b/meta/recipes-devtools/openjade/openjade-1.3.2/autoconf.patch
new file mode 100644
index 0000000..fe8df5b
--- /dev/null
+++ b/meta/recipes-devtools/openjade/openjade-1.3.2/autoconf.patch
@@ -0,0 +1,173 @@
+Patch obtained from OpenEmbedded.
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+-- config/acinclude.m4
++++ config/acinclude.m4	2002/04/08 23:13:37
+@@ -0,0 +1,61 @@
++dnl Configure-time switch with default
++dnl
++dnl Each switch defines an --enable-FOO and --disable-FOO option in
++dnl the resulting configure script.
++dnl
++dnl Usage:
++dnl SMR_SWITCH(name, description, default, pos-def, neg-def)
++dnl
++dnl where:
++dnl
++dnl name        name of switch; generates --enable-name & --disable-name
++dnl             options
++dnl description help string is set to this prefixed by "enable" or
++dnl             "disable", whichever is the non-default value
++dnl default     either "on" or "off"; specifies default if neither
++dnl             --enable-name nor --disable-name is specified
++dnl pos-def     a symbol to AC_DEFINE if switch is on (optional)
++dnl neg-def     a symbol to AC_DEFINE if switch is off (optional)
++dnl
++AC_DEFUN(SMR_SWITCH, [
++    AC_MSG_CHECKING(whether to enable $2)
++    AC_ARG_ENABLE(
++        $1,
++        ifelse($3, on,
++            [  --disable-[$1]    disable [$2]],
++            [  --enable-[$1]     enable [$2]]),
++        [ if test "$enableval" = yes; then
++            AC_MSG_RESULT(yes)
++            ifelse($4, , , AC_DEFINE($4))
++        else
++            AC_MSG_RESULT(no)
++            ifelse($5, , , AC_DEFINE($5))
++        fi ],
++        ifelse($3, on,
++           [ AC_MSG_RESULT(yes)
++             ifelse($4, , , AC_DEFINE($4)) ],
++           [ AC_MSG_RESULT(no)
++            ifelse($5, , , AC_DEFINE($5))]))])
++
++dnl
++dnl Examine size_t and define SIZE_T_IS_UINT, if size_t is an unsigned int
++dnl
++AC_DEFUN(OJ_SIZE_T_IS_UINT,[
++	AC_REQUIRE([AC_TYPE_SIZE_T])
++	AC_MSG_CHECKING(whether size_t is unsigned int)
++	ac_cv_size_t_is_uint=no
++	AC_LANG_SAVE
++	AC_LANG_CPLUSPLUS
++	AC_TRY_COMPILE([#include <unistd.h>
++
++                       template<class T> class foo { };
++
++                        ], [
++			foo<size_t> x;
++			foo<unsigned int> y;
++			x = y;
++		],ac_cv_size_t_is_uint=yes)
++	AC_LANG_RESTORE
++	AC_MSG_RESULT($ac_cv_size_t_is_uint)
++	test "$ac_cv_size_t_is_uint" = "yes" && AC_DEFINE(SIZE_T_IS_UINT)
++])
+Index: openjade-1.3.2/config/acinclude.m4
+===================================================================
+--- openjade-1.3.2.orig/config/acinclude.m4
++++ openjade-1.3.2/config/acinclude.m4
+@@ -1,3 +1,64 @@
++dnl Configure-time switch with default
++dnl
++dnl Each switch defines an --enable-FOO and --disable-FOO option in
++dnl the resulting configure script.
++dnl
++dnl Usage:
++dnl SMR_SWITCH(name, description, default, pos-def, neg-def)
++dnl
++dnl where:
++dnl
++dnl name        name of switch; generates --enable-name & --disable-name
++dnl             options
++dnl description help string is set to this prefixed by "enable" or
++dnl             "disable", whichever is the non-default value
++dnl default     either "on" or "off"; specifies default if neither
++dnl             --enable-name nor --disable-name is specified
++dnl pos-def     a symbol to AC_DEFINE if switch is on (optional)
++dnl neg-def     a symbol to AC_DEFINE if switch is off (optional)
++dnl
++AC_DEFUN(SMR_SWITCH, [
++    AC_MSG_CHECKING(whether to enable $2)
++    AC_ARG_ENABLE(
++        $1,
++        ifelse($3, on,
++            [  --disable-[$1]    disable [$2]],
++            [  --enable-[$1]     enable [$2]]),
++        [ if test "$enableval" = yes; then
++            AC_MSG_RESULT(yes)
++            ifelse($4, , , AC_DEFINE($4))
++        else
++            AC_MSG_RESULT(no)
++            ifelse($5, , , AC_DEFINE($5))
++        fi ],
++        ifelse($3, on,
++           [ AC_MSG_RESULT(yes)
++             ifelse($4, , , AC_DEFINE($4)) ],
++           [ AC_MSG_RESULT(no)
++            ifelse($5, , , AC_DEFINE($5))]))])
++
++dnl
++dnl Examine size_t and define SIZE_T_IS_UINT, if size_t is an unsigned int
++dnl
++AC_DEFUN(OJ_SIZE_T_IS_UINT,[
++	AC_REQUIRE([AC_TYPE_SIZE_T])
++	AC_MSG_CHECKING(whether size_t is unsigned int)
++	ac_cv_size_t_is_uint=no
++	AC_LANG_SAVE
++	AC_LANG_CPLUSPLUS
++	AC_TRY_COMPILE([#include <unistd.h>
++
++                       template<class T> class foo { };
++
++                        ], [
++			foo<size_t> x;
++			foo<unsigned int> y;
++			x = y;
++		],ac_cv_size_t_is_uint=yes)
++	AC_LANG_RESTORE
++	AC_MSG_RESULT($ac_cv_size_t_is_uint)
++	test "$ac_cv_size_t_is_uint" = "yes" && AC_DEFINE(SIZE_T_IS_UINT)
++])
+ dnl
+ dnl Examine size_t and define SIZE_T_IS_UINT, if size_t is an unsigned int
+ dnl
+Index: openjade-1.3.2/config/aclocal.m4
+===================================================================
+--- openjade-1.3.2.orig/config/aclocal.m4
++++ openjade-1.3.2/config/aclocal.m4
+@@ -3352,7 +3352,7 @@ dnl Each switch defines an --enable-FOO
+ dnl the resulting configure script.
+ dnl
+ dnl Usage:
+-dnl smr_SWITCH(name, description, default, pos-def, neg-def)
++dnl SMR_SWITCH(name, description, default, pos-def, neg-def)
+ dnl
+ dnl where:
+ dnl
+@@ -3365,7 +3365,7 @@ dnl             --enable-name nor --disa
+ dnl pos-def     a symbol to AC_DEFINE if switch is on (optional)
+ dnl neg-def     a symbol to AC_DEFINE if switch is off (optional)
+ dnl
+-AC_DEFUN(smr_SWITCH, [
++AC_DEFUN(SMR_SWITCH, [
+     AC_MSG_CHECKING(whether to enable $2)
+     AC_ARG_ENABLE(
+         $1,
+Index: openjade-1.3.2/config/configure.in
+===================================================================
+--- openjade-1.3.2.orig/config/configure.in
++++ openjade-1.3.2/config/configure.in
+@@ -243,8 +243,8 @@ AC_ARG_ENABLE(http,
+ dnl
+ dnl  optional backends
+ dnl
+-smr_SWITCH(mif, support for FrameMaker MIF output, on, JADE_MIF, DUMMY)
+-smr_SWITCH(html, support for HTML+CSS output, on, JADE_HTML, DUMMY)
++SMR_SWITCH(mif, support for FrameMaker MIF output, on, JADE_MIF, DUMMY)
++SMR_SWITCH(html, support for HTML+CSS output, on, JADE_HTML, DUMMY)
+ 
+ 
+ dnl 
diff --git a/meta/recipes-devtools/openjade/openjade-1.3.2/configure.patch b/meta/recipes-devtools/openjade/openjade-1.3.2/configure.patch
new file mode 100644
index 0000000..2dcaa4d
--- /dev/null
+++ b/meta/recipes-devtools/openjade/openjade-1.3.2/configure.patch
@@ -0,0 +1,68 @@
+Patch obtained from OpenEmbedded.
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+--- /dev/null	2003-09-23 18:19:32.000000000 -0400
++++ openjade-1.3.2/config/acinclude.m4	2004-01-20 14:39:20.000000000 -0500
+@@ -0,0 +1,62 @@
++dnl
++dnl Examine size_t and define SIZE_T_IS_UINT, if size_t is an unsigned int
++dnl
++AC_DEFUN(OJ_SIZE_T_IS_UINT,[
++	AC_REQUIRE([AC_TYPE_SIZE_T])
++	AC_MSG_CHECKING(whether size_t is unsigned int)
++	ac_cv_size_t_is_uint=no
++	AC_LANG_SAVE
++	AC_LANG_CPLUSPLUS
++	AC_TRY_COMPILE([#include <unistd.h>
++
++                       template<class T> class foo { };
++
++                        ], [
++			foo<size_t> x;
++			foo<unsigned int> y;
++			x = y;
++		],ac_cv_size_t_is_uint=yes)
++	AC_LANG_RESTORE
++	AC_MSG_RESULT($ac_cv_size_t_is_uint)
++	test "$ac_cv_size_t_is_uint" = "yes" && AC_DEFINE(SIZE_T_IS_UINT)
++])
++
++dnl Configure-time switch with default
++dnl
++dnl Each switch defines an --enable-FOO and --disable-FOO option in
++dnl the resulting configure script.
++dnl
++dnl Usage:
++dnl smr_SWITCH(name, description, default, pos-def, neg-def)
++dnl
++dnl where:
++dnl
++dnl name        name of switch; generates --enable-name & --disable-name
++dnl             options
++dnl description help string is set to this prefixed by "enable" or
++dnl             "disable", whichever is the non-default value
++dnl default     either "on" or "off"; specifies default if neither
++dnl             --enable-name nor --disable-name is specified
++dnl pos-def     a symbol to AC_DEFINE if switch is on (optional)
++dnl neg-def     a symbol to AC_DEFINE if switch is off (optional)
++dnl
++AC_DEFUN(smr_SWITCH, [
++    AC_MSG_CHECKING(whether to enable $2)
++    AC_ARG_ENABLE(
++        $1,
++        ifelse($3, on,
++            [  --disable-[$1]    disable [$2]],
++            [  --enable-[$1]     enable [$2]]),
++        [ if test "$enableval" = yes; then
++            AC_MSG_RESULT(yes)
++            ifelse($4, , , AC_DEFINE($4))
++        else
++            AC_MSG_RESULT(no)
++            ifelse($5, , , AC_DEFINE($5))
++        fi ],
++        ifelse($3, on,
++           [ AC_MSG_RESULT(yes)
++             ifelse($4, , , AC_DEFINE($4)) ],
++           [ AC_MSG_RESULT(no)
++            ifelse($5, , , AC_DEFINE($5))]))])
++
diff --git a/meta/recipes-devtools/openjade/openjade-1.3.2/makefile.patch b/meta/recipes-devtools/openjade/openjade-1.3.2/makefile.patch
new file mode 100644
index 0000000..ac5c744
--- /dev/null
+++ b/meta/recipes-devtools/openjade/openjade-1.3.2/makefile.patch
@@ -0,0 +1,34 @@
+Patch obtained from OpenEmbedded.
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+Index: openjade-1.3.2/spgrove/Makefile.sub
+===================================================================
+--- openjade-1.3.2.orig/spgrove/Makefile.sub
++++ openjade-1.3.2/spgrove/Makefile.sub
+@@ -1,8 +1,8 @@
+ LTVERSION=0:1:0
+ LIB=ospgrove
+ INCLUDE=-I$(srcdir)/../grove
+-DEPLIBS=-lm -L$(TOP)/grove -L$(TOP)/grove/.libs \
+-	-L$(TOP)/lib -L$(TOP)/lib/.libs \
++DEPLIBS=-lm $(TOP)/grove \
++	$(TOP)/lib \
+ 	$(LIB_THREADS)
+ OBJS=GroveApp.o GroveBuilder.o SdNode.o
+ GENSRCS=grove_inst.cxx
+Index: openjade-1.3.2/style/Makefile.sub
+===================================================================
+--- openjade-1.3.2.orig/style/Makefile.sub
++++ openjade-1.3.2/style/Makefile.sub
+@@ -1,8 +1,8 @@
+ LTVERSION=0:1:0
+ LIB=ostyle
+-DEPLIBS=-lm -L$(TOP)/grove -L$(TOP)/grove/.libs \
+-  -L$(TOP)/lib -L$(TOP)/lib/.libs \
+-  -L$(TOP)/spgrove -L$(TOP)/spgrove/.libs 
++DEPLIBS=-lm $(TOP)/grove \
++  $(TOP)/lib  \
++  $(TOP)/spgrove
+ OBJS=LangObj.o \
+   Collector.o \
+   DssslApp.o \
diff --git a/meta/recipes-devtools/openjade/openjade-1.3.2/oj-native-libosp-fix.patch b/meta/recipes-devtools/openjade/openjade-1.3.2/oj-native-libosp-fix.patch
new file mode 100644
index 0000000..48e3804
--- /dev/null
+++ b/meta/recipes-devtools/openjade/openjade-1.3.2/oj-native-libosp-fix.patch
@@ -0,0 +1,15 @@
+Patch obtained from OpenEmbedded.
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+Index: openjade-1.3.2/Makefile.prog.in
+===================================================================
+--- openjade-1.3.2.orig/Makefile.prog.in	2007-12-21 14:48:00.000000000 +0100
++++ openjade-1.3.2/Makefile.prog.in	2007-12-21 14:50:12.000000000 +0100
+@@ -13,6 +13,7 @@
+ ALL_LIBS = $(XLIBS) $(LIBS)
+ Makefile.lt:
+ 	echo 'LT_LIBS='`echo $(ALL_LIBS)|sed 's/\.a/.la/g'` >Makefile.lt
++	sed -i -e "s|libosp.la|libosp.so|" Makefile.lt
+ 
+ PROG:=$(shell echo "$(PROG)" | sed '@program_transform_name@')
+ 
diff --git a/meta/recipes-devtools/openjade/openjade_1.3.2.bb b/meta/recipes-devtools/openjade/openjade_1.3.2.bb
new file mode 100644
index 0000000..f2ad8ae
--- /dev/null
+++ b/meta/recipes-devtools/openjade/openjade_1.3.2.bb
@@ -0,0 +1,66 @@
+SUMMARY = "Tools for working with DSSSL stylesheets for SGML and XML documents"
+DESCRIPTION = "OpenJade is a suite of tools for validating, \
+processing, and applying DSSSL (Document Style Semantics and \
+Specification Language) stylesheets to SGML and XML documents."
+HOMEPAGE = "http://openjade.sourceforge.net"
+SECTION = "base"
+LICENSE = "BSD"
+LIC_FILES_CHKSUM = "file://COPYING;md5=641ff1e4511f0a87044ad42f87cb1045"
+
+PR = "r0"
+
+DEPENDS = "opensp"
+RDEPENDS_${PN} = "sgml-common"
+
+SRC_URI = "${SOURCEFORGE_MIRROR}/openjade/openjade-${PV}.tar.gz \
+           file://configure.patch \
+           file://autoconf.patch \
+           file://makefile.patch \
+          "
+
+SRC_URI[md5sum] = "7df692e3186109cc00db6825b777201e"
+SRC_URI[sha256sum] = "1d2d7996cc94f9b87d0c51cf0e028070ac177c4123ecbfd7ac1cb8d0b7d322d1"
+
+SRC_URI_append_virtclass-native = " file://oj-native-libosp-fix.patch"
+
+inherit autotools
+
+EXTRA_OECONF = "--enable-spincludedir=${STAGING_INCDIR}/OpenSP \
+                --enable-splibdir=${STAGING_LIBDIR}"
+
+acpaths = "-I ${S}/config"
+
+# Trailing whitespace is important. Otherwise compiler arguments will be messed
+# up, resulting in a fail in do_configure.
+CFLAGS_prepend = "-I${S}/include "
+
+do_configure_append () {
+	cp config/configure.in .
+}
+
+do_install_append () {
+	# Refer to http://www.linuxfromscratch.org/blfs/view/stable/pst/openjade.html
+	# for details.
+	install -m 0755 ${S}/jade/.libs/openjade ${D}${bindir}/openjade
+	ln -sf openjade ${D}${bindir}/jade
+
+	oe_libinstall -a -so -C style libostyle ${D}${libdir}
+	oe_libinstall -a -so -C spgrove libospgrove ${D}${libdir}
+	oe_libinstall -a -so -C grove libogrove ${D}${libdir}
+
+	install -d ${D}${datadir}/sgml/openjade-${PV}
+	install -m 644 dsssl/catalog ${D}${datadir}/sgml/openjade-${PV}
+	install -m 644 dsssl/*.{dtd,dsl,sgm} ${D}${datadir}/sgml/openjade-${PV}
+
+	# The catalog must live in the sysroot and it must be there for
+	# install-catalog to do its thing.
+	install -d ${datadir}/sgml/openjade-${PV}
+	install -m 644 dsssl/catalog ${datadir}/sgml/openjade-${PV}/catalog
+	install-catalog --add ${sysconfdir}/sgml/openjade-${PV}.cat \
+		${datadir}/sgml/openjade-${PV}/catalog
+
+	install-catalog --add ${sysconfdir}/sgml/sgml-docbook.cat \
+		${sysconfdir}/sgml/openjade-${PV}.cat
+}
+
+BBCLASSEXTEND = "native"
-- 
1.7.3.5


