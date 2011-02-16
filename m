Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4966E4C80A59
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 03:36:16 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Feb 2011 01:36:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,479,1291622400"; d="scan'208";a="658192217"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by fmsmga002.fm.intel.com with ESMTP; 16 Feb 2011 01:36:11 -0800
Message-Id: <d0739d8a258c251013abd846b8c7a1c00b7e30ae.1297848777.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1297848777.git.dexuan.cui@intel.com>
References: <cover.1297848777.git.dexuan.cui@intel.com>
Old-Date: Wed, 16 Feb 2011 17:16:39 +0800
Date: Wed, 16 Feb 2011 17:35:10 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 1/1] mklibs-native: fix the build on Ubuntu 9.04 by defining STT_GNU_IFUNC
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
X-List-Received-Date: Wed, 16 Feb 2011 09:36:16 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

mklibs-native needs elf.h (that is supplied by libc6-dev).
since STAGING_INCDIR_NATIVE doesn't contain elf.h (we don't have eglibc-native),
so the host's /usr/include/elf.h is used.
Unluckily, the libc6-dev in Ubuntu 9.04 is so old that the elf.h doesn't
define STT_GNU_IFUNC, so we have to define it ourselves.

Fixes [BUGID #726]

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../mklibs/files/fix_STT_GNU_IFUNC.patch           |   23 ++++++++++++++++++++
 .../mklibs/mklibs-native_0.1.31.bb                 |    3 +-
 2 files changed, 25 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-devtools/mklibs/files/fix_STT_GNU_IFUNC.patch

diff --git a/meta/recipes-devtools/mklibs/files/fix_STT_GNU_IFUNC.patch b/meta/recipes-devtools/mklibs/files/fix_STT_GNU_IFUNC.patch
new file mode 100644
index 0000000..88badde
--- /dev/null
+++ b/meta/recipes-devtools/mklibs/files/fix_STT_GNU_IFUNC.patch
@@ -0,0 +1,23 @@
+The libc6-dev in Ubuntu 9.04 is so old that the elf.h doesn't
+define STT_GNU_IFUNC, so we have to define it ourselves.
+-- Dexuan Cui (dexuan.cui@intel.com) Feb 16, 2011.
+
+diff --git a/src/mklibs-readelf/main.cpp b/src/mklibs-readelf/main.cpp
+index 2444c39..56d93f8 100644
+--- a/src/mklibs-readelf/main.cpp
++++ b/src/mklibs-readelf/main.cpp
+@@ -6,6 +6,14 @@
+ #include <vector>
+ 
+ #include <elf.h>
++/*
++ * The /usr/include/elf.h in some distributions(like Ubuntu 9.04) doesn't
++ * define the macro. We need to define it here.
++ */
++#ifndef STT_GNU_IFUNC
++#define STT_GNU_IFUNC   10              /* Symbol is indirect code object */
++#endif
++
+ #include <getopt.h>
+ 
+ #include "elf.hpp"
diff --git a/meta/recipes-devtools/mklibs/mklibs-native_0.1.31.bb b/meta/recipes-devtools/mklibs/mklibs-native_0.1.31.bb
index 2044d12..7f4afc0 100644
--- a/meta/recipes-devtools/mklibs/mklibs-native_0.1.31.bb
+++ b/meta/recipes-devtools/mklibs/mklibs-native_0.1.31.bb
@@ -5,10 +5,11 @@ LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://debian/copyright;md5=98d31037b13d896e33890738ef01af64"
 DEPENDS = "python-native"
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "http://ftp.de.debian.org/debian/pool/main/m/mklibs/${BPN}_${PV}.tar.gz \
 	file://ac_init_fix.patch\
+	file://fix_STT_GNU_IFUNC.patch\
 "
 
 SRC_URI[md5sum] = "f4df0307ccbdf60070e42277513f27ed"
-- 
1.7.2


