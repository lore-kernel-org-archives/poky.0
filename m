Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id E9D554C80A7E
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 00:36:00 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 Apr 2011 22:36:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,216,1301900400"; d="scan'208";a="679366620"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga002.fm.intel.com with ESMTP; 14 Apr 2011 22:36:00 -0700
Message-Id: <013fe7e3f6577a7546002661ec5b572b2042a1bf.1302845703.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1302845703.git.dongxiao.xu@intel.com>
References: <cover.1302845703.git.dongxiao.xu@intel.com>
Old-Date: Wed, 13 Apr 2011 14:20:26 +0800
Date: Fri, 15 Apr 2011 13:36:54 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 10/14] telepathy-idle: upgrade to version 0.1.8
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
X-List-Received-Date: Fri, 15 Apr 2011 05:36:01 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 ...pathy-idle_0.1.7.bb => telepathy-idle_0.1.8.bb} |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-connectivity/telepathy/{telepathy-idle_0.1.7.bb => telepathy-idle_0.1.8.bb} (81%)

diff --git a/meta/recipes-connectivity/telepathy/telepathy-idle_0.1.7.bb b/meta/recipes-connectivity/telepathy/telepathy-idle_0.1.8.bb
similarity index 81%
rename from meta/recipes-connectivity/telepathy/telepathy-idle_0.1.7.bb
rename to meta/recipes-connectivity/telepathy/telepathy-idle_0.1.8.bb
index 0ee3ca8..5bd4e28 100644
--- a/meta/recipes-connectivity/telepathy/telepathy-idle_0.1.7.bb
+++ b/meta/recipes-connectivity/telepathy/telepathy-idle_0.1.8.bb
@@ -9,8 +9,8 @@ PR = "r0"
 
 SRC_URI = "http://telepathy.freedesktop.org/releases/${BPN}/${P}.tar.gz"
 
-SRC_URI[md5sum] = "5ee3aa5c6e1112922b11711e6a209331"
-SRC_URI[sha256sum] = "b65df4f8ebdf1039e1f1e406f53cc7b6106fab6c4d8e784e360709f8d85df0c3"
+SRC_URI[md5sum] = "82f5eafa07df5e1abc785061143bbfd2"
+SRC_URI[sha256sum] = "384119cc64022626b6f51aaaef605abf248602d8fae25baff82762a097f20fe9"
 
 inherit autotools pkgconfig
 
-- 
1.7.1


