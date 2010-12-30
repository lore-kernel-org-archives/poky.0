Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9148F4C811F0
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 20:29:26 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 29 Dec 2010 18:29:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,247,1291622400"; d="scan'208";a="641614827"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga002.fm.intel.com with ESMTP; 29 Dec 2010 18:29:20 -0800
Message-Id: <4c2dd352cb0f582e31687d629e8cf717cc634ac6.1293676328.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1293676328.git.dongxiao.xu@intel.com>
References: <cover.1293676328.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Wed, 29 Dec 2010 09:55:04 +0800
Date: Thu, 30 Dec 2010 10:38:45 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 07/19] gst-plugins-good: upgrade to version 0.10.26
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
X-List-Received-Date: Thu, 30 Dec 2010 02:29:26 -0000

upgrade from 0.10.25 to 0.10.26

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 ...good_0.10.25.bb => gst-plugins-good_0.10.26.bb} |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-multimedia/gstreamer/{gst-plugins-good_0.10.25.bb => gst-plugins-good_0.10.26.bb} (83%)

diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.25.bb b/meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.26.bb
similarity index 83%
rename from meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.25.bb
rename to meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.26.bb
index 83b43b6..78b24fe 100644
--- a/meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.25.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.26.bb
@@ -18,5 +18,5 @@ do_configure_prepend() {
 	rm ${S}/m4/lib-link.m4 || true
 }
 
-SRC_URI[md5sum] = "d734bc866788d1d6fc74c4ff1318926c"
-SRC_URI[sha256sum] = "b5d5750c12412c47d85ba9391c842f6f02cad9511876695e48b15fb37e4699f6"
+SRC_URI[md5sum] = "e1ed191adbf81edff04f348f8ce8e198"
+SRC_URI[sha256sum] = "ceb3bbea5ce18463b8fe470d34786bc846469e800305c436d799af9fe22bdcc4"
-- 
1.6.3.3


