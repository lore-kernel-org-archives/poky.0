Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 73E354C8106A
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 12:11:06 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id B2324304F8
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 13:11:01 -0500 (EST)
Message-Id: <e621d178ee6a3db0b311327e4e222aafe2986f51.1292868390.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1292868390.git.scott.a.garman@intel.com>
References: <cover.1292868390.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Date: Mon, 20 Dec 2010 10:03:37 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: B2324304F8.52DE6
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 1/1] gettext: Add source and license checkums
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
X-List-Received-Date: Mon, 20 Dec 2010 18:11:06 -0000

Also clean up whitespace issues.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-core/gettext/gettext_0.14.1.bb |   19 +++++++-------
 meta/recipes-core/gettext/gettext_0.17.bb   |   35 +++++++++++++++-----------
 2 files changed, 30 insertions(+), 24 deletions(-)

diff --git a/meta/recipes-core/gettext/gettext_0.14.1.bb b/meta/recipes-core/gettext/gettext_0.14.1.bb
index a2de018..ad51217 100644
--- a/meta/recipes-core/gettext/gettext_0.14.1.bb
+++ b/meta/recipes-core/gettext/gettext_0.14.1.bb
@@ -2,6 +2,8 @@ DESCRIPTION = "The GNU internationalization library."
 HOMEPAGE = "http://www.gnu.org/software/gettext/gettext.html"
 SECTION = "libs"
 LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3"
+
 PR = "r11"
 DEPENDS = "virtual/libiconv"
 DEPENDS_virtclass-native = ""
@@ -9,9 +11,9 @@ PROVIDES = "virtual/libintl"
 PROVIDES_virtclass-native = ""
 
 SRC_URI = "${GNU_MIRROR}/gettext/gettext-${PV}.tar.gz \
-	   file://gettext-vpath.patch \
-	   file://fixchicken.patch \
-	   file://linklib_from_0.17.patch \
+           file://gettext-vpath.patch \
+           file://fixchicken.patch \
+           file://linklib_from_0.17.patch \
            file://getline.m4.patch \
            file://disable_java.patch"
 
@@ -20,14 +22,17 @@ SRC_URI = "${GNU_MIRROR}/gettext/gettext-${PV}.tar.gz \
 SRC_URI_append_linux-uclibc = " file://gettext-error_print_progname.patch"
 SRC_URI_append_linux-uclibceabi = " file://gettext-error_print_progname.patch"
 
+SRC_URI[md5sum] = "78f4b862510beb2e5d43223dd610e77d"
+SRC_URI[sha256sum] = "41f20c469c7759acb34cfa7e0b3cac9096d59a58ad800e471f07424a8e7adbb7"
+
 PARALLEL_MAKE = ""
 
 inherit autotools
 
 EXTRA_OECONF += "--without-lisp --disable-csharp"
 acpaths = '-I ${S}/autoconf-lib-link/m4/ \
-	   -I ${S}/gettext-runtime/m4 \
-	   -I ${S}/gettext-tools/m4'
+           -I ${S}/gettext-runtime/m4 \
+           -I ${S}/gettext-tools/m4'
 
 do_configure_prepend() {
 	rm -f ${S}/config/m4/libtool.m4
@@ -46,7 +51,3 @@ do_configure_prepend() {
 PACKAGES =+ "libgettextlib libgettextsrc"
 FILES_libgettextlib = "${libdir}/libgettextlib-*.so*"
 FILES_libgettextsrc = "${libdir}/libgettextsrc-*.so*"
-
-
-SRC_URI[md5sum] = "78f4b862510beb2e5d43223dd610e77d"
-SRC_URI[sha256sum] = "41f20c469c7759acb34cfa7e0b3cac9096d59a58ad800e471f07424a8e7adbb7"
diff --git a/meta/recipes-core/gettext/gettext_0.17.bb b/meta/recipes-core/gettext/gettext_0.17.bb
index 7a936ea..54a5837 100644
--- a/meta/recipes-core/gettext/gettext_0.17.bb
+++ b/meta/recipes-core/gettext/gettext_0.17.bb
@@ -3,6 +3,8 @@ DESCRIPTION = "Gettext offers to programmers, translators, and even users, a wel
 HOMEPAGE = "http://www.gnu.org/software/gettext/gettext.html"
 SECTION = "libs"
 LICENSE = "GPLv3"
+LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
+
 PR = "r5"
 DEPENDS = "gettext-native virtual/libiconv ncurses expat"
 DEPENDS_virtclass-native = ""
@@ -10,33 +12,36 @@ PROVIDES = "virtual/libintl"
 PROVIDES_virtclass-native = ""
 
 SRC_URI = "${GNU_MIRROR}/gettext/gettext-${PV}.tar.gz \
-	   file://autotools.patch;patch=1 \
-	   file://wchar-uclibc.patch;patch=1 \
-	   file://use_open_properly.patch;patch=1 \
+           file://autotools.patch;patch=1 \
+           file://wchar-uclibc.patch;patch=1 \
+           file://use_open_properly.patch;patch=1 \
            file://m4fix.patch;patch=1 \
-	  "
+          "
 
 SRC_URI_append_linux-uclibc = " file://gettext-error_print_progname.patch;patch=1"
 SRC_URI_append_linux-uclibcgnueabi = " file://gettext-error_print_progname.patch;patch=1"
 
+SRC_URI[md5sum] = "58a2bc6d39c0ba57823034d55d65d606"
+SRC_URI[sha256sum] = "209638bb8e162f22c281145a34e220c66f1f6e9ff5e4c50c6f2ef2ded59537ba"
+
 PARALLEL_MAKE = ""
 
 inherit autotools
 
 EXTRA_OECONF += "--without-lispdir \
-		 --disable-csharp \
-		 --disable-libasprintf \
-		 --disable-java \
-		 --disable-native-java \
-		 --disable-openmp \
-		 --with-included-glib \
-		 --with-libncurses-prefix=${STAGING_LIBDIR}/.. \
-		 --without-emacs \
-	        "
+                 --disable-csharp \
+                 --disable-libasprintf \
+                 --disable-java \
+                 --disable-native-java \
+                 --disable-openmp \
+                 --with-included-glib \
+                 --with-libncurses-prefix=${STAGING_LIBDIR}/.. \
+                 --without-emacs \
+                "
 
 acpaths = '-I ${S}/autoconf-lib-link/m4/ \
-	   -I ${S}/gettext-runtime/m4 \
-	   -I ${S}/gettext-tools/m4'
+           -I ${S}/gettext-runtime/m4 \
+           -I ${S}/gettext-tools/m4'
 
 
 # these lack the .x behind the .so, but shouldn't be in the -dev package
-- 
1.7.1


