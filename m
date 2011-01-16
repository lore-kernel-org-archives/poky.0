Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C48974C811F0
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 06:15:03 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Jan 2011 04:15:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,329,1291622400"; d="scan'208";a="697350633"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 16 Jan 2011 04:15:02 -0800
Message-Id: <89ea15bb1ba1100ccbb575186852cb22f93c096b.1295179186.git.ke.yu@intel.com>
In-Reply-To: <cover.1295179186.git.ke.yu@intel.com>
References: <cover.1295179186.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Fri, 14 Jan 2011 11:42:11 +0800
Date: Sun, 16 Jan 2011 20:19:38 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 06/19] mkfontscale: upgrade to 1.0.8
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
X-List-Received-Date: Sun, 16 Jan 2011 12:15:04 -0000

- update license checksum, due to commit "Sun's copyrights now belong to Oracle". the license type is not changed.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../recipes-graphics/xorg-app/mkfontscale_1.0.7.bb |   12 ------------
 .../recipes-graphics/xorg-app/mkfontscale_1.0.8.bb |   12 ++++++++++++
 2 files changed, 12 insertions(+), 12 deletions(-)
 delete mode 100644 meta/recipes-graphics/xorg-app/mkfontscale_1.0.7.bb
 create mode 100644 meta/recipes-graphics/xorg-app/mkfontscale_1.0.8.bb

diff --git a/meta/recipes-graphics/xorg-app/mkfontscale_1.0.7.bb b/meta/recipes-graphics/xorg-app/mkfontscale_1.0.7.bb
deleted file mode 100644
index c117519..0000000
--- a/meta/recipes-graphics/xorg-app/mkfontscale_1.0.7.bb
+++ /dev/null
@@ -1,12 +0,0 @@
-require xorg-app-common.inc
-
-DESCRIPTION = "a program to create an index of scalable font files for X"
-
-DEPENDS += " zlib libfontenc freetype virtual/libx11"
-
-BBCLASSEXTEND = "native"
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=8ecbbbc1259a329e96ccc4dd86ad2ca2"
-
-SRC_URI[md5sum] = "96ca346f185c0ab48e42bf5bb0375da5"
-SRC_URI[sha256sum] = "8306b229cca233216a6582cb1ff60af78e37c47d6412ac823d7d41c3d7de7127"
diff --git a/meta/recipes-graphics/xorg-app/mkfontscale_1.0.8.bb b/meta/recipes-graphics/xorg-app/mkfontscale_1.0.8.bb
new file mode 100644
index 0000000..23bae39
--- /dev/null
+++ b/meta/recipes-graphics/xorg-app/mkfontscale_1.0.8.bb
@@ -0,0 +1,12 @@
+require xorg-app-common.inc
+
+DESCRIPTION = "a program to create an index of scalable font files for X"
+
+DEPENDS += " zlib libfontenc freetype virtual/libx11"
+
+BBCLASSEXTEND = "native"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=2e0d129d05305176d1a790e0ac1acb7f"
+
+SRC_URI[md5sum] = "5210c9385c6cc4a00ce829d8dc9c819b"
+SRC_URI[sha256sum] = "6eb57786cd79eebfbaca386fe24dcfe50689dbf433d052e58291c2925f2050f9"
-- 
1.7.0.4


