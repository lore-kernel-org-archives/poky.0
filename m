Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 425454C811DD
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 20:29:22 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 Dec 2010 18:29:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,247,1291622400"; d="scan'208";a="691842770"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga001.jf.intel.com with ESMTP; 29 Dec 2010 18:29:21 -0800
Message-Id: <56eaa12be24d64abbf3048c8371226186d4994aa.1293676328.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1293676328.git.dongxiao.xu@intel.com>
References: <cover.1293676328.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Wed, 29 Dec 2010 10:40:10 +0800
Date: Thu, 30 Dec 2010 10:39:07 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 08/19] telepathy-glib: upgrade to version 0.13.6
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
X-List-Received-Date: Thu, 30 Dec 2010 02:29:22 -0000

upgrade from 0.13.5 to 0.13.6

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 ...thy-glib_0.13.5.bb => telepathy-glib_0.13.6.bb} |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-connectivity/telepathy/{telepathy-glib_0.13.5.bb => telepathy-glib_0.13.6.bb} (80%)

diff --git a/meta/recipes-connectivity/telepathy/telepathy-glib_0.13.5.bb b/meta/recipes-connectivity/telepathy/telepathy-glib_0.13.6.bb
similarity index 80%
rename from meta/recipes-connectivity/telepathy/telepathy-glib_0.13.5.bb
rename to meta/recipes-connectivity/telepathy/telepathy-glib_0.13.6.bb
index 17b6f86..63ada04 100644
--- a/meta/recipes-connectivity/telepathy/telepathy-glib_0.13.5.bb
+++ b/meta/recipes-connectivity/telepathy/telepathy-glib_0.13.6.bb
@@ -7,8 +7,8 @@ PR = "r0"
 
 SRC_URI = "http://telepathy.freedesktop.org/releases/telepathy-glib/${P}.tar.gz"
 
-SRC_URI[md5sum] = "178de3965614a3a59123e33ec1b1e8a6"
-SRC_URI[sha256sum] = "ad6e12a062c8ebe1f1fd20065acc214b9395b3d766bf2a122b12c5f811007735"
+SRC_URI[md5sum] = "db997b1575e9186887caf211c0b94dd9"
+SRC_URI[sha256sum] = "76a38a64d1b7fbaa6e1aaf6a9f8b898840c551aea5d9121bdcb35fdbb66c5877"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=e413d83db6ee8f2c8e6055719096a48e"
 
-- 
1.6.3.3


