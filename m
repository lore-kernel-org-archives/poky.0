Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6A78E4C81118
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 18:38:55 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 34D11304F1
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 19:38:51 -0500 (EST)
Message-Id: <8a52c52bf224d6fc555c6c8ae5cbd90693505d5f.1295483757.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1295483757.git.scott.a.garman@intel.com>
References: <cover.1295483757.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Wed, 19 Jan 2011 15:03:53 +0000
Date: Wed, 19 Jan 2011 16:38:48 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 34D11304F1.64A11
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 01/12] libtool: Small cleanups of metadata
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
X-List-Received-Date: Thu, 20 Jan 2011 00:38:55 -0000

[based on sections of a patch by Scott Garman extracted by Richard]

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../recipes-devtools/libtool/libtool-native_2.4.bb |    2 --
 meta/recipes-devtools/libtool/libtool.inc          |   16 ++++++++++++----
 meta/recipes-devtools/libtool/libtool_2.4.bb       |   10 ----------
 3 files changed, 12 insertions(+), 16 deletions(-)

diff --git a/meta/recipes-devtools/libtool/libtool-native_2.4.bb b/meta/recipes-devtools/libtool/libtool-native_2.4.bb
index 4ad660b..0c6f54a 100644
--- a/meta/recipes-devtools/libtool/libtool-native_2.4.bb
+++ b/meta/recipes-devtools/libtool/libtool-native_2.4.bb
@@ -21,5 +21,3 @@ do_install () {
 	install -m 0755 ${HOST_SYS}-libtool ${D}${bindir}/${HOST_SYS}-libtool
 }
 
-SRC_URI[md5sum] = "b32b04148ecdd7344abc6fe8bd1bb021"
-SRC_URI[sha256sum] = "13df57ab63a94e196c5d6e95d64e53262834fe780d5e82c28f177f9f71ddf62e"
diff --git a/meta/recipes-devtools/libtool/libtool.inc b/meta/recipes-devtools/libtool/libtool.inc
index 9690e3b..370d972 100644
--- a/meta/recipes-devtools/libtool/libtool.inc
+++ b/meta/recipes-devtools/libtool/libtool.inc
@@ -1,14 +1,22 @@
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
            file://prefix-manpage-fix.patch "
 
+do_compile_prepend () {
+	# Sometimes this file doesn't get rebuilt, force the issue
+	rm -f ${S}/libltdl/config/ltmain.sh
+	make libltdl/config/ltmain.sh
+}
+
+inherit autotools
+EXTRA_AUTORECONF = "--exclude=libtoolize"
diff --git a/meta/recipes-devtools/libtool/libtool_2.4.bb b/meta/recipes-devtools/libtool/libtool_2.4.bb
index b5ec33e..ae64354 100644
--- a/meta/recipes-devtools/libtool/libtool_2.4.bb
+++ b/meta/recipes-devtools/libtool/libtool_2.4.bb
@@ -9,16 +9,6 @@ FILES_libltdl = "${libdir}/libltdl.so.*"
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
-
 #
 # We want the results of libtool-cross preserved - don't stage anything ourselves.
 #
-- 
1.7.1


