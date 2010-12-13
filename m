Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 400D54C80FA4
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 11:47:07 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 13 Dec 2010 09:47:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,336,1288594800"; d="scan'208";a="867676656"
Received: from mukti.sc.intel.com (HELO localhost) ([143.183.140.51])
	by fmsmga001.fm.intel.com with ESMTP; 13 Dec 2010 09:47:06 -0800
Message-Id: <2eb23fbe7fda1fa5854beebda8f2ce3150012479.1292262360.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1292262360.git.nitin.a.kamble@intel.com>
References: <cover.1292262360.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Date: Mon, 13 Dec 2010 09:09:58 -0800
To: poky@yoctoproject.org
Subject: [PATCH 1/2] gcc_4.5.1: Move the license related information in the right file
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
X-List-Received-Date: Mon, 13 Dec 2010 17:47:07 -0000

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/recipes-devtools/gcc/gcc-4.5.1.inc |    9 ++++++++-
 meta/recipes-devtools/gcc/gcc_4.5.1.bb  |    6 ------
 2 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1.inc b/meta/recipes-devtools/gcc/gcc-4.5.1.inc
index bb10fef..3edc4d4 100644
--- a/meta/recipes-devtools/gcc/gcc-4.5.1.inc
+++ b/meta/recipes-devtools/gcc/gcc-4.5.1.inc
@@ -1,9 +1,16 @@
 require gcc-common.inc
-LICENSE = "GPLv3"
 
 DEPENDS =+ "mpfr gmp libmpc elfutils"
 NATIVEDEPS = "mpfr-native gmp-native gettext-native libmpc-native elfutils-native"
 
+LICENSE="GCC RUNTIME LIBRARY EXCEPTION & GPLv2 & GPLv3 & LGPLv2.1 & LGPLv3"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
+                   file://COPYING3;md5=d32239bcb673463ab874e80d47fae504 \
+                   file://COPYING3.LIB;md5=6a6a8e020838b23406c81b19c1d46df6 \
+                   file://COPYING.LIB;md5=2d5025d4aa3495befef8f17206a5b0a1 \
+		   file://COPYING.RUNTIME;md5=fe60d87048567d4fe8c8a0ed2448bcc8"
+
 SRC_URI = "${GNU_MIRROR}/gcc/gcc-${PV}/gcc-${PV}.tar.bz2 \
 	   file://gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch \
 	   file://100-uclibc-conf.patch \
diff --git a/meta/recipes-devtools/gcc/gcc_4.5.1.bb b/meta/recipes-devtools/gcc/gcc_4.5.1.bb
index d4a257e..81c1fa9 100644
--- a/meta/recipes-devtools/gcc/gcc_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc_4.5.1.bb
@@ -1,10 +1,4 @@
 PR = "r0"
-LICENSE="GCC RUNTIME LIBRARY EXCEPTION & GPLv2 & GPLv3 & LGPLv2.1 & LGPLv3"
-LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
-                   file://COPYING3;md5=d32239bcb673463ab874e80d47fae504 \
-                   file://COPYING3.LIB;md5=6a6a8e020838b23406c81b19c1d46df6 \
-                   file://COPYING.LIB;md5=2d5025d4aa3495befef8f17206a5b0a1 \
-		   file://COPYING.RUNTIME;md5=fe60d87048567d4fe8c8a0ed2448bcc8"
 require gcc-${PV}.inc
 require gcc-configure-target.inc
 require gcc-package-target.inc
-- 
1.7.2.2


