Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id BBBB54C81002
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 00:11:33 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 Nov 2010 22:11:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,216,1288594800"; d="scan'208";a="350245581"
Received: from unknown (HELO localhost) ([10.255.13.148])
	by azsmga001.ch.intel.com with ESMTP; 17 Nov 2010 22:11:32 -0800
Message-Id: <06317fea4fdf9c8e1cdc7e908a1de074ea3a504d.1290046217.git.sgw@linux.intel.com>
In-Reply-To: <cover.1290046217.git.sgw@linux.intel.com>
References: <cover.1290046217.git.sgw@linux.intel.com>
From: Saul Wold <Saul.Wold@intel.com>
Date: Thu, 11 Nov 2010 15:14:02 -0800
To: poky@yoctoproject.org
Cc: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 2/5] libsndfile: Upgrade to 1.0.23
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
X-List-Received-Date: Thu, 18 Nov 2010 06:11:33 -0000

Signed-off-by: Saul Wold <Saul.Wold@intel.com>
---
 .../libsndfile/libsndfile1/acincludefix.patch      |   26 --------------------
 ...libsndfile1_1.0.17.bb => libsndfile1_1.0.23.bb} |    8 ++++--
 2 files changed, 5 insertions(+), 29 deletions(-)
 delete mode 100644 meta/recipes-multimedia/libsndfile/libsndfile1/acincludefix.patch
 rename meta/recipes-multimedia/libsndfile/{libsndfile1_1.0.17.bb => libsndfile1_1.0.23.bb} (72%)

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
diff --git a/meta/recipes-multimedia/libsndfile/libsndfile1_1.0.17.bb b/meta/recipes-multimedia/libsndfile/libsndfile1_1.0.23.bb
similarity index 72%
rename from meta/recipes-multimedia/libsndfile/libsndfile1_1.0.17.bb
rename to meta/recipes-multimedia/libsndfile/libsndfile1_1.0.23.bb
index e46e3e1..c5a3983 100644
--- a/meta/recipes-multimedia/libsndfile/libsndfile1_1.0.17.bb
+++ b/meta/recipes-multimedia/libsndfile/libsndfile1_1.0.23.bb
@@ -3,13 +3,15 @@ HOMEPAGE = "http://www.mega-nerd.com/libsndfile"
 AUTHOR = "Erik de Castro Lopo"
 DEPENDS = "sqlite3"
 SECTION = "libs/multimedia"
-LICENSE = "LGPL"
-PR = "r4"
+LICENSE = "LGPLv2.1"
+PR = "r0"
 
-SRC_URI = "http://www.mega-nerd.com/libsndfile/libsndfile-${PV}.tar.gz \
+SRC_URI = "http://www.mega-nerd.com/libsndfile/files/libsndfile-${PV}.tar.gz \
            file://acincludefix.patch;patch=1 \
            file://add-cxx.patch;patch=1"
 
+LIC_FILES_CHKSUM = "file://COPYING;md5=e77fe93202736b47c07035910f47974a"
+
 S = "${WORKDIR}/libsndfile-${PV}"
 
 inherit autotools lib_package pkgconfig
-- 
1.7.1


