Return-Path: <edwin.zhai@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 254214C811EF
	for <poky@yoctoproject.org>; Tue,  4 Jan 2011 07:45:14 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Jan 2011 05:45:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,272,1291622400"; d="scan'208";a="643220791"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.31])
	by fmsmga002.fm.intel.com with ESMTP; 04 Jan 2011 05:45:11 -0800
Message-Id: <7de4fc824d65d4ff9b1c7fd5d3a6626134a0bd7d.1294148490.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1294148490.git.edwin.zhai@intel.com>
References: <cover.1294148490.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Old-Date: Thu, 30 Dec 2010 20:44:52 +0800
Date: Tue, 04 Jan 2011 21:50:18 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 4/7] xvinfo: Upgrade to 1.1.1
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
X-List-Received-Date: Tue, 04 Jan 2011 13:45:14 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../xorg-app/{xvinfo_1.0.2.bb => xvinfo_1.1.1.bb}  |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-graphics/xorg-app/{xvinfo_1.0.2.bb => xvinfo_1.1.1.bb} (58%)

diff --git a/meta/recipes-graphics/xorg-app/xvinfo_1.0.2.bb b/meta/recipes-graphics/xorg-app/xvinfo_1.1.1.bb
similarity index 58%
rename from meta/recipes-graphics/xorg-app/xvinfo_1.0.2.bb
rename to meta/recipes-graphics/xorg-app/xvinfo_1.1.1.bb
index 3c6f667..0bebbfb 100644
--- a/meta/recipes-graphics/xorg-app/xvinfo_1.0.2.bb
+++ b/meta/recipes-graphics/xorg-app/xvinfo_1.1.1.bb
@@ -5,5 +5,5 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=4641deddaa80fe7ca88e944e1fd94a94"
 DEPENDS += " libxv"
 PE = "1"
 
-SRC_URI[md5sum] = "e1e318436f49e2f0f3764593dadd9ad2"
-SRC_URI[sha256sum] = "126e2a612ac723f9688904fcfa612688d62e520ce55c56eb34eb5390074cf150"
+SRC_URI[md5sum] = "c88feb501083951a8f47a21aaeb1529d"
+SRC_URI[sha256sum] = "60c74aa190bcf1e244f6f1576dc43869018a8ed5ba319703a5c198d3466a3985"
-- 
1.7.0.4


