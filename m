Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D10494C810AC
	for <poky@yoctoproject.org>; Fri,  3 Dec 2010 02:43:43 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 Dec 2010 00:43:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,292,1288594800"; d="scan'208";a="863966334"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga001.fm.intel.com with ESMTP; 03 Dec 2010 00:43:42 -0800
Message-Id: <77e05d1ba7de408afde314d9ddeab340195a12de.1291366246.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291366245.git.dongxiao.xu@intel.com>
References: <cover.1291366245.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Fri, 3 Dec 2010 14:31:24 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 12/19] telepathy-glib: update LIC_FILES_CHKSUM info
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
X-List-Received-Date: Fri, 03 Dec 2010 08:43:44 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../telepathy/telepathy-glib_0.13.5.bb             |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-connectivity/telepathy/telepathy-glib_0.13.5.bb b/meta/recipes-connectivity/telepathy/telepathy-glib_0.13.5.bb
index 60f3b33..5dfad9f 100644
--- a/meta/recipes-connectivity/telepathy/telepathy-glib_0.13.5.bb
+++ b/meta/recipes-connectivity/telepathy/telepathy-glib_0.13.5.bb
@@ -7,7 +7,7 @@ PR = "r0"
 
 SRC_URI = "http://telepathy.freedesktop.org/releases/telepathy-glib/${P}.tar.gz"
 
-LIB_FILES_CHKSUM = "file://COPYING;md5=e413d83db6ee8f2c8e6055719096a48e"
+LIC_FILES_CHKSUM = "file://COPYING;md5=e413d83db6ee8f2c8e6055719096a48e"
 
 inherit autotools pkgconfig
 
-- 
1.6.3.3


