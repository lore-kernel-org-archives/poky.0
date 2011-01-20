Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id B3C164C81118
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 18:38:58 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 196A5304F0
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 19:38:53 -0500 (EST)
Message-Id: <4b089e6563a752f05507cb1ed9785e35130991c6.1295483757.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1295483757.git.scott.a.garman@intel.com>
References: <cover.1295483757.git.scott.a.garman@intel.com>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
Old-Date: Wed, 19 Jan 2011 15:43:40 +0000
Date: Wed, 19 Jan 2011 16:38:51 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 196A5304F0.86A83
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 02/12] libtool: Move common version specific data to a common include file
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
X-List-Received-Date: Thu, 20 Jan 2011 00:38:59 -0000

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/recipes-devtools/libtool/libtool-2.4.inc      |   11 +++++++++++
 meta/recipes-devtools/libtool/libtool-cross_2.4.bb |    4 +---
 .../recipes-devtools/libtool/libtool-native_2.4.bb |    2 +-
 .../libtool/libtool-nativesdk_2.4.bb               |    2 +-
 meta/recipes-devtools/libtool/libtool_2.4.bb       |   19 ++++---------------
 5 files changed, 18 insertions(+), 20 deletions(-)
 create mode 100644 meta/recipes-devtools/libtool/libtool-2.4.inc

diff --git a/meta/recipes-devtools/libtool/libtool-2.4.inc b/meta/recipes-devtools/libtool/libtool-2.4.inc
new file mode 100644
index 0000000..53ee882
--- /dev/null
+++ b/meta/recipes-devtools/libtool/libtool-2.4.inc
@@ -0,0 +1,11 @@
+require libtool.inc
+DEPENDS = "libtool-native"
+
+PACKAGES =+ "libltdl libltdl-dev libltdl-dbg"
+FILES_${PN} += "${datadir}/aclocal*"
+FILES_libltdl = "${libdir}/libltdl.so.*"
+FILES_libltdl-dev = "${libdir}/libltdl.* ${includedir}/ltdl.h"
+FILES_libltdl-dbg = "${libdir}/.debug/"
+
+SRC_URI[md5sum] = "b32b04148ecdd7344abc6fe8bd1bb021"
+SRC_URI[sha256sum] = "13df57ab63a94e196c5d6e95d64e53262834fe780d5e82c28f177f9f71ddf62e"
diff --git a/meta/recipes-devtools/libtool/libtool-cross_2.4.bb b/meta/recipes-devtools/libtool/libtool-cross_2.4.bb
index 6ea96a5..47ae057 100644
--- a/meta/recipes-devtools/libtool/libtool-cross_2.4.bb
+++ b/meta/recipes-devtools/libtool/libtool-cross_2.4.bb
@@ -1,12 +1,10 @@
-require libtool_${PV}.bb
+require libtool-${PV}.inc
 
 PR = "r0"
 PACKAGES = ""
 SRC_URI_append = " file://cross_compile.patch \
 		   file://prefix.patch "
 
-DEPENDS += "libtool-native"
-
 do_configure_prepend () {
 	# Remove any existing libtool m4 since old stale versions would break
 	# any upgrade
diff --git a/meta/recipes-devtools/libtool/libtool-native_2.4.bb b/meta/recipes-devtools/libtool/libtool-native_2.4.bb
index 0c6f54a..20981a5 100644
--- a/meta/recipes-devtools/libtool/libtool-native_2.4.bb
+++ b/meta/recipes-devtools/libtool/libtool-native_2.4.bb
@@ -1,4 +1,4 @@
-require libtool_${PV}.bb
+require libtool-${PV}.inc
 
 DEPENDS = ""
 
diff --git a/meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb b/meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb
index c9f24a9..cf38f85 100644
--- a/meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb
+++ b/meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb
@@ -1,4 +1,4 @@
-require libtool_${PV}.bb
+require libtool-${PV}.inc
 
 PR = "r0"
 SRC_URI_append = " file://cross_compile.patch \
diff --git a/meta/recipes-devtools/libtool/libtool_2.4.bb b/meta/recipes-devtools/libtool/libtool_2.4.bb
index ae64354..dbf64f9 100644
--- a/meta/recipes-devtools/libtool/libtool_2.4.bb
+++ b/meta/recipes-devtools/libtool/libtool_2.4.bb
@@ -1,26 +1,15 @@
-require libtool.inc
-DEPENDS = "libtool-native"
+require libtool-${PV}.inc
 
 PR = "r0"
 
-PACKAGES =+ "libltdl libltdl-dev libltdl-dbg"
-FILES_${PN} += "${datadir}/aclocal*"
-FILES_libltdl = "${libdir}/libltdl.so.*"
-FILES_libltdl-dev = "${libdir}/libltdl.* ${includedir}/ltdl.h"
-FILES_libltdl-dbg = "${libdir}/.debug/"
-
 #
 # We want the results of libtool-cross preserved - don't stage anything ourselves.
 #
 SYSROOT_PREPROCESS_FUNCS += "libtool_sysroot_preprocess"
 
 libtool_sysroot_preprocess () {
-	if [ "${PN}" == "libtool" ]; then
-		rm -rf ${SYSROOT_DESTDIR}${STAGING_DIR_TARGET}${bindir}/*
-		rm -rf ${SYSROOT_DESTDIR}${STAGING_DIR_TARGET}${datadir}/aclocal/*
-		rm -rf ${SYSROOT_DESTDIR}${STAGING_DIR_TARGET}${datadir}/libtool/config/*
-	fi
+	rm -rf ${SYSROOT_DESTDIR}${STAGING_DIR_TARGET}${bindir}/*
+	rm -rf ${SYSROOT_DESTDIR}${STAGING_DIR_TARGET}${datadir}/aclocal/*
+	rm -rf ${SYSROOT_DESTDIR}${STAGING_DIR_TARGET}${datadir}/libtool/config/*
 }
 
-SRC_URI[md5sum] = "b32b04148ecdd7344abc6fe8bd1bb021"
-SRC_URI[sha256sum] = "13df57ab63a94e196c5d6e95d64e53262834fe780d5e82c28f177f9f71ddf62e"
-- 
1.7.1


