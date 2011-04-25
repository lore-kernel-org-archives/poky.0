Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1BA504C80ACC
	for <poky@yoctoproject.org>; Mon, 25 Apr 2011 15:08:29 -0500 (CDT)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 1C949308D0
	for <poky@yoctoproject.org>; Mon, 25 Apr 2011 16:08:21 -0400 (EDT)
Message-Id: <4bc9d84777225d0cfe23672f290c903f72f28a7a.1303761875.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1303761875.git.scott.a.garman@intel.com>
References: <cover.1303761875.git.scott.a.garman@intel.com>
Old-Date: Mon, 25 Apr 2011 12:48:47 -0700
Date: Mon, 25 Apr 2011 13:08:18 -0700
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 1C949308D0.7C0B3
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 1/2] cdrtools: recipe and patch cleanup
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
X-List-Received-Date: Mon, 25 Apr 2011 20:08:29 -0000

From: Scott Garman <scott.a.garman@intel.com>

* Recipe cleanup, added missing metadata fields and fixed
  whitespace issues
* Added Upstream-Status to patches
* Confirmed that CVE-2003-0655 does not apply to this recipe
  as rscsi is not packaged

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../cdrtools-native/glibc-conflict-rename.patch    |    8 +++++++
 .../cdrtools/cdrtools-native/no_usr_src.patch      |    7 ++++++
 .../cdrtools/cdrtools-native_2.01.bb               |   21 ++++++++++---------
 3 files changed, 26 insertions(+), 10 deletions(-)

diff --git a/meta/recipes-devtools/cdrtools/cdrtools-native/glibc-conflict-rename.patch b/meta/recipes-devtools/cdrtools/cdrtools-native/glibc-conflict-rename.patch
index 0b9b892..2fd5696 100644
--- a/meta/recipes-devtools/cdrtools/cdrtools-native/glibc-conflict-rename.patch
+++ b/meta/recipes-devtools/cdrtools/cdrtools-native/glibc-conflict-rename.patch
@@ -1,3 +1,11 @@
+This patch fixes collisions between locally defined functions
+and glibc's fexecve() and getline() functions.
+
+Upstream-Status: Inappropriate [Other]
+Upstream no longer maintains a GPL version of this utility.
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
 Index: cdrtools-2.01/include/schily.h
 ===================================================================
 --- cdrtools-2.01.orig/include/schily.h	2009-06-18 11:30:45.000000000 +0100
diff --git a/meta/recipes-devtools/cdrtools/cdrtools-native/no_usr_src.patch b/meta/recipes-devtools/cdrtools/cdrtools-native/no_usr_src.patch
index 0318d31..82e57d1 100644
--- a/meta/recipes-devtools/cdrtools/cdrtools-native/no_usr_src.patch
+++ b/meta/recipes-devtools/cdrtools/cdrtools-native/no_usr_src.patch
@@ -1,3 +1,10 @@
+Remove hard-coded references to /usr/src/linux/include to avoid
+host contamination.
+
+Upstream-Status: [Other (build-system specific)]
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
 Index: cdrtools-2.01/DEFAULTS/Defaults.gnu
 ===================================================================
 --- cdrtools-2.01.orig/DEFAULTS/Defaults.gnu	2008-09-22 12:42:12.000000000 +0100
diff --git a/meta/recipes-devtools/cdrtools/cdrtools-native_2.01.bb b/meta/recipes-devtools/cdrtools/cdrtools-native_2.01.bb
index 769e5e2..edebf57 100644
--- a/meta/recipes-devtools/cdrtools/cdrtools-native_2.01.bb
+++ b/meta/recipes-devtools/cdrtools/cdrtools-native_2.01.bb
@@ -1,21 +1,22 @@
 # cdrtools-native OE build file
 # Copyright (C) 2004-2006, Advanced Micro Devices, Inc.  All Rights Reserved
 # Released under the MIT license (see packages/COPYING)
-
-LICENSE="GPL"
-DESCRIPTION="A set of tools for CD recording, including cdrecord"
-HOMEPAGE="http://cdrecord.berlios.de/old/private/cdrecord.html"
-PR = "r2"
-
+SUMMARY = "A set of tools for CD recording, including cdrecord"
+DESCRIPTION = "A set of tools for CD recording, including cdrecord"
+HOMEPAGE = "http://cdrecord.berlios.de/private/cdrecord.html"
+SECTION = "console/utils"
+PRIORITY = "optional"
+LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
+PR = "r2"
 
-SRC_URI="ftp://ftp.berlios.de/pub/cdrecord/cdrtools-${PV}.tar.bz2 \
-         file://no_usr_src.patch;patch=1 \
-         file://glibc-conflict-rename.patch;patch=1"
+SRC_URI = "ftp://ftp.berlios.de/pub/cdrecord/cdrtools-${PV}.tar.bz2 \
+           file://no_usr_src.patch \
+           file://glibc-conflict-rename.patch"
 
 inherit native
 
-STAGE_TEMP="${WORKDIR}/image-temp"
+STAGE_TEMP = "${WORKDIR}/image-temp"
 
 do_install() {
 	install -d ${STAGE_TEMP}
-- 
1.7.1


