Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 27F294C81252
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 17:41:33 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 15:41:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="597180230"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by orsmga002.jf.intel.com with ESMTP; 27 Jan 2011 15:41:32 -0800
Message-Id: <c0afbc3a62f7fa44d90f433b3e7173a75d13dbed.1296171289.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1296171287.git.dexuan.cui@intel.com>
References: <cover.1296171287.git.dexuan.cui@intel.com>
Old-Date: Fri, 28 Jan 2011 01:04:49 +0800
Date: Fri, 28 Jan 2011  7:40:51 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [Dexuan: Jan 28: PULL 09/16] xineramaproto: upgrade from 1.2 to 1.2.1
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
X-List-Received-Date: Thu, 27 Jan 2011 23:41:33 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 ...xineramaproto_1.2.bb => xineramaproto_1.2.1.bb} |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{xineramaproto_1.2.bb => xineramaproto_1.2.1.bb} (61%)

diff --git a/meta/recipes-graphics/xorg-proto/xineramaproto_1.2.bb b/meta/recipes-graphics/xorg-proto/xineramaproto_1.2.1.bb
similarity index 61%
rename from meta/recipes-graphics/xorg-proto/xineramaproto_1.2.bb
rename to meta/recipes-graphics/xorg-proto/xineramaproto_1.2.1.bb
index 6b14b8f..d1f8cb4 100644
--- a/meta/recipes-graphics/xorg-proto/xineramaproto_1.2.bb
+++ b/meta/recipes-graphics/xorg-proto/xineramaproto_1.2.1.bb
@@ -4,8 +4,8 @@ LICENSE = "MIT & MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=3e397a5326c83d5d0ebf5b3f87163ac6 \
                     file://panoramiXproto.h;endline=24;md5=098e0bc089368a988092b3cbda617a57"
 
-PR = "r1"
+PR = "r0"
 PE = "1"
 
-SRC_URI[md5sum] = "a8aadcb281b9c11a91303e24cdea45f5"
-SRC_URI[sha256sum] = "58e88087ceec7201d918f94d6b1247325adca2a9903fed11291b412427a7ba64"
+SRC_URI[md5sum] = "9959fe0bfb22a0e7260433b8d199590a"
+SRC_URI[sha256sum] = "977574bb3dc192ecd9c55f59f991ec1dff340be3e31392c95deff423da52485b"
-- 
1.7.2


