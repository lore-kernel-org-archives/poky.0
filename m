Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9716A4C811EB
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 20:29:29 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 29 Dec 2010 18:29:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,247,1291622400"; d="scan'208";a="641614853"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga002.fm.intel.com with ESMTP; 29 Dec 2010 18:29:28 -0800
Message-Id: <af6347c9f3dc22f026c074cf77809fac0aab866a.1293676328.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1293676328.git.dongxiao.xu@intel.com>
References: <cover.1293676328.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Wed, 29 Dec 2010 15:25:57 +0800
Date: Thu, 30 Dec 2010 10:39:14 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 14/19] libogg: upgrade to version 1.2.2
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
X-List-Received-Date: Thu, 30 Dec 2010 02:29:29 -0000

upgrade from 1.2.1 to 1.2.2

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../libogg/{libogg_1.2.1.bb => libogg_1.2.2.bb}    |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-multimedia/libogg/{libogg_1.2.1.bb => libogg_1.2.2.bb} (81%)

diff --git a/meta/recipes-multimedia/libogg/libogg_1.2.1.bb b/meta/recipes-multimedia/libogg/libogg_1.2.2.bb
similarity index 81%
rename from meta/recipes-multimedia/libogg/libogg_1.2.1.bb
rename to meta/recipes-multimedia/libogg/libogg_1.2.2.bb
index 37b6c09..83454c8 100644
--- a/meta/recipes-multimedia/libogg/libogg_1.2.1.bb
+++ b/meta/recipes-multimedia/libogg/libogg_1.2.2.bb
@@ -13,7 +13,7 @@ PR = "r0"
 
 SRC_URI = "http://downloads.xiph.org/releases/ogg/libogg-${PV}.tar.gz"
 
-SRC_URI[md5sum] = "b998c2420721146df3b3d0e7776c97b9"
-SRC_URI[sha256sum] = "6858848617bca6eab01e7d8526bc0d2a417e95070a255cbf9c881881365e36c0"
+SRC_URI[md5sum] = "5a9fcabc9a1b7c6f1cd75ddc78f36c56"
+SRC_URI[sha256sum] = "ab000574bc26d5f01284f5b0f50e12dc761d035c429f2e9c70cb2a9487d8cfba"
 
 inherit autotools pkgconfig
-- 
1.6.3.3


