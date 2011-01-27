Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5903D4C811D2
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 01:48:29 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 26 Jan 2011 23:48:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,385,1291622400"; d="scan'208";a="881437396"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga001.fm.intel.com with ESMTP; 26 Jan 2011 23:48:28 -0800
Message-Id: <51b9e841709c65989647c04502670e26aff0010d.1296115229.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1296115229.git.dongxiao.xu@intel.com>
References: <cover.1296115229.git.dongxiao.xu@intel.com>
Old-Date: Thu, 27 Jan 2011 15:53:47 +0800
Date: Thu, 27 Jan 2011 16:04:34 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 3/3] perl: Remove ${MACHINE} dependency in compile and package.
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
X-List-Received-Date: Thu, 27 Jan 2011 07:48:29 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

The judgement on ${MACHINE} is meaningless, remove it in order to avoid
being rebuild on second machine.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-devtools/perl/perl_5.12.2.bb |   42 +++++++++++++----------------
 1 files changed, 19 insertions(+), 23 deletions(-)

diff --git a/meta/recipes-devtools/perl/perl_5.12.2.bb b/meta/recipes-devtools/perl/perl_5.12.2.bb
index e7e1cb4..82801e8 100644
--- a/meta/recipes-devtools/perl/perl_5.12.2.bb
+++ b/meta/recipes-devtools/perl/perl_5.12.2.bb
@@ -151,12 +151,10 @@ do_configure() {
 }
 
 do_compile() {
-        if test "${MACHINE}" != "native"; then
-            sed -i -e 's|/usr/include|${STAGING_INCDIR}|g' ext/Errno/Errno_pm.PL
-            sed -i -e 's|/usr/include|${STAGING_INCDIR}|g' cpan/Compress-Raw-Zlib/config.in
-            sed -i -e 's|/usr/lib|${STAGING_LIBDIR}|g' cpan/Compress-Raw-Zlib/config.in
+        sed -i -e 's|/usr/include|${STAGING_INCDIR}|g' ext/Errno/Errno_pm.PL
+        sed -i -e 's|/usr/include|${STAGING_INCDIR}|g' cpan/Compress-Raw-Zlib/config.in
+        sed -i -e 's|/usr/lib|${STAGING_LIBDIR}|g' cpan/Compress-Raw-Zlib/config.in
 
-        fi
         cd Cross
         oe_runmake perl LD="${CCLD}"
 }
@@ -186,24 +184,22 @@ PACKAGE_PREPROCESS_FUNCS += "perl_package_preprocess"
 
 perl_package_preprocess () {
         # Fix up installed configuration
-        if test "${MACHINE}" != "native"; then
-            sed -i -e "s,${D},,g" \
-                   -e "s,-isystem${STAGING_INCDIR} ,,g" \
-                   -e "s,${STAGING_LIBDIR},${libdir},g" \
-                   -e "s,${STAGING_BINDIR},${bindir},g" \
-                   -e "s,${STAGING_INCDIR},${includedir},g" \
-                   -e "s,${STAGING_BINDIR_NATIVE}/,,g" \
-                ${PKGD}${bindir}/h2xs \
-                ${PKGD}${bindir}/h2ph \
-                ${PKGD}${libdir}/perl/${PV}/pod/*.pod \
-                ${PKGD}${libdir}/perl/${PV}/cacheout.pl \
-                ${PKGD}${libdir}/perl/${PV}/FileCache.pm \
-                ${PKGD}${libdir}/perl/config.sh \
-                ${PKGD}${libdir}/perl/${PV}/Config.pm \
-                ${PKGD}${libdir}/perl/${PV}/Config_heavy.pl \
-                ${PKGD}${libdir}/perl/${PV}/CORE/perl.h \
-                ${PKGD}${libdir}/perl/${PV}/CORE/pp.h
-        fi
+        sed -i -e "s,${D},,g" \
+               -e "s,-isystem${STAGING_INCDIR} ,,g" \
+               -e "s,${STAGING_LIBDIR},${libdir},g" \
+               -e "s,${STAGING_BINDIR},${bindir},g" \
+               -e "s,${STAGING_INCDIR},${includedir},g" \
+               -e "s,${STAGING_BINDIR_NATIVE}/,,g" \
+            ${PKGD}${bindir}/h2xs \
+            ${PKGD}${bindir}/h2ph \
+            ${PKGD}${libdir}/perl/${PV}/pod/*.pod \
+            ${PKGD}${libdir}/perl/${PV}/cacheout.pl \
+            ${PKGD}${libdir}/perl/${PV}/FileCache.pm \
+            ${PKGD}${libdir}/perl/config.sh \
+            ${PKGD}${libdir}/perl/${PV}/Config.pm \
+            ${PKGD}${libdir}/perl/${PV}/Config_heavy.pl \
+            ${PKGD}${libdir}/perl/${PV}/CORE/perl.h \
+            ${PKGD}${libdir}/perl/${PV}/CORE/pp.h
 }
 
 PACKAGES = "perl-dbg perl perl-misc perl-dev perl-pod perl-doc perl-lib \
-- 
1.6.3.3


