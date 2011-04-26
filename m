Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 03A194C804FF
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 01:43:07 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 Apr 2011 23:43:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,267,1301900400"; d="scan'208";a="425501315"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 25 Apr 2011 23:43:07 -0700
Message-Id: <da3482218342d8adbdcc36ce50de76dd5a40c674.1303798223.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1303798223.git.dongxiao.xu@intel.com>
References: <cover.1303798223.git.dongxiao.xu@intel.com>
Old-Date: Tue, 19 Apr 2011 16:32:05 +0800
Date: Tue, 26 Apr 2011 14:46:02 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 04/13] gupnp-av: upgrade to version 0.8.0
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
X-List-Received-Date: Tue, 26 Apr 2011 06:43:08 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../gupnp/{gupnp-av_0.7.0.bb => gupnp-av_0.8.0.bb} |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-connectivity/gupnp/{gupnp-av_0.7.0.bb => gupnp-av_0.8.0.bb} (77%)

diff --git a/meta/recipes-connectivity/gupnp/gupnp-av_0.7.0.bb b/meta/recipes-connectivity/gupnp/gupnp-av_0.8.0.bb
similarity index 77%
rename from meta/recipes-connectivity/gupnp/gupnp-av_0.7.0.bb
rename to meta/recipes-connectivity/gupnp/gupnp-av_0.8.0.bb
index fef907e..ce9ca30 100644
--- a/meta/recipes-connectivity/gupnp/gupnp-av_0.7.0.bb
+++ b/meta/recipes-connectivity/gupnp/gupnp-av_0.8.0.bb
@@ -11,5 +11,5 @@ PR = "r0"
 
 inherit autotools pkgconfig
 
-SRC_URI[md5sum] = "6eace748e9869cddb27daab46eb50635"
-SRC_URI[sha256sum] = "e13018d24abec9fafd75ef59c365adbb2ea3712fe5e69fff8c7284dc3f13cdeb"
+SRC_URI[md5sum] = "8a41a3bb60b50fceb5ece71c0dc4dcfb"
+SRC_URI[sha256sum] = "e6aa032377488cedc4e347519bd30701c583780b7c54f00bab083f2316a93dc9"
-- 
1.7.1


