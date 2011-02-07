Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4C35D4C80A7A
	for <poky@yoctoproject.org>; Mon,  7 Feb 2011 17:35:17 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 07 Feb 2011 15:35:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,439,1291622400"; d="scan'208";a="705066003"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga001.jf.intel.com with ESMTP; 07 Feb 2011 15:35:16 -0800
Message-Id: <f2bb815a35c5c4e2461e101147dd74cdf7872c37.1297121546.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1297121546.git.scott.a.garman@intel.com>
References: <cover.1297121546.git.scott.a.garman@intel.com>
Old-Date: Sun, 6 Feb 2011 20:40:33 -0800
Date: Mon, 07 Feb 2011 15:36:23 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 2/6] libxext: add native support to recipe
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
X-List-Received-Date: Mon, 07 Feb 2011 23:35:17 -0000

From: Scott Garman <scott.a.garman@intel.com>

The native recipe is needed by the transfig-native dependency chain.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-graphics/xorg-lib/libxext_1.2.0.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/xorg-lib/libxext_1.2.0.bb b/meta/recipes-graphics/xorg-lib/libxext_1.2.0.bb
index b907b9f..679bb1a 100644
--- a/meta/recipes-graphics/xorg-lib/libxext_1.2.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libxext_1.2.0.bb
@@ -21,7 +21,7 @@ PE = "1"
 
 XORG_PN = "libXext"
 
-BBCLASSEXTEND = "nativesdk"
+BBCLASSEXTEND = "native nativesdk"
 
 SRC_URI[md5sum] = "9bb236ff0193e9fc1c1fb504dd840331"
 SRC_URI[sha256sum] = "4aed3e211e41c47908c293515580e731c26048f61a1212bf0888d1f456de6ff7"
-- 
1.7.4


