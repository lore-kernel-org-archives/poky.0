Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 11F1F4C811DD
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 20:30:00 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 29 Dec 2010 18:30:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,247,1291622400"; d="scan'208";a="872900723"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga001.fm.intel.com with ESMTP; 29 Dec 2010 18:29:27 -0800
Message-Id: <b0b0e5dc4ad1791e7ddf026b96ecf68609e561b2.1293676328.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1293676328.git.dongxiao.xu@intel.com>
References: <cover.1293676328.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Wed, 29 Dec 2010 15:09:30 +0800
Date: Thu, 30 Dec 2010 10:39:13 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 13/19] telepathy-mission-control: upgrade to version 5.7.1
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
X-List-Received-Date: Thu, 30 Dec 2010 02:30:01 -0000

upgrade from 5.7.0 to 5.7.1

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 ...5.7.0.bb => telepathy-mission-control_5.7.1.bb} |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-connectivity/telepathy/{telepathy-mission-control_5.7.0.bb => telepathy-mission-control_5.7.1.bb} (92%)

diff --git a/meta/recipes-connectivity/telepathy/telepathy-mission-control_5.7.0.bb b/meta/recipes-connectivity/telepathy/telepathy-mission-control_5.7.1.bb
similarity index 92%
rename from meta/recipes-connectivity/telepathy/telepathy-mission-control_5.7.0.bb
rename to meta/recipes-connectivity/telepathy/telepathy-mission-control_5.7.1.bb
index de28a08..f5c2745 100644
--- a/meta/recipes-connectivity/telepathy/telepathy-mission-control_5.7.0.bb
+++ b/meta/recipes-connectivity/telepathy/telepathy-mission-control_5.7.1.bb
@@ -40,5 +40,5 @@ FILES_libmissioncontrol-dbg = "${libdir}/.debug/libmissioncontrol.so.*"
 FILES_libmissioncontrol-config-dbg = "${libdir}/.debug/libmissioncontrol-config.so.*"
 FILES_libmissioncontrol-server-dbg = "${libdir}/.debug/libmissioncontrol-server.so.*"
 
-SRC_URI[md5sum] = "cf6a3f48bb493312b537c9b6b33c0a72"
-SRC_URI[sha256sum] = "ffe0da124418fa4f8c3a9049f7e13febb1ca5e9be92229cd5ab12238f4fda824"
+SRC_URI[md5sum] = "9688a3f75c080eaa2dbf6b4d75876dc9"
+SRC_URI[sha256sum] = "c58f07ee801b023bc5d5a8ec0fce49058a0372b6727e6516fb56d100dacd07fe"
-- 
1.6.3.3


