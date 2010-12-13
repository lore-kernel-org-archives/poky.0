Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7A9AF4C80FA4
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 11:47:07 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 Dec 2010 09:47:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,336,1288594800"; d="scan'208";a="635875128"
Received: from mukti.sc.intel.com (HELO localhost) ([143.183.140.51])
	by fmsmga002.fm.intel.com with ESMTP; 13 Dec 2010 09:47:07 -0800
Message-Id: <05e758f172d6e7974b8df052caebb75d05e692c8.1292262360.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1292262360.git.nitin.a.kamble@intel.com>
References: <cover.1292262360.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Date: Mon, 13 Dec 2010 09:23:27 -0800
To: poky@yoctoproject.org
Subject: [PATCH 2/2] eglibc: organize the recipes lic and other meta data in common file
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
 meta/recipes-core/eglibc/eglibc-common.inc  |   11 +++++++++++
 meta/recipes-core/eglibc/eglibc-initial.inc |    3 ++-
 meta/recipes-core/eglibc/eglibc.inc         |    9 ++-------
 3 files changed, 15 insertions(+), 8 deletions(-)
 create mode 100644 meta/recipes-core/eglibc/eglibc-common.inc

diff --git a/meta/recipes-core/eglibc/eglibc-common.inc b/meta/recipes-core/eglibc/eglibc-common.inc
new file mode 100644
index 0000000..a9b1476
--- /dev/null
+++ b/meta/recipes-core/eglibc/eglibc-common.inc
@@ -0,0 +1,11 @@
+SUMMARY = "Embedded GLIBC (GNU C Library)"
+DESCRIPTION = "Embedded GLIBC (EGLIBC) is a variant of the GNU C Library (GLIBC) that is designed to work well on embedded systems. EGLIBC strives to be source and binary compatible with GLIBC. EGLIBC's goals include reduced footprint, configurable components, better support for cross-compilation and cross-testing."
+HOMEPAGE = "http://www.eglibc.org/home"
+SECTION = "libs"
+PRIORITY = "required"
+LICENSE = "LGPL"
+INC_PR = "r11"
+LIC_FILES_CHKSUM = "file://LICENSES;md5=07a394b26e0902b9ffdec03765209770 \
+      file://COPYING;md5=393a5ca445f6965873eca0259a17f833 \
+      file://posix/rxspencer/COPYRIGHT;md5=dc5485bb394a13b2332ec1c785f5d83a \
+      file://COPYING.LIB;md5=bbb461211a33b134d42ed5ee802b37ff "
diff --git a/meta/recipes-core/eglibc/eglibc-initial.inc b/meta/recipes-core/eglibc/eglibc-initial.inc
index a240ae2..d49ec8a 100644
--- a/meta/recipes-core/eglibc/eglibc-initial.inc
+++ b/meta/recipes-core/eglibc/eglibc-initial.inc
@@ -1,4 +1,5 @@
-SECTION = "libs"
+require eglibc-common.inc
+
 DEPENDS = "linux-libc-headers virtual/${TARGET_PREFIX}gcc-initial"
 PROVIDES = "virtual/${TARGET_PREFIX}libc-initial"
 
diff --git a/meta/recipes-core/eglibc/eglibc.inc b/meta/recipes-core/eglibc/eglibc.inc
index 2857a40..4698254 100644
--- a/meta/recipes-core/eglibc/eglibc.inc
+++ b/meta/recipes-core/eglibc/eglibc.inc
@@ -1,10 +1,5 @@
-SUMMARY = "Embedded GLIBC (GNU C Library)"
-DESCRIPTION = "Embedded GLIBC (EGLIBC) is a variant of the GNU C Library (GLIBC) that is designed to work well on embedded systems. EGLIBC strives to be source and binary compatible with GLIBC. EGLIBC's goals include reduced footprint, configurable components, better support for cross-compilation and cross-testing."
-HOMEPAGE = "http://www.eglibc.org/home"
-SECTION = "libs"
-PRIORITY = "required"
-LICENSE = "LGPL"
-INC_PR = "r11"
+require eglibc-common.inc
+
 # nptl needs unwind support in gcc, which can't be built without glibc.
 DEPENDS = "virtual/${TARGET_PREFIX}gcc-intermediate linux-libc-headers"
 #this leads to circular deps, so lets not add it yet
-- 
1.7.2.2


