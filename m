Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8373C4C80A4E
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 07:35:11 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Feb 2011 05:35:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,469,1291622400"; d="scan'208";a="602449897"
Received: from unknown (HELO localhost) ([10.255.14.192])
	by orsmga002.jf.intel.com with ESMTP; 14 Feb 2011 05:35:10 -0800
Message-Id: <3ccda27195bbe711921a9d695e497e2b4622a776.1297690342.git.sgw@linux.intel.com>
In-Reply-To: <cover.1297690342.git.sgw@linux.intel.com>
References: <cover.1297690342.git.sgw@linux.intel.com>
Old-Date: Mon, 14 Feb 2011 05:30:59 -0800
Date: Mon, 14 Feb 2011  5:35:09 -0800
To: poky@yoctoproject.org
CC: 
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 5/5] xpsb-glx: add libxfixes and libxdamages to DEPENDS
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
X-List-Received-Date: Mon, 14 Feb 2011 13:35:11 -0000

From: Saul Wold <sgw@linux.intel.com>

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb     |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb b/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
index 6ceb1cb..f4b43ab 100644
--- a/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
+++ b/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
@@ -35,7 +35,7 @@ S = "${WORKDIR}/${PN}-${PV}/mesa"
 
 EXTRA_OEMAKE = "linux-dri-x86"
 
-DEPENDS += "libdrm-poulsbo libxxf86vm dri2proto libxmu libxi glproto makedepend-native"
+DEPENDS += "libxfixes libxdamage libdrm-poulsbo libxxf86vm dri2proto libxmu libxi glproto makedepend-native"
 
 FILES_${PN} = "${libdir}/* ${libdir}/xorg/modules/dri/* \
 	    ${libdir}/xorg/modules/drivers/*"
-- 
1.7.1.1


