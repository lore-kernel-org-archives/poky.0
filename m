Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E05A4C8112C
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 18:39:02 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id EC1DE304F1
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 19:38:56 -0500 (EST)
Message-Id: <8a85bde8fb4f1ddf4a3ab68391791735b78b6230.1295483757.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1295483757.git.scott.a.garman@intel.com>
References: <cover.1295483757.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Tue, 21 Dec 2010 10:46:15 -0800
Date: Wed, 19 Jan 2011 16:38:54 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: EC1DE304F1.1207B
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 03/12] libtool: Changes to enable sysroot support
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
X-List-Received-Date: Thu, 20 Jan 2011 00:39:02 -0000

* Added OE patches by Khem Raj which enable sysroot support
  and rename the command line option --with-sysroot to
  --with-libtool-sysroot to avoid conflicts with binutils and
  gcc
* Removed obsolete cross_compile.patch
* Changed SRC_URI_append to SRC_URI +=
* PR bump for all recipes

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-devtools/libtool/libtool-2.4.inc      |    2 +
 meta/recipes-devtools/libtool/libtool-cross_2.4.bb |    5 +-
 .../recipes-devtools/libtool/libtool-native_2.4.bb |    7 +-
 .../libtool/libtool-nativesdk_2.4.bb               |    5 +-
 meta/recipes-devtools/libtool/libtool.inc          |    5 +-
 .../libtool/libtool/cross_compile.patch            |   38 -
 .../libtool/libtool/rename-with-sysroot.patch      |  824 ++++++++++++++++++++
 .../libtool/libtool/resolve-sysroot.patch          |   40 +
 .../libtool/libtool/use-sysroot-in-libpath.patch   |   20 +
 meta/recipes-devtools/libtool/libtool_2.4.bb       |    2 +-
 10 files changed, 899 insertions(+), 49 deletions(-)
 delete mode 100644 meta/recipes-devtools/libtool/libtool/cross_compile.patch
 create mode 100644 meta/recipes-devtools/libtool/libtool/rename-with-sysroot.patch
 create mode 100644 meta/recipes-devtools/libtool/libtool/resolve-sysroot.patch
 create mode 100644 meta/recipes-devtools/libtool/libtool/use-sysroot-in-libpath.patch

diff --git a/meta/recipes-devtools/libtool/libtool-2.4.inc b/meta/recipes-devtools/libtool/libtool-2.4.inc
index 53ee882..e3d17b7 100644
--- a/meta/recipes-devtools/libtool/libtool-2.4.inc
+++ b/meta/recipes-devtools/libtool/libtool-2.4.inc
@@ -9,3 +9,5 @@ FILES_libltdl-dbg = "${libdir}/.debug/"
 
 SRC_URI[md5sum] = "b32b04148ecdd7344abc6fe8bd1bb021"
 SRC_URI[sha256sum] = "13df57ab63a94e196c5d6e95d64e53262834fe780d5e82c28f177f9f71ddf62e"
+
+EXTRA_OECONF = "--with-sysroot"
\ No newline at end of file
diff --git a/meta/recipes-devtools/libtool/libtool-cross_2.4.bb b/meta/recipes-devtools/libtool/libtool-cross_2.4.bb
index 47ae057..cd2bcec 100644
--- a/meta/recipes-devtools/libtool/libtool-cross_2.4.bb
+++ b/meta/recipes-devtools/libtool/libtool-cross_2.4.bb
@@ -1,9 +1,8 @@
 require libtool-${PV}.inc
 
-PR = "r0"
+PR = "r1"
 PACKAGES = ""
-SRC_URI_append = " file://cross_compile.patch \
-		   file://prefix.patch "
+SRC_URI += "file://prefix.patch"
 
 do_configure_prepend () {
 	# Remove any existing libtool m4 since old stale versions would break
diff --git a/meta/recipes-devtools/libtool/libtool-native_2.4.bb b/meta/recipes-devtools/libtool/libtool-native_2.4.bb
index 20981a5..4163e89 100644
--- a/meta/recipes-devtools/libtool/libtool-native_2.4.bb
+++ b/meta/recipes-devtools/libtool/libtool-native_2.4.bb
@@ -2,12 +2,13 @@ require libtool-${PV}.inc
 
 DEPENDS = ""
 
-PR = "r0"
-SRC_URI_append = " file://cross_compile.patch \
-		   file://prefix.patch "
+PR = "r1"
+SRC_URI += "file://prefix.patch"
 
 inherit native
 
+EXTRA_OECONF = " --with-libtool-sysroot=${STAGING_DIR_NATIVE}"
+
 do_configure_prepend () {
 	# Remove any existing libtool m4 since old stale versions would break
 	# any upgrade
diff --git a/meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb b/meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb
index cf38f85..2c01a4e 100644
--- a/meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb
+++ b/meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb
@@ -1,8 +1,7 @@
 require libtool-${PV}.inc
 
-PR = "r0"
-SRC_URI_append = " file://cross_compile.patch \
-		   file://prefix.patch "
+PR = "r1"
+SRC_URI += "file://prefix.patch"
 
 inherit nativesdk
 
diff --git a/meta/recipes-devtools/libtool/libtool.inc b/meta/recipes-devtools/libtool/libtool.inc
index 370d972..bccb769 100644
--- a/meta/recipes-devtools/libtool/libtool.inc
+++ b/meta/recipes-devtools/libtool/libtool.inc
@@ -10,7 +10,10 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
 
 SRC_URI = "${GNU_MIRROR}/libtool/libtool-${PV}.tar.gz \
            file://trailingslash.patch \
-           file://prefix-manpage-fix.patch "
+           file://prefix-manpage-fix.patch \
+           file://rename-with-sysroot.patch \
+           file://resolve-sysroot.patch \
+           file://use-sysroot-in-libpath.patch"
 
 do_compile_prepend () {
 	# Sometimes this file doesn't get rebuilt, force the issue
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
index dbf64f9..ee24444 100644
--- a/meta/recipes-devtools/libtool/libtool_2.4.bb
+++ b/meta/recipes-devtools/libtool/libtool_2.4.bb
@@ -1,6 +1,6 @@
 require libtool-${PV}.inc
 
-PR = "r0"
+PR = "r1"
 
 #
 # We want the results of libtool-cross preserved - don't stage anything ourselves.
-- 
1.7.1


