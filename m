Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1FC894C8109B
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 03:22:33 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0J9MW7I027571
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 01:22:32 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 19 Jan 2011 01:22:32 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 19 Jan 2011 01:22:32 -0800
Message-Id: <0b3aadf45ecce19ac9127c644ecb6de378e77a6f.1295428743.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1295428743.git.jingdong.lu@windriver.com>
References: <cover.1295428743.git.jingdong.lu@windriver.com>
From: Jingdong Lu <jingdong.lu@windriver.com>
Old-Date: Wed, 19 Jan 2011 17:04:43 +0800
Date: Wed, 19 Jan 2011 17:20:55 +0800
To: poky@yoctoproject.org
CC: 
X-OriginalArrivalTime: 19 Jan 2011 09:22:32.0577 (UTC)
	FILETIME=[66BEC710:01CBB7BA]
Subject: [PATCH 1/2] python: Fix failures of LSB python-runtime tests.
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
X-List-Received-Date: Wed, 19 Jan 2011 09:22:33 -0000

Fix failues of LSB python-runtime tests.
test_largefile: add "ac_cv_sizeof_off_t=8" option explicitly into configure options in order to enable "LFS".
test_codecs, test_re, test_unicode: "--with-wctype-functions" will cause these tests failed, so remove it for LSB.
test_builtin, test_getargs: "sitecustomize.py" cause default encoding changed from "ascii" into "utf8" and it will cause these tests failed, so remove this file for LSB.

Signed-off-by: Jingdong Lu<jingdong.lu@windriver.com>
---
 meta/recipes-devtools/python/python.inc      |   10 ++++++++++
 meta/recipes-devtools/python/python_2.6.6.bb |   11 ++++++++---
 2 files changed, 18 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-devtools/python/python.inc b/meta/recipes-devtools/python/python.inc
index 62a6ba1..7ceb1c2 100644
--- a/meta/recipes-devtools/python/python.inc
+++ b/meta/recipes-devtools/python/python.inc
@@ -22,4 +22,14 @@ EXTRA_OECONF = "\
   --enable-shared \
 "
 
+EXTRA_OECONF_poky-lsb = "\
+  --with-threads \
+  --with-pymalloc \
+  --with-cyclic-gc \
+  --without-cxx \
+  --with-signal-module \
+  --enable-shared \
+  ac_cv_sizeof_off_t=8
+"
+
 PARALLEL_MAKE = ""
diff --git a/meta/recipes-devtools/python/python_2.6.6.bb b/meta/recipes-devtools/python/python_2.6.6.bb
index b33e0a9..ad0d7a9 100644
--- a/meta/recipes-devtools/python/python_2.6.6.bb
+++ b/meta/recipes-devtools/python/python_2.6.6.bb
@@ -1,8 +1,11 @@
 require python.inc
 DEPENDS = "python-native db gdbm openssl readline sqlite3 zlib"
 DEPENDS_sharprom = "python-native db readline zlib gdbm openssl"
-PR = "${INC_PR}.0"
+PR = "${INC_PR}.1"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=38fdd546420fab09ac6bd3d8a1c83eb6"
+
+DISTRO_SRC_URI ?= "file://sitecustomize.py"
+DISTRO_SRC_URI_poky-lsb = ""
 SRC_URI = "\
   http://www.python.org/ftp/python/${PV}/Python-${PV}.tar.bz2 \
   file://01-use-proper-tools-for-cross-build.patch \
@@ -12,7 +15,7 @@ SRC_URI = "\
   file://05-enable-ctypes-cross-build.patch \
   file://06-avoid_usr_lib_termcap_path_in_linking.patch \
   file://99-ignore-optimization-flag.patch \
-  file://sitecustomize.py \
+  ${DISTRO_SRC_URI} \
 "
 
 SRC_URI[md5sum] = "cf4e6881bb84a7ce6089e4a307f71f14"
@@ -74,7 +77,9 @@ do_install() {
 		BUILD_SYS=${BUILD_SYS} HOST_SYS=${HOST_SYS} \
 		DESTDIR=${D} LIBDIR=${libdir} install
 
-	install -m 0644 ${WORKDIR}/sitecustomize.py ${D}/${libdir}/python${PYTHON_MAJMIN}
+	if [ -e ${WORKDIR}/sitecustomize.py ]; then
+		install -m 0644 ${WORKDIR}/sitecustomize.py ${D}/${libdir}/python${PYTHON_MAJMIN}
+	fi
 
 	# remove hardcoded ccache, see http://bugs.openembedded.net/show_bug.cgi?id=4144
 	sed -i -e s,ccache,'$(CCACHE)', ${D}/${libdir}/python${PYTHON_MAJMIN}/config/Makefile
-- 
1.7.0.4


