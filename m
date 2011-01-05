Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 483C64C811E7
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 07:07:57 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Jan 2011 05:05:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,278,1291622400"; d="scan'208";a="370354687"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by azsmga001.ch.intel.com with ESMTP; 05 Jan 2011 05:05:56 -0800
Message-Id: <29fc36762a2e4cc1091b838059fdfbe9124dbfb4.1294232460.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1294232460.git.dexuan.cui@intel.com>
References: <cover.1294232460.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Wed, 5 Jan 2011 20:09:04 +0800
Date: Wed, 05 Jan 2011 21:05:40 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 01/12] renderproto: upgrade from 0.11 to the latest version 0.11.1
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
X-List-Received-Date: Wed, 05 Jan 2011 13:07:57 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../{renderproto_0.11.bb => renderproto_0.11.1.bb} |    9 +++++----
 1 files changed, 5 insertions(+), 4 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{renderproto_0.11.bb => renderproto_0.11.1.bb} (60%)

diff --git a/meta/recipes-graphics/xorg-proto/renderproto_0.11.bb b/meta/recipes-graphics/xorg-proto/renderproto_0.11.1.bb
similarity index 60%
rename from meta/recipes-graphics/xorg-proto/renderproto_0.11.bb
rename to meta/recipes-graphics/xorg-proto/renderproto_0.11.1.bb
index 50854f9..7fabfd9 100644
--- a/meta/recipes-graphics/xorg-proto/renderproto_0.11.bb
+++ b/meta/recipes-graphics/xorg-proto/renderproto_0.11.1.bb
@@ -1,14 +1,15 @@
 require xorg-proto-common.inc
 
-LICENSE = "MIT"
+LICENSE = "MIT-style"
 LIC_FILES_CHKSUM = "file://COPYING;md5=f826d99765196352e6122a406cf0d024 \
                     file://renderproto.h;beginline=4;endline=24;md5=3e5e2851dad240b0a3a27c4776b4fd1f"
 
 CONFLICTS = "renderext"
-PR = "r1"
+PR = "r0"
 PE = "1"
 
 BBCLASSEXTEND = "nativesdk"
 
-SRC_URI[md5sum] = "b160a9733fe91b666e74fca284333148"
-SRC_URI[sha256sum] = "c4d1d6d9b0b6ed9a328a94890c171d534f62708f0982d071ccd443322bedffc2"
+SRC_URI[md5sum] = "a914ccc1de66ddeb4b611c6b0686e274"
+SRC_URI[sha256sum] = "06735a5b92b20759204e4751ecd6064a2ad8a6246bb65b3078b862a00def2537"
+
-- 
1.7.2


