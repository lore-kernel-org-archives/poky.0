Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8A8C04C8112F
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 00:53:30 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 Nov 2010 22:53:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,259,1288594800"; d="scan'208";a="861529538"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2010 22:53:29 -0800
Message-Id: <1ebfa3d7c3446a6c2b127910e6e9b9a170cf3d4f.1290736298.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1290736297.git.dongxiao.xu@intel.com>
References: <cover.1290736297.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 23 Nov 2010 14:47:53 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 01/14] cmake-native: Upgrade to version 2.8.3
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
X-List-Received-Date: Fri, 26 Nov 2010 06:53:30 -0000

Fixed its metadata.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-devtools/cmake/cmake-native_2.8.2.bb |    4 ----
 meta/recipes-devtools/cmake/cmake-native_2.8.3.bb |    7 +++++++
 meta/recipes-devtools/cmake/cmake.inc             |    2 ++
 3 files changed, 9 insertions(+), 4 deletions(-)
 delete mode 100644 meta/recipes-devtools/cmake/cmake-native_2.8.2.bb
 create mode 100644 meta/recipes-devtools/cmake/cmake-native_2.8.3.bb

diff --git a/meta/recipes-devtools/cmake/cmake-native_2.8.2.bb b/meta/recipes-devtools/cmake/cmake-native_2.8.2.bb
deleted file mode 100644
index 6175728..0000000
--- a/meta/recipes-devtools/cmake/cmake-native_2.8.2.bb
+++ /dev/null
@@ -1,4 +0,0 @@
-CMAKE_MAJOR_VERSION="2.8"
-require cmake.inc
-inherit native
-PR = "r0"
diff --git a/meta/recipes-devtools/cmake/cmake-native_2.8.3.bb b/meta/recipes-devtools/cmake/cmake-native_2.8.3.bb
new file mode 100644
index 0000000..1595416
--- /dev/null
+++ b/meta/recipes-devtools/cmake/cmake-native_2.8.3.bb
@@ -0,0 +1,7 @@
+CMAKE_MAJOR_VERSION="2.8"
+require cmake.inc
+inherit native
+PR = "r0"
+
+SRC_URI[md5sum] = "a76a44b93acf5e3badda9de111385921"
+SRC_URI[sha256sum] = "689ed02786b5cefa5515c7716784ee82a82e8ece6be5a3d629ac3cc0c05fc288"
diff --git a/meta/recipes-devtools/cmake/cmake.inc b/meta/recipes-devtools/cmake/cmake.inc
index 7743847..f6b1c3b 100644
--- a/meta/recipes-devtools/cmake/cmake.inc
+++ b/meta/recipes-devtools/cmake/cmake.inc
@@ -6,6 +6,8 @@ HOMEPAGE = "http://www.cmake.org/"
 BUGTRACKER = "http://public.kitware.com/Bug/my_view_page.php"
 SECTION = "console/utils"
 LICENSE = "BSD"
+LIC_FILES_CHKSUM = "file://Copyright.txt;md5=f372516292ff7c33337bf16a74a5f9a8 \
+                    file://Source/cmake.h;beginline=1;endline=10;md5=341736dae83c9e344b53eeb1bc7d7bc2"
 
 SRC_URI = "http://www.cmake.org/files/v${CMAKE_MAJOR_VERSION}/cmake-${PV}.tar.gz"
 
-- 
1.6.3.3


