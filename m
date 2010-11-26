Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 96BCD4C811DD
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 10:08:18 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 26 Nov 2010 08:08:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,261,1288594800"; d="scan'208";a="630566298"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by fmsmga002.fm.intel.com with ESMTP; 26 Nov 2010 08:08:18 -0800
Message-Id: <ed2031fb2a4b6151e5cc2f964ec0c81ef934eab6.1290787706.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290787706.git.edwin.zhai@intel.com>
References: <cover.1290787706.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 26 Nov 2010 23:24:16 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 07/11] xvinfo: Add license checksum
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
X-List-Received-Date: Fri, 26 Nov 2010 16:08:18 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 meta/recipes-graphics/xorg-app/xvinfo_1.0.2.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/xorg-app/xvinfo_1.0.2.bb b/meta/recipes-graphics/xorg-app/xvinfo_1.0.2.bb
index ac27f13..640f413 100644
--- a/meta/recipes-graphics/xorg-app/xvinfo_1.0.2.bb
+++ b/meta/recipes-graphics/xorg-app/xvinfo_1.0.2.bb
@@ -1,5 +1,6 @@
 require xorg-app-common.inc
 
 DESCRIPTION = "Print out X-Video extension adaptor information"
+LIC_FILES_CHKSUM = "file://COPYING;md5=4641deddaa80fe7ca88e944e1fd94a94"
 DEPENDS += " libxv"
 PE = "1"
-- 
1.7.0.4


