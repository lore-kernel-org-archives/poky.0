Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 166D64C811FF
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:27:12 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 23 Dec 2010 06:27:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="365818512"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by azsmga001.ch.intel.com with ESMTP; 23 Dec 2010 06:27:11 -0800
Message-Id: <9994ed47b1a84337646f74c9524c55929e88da2c.1293114004.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293114003.git.sgw@linux.intel.com>
References: <cover.1293114003.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Old-Date: Wed, 22 Dec 2010 15:51:17 -0800
Date: Thu, 23 Dec 2010  6:27:10 -0800
To: poky@yoctoproject.org
Subject: [PATCH 12/28] connman: Update to 0.64 to solve build issue with .37 kernel headers
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
X-List-Received-Date: Thu, 23 Dec 2010 14:27:12 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../connman/{connman-0.63 => connman-0.64}/connman |    0
 .../{connman-0.63 => connman-0.64}/dbusperms.patch |    0
 .../fix-shutdown-ap-disconnect.patch               |    0
 .../connman/{connman_0.63.bb => connman_0.64.bb}   |    4 ++--
 4 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-connectivity/connman/{connman-0.63 => connman-0.64}/connman (100%)
 rename meta/recipes-connectivity/connman/{connman-0.63 => connman-0.64}/dbusperms.patch (100%)
 rename meta/recipes-connectivity/connman/{connman-0.63 => connman-0.64}/fix-shutdown-ap-disconnect.patch (100%)
 rename meta/recipes-connectivity/connman/{connman_0.63.bb => connman_0.64.bb} (80%)

diff --git a/meta/recipes-connectivity/connman/connman-0.63/connman b/meta/recipes-connectivity/connman/connman-0.64/connman
similarity index 100%
rename from meta/recipes-connectivity/connman/connman-0.63/connman
rename to meta/recipes-connectivity/connman/connman-0.64/connman
diff --git a/meta/recipes-connectivity/connman/connman-0.63/dbusperms.patch b/meta/recipes-connectivity/connman/connman-0.64/dbusperms.patch
similarity index 100%
rename from meta/recipes-connectivity/connman/connman-0.63/dbusperms.patch
rename to meta/recipes-connectivity/connman/connman-0.64/dbusperms.patch
diff --git a/meta/recipes-connectivity/connman/connman-0.63/fix-shutdown-ap-disconnect.patch b/meta/recipes-connectivity/connman/connman-0.64/fix-shutdown-ap-disconnect.patch
similarity index 100%
rename from meta/recipes-connectivity/connman/connman-0.63/fix-shutdown-ap-disconnect.patch
rename to meta/recipes-connectivity/connman/connman-0.64/fix-shutdown-ap-disconnect.patch
diff --git a/meta/recipes-connectivity/connman/connman_0.63.bb b/meta/recipes-connectivity/connman/connman_0.64.bb
similarity index 80%
rename from meta/recipes-connectivity/connman/connman_0.63.bb
rename to meta/recipes-connectivity/connman/connman_0.64.bb
index e99f784..bea761c 100644
--- a/meta/recipes-connectivity/connman/connman_0.63.bb
+++ b/meta/recipes-connectivity/connman/connman_0.64.bb
@@ -24,5 +24,5 @@ SRC_URI  = "\
   file://connman \
 "
 
-SRC_URI[md5sum] = "11616a4fa1d03f96f0739730645f7c53"
-SRC_URI[sha256sum] = "e2a57376cdcd42b3876262da6959aa58428941e0eb2df9a4724cd3f1af934492"
+SRC_URI[md5sum] = "1328b04632ad279f991abe457b207b9d"
+SRC_URI[sha256sum] = "46fd36917f53ae20cfed562406a37f9c677f65a57467cac18ce491fa089da325"
-- 
1.7.2.3


