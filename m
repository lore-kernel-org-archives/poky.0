Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 422984C800A3
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 04:35:14 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 Feb 2011 02:35:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,485,1291622400"; d="scan'208";a="390099474"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by azsmga001.ch.intel.com with ESMTP; 17 Feb 2011 02:35:13 -0800
Message-Id: <d0bea6b772b8b65b50fff81836a25df8977488c9.1297940034.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1297940034.git.dongxiao.xu@intel.com>
References: <cover.1297940034.git.dongxiao.xu@intel.com>
Old-Date: Thu, 17 Feb 2011 16:56:48 +0800
Date: Thu, 17 Feb 2011 18:55:30 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 1/1] gstreamer: reenable PARALLEL_MAKE
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
X-List-Received-Date: Thu, 17 Feb 2011 10:35:14 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../gstreamer/gstreamer_0.10.31.bb                 |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-multimedia/gstreamer/gstreamer_0.10.31.bb b/meta/recipes-multimedia/gstreamer/gstreamer_0.10.31.bb
index e7b00ad..c919b18 100644
--- a/meta/recipes-multimedia/gstreamer/gstreamer_0.10.31.bb
+++ b/meta/recipes-multimedia/gstreamer/gstreamer_0.10.31.bb
@@ -27,7 +27,7 @@ EXTRA_OECONF = "--disable-docs-build --disable-dependency-tracking --with-check=
 #	mv ${WORKDIR}/gstregistrybinary.[ch] ${S}/gst/
 #}
 
-PARALLEL_MAKE = ""
+#PARALLEL_MAKE = ""
 
 FILES_${PN} += " ${libdir}/gstreamer-0.10/*.so"
 FILES_${PN}-dev += " ${libdir}/gstreamer-0.10/*.la ${libdir}/gstreamer-0.10/*.a"
-- 
1.6.3.3


