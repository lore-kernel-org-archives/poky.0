Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5161A4C811DD
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 20:29:23 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 29 Dec 2010 18:29:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,247,1291622400"; d="scan'208";a="588237330"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga002.jf.intel.com with ESMTP; 29 Dec 2010 18:29:22 -0800
Message-Id: <cfe33057357bf1cc13031314c1403f6e14437e0a.1293676328.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1293676328.git.dongxiao.xu@intel.com>
References: <cover.1293676328.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Wed, 29 Dec 2010 11:19:09 +0800
Date: Thu, 30 Dec 2010 10:39:08 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 09/19] telepathy-idle: upgrade to version 0.1.7
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
X-List-Received-Date: Thu, 30 Dec 2010 02:29:23 -0000

upgrade from 0.1.6 to 0.1.7

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 ...pathy-idle_0.1.6.bb => telepathy-idle_0.1.7.bb} |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-connectivity/telepathy/{telepathy-idle_0.1.6.bb => telepathy-idle_0.1.7.bb} (81%)

diff --git a/meta/recipes-connectivity/telepathy/telepathy-idle_0.1.6.bb b/meta/recipes-connectivity/telepathy/telepathy-idle_0.1.7.bb
similarity index 81%
rename from meta/recipes-connectivity/telepathy/telepathy-idle_0.1.6.bb
rename to meta/recipes-connectivity/telepathy/telepathy-idle_0.1.7.bb
index f522252..cbc7234 100644
--- a/meta/recipes-connectivity/telepathy/telepathy-idle_0.1.6.bb
+++ b/meta/recipes-connectivity/telepathy/telepathy-idle_0.1.7.bb
@@ -9,8 +9,8 @@ PR = "r0"
 
 SRC_URI = "http://telepathy.freedesktop.org/releases/${PN}/${P}.tar.gz"
 
-SRC_URI[md5sum] = "0efe17425cdc3490714947ff68003bf6"
-SRC_URI[sha256sum] = "fc05a1780499eab3b168b1826e2fe18dbe4bea3576ea0ff2b548b063336c61f5"
+SRC_URI[md5sum] = "5ee3aa5c6e1112922b11711e6a209331"
+SRC_URI[sha256sum] = "b65df4f8ebdf1039e1f1e406f53cc7b6106fab6c4d8e784e360709f8d85df0c3"
 
 inherit autotools pkgconfig
 
-- 
1.6.3.3


