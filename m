Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id C23DA4C80FE1
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 00:35:59 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 14 Apr 2011 22:35:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,216,1301900400"; d="scan'208";a="419668299"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 14 Apr 2011 22:35:59 -0700
Message-Id: <8087b2182f8b65810e11df3df345b61cab9ceaea.1302845703.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1302845703.git.dongxiao.xu@intel.com>
References: <cover.1302845703.git.dongxiao.xu@intel.com>
Old-Date: Wed, 13 Apr 2011 14:17:42 +0800
Date: Fri, 15 Apr 2011 13:36:53 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 09/14] telepathy-glib: upgrade to version 0.14.3
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
X-List-Received-Date: Fri, 15 Apr 2011 05:36:00 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 ...thy-glib_0.13.6.bb => telepathy-glib_0.14.3.bb} |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-connectivity/telepathy/{telepathy-glib_0.13.6.bb => telepathy-glib_0.14.3.bb} (80%)

diff --git a/meta/recipes-connectivity/telepathy/telepathy-glib_0.13.6.bb b/meta/recipes-connectivity/telepathy/telepathy-glib_0.14.3.bb
similarity index 80%
rename from meta/recipes-connectivity/telepathy/telepathy-glib_0.13.6.bb
rename to meta/recipes-connectivity/telepathy/telepathy-glib_0.14.3.bb
index 476ed7f..9351be4 100644
--- a/meta/recipes-connectivity/telepathy/telepathy-glib_0.13.6.bb
+++ b/meta/recipes-connectivity/telepathy/telepathy-glib_0.14.3.bb
@@ -7,8 +7,8 @@ PR = "r0"
 
 SRC_URI = "http://telepathy.freedesktop.org/releases/telepathy-glib/${P}.tar.gz"
 
-SRC_URI[md5sum] = "db997b1575e9186887caf211c0b94dd9"
-SRC_URI[sha256sum] = "76a38a64d1b7fbaa6e1aaf6a9f8b898840c551aea5d9121bdcb35fdbb66c5877"
+SRC_URI[md5sum] = "fe9a4f781651593fd4afddb343ff50bf"
+SRC_URI[sha256sum] = "62e759084355ac0fce61feb561a7535a6707b223f0d1e4305fd47c83fa5494d0"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=e413d83db6ee8f2c8e6055719096a48e"
 
-- 
1.7.1


