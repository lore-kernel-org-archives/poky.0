Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AC28E01443
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:21:21 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 59A593042C
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:21:16 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:19:46 -0700
Message-Id: <baf8dc051f34e46d584b538919e0f15b71b23307.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 59A593042C.C1FEC
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 20/57] libgomp: add libgomp (openmp) library, and build for powerpc targets by default
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
X-List-Received-Date: Mon, 13 Aug 2012 21:21:21 -0000

From: Matthew McClintock <msm@freescale.com>

(From OE-Core rev: b76a7bc8dcb7aed7d6f026e77a226837004c50af)

Signed-off-by: Matthew McClintock <msm@freescale.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/recipes-devtools/gcc/gcc-4.6.inc              |    2 +-
 .../recipes-devtools/gcc/gcc-configure-runtime.inc |    7 +++++++
 meta/recipes-devtools/gcc/gcc-package-runtime.inc  |   12 ++++++++++++
 3 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/meta/recipes-devtools/gcc/gcc-4.6.inc b/meta/recipes-devtools/gcc/gcc-4.6.inc
index c71312e..4c6fe28 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.inc
+++ b/meta/recipes-devtools/gcc/gcc-4.6.inc
@@ -1,6 +1,6 @@
 require gcc-common.inc
 
-PR = "r27"
+PR = "r28"
 
 # Third digit in PV should be incremented after a minor release
 # happens from this branch on gcc e.g. currently its 4.6.0
diff --git a/meta/recipes-devtools/gcc/gcc-configure-runtime.inc b/meta/recipes-devtools/gcc/gcc-configure-runtime.inc
index 34bfaeb..c9e8dd6 100644
--- a/meta/recipes-devtools/gcc/gcc-configure-runtime.inc
+++ b/meta/recipes-devtools/gcc/gcc-configure-runtime.inc
@@ -9,6 +9,8 @@ EXTRA_OECONF_PATHS = " \
     --with-build-sysroot=${STAGING_DIR_TARGET}"
 
 RUNTIMETARGET = "libssp libstdc++-v3"
+RUNTIMETARGET_append_powerpc = " libgomp"
+RUNTIMETARGET_append_powerpc64 = " libgomp"
 #  ?
 # libiberty
 # libmudflap
@@ -36,6 +38,11 @@ do_install () {
 	for d in ${RUNTIMETARGET}; do
 		cd ${B}/$d/
 		oe_runmake 'DESTDIR=${D}' install
+		if [ "$d" = "libgomp" ]; then
+			rm -rf ${D}${datadir}/info/libgomp.info ${D}${datadir}/info/dir
+			rmdir --ignore-fail-on-non-empty -p ${D}${libdir}/gcc/${TARGET_SYS}/${BINV}/finclude
+			rmdir --ignore-fail-on-non-empty -p ${D}${datadir}/info
+		fi
 	done
 	chown -R root:root ${D}
 }
diff --git a/meta/recipes-devtools/gcc/gcc-package-runtime.inc b/meta/recipes-devtools/gcc/gcc-package-runtime.inc
index feb8735..9962615 100644
--- a/meta/recipes-devtools/gcc/gcc-package-runtime.inc
+++ b/meta/recipes-devtools/gcc/gcc-package-runtime.inc
@@ -13,6 +13,9 @@ PACKAGES = "\
   libgfortran-dev \
   libmudflap \
   libmudflap-dev \
+  libgomp \
+  libgomp-dev \
+  libgomp-staticdev \
 "
 # The base package doesn't exist, so we clear the recommends.
 RRECOMMENDS_${PN}-dbg = ""
@@ -61,3 +64,12 @@ FILES_libmudflap-dev = "\
   ${libdir}/libmudflap*.a \
   ${libdir}/libmudflap*.la"
 
+FILES_libgomp-dev = "\
+  ${libdir}/libgomp*.so \
+  ${libdir}/libgomp*.la \
+  ${libdir}/libgomp.spec \
+  ${libdir}/gcc/${TARGET_SYS}/${BINV}/include/omp.h \
+  "
+FILES_libgomp-staticdev = "\
+  ${libdir}/libgomp*.a \
+  "
-- 
1.7.9.5


