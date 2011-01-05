Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id E86B04C811FB
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 07:07:57 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Jan 2011 05:06:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,278,1291622400"; d="scan'208";a="370354719"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by azsmga001.ch.intel.com with ESMTP; 05 Jan 2011 05:06:01 -0800
Message-Id: <7281ba46ddb4a395070e122b80f8367cdd79f35c.1294232460.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1294232460.git.dexuan.cui@intel.com>
References: <cover.1294232460.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Wed, 5 Jan 2011 20:13:29 +0800
Date: Wed, 05 Jan 2011 21:05:45 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 05/12] resourceproto: upgrade from 1.1.0 to 1.1.1
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
X-List-Received-Date: Wed, 05 Jan 2011 13:07:58 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 ...sourceproto_1.1.0.bb => resourceproto_1.1.1.bb} |    8 +++++---
 1 files changed, 5 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{resourceproto_1.1.0.bb => resourceproto_1.1.1.bb} (50%)

diff --git a/meta/recipes-graphics/xorg-proto/resourceproto_1.1.0.bb b/meta/recipes-graphics/xorg-proto/resourceproto_1.1.1.bb
similarity index 50%
rename from meta/recipes-graphics/xorg-proto/resourceproto_1.1.0.bb
rename to meta/recipes-graphics/xorg-proto/resourceproto_1.1.1.bb
index 23afed7..8cc0607 100644
--- a/meta/recipes-graphics/xorg-proto/resourceproto_1.1.0.bb
+++ b/meta/recipes-graphics/xorg-proto/resourceproto_1.1.1.bb
@@ -4,8 +4,10 @@ LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=e01e66e4b317088cf869bc98e6af4fb6"
 
 CONFLICTS = "resourceext"
-PR = "r1"
+
+PR = "r0"
 PE = "1"
 
-SRC_URI[md5sum] = "84795594b3ebd2ee2570cf93340d152c"
-SRC_URI[sha256sum] = "408d9ab067e4141d1bb844d2d0d7d26ad177567384190c32a913131cf549b36b"
+SRC_URI[md5sum] = "8ff0525ae7502b48597b78d00bc22284"
+SRC_URI[sha256sum] = "8579818e99aa881c00c04eb5f96fcbeec463816ca8e3cda9d3d25562f7a4b8c6"
+
-- 
1.7.2


