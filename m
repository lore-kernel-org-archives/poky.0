Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 085024C812A6
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 04:00:49 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 28 Jan 2011 02:00:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,391,1291622400"; d="scan'208";a="881843392"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by fmsmga001.fm.intel.com with ESMTP; 28 Jan 2011 02:00:48 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1Pil90-0001ih-9B; Fri, 28 Jan 2011 18:01:30 +0800
Message-Id: <611d0f5042f38dc5debeaeb325a68e0d4fc86eff.1296208216.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1296208216.git.lianhao.lu@intel.com>
References: <cover.1296208216.git.lianhao.lu@intel.com>
Old-Date: Fri, 28 Jan 2011 09:43:26 +0800
Date: Fri, 28 Jan 2011 18:01:30 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 2/5] apt-native: Added licence checksum.
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
X-List-Received-Date: Fri, 28 Jan 2011 10:00:50 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

Added licence checksum for apt-native.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/recipes-devtools/apt/apt-native_0.7.14.bb |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/apt/apt-native_0.7.14.bb b/meta/recipes-devtools/apt/apt-native_0.7.14.bb
index f77f817..b1bd55b 100644
--- a/meta/recipes-devtools/apt/apt-native_0.7.14.bb
+++ b/meta/recipes-devtools/apt/apt-native_0.7.14.bb
@@ -9,3 +9,5 @@ SRC_URI += "file://nodoc.patch \
 
 SRC_URI[md5sum] = "19efa18fb1ef20c58b9b44e94258b814"
 SRC_URI[sha256sum] = "8fc06effaf8a4e4333308eedcdc6840f1c8056f2e924210f151dfc076bcd4045"
+
+LIC_FILES_CHKSUM = "file://COPYING.GPL;md5=0636e73ff0215e8d672dc4c32c317bb3"
-- 
1.7.0.4


