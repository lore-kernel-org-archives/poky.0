Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5F0D64C81174
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 08:48:33 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Nov 2010 06:48:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,217,1288594800"; d="scan'208";a="678754608"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by orsmga001.jf.intel.com with ESMTP; 18 Nov 2010 06:48:32 -0800
Message-Id: <c20e2b37a8c99f9abe456bcae3e3274feb5952f8.1290091760.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1290091759.git.dongxiao.xu@intel.com>
References: <cover.1290091759.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Thu, 18 Nov 2010 13:23:14 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/7] mtd-utils: Upgrade to version 1.4.1
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
X-List-Received-Date: Thu, 18 Nov 2010 14:48:33 -0000

Remove add-oobsize-64-and-writesize-4096-as-normal-nand.patch
since the original code logic no longer exists.

Do not include fix-ignoreerrors-git.patch since variable
"ignoreerrors" is not defined in current code.

Fix recipe metadata.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 ...size-64-and-writesize-4096-as-normal-nand.patch |   24 --------------------
 .../add-exclusion-to-mkfs-jffs2-git-2.patch        |    0
 .../mtd/{mtd-utils_1.3.1.bb => mtd-utils_1.4.1.bb} |   13 +++++++---
 3 files changed, 9 insertions(+), 28 deletions(-)
 delete mode 100644 meta/recipes-devtools/mtd/mtd-utils-1.3.1/add-oobsize-64-and-writesize-4096-as-normal-nand.patch
 rename meta/recipes-devtools/mtd/{mtd-utils-1.3.1 => mtd-utils-1.4.1}/add-exclusion-to-mkfs-jffs2-git-2.patch (100%)
 rename meta/recipes-devtools/mtd/{mtd-utils_1.3.1.bb => mtd-utils_1.4.1.bb} (61%)

diff --git a/meta/recipes-devtools/mtd/mtd-utils-1.3.1/add-oobsize-64-and-writesize-4096-as-normal-nand.patch b/meta/recipes-devtools/mtd/mtd-utils-1.3.1/add-oobsize-64-and-writesize-4096-as-normal-nand.patch
deleted file mode 100644
index 64f25f7..0000000
--- a/meta/recipes-devtools/mtd/mtd-utils-1.3.1/add-oobsize-64-and-writesize-4096-as-normal-nand.patch
+++ /dev/null
@@ -1,24 +0,0 @@
-Index: git/nanddump.c
-===================================================================
---- git.orig/nanddump.c	2010-04-29 10:24:15.000000000 +0200
-+++ git/nanddump.c	2010-04-29 10:28:45.000000000 +0200
-@@ -210,6 +210,7 @@
- 
- 	/* Make sure device page sizes are valid */
- 	if (!(meminfo.oobsize == 128 && meminfo.writesize == 4096) &&
-+			!(meminfo.oobsize == 64 && meminfo.writesize == 4096) &&
- 			!(meminfo.oobsize == 64 && meminfo.writesize == 2048) &&
- 			!(meminfo.oobsize == 32 && meminfo.writesize == 1024) &&
- 			!(meminfo.oobsize == 16 && meminfo.writesize == 512) &&
-Index: git/nandwrite.c
-===================================================================
---- git.orig/nandwrite.c	2010-04-29 09:59:30.000000000 +0200
-+++ git/nandwrite.c	2010-04-29 10:27:51.000000000 +0200
-@@ -294,6 +294,7 @@
- 	if (!(meminfo.oobsize == 16 && meminfo.writesize == 512) &&
- 			!(meminfo.oobsize == 8 && meminfo.writesize == 256) &&
- 			!(meminfo.oobsize == 64 && meminfo.writesize == 2048) &&
-+			!(meminfo.oobsize == 64 && meminfo.writesize == 4096) &&
- 			!(meminfo.oobsize == 128 && meminfo.writesize == 4096)) {
- 		fprintf(stderr, "Unknown flash (not normal NAND)\n");
- 		close(fd);
diff --git a/meta/recipes-devtools/mtd/mtd-utils-1.3.1/add-exclusion-to-mkfs-jffs2-git-2.patch b/meta/recipes-devtools/mtd/mtd-utils-1.4.1/add-exclusion-to-mkfs-jffs2-git-2.patch
similarity index 100%
rename from meta/recipes-devtools/mtd/mtd-utils-1.3.1/add-exclusion-to-mkfs-jffs2-git-2.patch
rename to meta/recipes-devtools/mtd/mtd-utils-1.4.1/add-exclusion-to-mkfs-jffs2-git-2.patch
diff --git a/meta/recipes-devtools/mtd/mtd-utils_1.3.1.bb b/meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb
similarity index 61%
rename from meta/recipes-devtools/mtd/mtd-utils_1.3.1.bb
rename to meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb
index faa2332..8189bff 100644
--- a/meta/recipes-devtools/mtd/mtd-utils_1.3.1.bb
+++ b/meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb
@@ -2,15 +2,17 @@ DESCRIPTION = "Tools for managing memory technology devices."
 SECTION = "base"
 DEPENDS = "zlib lzo e2fsprogs util-linux"
 HOMEPAGE = "http://www.linux-mtd.infradead.org/"
-LICENSE = "GPLv2"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3 \
+                    file://include/common.h;beginline=1;endline=17;md5=ba05b07912a44ea2bf81ce409380049c"
 
 SRC_URI = "git://git.infradead.org/mtd-utils.git;protocol=git;tag=v${PV} \
-		file://add-exclusion-to-mkfs-jffs2-git-2.patch;patch=1 \
-		file://fix-ignoreerrors-git.patch;patch=1 \
-		file://add-oobsize-64-and-writesize-4096-as-normal-nand.patch;patch=1"
+		file://add-exclusion-to-mkfs-jffs2-git-2.patch;patch=1"
 
 S = "${WORKDIR}/git/"
 
+PR = "r0"
+
 EXTRA_OEMAKE = "'CC=${CC}' 'CFLAGS=${CFLAGS} -I${S}/include -DWITHOUT_XATTR' 'BUILDDIR=${S}'"
 
 do_install () {
@@ -24,3 +26,6 @@ do_install () {
 PARALLEL_MAKE = ""
 
 BBCLASSEXTEND = "native"
+
+SRC_URI[md5sum] = "645519b753b364d52c4b941dcee3dd7e"
+SRC_URI[sha256sum] = "51d6a77c7e673219bb89c4b119f336d9f2f5a5e065a12ecf9636c5348d099a0e"
-- 
1.7.0.4


