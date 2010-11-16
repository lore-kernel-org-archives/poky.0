Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8589F4C811D0
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 07:42:01 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Nov 2010 05:41:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,206,1288594800"; d="scan'208";a="858118239"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.22])
	by fmsmga001.fm.intel.com with ESMTP; 16 Nov 2010 05:41:54 -0800
Message-Id: <008429f8ecc951a2acb73d774b1630971ec141c6.1289914983.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1289914982.git.dongxiao.xu@intel.com>
References: <cover.1289914982.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 16 Nov 2010 10:02:17 +0800
To: poky@yoctoproject.org
Subject: [PATCH 08/14] libproxy: Upgraded to version 0.4.6
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
X-List-Received-Date: Tue, 16 Nov 2010 13:42:01 -0000

Remove the disable_Os_option.patch since the latest code doesn't
use Os option.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../libproxy-0.4.3/disable_Os_option.patch         |   17 -----------------
 .../{libproxy_0.4.3.bb => libproxy_0.4.6.bb}       |    5 ++---
 2 files changed, 2 insertions(+), 20 deletions(-)
 delete mode 100644 meta/recipes-support/libproxy/libproxy-0.4.3/disable_Os_option.patch
 rename meta/recipes-support/libproxy/{libproxy_0.4.3.bb => libproxy_0.4.6.bb} (93%)

diff --git a/meta/recipes-support/libproxy/libproxy-0.4.3/disable_Os_option.patch b/meta/recipes-support/libproxy/libproxy-0.4.3/disable_Os_option.patch
deleted file mode 100644
index cdf6ff6..0000000
--- a/meta/recipes-support/libproxy/libproxy-0.4.3/disable_Os_option.patch
+++ /dev/null
@@ -1,17 +0,0 @@
-Do not set Os optimization in target APP CFLAGS, since it may have potential
-error if "--enable-target-optspace" is not set when configuring GCC.
-
-Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
-
-diff -ruN libproxy-0.4.3-orig/CMakeLists.txt libproxy-0.4.3/CMakeLists.txt
---- libproxy-0.4.3-orig/CMakeLists.txt	2010-09-21 17:16:06.000000000 +0800
-+++ libproxy-0.4.3/CMakeLists.txt	2010-09-21 17:16:40.000000000 +0800
-@@ -61,7 +61,7 @@
-   add_definitions(-D_CRT_SECURE_NO_WARNINGS=1)
- else()
-   add_definitions(-D_POSIX_C_SOURCE=1)
--  set(CMAKE_CXX_FLAGS "-g -Wall -Werror -fvisibility=hidden -Os ${CMAKE_CXX_FLAGS}")
-+  set(CMAKE_CXX_FLAGS "-g -Wall -Werror -fvisibility=hidden -O2 ${CMAKE_CXX_FLAGS}")
- endif()
- 
- ### Subdirectories
diff --git a/meta/recipes-support/libproxy/libproxy_0.4.3.bb b/meta/recipes-support/libproxy/libproxy_0.4.6.bb
similarity index 93%
rename from meta/recipes-support/libproxy/libproxy_0.4.3.bb
rename to meta/recipes-support/libproxy/libproxy_0.4.6.bb
index ffa06f6..b317eb2 100644
--- a/meta/recipes-support/libproxy/libproxy_0.4.3.bb
+++ b/meta/recipes-support/libproxy/libproxy_0.4.6.bb
@@ -9,10 +9,9 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=7d7044444a7b1b116e8783edcdb44ff4 \
 
 DEPENDS = "virtual/libx11 xmu gconf-dbus"
 
-SRC_URI = "http://libproxy.googlecode.com/files/libproxy-${PV}.tar.gz \
-           file://disable_Os_option.patch"
+SRC_URI = "http://libproxy.googlecode.com/files/libproxy-${PV}.tar.gz"
 
-PR = "r2"
+PR = "r0"
 
 inherit cmake pkgconfig
 
-- 
1.6.3.3


