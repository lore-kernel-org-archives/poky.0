Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D06BE4C8112F
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 00:53:36 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Nov 2010 22:53:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,260,1288594800"; d="scan'208";a="630447404"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga002.fm.intel.com with ESMTP; 25 Nov 2010 22:53:36 -0800
Message-Id: <55bbd1a7e860a8a30cc9d028afc2ef762218fd10.1290736298.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1290736297.git.dongxiao.xu@intel.com>
References: <cover.1290736297.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Wed, 24 Nov 2010 11:35:18 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 06/14] minicom: Upgrade to version 2.4
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
X-List-Received-Date: Fri, 26 Nov 2010 06:53:37 -0000

Fixed its metadata

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../{minicom-2.3 => minicom-2.4}/gcc4-scope.patch  |    0
 .../rename-conflicting-functions.patch             |    0
 meta/recipes-extended/minicom/minicom_2.3.bb       |   18 ----------------
 meta/recipes-extended/minicom/minicom_2.4.bb       |   22 ++++++++++++++++++++
 4 files changed, 22 insertions(+), 18 deletions(-)
 rename meta/recipes-extended/minicom/{minicom-2.3 => minicom-2.4}/gcc4-scope.patch (100%)
 rename meta/recipes-extended/minicom/{minicom-2.3 => minicom-2.4}/rename-conflicting-functions.patch (100%)
 delete mode 100644 meta/recipes-extended/minicom/minicom_2.3.bb
 create mode 100644 meta/recipes-extended/minicom/minicom_2.4.bb

diff --git a/meta/recipes-extended/minicom/minicom-2.3/gcc4-scope.patch b/meta/recipes-extended/minicom/minicom-2.4/gcc4-scope.patch
similarity index 100%
rename from meta/recipes-extended/minicom/minicom-2.3/gcc4-scope.patch
rename to meta/recipes-extended/minicom/minicom-2.4/gcc4-scope.patch
diff --git a/meta/recipes-extended/minicom/minicom-2.3/rename-conflicting-functions.patch b/meta/recipes-extended/minicom/minicom-2.4/rename-conflicting-functions.patch
similarity index 100%
rename from meta/recipes-extended/minicom/minicom-2.3/rename-conflicting-functions.patch
rename to meta/recipes-extended/minicom/minicom-2.4/rename-conflicting-functions.patch
diff --git a/meta/recipes-extended/minicom/minicom_2.3.bb b/meta/recipes-extended/minicom/minicom_2.3.bb
deleted file mode 100644
index c327e94..0000000
--- a/meta/recipes-extended/minicom/minicom_2.3.bb
+++ /dev/null
@@ -1,18 +0,0 @@
-SECTION = "console/network"
-DEPENDS = "ncurses"
-LICENSE = "GPLv2"
-LIC_FILES_CHKSUM = "file://COPYING;md5=420477abc567404debca0a2a1cb6b645"
-SRC_URI = "http://alioth.debian.org/frs/download.php/2332/minicom-${PV}.tar.gz \
-	file://rename-conflicting-functions.patch \
-	"
-
-#	file://gcc4-scope.patch;patch=1 \
-
-inherit autotools gettext
-
-do_install() {
-	for d in doc extras man lib src; do make -C $d DESTDIR=${D} install; done
-}
-
-SRC_URI[md5sum] = "0ebe7a91898384ca906787cc4e2c3f25"
-SRC_URI[sha256sum] = "2acbc3d4a07e1134ee285a72fa44bbc27703b02dba02be68db9e6fd8320356fb"
diff --git a/meta/recipes-extended/minicom/minicom_2.4.bb b/meta/recipes-extended/minicom/minicom_2.4.bb
new file mode 100644
index 0000000..439dbd7
--- /dev/null
+++ b/meta/recipes-extended/minicom/minicom_2.4.bb
@@ -0,0 +1,22 @@
+SUMMARY = "Text-based modem control and terminal emulation program"
+DESCRIPTION = "Minicom is a text-based modem control and terminal emulation program for Unix-like operating systems"
+SECTION = "console/network"
+DEPENDS = "ncurses"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=420477abc567404debca0a2a1cb6b645 \
+                    file://src/minicom.h;beginline=1;endline=12;md5=a58838cb709f0db517f4e42730c49e81"
+
+SRC_URI = "http://alioth.debian.org/frs/download.php/3195/minicom-${PV}.tar.gz \
+	file://rename-conflicting-functions.patch \
+	"
+
+#	file://gcc4-scope.patch;patch=1 \
+
+inherit autotools gettext
+
+do_install() {
+	for d in doc extras man lib src; do make -C $d DESTDIR=${D} install; done
+}
+
+SRC_URI[md5sum] = "700976a3c2dcc8bbd50ab9bb1c08837b"
+SRC_URI[sha256sum] = "700976a3c2dcc8bbd50ab9bb1c08837b"
-- 
1.6.3.3


