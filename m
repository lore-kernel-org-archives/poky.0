Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB7B44C810EE
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 06:14:57 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Jan 2011 04:14:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,329,1291622400"; d="scan'208";a="593465315"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 16 Jan 2011 04:14:56 -0800
Message-Id: <8e2e1ec525739af9f230e74b8283ed281f27a1aa.1295179186.git.ke.yu@intel.com>
In-Reply-To: <cover.1295179186.git.ke.yu@intel.com>
References: <cover.1295179186.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Thu, 13 Jan 2011 15:37:33 +0800
Date: Sun, 16 Jan 2011 20:19:32 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 02/19] mkfontdir: upgrade to 1.0.6
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
X-List-Received-Date: Sun, 16 Jan 2011 12:14:57 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../{mkfontdir_1.0.5.bb => mkfontdir_1.0.6.bb}     |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/xorg-app/{mkfontdir_1.0.5.bb => mkfontdir_1.0.6.bb} (62%)

diff --git a/meta/recipes-graphics/xorg-app/mkfontdir_1.0.5.bb b/meta/recipes-graphics/xorg-app/mkfontdir_1.0.6.bb
similarity index 62%
rename from meta/recipes-graphics/xorg-app/mkfontdir_1.0.5.bb
rename to meta/recipes-graphics/xorg-app/mkfontdir_1.0.6.bb
index aebc11d..9b843fc 100644
--- a/meta/recipes-graphics/xorg-app/mkfontdir_1.0.5.bb
+++ b/meta/recipes-graphics/xorg-app/mkfontdir_1.0.6.bb
@@ -3,7 +3,7 @@ require xorg-app-common.inc
 DESCRIPTION = "a program to create an index of X font files in a directory"
 
 PE = "1"
-PR = "r1"
+PR = "r0"
 
 RDEPENDS_${PN} += "mkfontscale"
 
@@ -11,5 +11,5 @@ BBCLASSEXTEND = "native"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=b4fcf2b90cadbfc15009b9e124dc3a3f"
 
-SRC_URI[md5sum] = "9365ac66d19186eaf030482d312fca06"
-SRC_URI[sha256sum] = "a534650cff503619f9101577d816cde283da993bc039273477bd8dfbd01a2d0b"
+SRC_URI[md5sum] = "dc342dd8858416254bb5f71a9ddce589"
+SRC_URI[sha256sum] = "55d56c6310f8d2268cb8978e838d01d27c7d70e30282c373c5a935ab3fb8c859"
-- 
1.7.0.4


