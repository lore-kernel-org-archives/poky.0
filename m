Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5AD5C4C811D9
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 00:53:42 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Nov 2010 22:53:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,260,1288594800"; d="scan'208";a="630447414"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga002.fm.intel.com with ESMTP; 25 Nov 2010 22:53:41 -0800
Message-Id: <99e17de32b522d27964f99beb9057e8fde524e39.1290736298.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1290736297.git.dongxiao.xu@intel.com>
References: <cover.1290736297.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Thu, 25 Nov 2010 13:49:54 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 10/14] gssdp: Upgrade to version 0.9.0
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
X-List-Received-Date: Fri, 26 Nov 2010 06:53:42 -0000

Fix recipe metadata

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../gupnp/{gssdp_0.7.1.bb => gssdp_0.9.0.bb}       |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)
 rename meta/recipes-connectivity/gupnp/{gssdp_0.7.1.bb => gssdp_0.9.0.bb} (77%)

diff --git a/meta/recipes-connectivity/gupnp/gssdp_0.7.1.bb b/meta/recipes-connectivity/gupnp/gssdp_0.9.0.bb
similarity index 77%
rename from meta/recipes-connectivity/gupnp/gssdp_0.7.1.bb
rename to meta/recipes-connectivity/gupnp/gssdp_0.9.0.bb
index 2143984..25a58da 100644
--- a/meta/recipes-connectivity/gupnp/gssdp_0.7.1.bb
+++ b/meta/recipes-connectivity/gupnp/gssdp_0.9.0.bb
@@ -11,3 +11,6 @@ inherit autotools pkgconfig
 PACKAGES =+ "gssdp-tools"
 
 FILES_gssdp-tools = "${bindir}/gssdp* ${datadir}/gssdp/*.glade"
+
+SRC_URI[md5sum] = "8605138eac1e7fb8ec8cf502a928ea81"
+SRC_URI[sha256sum] = "6e4de2ecc90d2ac8b3694af1954984d04de25fb01dd2f2748d7221add8ead9e0"
-- 
1.6.3.3


