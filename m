Return-Path: <edwin.zhai@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id CE50F4C80AC6
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 08:13:10 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Apr 2011 06:13:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,232,1301900400"; d="scan'208";a="630483999"
Received: from yocto-build8.sh.intel.com (HELO localhost) ([10.239.48.1])
	by orsmga002.jf.intel.com with ESMTP; 18 Apr 2011 06:13:10 -0700
Message-Id: <f46f8defe5995ad2238689c505b3fd17e2925078.1303131764.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1303131764.git.edwin.zhai@intel.com>
References: <cover.1303131764.git.edwin.zhai@intel.com>
Old-Date: Thu, 14 Apr 2011 14:10:31 +0800
Date: Mon, 18 Apr 2011 21:10:08 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 5/5] jpeg: Upgrade to 8c (from 8b)
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
X-List-Received-Date: Mon, 18 Apr 2011 13:13:11 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../{jpeg-8b => jpeg-8c}/debian-libjpeg7_7-1.diff  |    4 ++++
 meta/recipes-core/jpeg/{jpeg_8b.bb => jpeg_8c.bb}  |    8 ++++----
 2 files changed, 8 insertions(+), 4 deletions(-)
 rename meta/recipes-core/jpeg/{jpeg-8b => jpeg-8c}/debian-libjpeg7_7-1.diff (98%)
 rename meta/recipes-core/jpeg/{jpeg_8b.bb => jpeg_8c.bb} (82%)

diff --git a/meta/recipes-core/jpeg/jpeg-8b/debian-libjpeg7_7-1.diff b/meta/recipes-core/jpeg/jpeg-8c/debian-libjpeg7_7-1.diff
similarity index 98%
rename from meta/recipes-core/jpeg/jpeg-8b/debian-libjpeg7_7-1.diff
rename to meta/recipes-core/jpeg/jpeg-8c/debian-libjpeg7_7-1.diff
index 2e4867a..3b8fa69 100755
--- a/meta/recipes-core/jpeg/jpeg-8b/debian-libjpeg7_7-1.diff
+++ b/meta/recipes-core/jpeg/jpeg-8c/debian-libjpeg7_7-1.diff
@@ -1,3 +1,7 @@
+This is a well-known debian patch used by many Linux distribution, but not
+accepted by upstream yet.
+Upstream-Status: Pending
+
 --- libjpeg7-7.orig/config.sub
 +++ libjpeg7-7/config.sub
 @@ -1,4 +1,10 @@
diff --git a/meta/recipes-core/jpeg/jpeg_8b.bb b/meta/recipes-core/jpeg/jpeg_8c.bb
similarity index 82%
rename from meta/recipes-core/jpeg/jpeg_8b.bb
rename to meta/recipes-core/jpeg/jpeg_8c.bb
index 8e2c24d..730cc0c 100644
--- a/meta/recipes-core/jpeg/jpeg_8b.bb
+++ b/meta/recipes-core/jpeg/jpeg_8c.bb
@@ -5,7 +5,7 @@ BUGTRACKER = ""
 
 LICENSE ="jpeg"
 LIC_FILES_CHKSUM = "file://cdjpeg.h;endline=12;md5=78fa8dbac547bb5b2a0e6457a6cfe21d \
-                    file://jpeglib.h;endline=14;md5=dd06b5575519f735ec2565ed36ce62e7 \
+                    file://jpeglib.h;endline=14;md5=22f1e0f8fc71f6f7563146d3b210dbe5 \
                     file://djpeg.c;endline=13;md5=ca89254925da06fef47e4b6468233432"
 
 SECTION = "libs"
@@ -17,10 +17,10 @@ DEPENDS_virtclass-native = "libtool-native"
 PR = "r0"
 
 SRC_URI = "http://www.ijg.org/files/jpegsrc.v${PV}.tar.gz \
-	   file://debian-libjpeg7_7-1.diff;patch=1"
+	   file://debian-libjpeg7_7-1.diff;"
 
-SRC_URI[md5sum] = "e022acbc5b36cd2cb70785f5b575661e"
-SRC_URI[sha256sum] = "36e6208edec591bae8f2fc370ea4f991447badb6377a125c211ffa7b503174a7"
+SRC_URI[md5sum] = "a2c10c04f396a9ce72894beb18b4e1f9"
+SRC_URI[sha256sum] = "edfc0b3e004b2fe58ffeeec89f96e3a3c28972c46725ec127d01edf8a1cc7c9a"
 
 inherit autotools 
 
-- 
1.7.1


