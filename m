Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DC21E01422
	for <poky@yoctoproject.org>; Mon, 18 Jun 2012 12:56:48 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id CE00530461
	for <poky@yoctoproject.org>; Mon, 18 Jun 2012 15:56:40 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 18 Jun 2012 12:56:34 -0700
Message-Id: <f99f08f4b05d3d205e3ed12b6b2f5735382ee75b.1340038494.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1340038493.git.scott.a.garman@intel.com>
References: <cover.1340038493.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1340038493.git.scott.a.garman@intel.com>
References: <cover.1340038493.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: CE00530461.9497F
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 2/8] openjade-native: Ensure we reautoconf the package
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
X-List-Received-Date: Mon, 18 Jun 2012 19:56:48 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Currently since configure.in in is in a subdirectory, we don't reautoconf the
recipe. We really need to do this, to update things like the libtool script used
and fix various issues such as those that could creep in if a reautoconf is
triggered for some reason. Since this source only calls AM_INIT_AUTOMAKE to gain the
PACKAGE and VERSION definitions and that macro now errors if Makefile.am doesn't
exist, we need to add these definitions manually.

These changes avoid failures like:

----
| ...
| DssslApp.cxx:117:36: error: 'PACKAGE' was not declared in this scope
| DssslApp.cxx:118:36: error: 'VERSION' was not declared in this scope
| make[2]: *** [DssslApp.lo] Error 1
----

(From OE-Core rev: 6f0d830ed047f700702645d454054dfd6fea6f25)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../openjade/openjade-1.3.2/reautoconf.patch       |   83 ++++++++++++++++++++
 .../openjade/openjade-native_1.3.2.bb              |    5 ++
 2 files changed, 88 insertions(+)
 create mode 100644 meta/recipes-devtools/openjade/openjade-1.3.2/reautoconf.patch

diff --git a/meta/recipes-devtools/openjade/openjade-1.3.2/reautoconf.patch b/meta/recipes-devtools/openjade/openjade-1.3.2/reautoconf.patch
new file mode 100644
index 0000000..1a23a4a
--- /dev/null
+++ b/meta/recipes-devtools/openjade/openjade-1.3.2/reautoconf.patch
@@ -0,0 +1,83 @@
+Ensure we reautoconf the packag
+
+Currently since configure.in in is in a subdirectory, we don't reautoconf the 
+recipe. We really need to do this, to update things like the libtool script used
+and fix various issues such as those that could creep in if a reautoconf is 
+triggered for some reason. Since this source only calls AM_INIT_AUTOMAKE to 
+gain the PACKAGE and VERSION definitions and that macro now errors if Makefile.am 
+doesn't exist, we need to add these definitions manually. 
+
+These changes avoid failures like: 
+---- 
+| ... 
+| DssslApp.cxx:117:36: error: 'PACKAGE' was not declared in this scope 
+| DssslApp.cxx:118:36: error: 'VERSION' was not declared in this scope 
+| make[2]: *** [DssslApp.lo] Error 1 ----
+
+Upstream-Status: Pending
+
+RP 2012/6/12
+
+Index: openjade-1.3.2/acinclude.m4
+===================================================================
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ openjade-1.3.2/acinclude.m4	2012-06-12 12:48:54.871365344 +0000
+@@ -0,0 +1,39 @@
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
+Index: openjade-1.3.2/config/configure.in
+===================================================================
+--- openjade-1.3.2.orig/config/configure.in	2012-06-12 12:47:20.735365445 +0000
++++ openjade-1.3.2/config/configure.in	2012-06-12 12:48:17.507364080 +0000
+@@ -12,9 +12,12 @@
+ dnl  Credits: this autoconf script was largely "inspired" <g> by the
+ dnl  autoconf script around SP made by Henry Thompson.
+ dnl
+-AC_INIT(dsssl)
++AC_INIT([openjade], [1.3.2])
+ AC_CONFIG_AUX_DIR(config)
+-AM_INIT_AUTOMAKE( openjade, 1.3.2)
++AC_SUBST([PACKAGE], [openjade])
++AC_SUBST([VERSION], [1.3.2])
++AC_DEFINE_UNQUOTED(PACKAGE, "$PACKAGE")
++AC_DEFINE_UNQUOTED(VERSION, "$VERSION")
+ TOP=`pwd`
+ AC_SUBST(TOP)
+ dnl
diff --git a/meta/recipes-devtools/openjade/openjade-native_1.3.2.bb b/meta/recipes-devtools/openjade/openjade-native_1.3.2.bb
index 18d311e..5b29c1f 100644
--- a/meta/recipes-devtools/openjade/openjade-native_1.3.2.bb
+++ b/meta/recipes-devtools/openjade/openjade-native_1.3.2.bb
@@ -14,6 +14,7 @@ RDEPENDS_${PN} = "sgml-common-native"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/openjade/openjade-${PV}.tar.gz \
            file://makefile.patch \
+           file://reautoconf.patch \
 	   file://user-declared-default-constructor.patch"
 
 SRC_URI[md5sum] = "7df692e3186109cc00db6825b777201e"
@@ -38,6 +39,10 @@ CFLAGS =+ "-I${S}/include"
 SSTATEPOSTINSTFUNCS += "openjade_sstate_postinst"
 SYSROOT_PREPROCESS_FUNCS += "openjade_sysroot_preprocess"
 
+# configure.in needs to be reloacted to trigger reautoconf
+do_configure_prepend () {
+	cp ${S}/config/configure.in ${S}/
+}
 
 # We need to do this else the source interdependencies aren't generated and
 # build failures can result (e.g. zero size style/Makefile.dep file)
-- 
1.7.9.5


