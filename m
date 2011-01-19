Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 835474C811AE
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 22:19:44 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id A3A23304EA
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 23:19:39 -0500 (EST)
Message-Id: <9353d0517633d5580387f4cee0c24cf17b6b826f.1295410231.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1295410231.git.scott.a.garman@intel.com>
References: <cover.1295410231.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Tue, 21 Dec 2010 10:46:15 -0800
Date: Tue, 18 Jan 2011 20:19:37 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: A3A23304EA.99420
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 1/9] libtool: changes to enable sysroot support
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
X-List-Received-Date: Wed, 19 Jan 2011 04:19:44 -0000

* Added OE patches by Khem Raj which enable sysroot support
  and rename the command line option --with-sysroot to
  --with-libtool-sysroot to avoid conflicts with binutils and
  gcc
* Stage the -cross and -native libtool in the same relative path
  so it can be accessed equally well from recipes using
  BBCLASSEXTEND = "native"
* Removed obsolete cross_compile.patch
* Reorganized common things to libtool.inc
* Changed SRC_URI_append to SRC_URI +=
* PR bump for all recipes

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-devtools/libtool/libtool-cross_2.4.bb |   18 +-
 .../recipes-devtools/libtool/libtool-native_2.4.bb |   14 +-
 .../libtool/libtool-nativesdk_2.4.bb               |   10 +-
 meta/recipes-devtools/libtool/libtool.inc          |   21 +-
 .../libtool/libtool/cross_compile.patch            |   38 -
 .../libtool/libtool/rename-with-sysroot.patch      |  824 ++++++++++++++++++++
 .../libtool/libtool/resolve-sysroot.patch          |   40 +
 .../libtool/libtool/use-sysroot-in-libpath.patch   |   20 +
 meta/recipes-devtools/libtool/libtool_2.4.bb       |   12 +-
 9 files changed, 927 insertions(+), 70 deletions(-)
 delete mode 100644 meta/recipes-devtools/libtool/libtool/cross_compile.patch
 create mode 100644 meta/recipes-devtools/libtool/libtool/rename-with-sysroot.patch
 create mode 100644 meta/recipes-devtools/libtool/libtool/resolve-sysroot.patch
 create mode 100644 meta/recipes-devtools/libtool/libtool/use-sysroot-in-libpath.patch

diff --git a/meta/recipes-devtools/libtool/libtool-cross_2.4.bb b/meta/recipes-devtools/libtool/libtool-cross_2.4.bb
index 6ea96a5..91ab64b 100644
--- a/meta/recipes-devtools/libtool/libtool-cross_2.4.bb
+++ b/meta/recipes-devtools/libtool/libtool-cross_2.4.bb
@@ -1,9 +1,10 @@
-require libtool_${PV}.bb
+require libtool.inc
 
-PR = "r0"
-PACKAGES = ""
-SRC_URI_append = " file://cross_compile.patch \
-		   file://prefix.patch "
+PR = "r1"
+SRC_URI += "file://prefix.patch"
+
+SRC_URI[md5sum] = "b32b04148ecdd7344abc6fe8bd1bb021"
+SRC_URI[sha256sum] = "13df57ab63a94e196c5d6e95d64e53262834fe780d5e82c28f177f9f71ddf62e"
 
 DEPENDS += "libtool-native"
 
@@ -18,10 +19,11 @@ do_install () {
 	install -d ${D}${bindir}/
 	install -m 0755 ${HOST_SYS}-libtool ${D}${bindir}/${HOST_SYS}-libtool
 	install -d ${D}${datadir}/libtool/
+	install -d ${D}${datadir}/libtool/config
 	install -d ${D}${datadir}/aclocal/
-	install -c ${S}/libltdl/config/config.guess ${D}${datadir}/libtool/
-	install -c ${S}/libltdl/config/config.sub ${D}${datadir}/libtool/
-	install -c -m 0644 ${S}/libltdl/config/ltmain.sh ${D}${datadir}/libtool/
+	install -c ${S}/libltdl/config/config.guess ${D}${datadir}/libtool/config/
+	install -c ${S}/libltdl/config/config.sub ${D}${datadir}/libtool/config/
+	install -c -m 0644 ${S}/libltdl/config/ltmain.sh ${D}${datadir}/libtool/config/
 	install -c -m 0644 ${S}/libltdl/m4/libtool.m4 ${D}${datadir}/aclocal/
 	install -c -m 0644 ${S}/libltdl/m4/ltdl.m4 ${D}${datadir}/aclocal/
 }
diff --git a/meta/recipes-devtools/libtool/libtool-native_2.4.bb b/meta/recipes-devtools/libtool/libtool-native_2.4.bb
index 4ad660b..014c9fa 100644
--- a/meta/recipes-devtools/libtool/libtool-native_2.4.bb
+++ b/meta/recipes-devtools/libtool/libtool-native_2.4.bb
@@ -1,13 +1,17 @@
-require libtool_${PV}.bb
+require libtool.inc
 
 DEPENDS = ""
 
-PR = "r0"
-SRC_URI_append = " file://cross_compile.patch \
-		   file://prefix.patch "
+PR = "r1"
+SRC_URI += "file://prefix.patch"
+
+SRC_URI[md5sum] = "b32b04148ecdd7344abc6fe8bd1bb021"
+SRC_URI[sha256sum] = "13df57ab63a94e196c5d6e95d64e53262834fe780d5e82c28f177f9f71ddf62e"
 
 inherit native
 
+EXTRA_OECONF = " --with-libtool-sysroot=${STAGING_DIR_NATIVE}"
+
 do_configure_prepend () {
 	# Remove any existing libtool m4 since old stale versions would break
 	# any upgrade
@@ -21,5 +25,3 @@ do_install () {
 	install -m 0755 ${HOST_SYS}-libtool ${D}${bindir}/${HOST_SYS}-libtool
 }
 
-SRC_URI[md5sum] = "b32b04148ecdd7344abc6fe8bd1bb021"
-SRC_URI[sha256sum] = "13df57ab63a94e196c5d6e95d64e53262834fe780d5e82c28f177f9f71ddf62e"
diff --git a/meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb b/meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb
index c9f24a9..d4d075f 100644
--- a/meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb
+++ b/meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb
@@ -1,8 +1,12 @@
 require libtool_${PV}.bb
 
-PR = "r0"
-SRC_URI_append = " file://cross_compile.patch \
-		   file://prefix.patch "
+# Let nativesdk recipe not provide PACKAGES provided by libtool.
+# Otherwise when an image wants say libltdl-dev, it picks up
+# libtool-nativesdk instead of libtool recipe to provide it.
+PACKAGES = ""
+
+PR = "r1"
+SRC_URI += "file://prefix.patch"
 
 inherit nativesdk
 
diff --git a/meta/recipes-devtools/libtool/libtool.inc b/meta/recipes-devtools/libtool/libtool.inc
index 9690e3b..bccb769 100644
--- a/meta/recipes-devtools/libtool/libtool.inc
+++ b/meta/recipes-devtools/libtool/libtool.inc
@@ -1,14 +1,25 @@
 SUMMARY = "Generic library support script"
-DESCRIPTION = "This is GNU libtool, a generic library support script.  Libtool hides \
-the complexity of generating special library types (such as shared \
-libraries) behind a consistent interface."
+DESCRIPTION = "This is GNU libtool, a generic library support script. \
+Libtool hides the complexity of generating special library types \
+(such as shared libraries) behind a consistent interface."
 HOMEPAGE = "http://www.gnu.org/software/libtool/libtool.html"
 SECTION = "devel"
 LICENSE = "GPLv2, LGPLv2.1"
 LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
-    file://libltdl/COPYING.LIB;md5=e3eda01d9815f8d24aae2dbd89b68b06 "
+    file://libltdl/COPYING.LIB;md5=e3eda01d9815f8d24aae2dbd89b68b06"
 
 SRC_URI = "${GNU_MIRROR}/libtool/libtool-${PV}.tar.gz \
            file://trailingslash.patch \
-           file://prefix-manpage-fix.patch "
+           file://prefix-manpage-fix.patch \
+           file://rename-with-sysroot.patch \
+           file://resolve-sysroot.patch \
+           file://use-sysroot-in-libpath.patch"
 
+do_compile_prepend () {
+	# Sometimes this file doesn't get rebuilt, force the issue
+	rm -f ${S}/libltdl/config/ltmain.sh
+	make libltdl/config/ltmain.sh
+}
+
+inherit autotools
+EXTRA_AUTORECONF = "--exclude=libtoolize"
diff --git a/meta/recipes-devtools/libtool/libtool/cross_compile.patch b/meta/recipes-devtools/libtool/libtool/cross_compile.patch
deleted file mode 100644
index 28539ff..0000000
--- a/meta/recipes-devtools/libtool/libtool/cross_compile.patch
+++ /dev/null
@@ -1,38 +0,0 @@
-Tweaks to make cross-compiling work combined and updated from various
-older patches, some by Chris Larson.
-Not upstreable in this form.
-
-RP - 01/05/2008
-
-Index: libtool-2.4/libltdl/config/ltmain.m4sh
-===================================================================
---- libtool-2.4.orig/libltdl/config/ltmain.m4sh
-+++ libtool-2.4/libltdl/config/ltmain.m4sh
-@@ -6121,8 +6121,6 @@ func_mode_link ()
- 		add="$libdir/$linklib"
- 	      fi
- 	    else
--	      # We cannot seem to hardcode it, guess we'll fake it.
--	      add_dir="-L$libdir"
- 	      # Try looking first in the location we're being installed to.
- 	      if test -n "$inst_prefix_dir"; then
- 		case $libdir in
-@@ -6277,7 +6275,17 @@ func_mode_link ()
- 		  fi
- 		  ;;
- 		*)
--		  path="-L$absdir/$objdir"
-+                  # OE sets installed=no in staging. We need to look in $objdir and $absdir, 
-+                  # preferring $objdir. RP 31/04/2008
-+                  if test -f "$absdir/$objdir/$depdepl" ; then
-+		    depdepl="$absdir/$objdir/$depdepl"
-+		    path="-L$absdir/$objdir"
-+                  elif test -f "$absdir/$depdepl" ; then
-+		    depdepl="$absdir/$depdepl"
-+		    path="-L$absdir"
-+                  else
-+		    path="-L$absdir/$objdir"
-+                  fi
- 		  ;;
- 		esac
- 		else
diff --git a/meta/recipes-devtools/libtool/libtool/rename-with-sysroot.patch b/meta/recipes-devtools/libtool/libtool/rename-with-sysroot.patch
new file mode 100644
index 0000000..8455d95
--- /dev/null
+++ b/meta/recipes-devtools/libtool/libtool/rename-with-sysroot.patch
@@ -0,0 +1,824 @@
+This patch renames the --with-sysroot option to --with-libtool-sysroot
+to avoid namespace conflict with binutils, gcc and other toolchain
+components.
+
+I also reported the problem to libtool here
+
+http://lists.gnu.org/archive/html/libtool/2010-10/msg00048.html
+
+-Khem Raj <raj.khem@gmail.com>
+
+Index: libtool-2.4/configure
+===================================================================
+--- libtool-2.4.orig/configure
++++ libtool-2.4/configure
+@@ -786,7 +786,7 @@ enable_static
+ with_pic
+ enable_fast_install
+ with_gnu_ld
+-with_sysroot
++with_libtool_sysroot
+ enable_libtool_lock
+ with_gnu_ld
+ '
+@@ -1451,7 +1451,7 @@ Optional Packages:
+   --with-pic              try to use only PIC/non-PIC objects [default=use
+                           both]
+   --with-gnu-ld           assume the C compiler uses GNU ld [default=no]
+-  --with-sysroot=DIR Search for dependent libraries within DIR
++  --with-libtool-sysroot=DIR Search for dependent libraries within DIR
+                         (or the compiler's sysroot if not specified).
+ 
+ Some influential environment variables:
+@@ -6798,29 +6798,29 @@ fi
+ { $as_echo "$as_me:${as_lineno-$LINENO}: checking for sysroot" >&5
+ $as_echo_n "checking for sysroot... " >&6; }
+ 
+-# Check whether --with-sysroot was given.
+-if test "${with_sysroot+set}" = set; then :
+-  withval=$with_sysroot;
++# Check whether --with-libtool-sysroot was given.
++if test "${with_libtool_sysroot+set}" = set; then :
++  withval=$with_libtool_sysroot;
+ else
+-  with_sysroot=no
++  with_libtool_sysroot=no
+ fi
+ 
+ 
+ lt_sysroot=
+-case ${with_sysroot} in #(
++case ${with_libtool_sysroot} in #(
+  yes)
+    if test "$GCC" = yes; then
+      lt_sysroot=`$CC --print-sysroot 2>/dev/null`
+    fi
+    ;; #(
+  /*)
+-   lt_sysroot=`echo "$with_sysroot" | sed -e "$sed_quote_subst"`
++   lt_sysroot=`echo "$with_libtool_sysroot" | sed -e "$sed_quote_subst"`
+    ;; #(
+  no|'')
+    ;; #(
+  *)
+-   { $as_echo "$as_me:${as_lineno-$LINENO}: result: ${with_sysroot}" >&5
+-$as_echo "${with_sysroot}" >&6; }
++   { $as_echo "$as_me:${as_lineno-$LINENO}: result: ${with_libtool_sysroot}" >&5
++$as_echo "${with_libtool_sysroot}" >&6; }
+    as_fn_error $? "The sysroot must be an absolute path." "$LINENO" 5
+    ;;
+ esac
+Index: libtool-2.4/libltdl/configure
+===================================================================
+--- libtool-2.4.orig/libltdl/configure
++++ libtool-2.4/libltdl/configure
+@@ -739,7 +739,7 @@ with_pic
+ enable_fast_install
+ enable_dependency_tracking
+ with_gnu_ld
+-with_sysroot
++with_libtool_sysroot
+ enable_libtool_lock
+ enable_ltdl_install
+ '
+@@ -1388,7 +1388,7 @@ Optional Packages:
+   --with-pic              try to use only PIC/non-PIC objects [default=use
+                           both]
+   --with-gnu-ld           assume the C compiler uses GNU ld [default=no]
+-  --with-sysroot=DIR Search for dependent libraries within DIR
++  --with-libtool-sysroot=DIR Search for dependent libraries within DIR
+                         (or the compiler's sysroot if not specified).
+ 
+ Some influential environment variables:
+@@ -6004,29 +6004,29 @@ fi
+ { $as_echo "$as_me:${as_lineno-$LINENO}: checking for sysroot" >&5
+ $as_echo_n "checking for sysroot... " >&6; }
+ 
+-# Check whether --with-sysroot was given.
+-if test "${with_sysroot+set}" = set; then :
+-  withval=$with_sysroot;
++# Check whether --with-libtool-sysroot was given.
++if test "${with_libtool_sysroot+set}" = set; then :
++  withval=$with_libtool_sysroot;
+ else
+-  with_sysroot=no
++  with_libtool_sysroot=no
+ fi
+ 
+ 
+ lt_sysroot=
+-case ${with_sysroot} in #(
++case ${with_libtool_sysroot} in #(
+  yes)
+    if test "$GCC" = yes; then
+      lt_sysroot=`$CC --print-sysroot 2>/dev/null`
+    fi
+    ;; #(
+  /*)
+-   lt_sysroot=`echo "$with_sysroot" | sed -e "$sed_quote_subst"`
++   lt_sysroot=`echo "$with_libtool_sysroot" | sed -e "$sed_quote_subst"`
+    ;; #(
+  no|'')
+    ;; #(
+  *)
+-   { $as_echo "$as_me:${as_lineno-$LINENO}: result: ${with_sysroot}" >&5
+-$as_echo "${with_sysroot}" >&6; }
++   { $as_echo "$as_me:${as_lineno-$LINENO}: result: ${with_libtool_sysroot}" >&5
++$as_echo "${with_libtool_sysroot}" >&6; }
+    as_fn_error $? "The sysroot must be an absolute path." "$LINENO" 5
+    ;;
+ esac
+Index: libtool-2.4/libltdl/m4/libtool.m4
+===================================================================
+--- libtool-2.4.orig/libltdl/m4/libtool.m4
++++ libtool-2.4/libltdl/m4/libtool.m4
+@@ -1180,27 +1180,27 @@ _LT_DECL([], [ECHO], [1], [An echo progr
+ # ----------------
+ AC_DEFUN([_LT_WITH_SYSROOT],
+ [AC_MSG_CHECKING([for sysroot])
+-AC_ARG_WITH([sysroot],
+-[  --with-sysroot[=DIR] Search for dependent libraries within DIR
++AC_ARG_WITH([libtool-sysroot],
++[  --with-libtool-sysroot[=DIR] Search for dependent libraries within DIR
+                         (or the compiler's sysroot if not specified).],
+-[], [with_sysroot=no])
++[], [with_libtool_sysroot=no])
+ 
+ dnl lt_sysroot will always be passed unquoted.  We quote it here
+ dnl in case the user passed a directory name.
+ lt_sysroot=
+-case ${with_sysroot} in #(
++case ${with_libtool_sysroot} in #(
+  yes)
+    if test "$GCC" = yes; then
+      lt_sysroot=`$CC --print-sysroot 2>/dev/null`
+    fi
+    ;; #(
+  /*)
+-   lt_sysroot=`echo "$with_sysroot" | sed -e "$sed_quote_subst"`
++   lt_sysroot=`echo "$with_libtool_sysroot" | sed -e "$sed_quote_subst"`
+    ;; #(
+  no|'')
+    ;; #(
+  *)
+-   AC_MSG_RESULT([${with_sysroot}])
++   AC_MSG_RESULT([${with_libtool_sysroot}])
+    AC_MSG_ERROR([The sysroot must be an absolute path.])
+    ;;
+ esac
+Index: libtool-2.4/tests/cdemo/configure
+===================================================================
+--- libtool-2.4.orig/tests/cdemo/configure
++++ libtool-2.4/tests/cdemo/configure
+@@ -726,7 +726,7 @@ enable_static
+ with_pic
+ enable_fast_install
+ with_gnu_ld
+-with_sysroot
++with_libtool_sysroot
+ enable_libtool_lock
+ '
+       ac_precious_vars='build_alias
+@@ -1373,7 +1373,7 @@ Optional Packages:
+   --with-pic              try to use only PIC/non-PIC objects [default=use
+                           both]
+   --with-gnu-ld           assume the C compiler uses GNU ld [default=no]
+-  --with-sysroot=DIR Search for dependent libraries within DIR
++  --with-libtool-sysroot=DIR Search for dependent libraries within DIR
+                         (or the compiler's sysroot if not specified).
+ 
+ Some influential environment variables:
+@@ -5884,29 +5884,29 @@ fi
+ { $as_echo "$as_me:${as_lineno-$LINENO}: checking for sysroot" >&5
+ $as_echo_n "checking for sysroot... " >&6; }
+ 
+-# Check whether --with-sysroot was given.
+-if test "${with_sysroot+set}" = set; then :
+-  withval=$with_sysroot;
++# Check whether --with-libtool-sysroot was given.
++if test "${with_libtool_sysroot+set}" = set; then :
++  withval=$with_libtool_sysroot;
+ else
+-  with_sysroot=no
++  with_libtool_sysroot=no
+ fi
+ 
+ 
+ lt_sysroot=
+-case ${with_sysroot} in #(
++case ${with_libtool_sysroot} in #(
+  yes)
+    if test "$GCC" = yes; then
+      lt_sysroot=`$CC --print-sysroot 2>/dev/null`
+    fi
+    ;; #(
+  /*)
+-   lt_sysroot=`echo "$with_sysroot" | sed -e "$sed_quote_subst"`
++   lt_sysroot=`echo "$with_libtool_sysroot" | sed -e "$sed_quote_subst"`
+    ;; #(
+  no|'')
+    ;; #(
+  *)
+-   { $as_echo "$as_me:${as_lineno-$LINENO}: result: ${with_sysroot}" >&5
+-$as_echo "${with_sysroot}" >&6; }
++   { $as_echo "$as_me:${as_lineno-$LINENO}: result: ${with_libtool_sysroot}" >&5
++$as_echo "${with_libtool_sysroot}" >&6; }
+    as_fn_error $? "The sysroot must be an absolute path." "$LINENO" 5
+    ;;
+ esac
+Index: libtool-2.4/tests/demo/configure
+===================================================================
+--- libtool-2.4.orig/tests/demo/configure
++++ libtool-2.4/tests/demo/configure
+@@ -730,7 +730,7 @@ enable_static
+ with_pic
+ enable_fast_install
+ with_gnu_ld
+-with_sysroot
++with_libtool_sysroot
+ enable_libtool_lock
+ '
+       ac_precious_vars='build_alias
+@@ -1377,7 +1377,7 @@ Optional Packages:
+   --with-pic              try to use only PIC/non-PIC objects [default=use
+                           both]
+   --with-gnu-ld           assume the C compiler uses GNU ld [default=no]
+-  --with-sysroot=DIR Search for dependent libraries within DIR
++  --with-libtool-sysroot=DIR Search for dependent libraries within DIR
+                         (or the compiler's sysroot if not specified).
+ 
+ Some influential environment variables:
+@@ -5882,29 +5882,29 @@ fi
+ { $as_echo "$as_me:${as_lineno-$LINENO}: checking for sysroot" >&5
+ $as_echo_n "checking for sysroot... " >&6; }
+ 
+-# Check whether --with-sysroot was given.
+-if test "${with_sysroot+set}" = set; then :
+-  withval=$with_sysroot;
++# Check whether --with-libtool-sysroot was given.
++if test "${with_libtool_sysroot+set}" = set; then :
++  withval=$with_libtool_sysroot;
+ else
+-  with_sysroot=no
++  with_libtool_sysroot=no
+ fi
+ 
+ 
+ lt_sysroot=
+-case ${with_sysroot} in #(
++case ${with_libtool_sysroot} in #(
+  yes)
+    if test "$GCC" = yes; then
+      lt_sysroot=`$CC --print-sysroot 2>/dev/null`
+    fi
+    ;; #(
+  /*)
+-   lt_sysroot=`echo "$with_sysroot" | sed -e "$sed_quote_subst"`
++   lt_sysroot=`echo "$with_libtool_sysroot" | sed -e "$sed_quote_subst"`
+    ;; #(
+  no|'')
+    ;; #(
+  *)
+-   { $as_echo "$as_me:${as_lineno-$LINENO}: result: ${with_sysroot}" >&5
+-$as_echo "${with_sysroot}" >&6; }
++   { $as_echo "$as_me:${as_lineno-$LINENO}: result: ${with_libtool_sysroot}" >&5
++$as_echo "${with_libtool_sysroot}" >&6; }
+    as_fn_error $? "The sysroot must be an absolute path." "$LINENO" 5
+    ;;
+ esac
+Index: libtool-2.4/tests/depdemo/configure
+===================================================================
+--- libtool-2.4.orig/tests/depdemo/configure
++++ libtool-2.4/tests/depdemo/configure
+@@ -728,7 +728,7 @@ enable_static
+ with_pic
+ enable_fast_install
+ with_gnu_ld
+-with_sysroot
++with_libtool_sysroot
+ enable_libtool_lock
+ '
+       ac_precious_vars='build_alias
+@@ -1375,7 +1375,7 @@ Optional Packages:
+   --with-pic              try to use only PIC/non-PIC objects [default=use
+                           both]
+   --with-gnu-ld           assume the C compiler uses GNU ld [default=no]
+-  --with-sysroot=DIR Search for dependent libraries within DIR
++  --with-libtool-sysroot=DIR Search for dependent libraries within DIR
+                         (or the compiler's sysroot if not specified).
+ 
+ Some influential environment variables:
+@@ -5879,29 +5879,29 @@ fi
+ { $as_echo "$as_me:${as_lineno-$LINENO}: checking for sysroot" >&5
+ $as_echo_n "checking for sysroot... " >&6; }
+ 
+-# Check whether --with-sysroot was given.
+-if test "${with_sysroot+set}" = set; then :
+-  withval=$with_sysroot;
++# Check whether --with-libtool-sysroot was given.
++if test "${with_libtool_sysroot+set}" = set; then :
++  withval=$with_libtool_sysroot;
+ else
+-  with_sysroot=no
++  with_libtool_sysroot=no
+ fi
+ 
+ 
+ lt_sysroot=
+-case ${with_sysroot} in #(
++case ${with_libtool_sysroot} in #(
+  yes)
+    if test "$GCC" = yes; then
+      lt_sysroot=`$CC --print-sysroot 2>/dev/null`
+    fi
+    ;; #(
+  /*)
+-   lt_sysroot=`echo "$with_sysroot" | sed -e "$sed_quote_subst"`
++   lt_sysroot=`echo "$with_libtool_sysroot" | sed -e "$sed_quote_subst"`
+    ;; #(
+  no|'')
+    ;; #(
+  *)
+-   { $as_echo "$as_me:${as_lineno-$LINENO}: result: ${with_sysroot}" >&5
+-$as_echo "${with_sysroot}" >&6; }
++   { $as_echo "$as_me:${as_lineno-$LINENO}: result: ${with_libtool_sysroot}" >&5
++$as_echo "${with_libtool_sysroot}" >&6; }
+    as_fn_error $? "The sysroot must be an absolute path." "$LINENO" 5
+    ;;
+ esac
+Index: libtool-2.4/tests/f77demo/configure
+===================================================================
+--- libtool-2.4.orig/tests/f77demo/configure
++++ libtool-2.4/tests/f77demo/configure
+@@ -730,7 +730,7 @@ enable_static
+ with_pic
+ enable_fast_install
+ with_gnu_ld
+-with_sysroot
++with_libtool_sysroot
+ enable_libtool_lock
+ '
+       ac_precious_vars='build_alias
+@@ -1382,7 +1382,7 @@ Optional Packages:
+   --with-pic              try to use only PIC/non-PIC objects [default=use
+                           both]
+   --with-gnu-ld           assume the C compiler uses GNU ld [default=no]
+-  --with-sysroot=DIR Search for dependent libraries within DIR
++  --with-libtool-sysroot=DIR Search for dependent libraries within DIR
+                         (or the compiler's sysroot if not specified).
+ 
+ Some influential environment variables:
+@@ -6864,29 +6864,29 @@ fi
+ { $as_echo "$as_me:${as_lineno-$LINENO}: checking for sysroot" >&5
+ $as_echo_n "checking for sysroot... " >&6; }
+ 
+-# Check whether --with-sysroot was given.
+-if test "${with_sysroot+set}" = set; then :
+-  withval=$with_sysroot;
++# Check whether --with-libtool-sysroot was given.
++if test "${with_libtool_sysroot+set}" = set; then :
++  withval=$with_libtool_sysroot;
+ else
+-  with_sysroot=no
++  with_libtool_sysroot=no
+ fi
+ 
+ 
+ lt_sysroot=
+-case ${with_sysroot} in #(
++case ${with_libtool_sysroot} in #(
+  yes)
+    if test "$GCC" = yes; then
+      lt_sysroot=`$CC --print-sysroot 2>/dev/null`
+    fi
+    ;; #(
+  /*)
+-   lt_sysroot=`echo "$with_sysroot" | sed -e "$sed_quote_subst"`
++   lt_sysroot=`echo "$with_libtool_sysroot" | sed -e "$sed_quote_subst"`
+    ;; #(
+  no|'')
+    ;; #(
+  *)
+-   { $as_echo "$as_me:${as_lineno-$LINENO}: result: ${with_sysroot}" >&5
+-$as_echo "${with_sysroot}" >&6; }
++   { $as_echo "$as_me:${as_lineno-$LINENO}: result: ${with_libtool_sysroot}" >&5
++$as_echo "${with_libtool_sysroot}" >&6; }
+    as_fn_error $? "The sysroot must be an absolute path." "$LINENO" 5
+    ;;
+ esac
+Index: libtool-2.4/tests/fcdemo/configure
+===================================================================
+--- libtool-2.4.orig/tests/fcdemo/configure
++++ libtool-2.4/tests/fcdemo/configure
+@@ -731,7 +731,7 @@ enable_static
+ with_pic
+ enable_fast_install
+ with_gnu_ld
+-with_sysroot
++with_libtool_sysroot
+ enable_libtool_lock
+ '
+       ac_precious_vars='build_alias
+@@ -1383,7 +1383,7 @@ Optional Packages:
+   --with-pic              try to use only PIC/non-PIC objects [default=use
+                           both]
+   --with-gnu-ld           assume the C compiler uses GNU ld [default=no]
+-  --with-sysroot=DIR Search for dependent libraries within DIR
++  --with-libtool-sysroot=DIR Search for dependent libraries within DIR
+                         (or the compiler's sysroot if not specified).
+ 
+ Some influential environment variables:
+@@ -6963,29 +6963,29 @@ fi
+ { $as_echo "$as_me:${as_lineno-$LINENO}: checking for sysroot" >&5
+ $as_echo_n "checking for sysroot... " >&6; }
+ 
+-# Check whether --with-sysroot was given.
+-if test "${with_sysroot+set}" = set; then :
+-  withval=$with_sysroot;
++# Check whether --with-libtool-sysroot was given.
++if test "${with_libtool_sysroot+set}" = set; then :
++  withval=$with_libtool_sysroot;
+ else
+-  with_sysroot=no
++  with_libtool_sysroot=no
+ fi
+ 
+ 
+ lt_sysroot=
+-case ${with_sysroot} in #(
++case ${with_libtool_sysroot} in #(
+  yes)
+    if test "$GCC" = yes; then
+      lt_sysroot=`$CC --print-sysroot 2>/dev/null`
+    fi
+    ;; #(
+  /*)
+-   lt_sysroot=`echo "$with_sysroot" | sed -e "$sed_quote_subst"`
++   lt_sysroot=`echo "$with_libtool_sysroot" | sed -e "$sed_quote_subst"`
+    ;; #(
+  no|'')
+    ;; #(
+  *)
+-   { $as_echo "$as_me:${as_lineno-$LINENO}: result: ${with_sysroot}" >&5
+-$as_echo "${with_sysroot}" >&6; }
++   { $as_echo "$as_me:${as_lineno-$LINENO}: result: ${with_libtool_sysroot}" >&5
++$as_echo "${with_libtool_sysroot}" >&6; }
+    as_fn_error $? "The sysroot must be an absolute path." "$LINENO" 5
+    ;;
+ esac
+Index: libtool-2.4/tests/mdemo/configure
+===================================================================
+--- libtool-2.4.orig/tests/mdemo/configure
++++ libtool-2.4/tests/mdemo/configure
+@@ -734,7 +734,7 @@ enable_static
+ with_pic
+ enable_fast_install
+ with_gnu_ld
+-with_sysroot
++with_libtool_sysroot
+ enable_libtool_lock
+ '
+       ac_precious_vars='build_alias
+@@ -1381,7 +1381,7 @@ Optional Packages:
+   --with-pic              try to use only PIC/non-PIC objects [default=use
+                           both]
+   --with-gnu-ld           assume the C compiler uses GNU ld [default=no]
+-  --with-sysroot=DIR Search for dependent libraries within DIR
++  --with-libtool-sysroot=DIR Search for dependent libraries within DIR
+                         (or the compiler's sysroot if not specified).
+ 
+ Some influential environment variables:
+@@ -5911,29 +5911,29 @@ fi
+ { $as_echo "$as_me:${as_lineno-$LINENO}: checking for sysroot" >&5
+ $as_echo_n "checking for sysroot... " >&6; }
+ 
+-# Check whether --with-sysroot was given.
+-if test "${with_sysroot+set}" = set; then :
+-  withval=$with_sysroot;
++# Check whether --with-libtool-sysroot was given.
++if test "${with_libtool_sysroot+set}" = set; then :
++  withval=$with_libtool_sysroot;
+ else
+-  with_sysroot=no
++  with_libtool_sysroot=no
+ fi
+ 
+ 
+ lt_sysroot=
+-case ${with_sysroot} in #(
++case ${with_libtool_sysroot} in #(
+  yes)
+    if test "$GCC" = yes; then
+      lt_sysroot=`$CC --print-sysroot 2>/dev/null`
+    fi
+    ;; #(
+  /*)
+-   lt_sysroot=`echo "$with_sysroot" | sed -e "$sed_quote_subst"`
++   lt_sysroot=`echo "$with_libtool_sysroot" | sed -e "$sed_quote_subst"`
+    ;; #(
+  no|'')
+    ;; #(
+  *)
+-   { $as_echo "$as_me:${as_lineno-$LINENO}: result: ${with_sysroot}" >&5
+-$as_echo "${with_sysroot}" >&6; }
++   { $as_echo "$as_me:${as_lineno-$LINENO}: result: ${with_libtool_sysroot}" >&5
++$as_echo "${with_libtool_sysroot}" >&6; }
+    as_fn_error $? "The sysroot must be an absolute path." "$LINENO" 5
+    ;;
+ esac
+Index: libtool-2.4/tests/mdemo2/configure
+===================================================================
+--- libtool-2.4.orig/tests/mdemo2/configure
++++ libtool-2.4/tests/mdemo2/configure
+@@ -726,7 +726,7 @@ enable_static
+ with_pic
+ enable_fast_install
+ with_gnu_ld
+-with_sysroot
++with_libtool_sysroot
+ enable_libtool_lock
+ '
+       ac_precious_vars='build_alias
+@@ -1373,7 +1373,7 @@ Optional Packages:
+   --with-pic              try to use only PIC/non-PIC objects [default=use
+                           both]
+   --with-gnu-ld           assume the C compiler uses GNU ld [default=no]
+-  --with-sysroot=DIR Search for dependent libraries within DIR
++  --with-libtool-sysroot=DIR Search for dependent libraries within DIR
+                         (or the compiler's sysroot if not specified).
+ 
+ Some influential environment variables:
+@@ -5884,29 +5884,29 @@ fi
+ { $as_echo "$as_me:${as_lineno-$LINENO}: checking for sysroot" >&5
+ $as_echo_n "checking for sysroot... " >&6; }
+ 
+-# Check whether --with-sysroot was given.
+-if test "${with_sysroot+set}" = set; then :
+-  withval=$with_sysroot;
++# Check whether --with-libtool-sysroot was given.
++if test "${with_libtool_sysroot+set}" = set; then :
++  withval=$with_libtool_sysroot;
+ else
+-  with_sysroot=no
++  with_libtool_sysroot=no
+ fi
+ 
+ 
+ lt_sysroot=
+-case ${with_sysroot} in #(
++case ${with_libtool_sysroot} in #(
+  yes)
+    if test "$GCC" = yes; then
+      lt_sysroot=`$CC --print-sysroot 2>/dev/null`
+    fi
+    ;; #(
+  /*)
+-   lt_sysroot=`echo "$with_sysroot" | sed -e "$sed_quote_subst"`
++   lt_sysroot=`echo "$with_libtool_sysroot" | sed -e "$sed_quote_subst"`
+    ;; #(
+  no|'')
+    ;; #(
+  *)
+-   { $as_echo "$as_me:${as_lineno-$LINENO}: result: ${with_sysroot}" >&5
+-$as_echo "${with_sysroot}" >&6; }
++   { $as_echo "$as_me:${as_lineno-$LINENO}: result: ${with_libtool_sysroot}" >&5
++$as_echo "${with_libtool_sysroot}" >&6; }
+    as_fn_error $? "The sysroot must be an absolute path." "$LINENO" 5
+    ;;
+ esac
+Index: libtool-2.4/tests/pdemo/configure
+===================================================================
+--- libtool-2.4.orig/tests/pdemo/configure
++++ libtool-2.4/tests/pdemo/configure
+@@ -729,7 +729,7 @@ enable_static
+ with_pic
+ enable_fast_install
+ with_gnu_ld
+-with_sysroot
++with_libtool_sysroot
+ enable_libtool_lock
+ '
+       ac_precious_vars='build_alias
+@@ -1376,7 +1376,7 @@ Optional Packages:
+   --with-pic              try to use only PIC/non-PIC objects [default=use
+                           both]
+   --with-gnu-ld           assume the C compiler uses GNU ld [default=no]
+-  --with-sysroot=DIR Search for dependent libraries within DIR
++  --with-libtool-sysroot=DIR Search for dependent libraries within DIR
+                         (or the compiler's sysroot if not specified).
+ 
+ Some influential environment variables:
+@@ -5887,29 +5887,29 @@ fi
+ { $as_echo "$as_me:${as_lineno-$LINENO}: checking for sysroot" >&5
+ $as_echo_n "checking for sysroot... " >&6; }
+ 
+-# Check whether --with-sysroot was given.
+-if test "${with_sysroot+set}" = set; then :
+-  withval=$with_sysroot;
++# Check whether --with-libtool-sysroot was given.
++if test "${with_libtool_sysroot+set}" = set; then :
++  withval=$with_libtool_sysroot;
+ else
+-  with_sysroot=no
++  with_libtool_sysroot=no
+ fi
+ 
+ 
+ lt_sysroot=
+-case ${with_sysroot} in #(
++case ${with_libtool_sysroot} in #(
+  yes)
+    if test "$GCC" = yes; then
+      lt_sysroot=`$CC --print-sysroot 2>/dev/null`
+    fi
+    ;; #(
+  /*)
+-   lt_sysroot=`echo "$with_sysroot" | sed -e "$sed_quote_subst"`
++   lt_sysroot=`echo "$with_libtool_sysroot" | sed -e "$sed_quote_subst"`
+    ;; #(
+  no|'')
+    ;; #(
+  *)
+-   { $as_echo "$as_me:${as_lineno-$LINENO}: result: ${with_sysroot}" >&5
+-$as_echo "${with_sysroot}" >&6; }
++   { $as_echo "$as_me:${as_lineno-$LINENO}: result: ${with_libtool_sysroot}" >&5
++$as_echo "${with_libtool_sysroot}" >&6; }
+    as_fn_error $? "The sysroot must be an absolute path." "$LINENO" 5
+    ;;
+ esac
+Index: libtool-2.4/tests/sysroot.at
+===================================================================
+--- libtool-2.4.orig/tests/sysroot.at
++++ libtool-2.4/tests/sysroot.at
+@@ -64,7 +64,7 @@ while read file; do
+ done])
+ 
+ LDFLAGS="$LDFLAGS --sysroot=$sysroot -no-undefined"
+-configure_options="$configure_options --with-sysroot=$sysroot --prefix=$prefix"
++configure_options="$configure_options --with-libtool-sysroot=$sysroot --prefix=$prefix"
+ 
+ #???
+ if test "$shlibpath_var" = PATH; then
+@@ -114,7 +114,7 @@ AM_INIT_AUTOMAKE([foreign])
+ AC_PROG_CC
+ AC_CONFIG_SRCDIR([lib2.c])
+ LT_INIT
+-sysroot=$with_sysroot
++sysroot=$with_libtool_sysroot
+ AC_SUBST([sysroot])
+ AC_OUTPUT(Makefile)
+ ]])
+@@ -155,7 +155,7 @@ AM_INIT_AUTOMAKE([foreign])
+ AC_PROG_CC
+ AC_CONFIG_SRCDIR([prog.c])
+ LT_INIT
+-sysroot=$with_sysroot
++sysroot=$with_libtool_sysroot
+ AC_SUBST([sysroot])
+ AC_OUTPUT(Makefile)
+ ]])
+Index: libtool-2.4/tests/tagdemo/configure
+===================================================================
+--- libtool-2.4.orig/tests/tagdemo/configure
++++ libtool-2.4/tests/tagdemo/configure
+@@ -736,7 +736,7 @@ enable_static
+ with_pic
+ enable_fast_install
+ with_gnu_ld
+-with_sysroot
++with_libtool_sysroot
+ enable_libtool_lock
+ with_gnu_ld
+ '
+@@ -1392,7 +1392,7 @@ Optional Packages:
+   --with-pic              try to use only PIC/non-PIC objects [default=use
+                           both]
+   --with-gnu-ld           assume the C compiler uses GNU ld [default=no]
+-  --with-sysroot=DIR Search for dependent libraries within DIR
++  --with-libtool-sysroot=DIR Search for dependent libraries within DIR
+                         (or the compiler's sysroot if not specified).
+ 
+ Some influential environment variables:
+@@ -6907,29 +6907,29 @@ fi
+ { $as_echo "$as_me:${as_lineno-$LINENO}: checking for sysroot" >&5
+ $as_echo_n "checking for sysroot... " >&6; }
+ 
+-# Check whether --with-sysroot was given.
+-if test "${with_sysroot+set}" = set; then :
+-  withval=$with_sysroot;
++# Check whether --with-libtool-sysroot was given.
++if test "${with_libtool_sysroot+set}" = set; then :
++  withval=$with_libtool_sysroot;
+ else
+-  with_sysroot=no
++  with_libtool_sysroot=no
+ fi
+ 
+ 
+ lt_sysroot=
+-case ${with_sysroot} in #(
++case ${with_libtool_sysroot} in #(
+  yes)
+    if test "$GCC" = yes; then
+      lt_sysroot=`$CC --print-sysroot 2>/dev/null`
+    fi
+    ;; #(
+  /*)
+-   lt_sysroot=`echo "$with_sysroot" | sed -e "$sed_quote_subst"`
++   lt_sysroot=`echo "$with_libtool_sysroot" | sed -e "$sed_quote_subst"`
+    ;; #(
+  no|'')
+    ;; #(
+  *)
+-   { $as_echo "$as_me:${as_lineno-$LINENO}: result: ${with_sysroot}" >&5
+-$as_echo "${with_sysroot}" >&6; }
++   { $as_echo "$as_me:${as_lineno-$LINENO}: result: ${with_libtool_sysroot}" >&5
++$as_echo "${with_libtool_sysroot}" >&6; }
+    as_fn_error $? "The sysroot must be an absolute path." "$LINENO" 5
+    ;;
+ esac
+Index: libtool-2.4/tests/testsuite
+===================================================================
+--- libtool-2.4.orig/tests/testsuite
++++ libtool-2.4/tests/testsuite
+@@ -25277,7 +25277,7 @@ $at_traceon; }
+ 
+ 
+ LDFLAGS="$LDFLAGS --sysroot=$sysroot -no-undefined"
+-configure_options="$configure_options --with-sysroot=$sysroot --prefix=$prefix"
++configure_options="$configure_options --with-libtool-sysroot=$sysroot --prefix=$prefix"
+ 
+ #???
+ if test "$shlibpath_var" = PATH; then
+@@ -25475,7 +25475,7 @@ AM_INIT_AUTOMAKE([foreign])
+ AC_PROG_CC
+ AC_CONFIG_SRCDIR([lib2.c])
+ LT_INIT
+-sysroot=$with_sysroot
++sysroot=$with_libtool_sysroot
+ AC_SUBST([sysroot])
+ AC_OUTPUT(Makefile)
+ _ATEOF
+@@ -25652,7 +25652,7 @@ AM_INIT_AUTOMAKE([foreign])
+ AC_PROG_CC
+ AC_CONFIG_SRCDIR([prog.c])
+ LT_INIT
+-sysroot=$with_sysroot
++sysroot=$with_libtool_sysroot
+ AC_SUBST([sysroot])
+ AC_OUTPUT(Makefile)
+ _ATEOF
+@@ -25993,7 +25993,7 @@ $at_traceon; }
+ 
+ 
+ LDFLAGS="$LDFLAGS --sysroot=$sysroot -no-undefined"
+-configure_options="$configure_options --with-sysroot=$sysroot --prefix=$prefix"
++configure_options="$configure_options --with-libtool-sysroot=$sysroot --prefix=$prefix"
+ 
+ #???
+ if test "$shlibpath_var" = PATH; then
+@@ -26191,7 +26191,7 @@ AM_INIT_AUTOMAKE([foreign])
+ AC_PROG_CC
+ AC_CONFIG_SRCDIR([lib2.c])
+ LT_INIT
+-sysroot=$with_sysroot
++sysroot=$with_libtool_sysroot
+ AC_SUBST([sysroot])
+ AC_OUTPUT(Makefile)
+ _ATEOF
+@@ -26368,7 +26368,7 @@ AM_INIT_AUTOMAKE([foreign])
+ AC_PROG_CC
+ AC_CONFIG_SRCDIR([prog.c])
+ LT_INIT
+-sysroot=$with_sysroot
++sysroot=$with_libtool_sysroot
+ AC_SUBST([sysroot])
+ AC_OUTPUT(Makefile)
+ _ATEOF
+@@ -26709,7 +26709,7 @@ $at_traceon; }
+ 
+ 
+ LDFLAGS="$LDFLAGS --sysroot=$sysroot -no-undefined"
+-configure_options="$configure_options --with-sysroot=$sysroot --prefix=$prefix"
++configure_options="$configure_options --with-libtool-sysroot=$sysroot --prefix=$prefix"
+ 
+ #???
+ if test "$shlibpath_var" = PATH; then
+@@ -26907,7 +26907,7 @@ AM_INIT_AUTOMAKE([foreign])
+ AC_PROG_CC
+ AC_CONFIG_SRCDIR([lib2.c])
+ LT_INIT
+-sysroot=$with_sysroot
++sysroot=$with_libtool_sysroot
+ AC_SUBST([sysroot])
+ AC_OUTPUT(Makefile)
+ _ATEOF
+@@ -27084,7 +27084,7 @@ AM_INIT_AUTOMAKE([foreign])
+ AC_PROG_CC
+ AC_CONFIG_SRCDIR([prog.c])
+ LT_INIT
+-sysroot=$with_sysroot
++sysroot=$with_libtool_sysroot
+ AC_SUBST([sysroot])
+ AC_OUTPUT(Makefile)
+ _ATEOF
diff --git a/meta/recipes-devtools/libtool/libtool/resolve-sysroot.patch b/meta/recipes-devtools/libtool/libtool/resolve-sysroot.patch
new file mode 100644
index 0000000..54f7f5b
--- /dev/null
+++ b/meta/recipes-devtools/libtool/libtool/resolve-sysroot.patch
@@ -0,0 +1,40 @@
+Sometimes .las have =/a/b/c.la in dependency_libs. This should be
+resolved to sysroot.
+
+-Khem Raj <raj.khem@gmail.com>
+
+Index: libtool-2.4/libltdl/config/ltmain.m4sh
+===================================================================
+--- libtool-2.4.orig/libltdl/config/ltmain.m4sh
++++ libtool-2.4/libltdl/config/ltmain.m4sh
+@@ -8479,7 +8479,8 @@ EOF
+ 	      *.la)
+ 		func_basename "$deplib"
+ 		name="$func_basename_result"
+-		eval libdir=`${SED} -n -e 's/^libdir=\(.*\)$/\1/p' $deplib`
++		func_resolve_sysroot "$deplib"
++		eval libdir=`${SED} -n -e 's/^libdir=\(.*\)$/\1/p' $func_resolve_sysroot_result`
+ 		test -z "$libdir" && \
+ 		  func_fatal_error "\`$deplib' is not a valid libtool archive"
+ 		func_append newdependency_libs " ${lt_sysroot:+=}$libdir/$name"
+@@ -8505,7 +8506,9 @@ EOF
+ 	      *.la)
+ 	        func_basename "$lib"
+ 		name="$func_basename_result"
+-		eval libdir=`${SED} -n -e 's/^libdir=\(.*\)$/\1/p' $lib`
++		func_resolve_sysroot "$lib"
++		eval libdir=`${SED} -n -e 's/^libdir=\(.*\)$/\1/p' $func_resolve_sysroot_result`
++
+ 		test -z "$libdir" && \
+ 		  func_fatal_error "\`$lib' is not a valid libtool archive"
+ 		func_append newdlfiles " ${lt_sysroot:+=}$libdir/$name"
+@@ -8524,7 +8527,8 @@ EOF
+ 		# the library:
+ 		func_basename "$lib"
+ 		name="$func_basename_result"
+-		eval libdir=`${SED} -n -e 's/^libdir=\(.*\)$/\1/p' $lib`
++		func_resolve_sysroot "$lib"
++		eval libdir=`${SED} -n -e 's/^libdir=\(.*\)$/\1/p' $func_resolve_sysroot_result`
+ 		test -z "$libdir" && \
+ 		  func_fatal_error "\`$lib' is not a valid libtool archive"
+ 		func_append newdlprefiles " ${lt_sysroot:+=}$libdir/$name"
diff --git a/meta/recipes-devtools/libtool/libtool/use-sysroot-in-libpath.patch b/meta/recipes-devtools/libtool/libtool/use-sysroot-in-libpath.patch
new file mode 100644
index 0000000..4d9e90c
--- /dev/null
+++ b/meta/recipes-devtools/libtool/libtool/use-sysroot-in-libpath.patch
@@ -0,0 +1,20 @@
+When using sysroot we should append it to libdir, which is helpful in
+cross builds as the system is staged in the sysroot. For normal builds,
+i.e. when lt_sysroot is not set, it will still behave the same and add
+-L/usr/lib to the relink command.
+
+-Khem Raj <raj.khem@gmail.com>
+
+Index: libtool-2.4/libltdl/config/ltmain.m4sh
+===================================================================
+--- libtool-2.4.orig/libltdl/config/ltmain.m4sh
++++ libtool-2.4/libltdl/config/ltmain.m4sh
+@@ -6122,7 +6122,7 @@ func_mode_link ()
+ 	      fi
+ 	    else
+ 	      # We cannot seem to hardcode it, guess we'll fake it.
+-	      add_dir="-L$libdir"
++	      add_dir="-L$lt_sysroot$libdir"
+ 	      # Try looking first in the location we're being installed to.
+ 	      if test -n "$inst_prefix_dir"; then
+ 		case $libdir in
diff --git a/meta/recipes-devtools/libtool/libtool_2.4.bb b/meta/recipes-devtools/libtool/libtool_2.4.bb
index b5ec33e..23fdf6c 100644
--- a/meta/recipes-devtools/libtool/libtool_2.4.bb
+++ b/meta/recipes-devtools/libtool/libtool_2.4.bb
@@ -1,7 +1,7 @@
 require libtool.inc
 DEPENDS = "libtool-native"
 
-PR = "r0"
+PR = "r1"
 
 PACKAGES =+ "libltdl libltdl-dev libltdl-dbg"
 FILES_${PN} += "${datadir}/aclocal*"
@@ -9,15 +9,7 @@ FILES_libltdl = "${libdir}/libltdl.so.*"
 FILES_libltdl-dev = "${libdir}/libltdl.* ${includedir}/ltdl.h"
 FILES_libltdl-dbg = "${libdir}/.debug/"
 
-inherit autotools
-
-EXTRA_AUTORECONF = "--exclude=libtoolize"
-
-do_compile_prepend () {
-	# Sometimes this file doesn't get rebuilt, force the issue
-	rm -f ${S}/libltdl/config/ltmain.sh
-	make libltdl/config/ltmain.sh
-}
+EXTRA_OECONF = "--with-sysroot"
 
 #
 # We want the results of libtool-cross preserved - don't stage anything ourselves.
-- 
1.7.1


