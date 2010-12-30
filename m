Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 47A1E4C811F0
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 20:30:01 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 29 Dec 2010 18:30:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,247,1291622400"; d="scan'208";a="872900728"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga001.fm.intel.com with ESMTP; 29 Dec 2010 18:29:32 -0800
Message-Id: <5c28edb8bb9d861de378ebc9e57bd77b355f8f90.1293676328.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1293676328.git.dongxiao.xu@intel.com>
References: <cover.1293676328.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Wed, 29 Dec 2010 20:33:37 +0800
Date: Thu, 30 Dec 2010 10:39:18 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 17/19] connman: upgrade to version 0.65
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

upgrade from 0.64 to 0.65

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../connman/{connman-0.64 => connman-0.65}/connman |    0
 .../{connman-0.64 => connman-0.65}/dbusperms.patch |    0
 .../fix-shutdown-ap-disconnect.patch               |    0
 .../connman/{connman_0.64.bb => connman_0.65.bb}   |    4 ++--
 4 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-connectivity/connman/{connman-0.64 => connman-0.65}/connman (100%)
 rename meta/recipes-connectivity/connman/{connman-0.64 => connman-0.65}/dbusperms.patch (100%)
 rename meta/recipes-connectivity/connman/{connman-0.64 => connman-0.65}/fix-shutdown-ap-disconnect.patch (100%)
 rename meta/recipes-connectivity/connman/{connman_0.64.bb => connman_0.65.bb} (80%)

diff --git a/meta/recipes-connectivity/connman/connman-0.64/connman b/meta/recipes-connectivity/connman/connman-0.65/connman
similarity index 100%
rename from meta/recipes-connectivity/connman/connman-0.64/connman
rename to meta/recipes-connectivity/connman/connman-0.65/connman
diff --git a/meta/recipes-connectivity/connman/connman-0.64/dbusperms.patch b/meta/recipes-connectivity/connman/connman-0.65/dbusperms.patch
similarity index 100%
rename from meta/recipes-connectivity/connman/connman-0.64/dbusperms.patch
rename to meta/recipes-connectivity/connman/connman-0.65/dbusperms.patch
diff --git a/meta/recipes-connectivity/connman/connman-0.64/fix-shutdown-ap-disconnect.patch b/meta/recipes-connectivity/connman/connman-0.65/fix-shutdown-ap-disconnect.patch
similarity index 100%
rename from meta/recipes-connectivity/connman/connman-0.64/fix-shutdown-ap-disconnect.patch
rename to meta/recipes-connectivity/connman/connman-0.65/fix-shutdown-ap-disconnect.patch
diff --git a/meta/recipes-connectivity/connman/connman_0.64.bb b/meta/recipes-connectivity/connman/connman_0.65.bb
similarity index 80%
rename from meta/recipes-connectivity/connman/connman_0.64.bb
rename to meta/recipes-connectivity/connman/connman_0.65.bb
index bea761c..0b077e1 100644
--- a/meta/recipes-connectivity/connman/connman_0.64.bb
+++ b/meta/recipes-connectivity/connman/connman_0.65.bb
@@ -24,5 +24,5 @@ SRC_URI  = "\
   file://connman \
 "
 
-SRC_URI[md5sum] = "1328b04632ad279f991abe457b207b9d"
-SRC_URI[sha256sum] = "46fd36917f53ae20cfed562406a37f9c677f65a57467cac18ce491fa089da325"
+SRC_URI[md5sum] = "bd714da295ed2d2d91a49539f4c4fa3a"
+SRC_URI[sha256sum] = "a1c1d93da6bb4c2d8ae53293b06f237e02f5e796d2bba73ec639a466d05259c3"
-- 
1.6.3.3


