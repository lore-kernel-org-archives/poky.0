Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA502E00307
	for <poky@yoctoproject.org>; Thu,  3 Nov 2011 14:31:32 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="70960398"
Received: from unknown (HELO shamshir.jf.intel.com) ([10.7.199.72])
	by orsmga001.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  3 Nov 2011 14:31:26 -0700
Message-Id: <3545f453aa7320dcf0eedb39247735359095cb51.1320355735.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
Subject: [BERNARD 14/17] texinfo: several changes to build without zlib and ncurses headers on host
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
X-List-Received-Date: Thu, 03 Nov 2011 21:31:33 -0000

Texinfo very cleverly detects cross-compilation and builds host versions
of the texinfo binaries it requires to bootstrap the build, however this
was causing the host to require ncurses and zlib libraries and headers.

Instead, since we require texinfo to be installed on the host, remove this
feature from the texinfo configure.ac (disable-native-tools.patch).

Further, fix texinfo to link with newer binutils (link-zip.patch) and to
generate translations with newer gettext (gettext-macros.patch).

With this patch I am able to build texinfo on Fedora without ncurses-devel
and zlib-devel installed.

This fixes [YOCTO #1483]

(From OE-Core rev: 4b395a9beb6c02f7b23266e7ee2ca3c08a9cbb70)

Signed-off-by: Joshua Lock <josh@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Conflicts:

	meta/recipes-extended/texinfo/texinfo_4.13a.bb
---
 .../texinfo-4.13a/disable-native-tools.patch       |   43 ++++++++++++++++++++
 .../texinfo/texinfo-4.13a/link-zip.patch           |   16 +++++++
 meta/recipes-extended/texinfo/texinfo_4.13a.bb     |   23 +++++-----
 3 files changed, 70 insertions(+), 12 deletions(-)
 create mode 100644 meta/recipes-extended/texinfo/texinfo-4.13a/disable-native-tools.patch
 create mode 100644 meta/recipes-extended/texinfo/texinfo-4.13a/link-zip.patch

diff --git a/meta/recipes-extended/texinfo/texinfo-4.13a/disable-native-tools.patch b/meta/recipes-extended/texinfo/texinfo-4.13a/disable-native-tools.patch
new file mode 100644
index 0000000..ab6f165
--- /dev/null
+++ b/meta/recipes-extended/texinfo/texinfo-4.13a/disable-native-tools.patch
@@ -0,0 +1,43 @@
+We already DEPEND on the native texinfo being present before building so
+there isn't any need to try and build the required native texinfo binaries
+before cross-compiling. This simplifies the recipe somewhat!
+
+Upstream-Status: Inappropriate oe specific
+
+Signed-off-by: Joshua Lock <josh@linux.intel.com>
+
+Index: texinfo-4.13/configure.ac
+===================================================================
+--- texinfo-4.13.orig/configure.ac
++++ texinfo-4.13/configure.ac
+@@ -100,29 +100,7 @@ AC_CANONICAL_BUILD
+ # $native_tools is also added to SUBDIRS in the main Makefile.am,
+ # so that make compiles the native tools first.
+ #
+-if test "$cross_compiling" = no; then
+-  native_tools=
+-else
+-  native_tools=tools
+-  test -d "$native_tools" || mkdir "$native_tools"
+-  confdir=`(cd "$srcdir";pwd)`
+-  # Make sure the secondary configure won't fail with
+-  # "error: source directory already configured".
+-  rm -f config.status
+-  AC_MSG_NOTICE([[Doing configure of native tools (${build}).]])
+-  cd "$native_tools" || exit 1
+-  # Run secondary configure in alternate environment or
+-  # it gets the wrong CC etc.
+-  # env -i gives this build host configure a clean environment;
+-  # consequently, we have to re-initialize $PATH.
+-  env -i CC="$BUILD_CC" AR="$BUILD_AR" RANLIB="$BUILD_RANLIB" \
+-      PATH="$PATH" \
+-      tools_only=1 \
+-    ${confdir}/configure --build=${build} --host=${build} \
+-                         --disable-rpath --disable-nls
+-  cd .. || exit 1
+-  AC_MSG_NOTICE([[Continuing with main configure (${host}).]])
+-fi
++native_tools=
+ AC_SUBST(native_tools)
+ AM_CONDITIONAL(TOOLS_ONLY, [[test "x$tools_only" = x1]])
+ 
diff --git a/meta/recipes-extended/texinfo/texinfo-4.13a/link-zip.patch b/meta/recipes-extended/texinfo/texinfo-4.13a/link-zip.patch
new file mode 100644
index 0000000..629d329
--- /dev/null
+++ b/meta/recipes-extended/texinfo/texinfo-4.13a/link-zip.patch
@@ -0,0 +1,16 @@
+install-info uses symbols from zlib so must link against it.
+
+Upstream-Status: Pending
+
+Signed-off-by: Joshua Lock <josh@linux.intel.com>
+
+Index: texinfo-4.13/install-info/Makefile.am
+===================================================================
+--- texinfo-4.13.orig/install-info/Makefile.am
++++ texinfo-4.13/install-info/Makefile.am
+@@ -28,4 +28,4 @@ AM_CPPFLAGS = 					\
+   -I$(top_srcdir)/gnulib/lib			\
+   -I$(top_builddir)/gnulib/lib			\
+   -DLOCALEDIR=\"$(localedir)\"
+-LDADD = ../lib/libtxi.a $(top_builddir)/gnulib/lib/libgnu.a $(LIBINTL)
++LDADD = ../lib/libtxi.a $(top_builddir)/gnulib/lib/libgnu.a $(LIBINTL) -lz
diff --git a/meta/recipes-extended/texinfo/texinfo_4.13a.bb b/meta/recipes-extended/texinfo/texinfo_4.13a.bb
index ac89b66..5fd2d31 100644
--- a/meta/recipes-extended/texinfo/texinfo_4.13a.bb
+++ b/meta/recipes-extended/texinfo/texinfo_4.13a.bb
@@ -9,14 +9,17 @@ LICENSE = "GPLv3+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=adefda309052235aa5d1e99ce7557010"
 PR = "r0"
 
-DEPENDS = "zlib"
+DEPENDS = "zlib ncurses texinfo-native"
+DEPENDS_virtclass-native = "zlib-native ncurses-native"
 
 SRC_URI = "${GNU_MIRROR}/texinfo/texinfo-${PV}.tar.gz \
-           file://texinfo-4.12-zlib.patch;striplevel=1 \
-           file://texinfo-4.13a-data_types.patch;striplevel=1 \
-           file://texinfo-4.13a-mosdo-crash.patch;striplevel=1 \
-           file://texinfo-4.13a-powerpc.patch;striplevel=1 \
-           file://texinfo-4.13a-help-index-segfault.patch;striplevel=1"
+           file://texinfo-4.12-zlib.patch \
+           file://texinfo-4.13a-data_types.patch \
+           file://texinfo-4.13a-mosdo-crash.patch \
+           file://texinfo-4.13a-powerpc.patch \
+           file://texinfo-4.13a-help-index-segfault.patch \
+           file://disable-native-tools.patch \
+           file://link-zip.patch"
 
 SRC_URI[md5sum] = "71ba711519209b5fb583fed2b3d86fcb"
 SRC_URI[sha256sum] = "1303e91a1c752b69a32666a407e9fbdd6e936def4b09bc7de30f416301530d68"
@@ -26,13 +29,9 @@ tex_texinfo = "texmf/tex/texinfo"
 
 inherit gettext autotools
 
-do_configure() {
-	oe_runconf
-}
-
-do_compile_prepend(){
+do_compile_prepend() {
 	if [ -d tools ];then
-		make -C tools/gnulib/lib
+		oe_runmake -C tools/gnulib/lib
 	fi
 }
 
-- 
1.7.7


