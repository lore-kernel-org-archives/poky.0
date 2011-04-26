Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 589A44C80ACE
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 01:43:09 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 Apr 2011 23:43:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,267,1301900400"; d="scan'208";a="425501325"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 25 Apr 2011 23:43:08 -0700
Message-Id: <aea92cb859d0caa917317ad70170d74ef5aa80e7.1303798223.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1303798223.git.dongxiao.xu@intel.com>
References: <cover.1303798223.git.dongxiao.xu@intel.com>
Old-Date: Tue, 19 Apr 2011 16:40:19 +0800
Date: Tue, 26 Apr 2011 14:46:03 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 05/13] libsndfile1: upgrade to version 1.0.24
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
X-List-Received-Date: Tue, 26 Apr 2011 06:43:09 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../libsndfile/libsndfile1/acincludefix.patch      |   26 --------------------
 .../libsndfile/libsndfile1/add-cxx.patch           |   18 -------------
 ...libsndfile1_1.0.23.bb => libsndfile1_1.0.24.bb} |    4 +-
 3 files changed, 2 insertions(+), 46 deletions(-)
 delete mode 100644 meta/recipes-multimedia/libsndfile/libsndfile1/acincludefix.patch
 delete mode 100644 meta/recipes-multimedia/libsndfile/libsndfile1/add-cxx.patch
 rename meta/recipes-multimedia/libsndfile/{libsndfile1_1.0.23.bb => libsndfile1_1.0.24.bb} (80%)

diff --git a/meta/recipes-multimedia/libsndfile/libsndfile1/acincludefix.patch b/meta/recipes-multimedia/libsndfile/libsndfile1/acincludefix.patch
deleted file mode 100644
index 46a21c1..0000000
--- a/meta/recipes-multimedia/libsndfile/libsndfile1/acincludefix.patch
+++ /dev/null
@@ -1,26 +0,0 @@
-Fix m4 quoting to avoid an infinite loop in m4 with recent autoconf/automake
-
-RP 1/2/10
-
-Index: libsndfile-1.0.17/acinclude.m4
-===================================================================
---- libsndfile-1.0.17.orig/acinclude.m4	2010-02-01 14:53:35.517826746 +0000
-+++ libsndfile-1.0.17/acinclude.m4	2010-02-01 14:53:51.409122706 +0000
-@@ -255,7 +255,7 @@
- 
- )
- ]
--
-+[
- if test $ac_cv_c_byte_order = big ; then
- 	ac_cv_c_big_endian=1
- 	ac_cv_c_little_endian=0
-@@ -272,7 +272,7 @@
- 	AC_MSG_WARN([[*** src/config.h may need to be hand editied.                    ]])
- 	AC_MSG_WARN([[*****************************************************************]])
- 	fi
--
-+]
- )# AC_C_FIND_ENDIAN
- 
- 
diff --git a/meta/recipes-multimedia/libsndfile/libsndfile1/add-cxx.patch b/meta/recipes-multimedia/libsndfile/libsndfile1/add-cxx.patch
deleted file mode 100644
index da0c401..0000000
--- a/meta/recipes-multimedia/libsndfile/libsndfile1/add-cxx.patch
+++ /dev/null
@@ -1,18 +0,0 @@
----
- configure.ac |    1 +
- 1 file changed, 1 insertion(+)
-
---- libsndfile-1.0.17.orig/configure.ac
-+++ libsndfile-1.0.17/configure.ac
-@@ -29,10 +29,11 @@ AC_LANG([C])
- #     to 0.
- 
- SHARED_VERSION_INFO="1:17:0"
- 
- AC_PROG_CC
-+AC_PROG_CXX
- AM_PROG_LIBTOOL
- 
- AC_CHECK_PROG(autogen, autogen, yes, no)
- 
- AC_PROG_INSTALL
diff --git a/meta/recipes-multimedia/libsndfile/libsndfile1_1.0.23.bb b/meta/recipes-multimedia/libsndfile/libsndfile1_1.0.24.bb
similarity index 80%
rename from meta/recipes-multimedia/libsndfile/libsndfile1_1.0.23.bb
rename to meta/recipes-multimedia/libsndfile/libsndfile1_1.0.24.bb
index 4d12a42..a547d76 100644
--- a/meta/recipes-multimedia/libsndfile/libsndfile1_1.0.23.bb
+++ b/meta/recipes-multimedia/libsndfile/libsndfile1_1.0.24.bb
@@ -8,8 +8,8 @@ PR = "r0"
 
 SRC_URI = "http://www.mega-nerd.com/libsndfile/files/libsndfile-${PV}.tar.gz"
 
-SRC_URI[md5sum] = "d0e22b5ff2ef945615db33960376d733"
-SRC_URI[sha256sum] = "54c9c375598538263395a691f9b30987a2faa3d8a166d27e6a09ba4700223d4d"
+SRC_URI[md5sum] = "8f823c30c1d8d44830db6ab845d6679e"
+SRC_URI[sha256sum] = "b6050e6fbfbb72c8bfbc895104697a4af1d49077a64e4846e0be7af87c9e56a4"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=e77fe93202736b47c07035910f47974a"
 
-- 
1.7.1


