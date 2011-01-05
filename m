Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6C9664C81060
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 07:06:14 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 Jan 2011 05:06:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,278,1291622400"; d="scan'208";a="693795185"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by orsmga001.jf.intel.com with ESMTP; 05 Jan 2011 05:06:13 -0800
Message-Id: <3e88cdab06d0ed6ffea23cc39866a2466df86b3d.1294232460.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1294232460.git.dexuan.cui@intel.com>
References: <cover.1294232460.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Wed, 5 Jan 2011 20:14:49 +0800
Date: Wed, 05 Jan 2011 21:05:47 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 06/12] scrnsaverproto: upgrade from 1.2.0 to 1.2.1
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
X-List-Received-Date: Wed, 05 Jan 2011 13:06:14 -0000

Add "--enable-specs=no" to disable doc generation -- I doubt we really need
it, and it doesn't work well due to

SEVERE: Error with opening URL 'http://docbook.sourceforge.net/release/images/draft.png'.
Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 ...saverproto_1.2.0.bb => scrnsaverproto_1.2.1.bb} |    9 ++++++---
 1 files changed, 6 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{scrnsaverproto_1.2.0.bb => scrnsaverproto_1.2.1.bb} (53%)

diff --git a/meta/recipes-graphics/xorg-proto/scrnsaverproto_1.2.0.bb b/meta/recipes-graphics/xorg-proto/scrnsaverproto_1.2.1.bb
similarity index 53%
rename from meta/recipes-graphics/xorg-proto/scrnsaverproto_1.2.0.bb
rename to meta/recipes-graphics/xorg-proto/scrnsaverproto_1.2.1.bb
index 0000a6b..c897a10 100644
--- a/meta/recipes-graphics/xorg-proto/scrnsaverproto_1.2.0.bb
+++ b/meta/recipes-graphics/xorg-proto/scrnsaverproto_1.2.1.bb
@@ -5,8 +5,11 @@ LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=eed49b78b15b436c933b6b8b054e3901 \
                     file://saverproto.h;endline=26;md5=a84c0637305159f3c0ab173aaeede48d"
 
-PR = "r1"
+PR = "r0"
 PE = "1"
 
-SRC_URI[md5sum] = "9040c991a56ee9b5976936f8c65d5c8a"
-SRC_URI[sha256sum] = "deaf0a3212617e0dab353a3c3a66e0a1f2398306eca0fd882ac15996b0e44d99"
+EXTRA_OECONF_append = " --enable-specs=no"
+
+SRC_URI[md5sum] = "6af0f2e3369f5f74e69345e214f5fd0d"
+SRC_URI[sha256sum] = "fad2f73cac136fcddd311d27a14ac7e519a9bec6ab272490d9c9b363556024f1"
+
-- 
1.7.2


