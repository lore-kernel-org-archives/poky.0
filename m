Return-Path: <qing.he@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C9E8C4C80FA4
	for <poky@yoctoproject.org>; Fri, 10 Dec 2010 02:53:33 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 Dec 2010 00:53:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,323,1288594800"; d="scan'208";a="866680710"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by fmsmga001.fm.intel.com with ESMTP; 10 Dec 2010 00:53:10 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PQydz-00039J-7e; Fri, 10 Dec 2010 16:47:59 +0800
Message-Id: <085990a0dab5f4f3b31e5d0fcca4fd6b923f0a95.1291970759.git.qing.he@intel.com>
In-Reply-To: <cover.1291970759.git.qing.he@intel.com>
References: <cover.1291970759.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Fri, 10 Dec 2010 12:52:12 +0800
To: poky@yoctoproject.org
Subject: [PATCH 3/8] fakechroot: upgrade to version 2.13.1
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
X-List-Received-Date: Fri, 10 Dec 2010 08:53:34 -0000

from 2.9

changes:
 - remove debian diff, since there is no diff.gz for 2.13.1
 - remove fix-readlink.patch, the patch doesn't seem to make sense now

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../fakechroot/fakechroot/fix-readlink.patch       |   26 --------------------
 .../fakechroot/fakechroot_2.13.1.bb                |   17 +++++++++++++
 meta/recipes-devtools/fakechroot/fakechroot_2.9.bb |   20 ---------------
 3 files changed, 17 insertions(+), 46 deletions(-)
 delete mode 100644 meta/recipes-devtools/fakechroot/fakechroot/fix-readlink.patch
 create mode 100644 meta/recipes-devtools/fakechroot/fakechroot_2.13.1.bb
 delete mode 100644 meta/recipes-devtools/fakechroot/fakechroot_2.9.bb

diff --git a/meta/recipes-devtools/fakechroot/fakechroot/fix-readlink.patch b/meta/recipes-devtools/fakechroot/fakechroot/fix-readlink.patch
deleted file mode 100644
index 9321564..0000000
--- a/meta/recipes-devtools/fakechroot/fakechroot/fix-readlink.patch
+++ /dev/null
@@ -1,26 +0,0 @@
----
- src/libfakechroot.c |    4 ++--
- 1 file changed, 2 insertions(+), 2 deletions(-)
-
-Index: fakechroot-2.9/src/libfakechroot.c
-===================================================================
---- fakechroot-2.9.orig/src/libfakechroot.c	2009-03-31 11:20:41.000000000 +0100
-+++ fakechroot-2.9/src/libfakechroot.c	2010-03-22 17:40:17.386783375 +0000
-@@ -775,7 +775,7 @@
-     nextsym(opendir, "opendir");
- #endif
-     nextsym(pathconf, "pathconf");
--    nextsym(readlink, "readlink");
-+    nextsym(readlink, "own_readlink");
-     nextsym(realpath, "realpath");
-     nextsym(remove, "remove");
- #ifdef HAVE_REMOVEXATTR
-@@ -2492,7 +2492,7 @@
- 
- 
- /* #include <unistd.h> */
--READLINK_TYPE_RETURN readlink (const char *path, char *buf, READLINK_TYPE_ARG3)
-+READLINK_TYPE_RETURN own_readlink (const char *path, char *buf, READLINK_TYPE_ARG3)
- {
-     int status;
-     char tmp[FAKECHROOT_MAXPATH], *tmpptr;
diff --git a/meta/recipes-devtools/fakechroot/fakechroot_2.13.1.bb b/meta/recipes-devtools/fakechroot/fakechroot_2.13.1.bb
new file mode 100644
index 0000000..428bd4f
--- /dev/null
+++ b/meta/recipes-devtools/fakechroot/fakechroot_2.13.1.bb
@@ -0,0 +1,17 @@
+DESCRIPTION = "Gives a fake root environment which can support chroot"
+SECTION = "base"
+
+LICENSE = "LGPLv2.1+"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=2d5025d4aa3495befef8f17206a5b0a1"
+
+SRC_URI = "${DEBIAN_MIRROR}/main/f/fakechroot/fakechroot_${PV}.orig.tar.gz \
+          "
+
+SRC_URI[md5sum] = "280a828869a15059f0681a5d11a5e255"
+SRC_URI[md5sum] = "15489437d8602cc393d886f74004ee75af049b1fab42b27331f355650e4e57c8"
+
+inherit autotools
+
+PR = "r0"
+
+BBCLASSEXTEND = "native"
diff --git a/meta/recipes-devtools/fakechroot/fakechroot_2.9.bb b/meta/recipes-devtools/fakechroot/fakechroot_2.9.bb
deleted file mode 100644
index 267a699..0000000
--- a/meta/recipes-devtools/fakechroot/fakechroot_2.9.bb
+++ /dev/null
@@ -1,20 +0,0 @@
-SECTION = "base"
-DESCRIPTION = "Gives a fake root environment which can support chroot"
-LICENSE = "LGPLv2.1+"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=2d5025d4aa3495befef8f17206a5b0a1"
-
-SRC_URI = "${DEBIAN_MIRROR}/main/f/fakechroot/fakechroot_${PV}.orig.tar.gz;name=tarball \
-           file://fix-readlink.patch;patch=1 \
-           ${DEBIAN_MIRROR}/main/f/fakechroot/fakechroot_2.9-1.1.diff.gz;patch=1;name=patch"
-
-SRC_URI[tarball.md5sum] = "7b0048e50a6309acf0dda4e547735022"
-SRC_URI[tarball.sha256sum] = "bfccb079d2d247b05d5f82473beca0043ddfc51a6ed595541575893fa3ab6c3e"
-
-SRC_URI[patch.md5sum] = "b4c9c113ebba929be8c311591a499e6e"
-SRC_URI[patch.sha256sum] = "3e1677622f3a92a5cf91665a733fa51b32d1e5f1a487a7e220ad575c0a09077a"
-
-inherit autotools
-
-PR = "r3"
-
-BBCLASSEXTEND = "native"
-- 
1.7.0


