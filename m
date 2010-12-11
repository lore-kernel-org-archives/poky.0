Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D65B84C811DF
	for <poky@yoctoproject.org>; Sat, 11 Dec 2010 13:36:08 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 11 Dec 2010 11:36:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,329,1288594800"; d="scan'208";a="867145691"
Received: from unknown (HELO localhost) ([10.255.13.46])
	by fmsmga001.fm.intel.com with ESMTP; 11 Dec 2010 11:36:08 -0800
Message-Id: <63f468fc9a48599b8011eabde666745d0e255385.1292096034.git.sgw@linux.intel.com>
In-Reply-To: <cover.1292096034.git.sgw@linux.intel.com>
References: <cover.1292096034.git.sgw@linux.intel.com>
From: Saul Wold <Saul.Wold@intel.com>
Date: Fri, 10 Dec 2010 17:02:28 -0800
To: poky@yoctoproject.org
Cc: Saul Wold <Saul.Wold@intel.com>
Subject: [PATCH 12/13] libsoup: Add LIC_FILES_CHKSUM
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
X-List-Received-Date: Sat, 11 Dec 2010 19:36:09 -0000

Signed-off-by: Saul Wold <Saul.Wold@intel.com>
---
 meta/recipes-core/meta/meta-ide-support.bb      |    3 +--
 meta/recipes-support/libsoup/libsoup_2.2.100.bb |    3 ++-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-core/meta/meta-ide-support.bb b/meta/recipes-core/meta/meta-ide-support.bb
index ee85d5d..faec7fa 100644
--- a/meta/recipes-core/meta/meta-ide-support.bb
+++ b/meta/recipes-core/meta/meta-ide-support.bb
@@ -1,8 +1,7 @@
 DESCRIPTION = "Meta package for ensuring the build directory contains all appropriate toolchain packages for using an IDE"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
-                    file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b
-4de20420"
+                    file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
 DEPENDS = "virtual/libc gdb-cross qemu-helper-native unfs-server-native"
 PR = "r1"
diff --git a/meta/recipes-support/libsoup/libsoup_2.2.100.bb b/meta/recipes-support/libsoup/libsoup_2.2.100.bb
index a96a762..7ead09d 100644
--- a/meta/recipes-support/libsoup/libsoup_2.2.100.bb
+++ b/meta/recipes-support/libsoup/libsoup_2.2.100.bb
@@ -1,6 +1,7 @@
 DESCRIPTION = "An HTTP library implementation in C"
-LICENSE = "GPL"
 SECTION = "x11/gnome/libs"
+LICENSE = "LGPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=55ca817ccb7d5b5b66355690e9abc605"
 PR = "r1"
 
 DEPENDS = "glib-2.0 gnutls libxml2"
-- 
1.7.1.1


