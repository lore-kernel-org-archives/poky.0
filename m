Return-Path: <lianhao.lu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id BF89E4C8123F
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 04:00:47 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Jan 2011 02:00:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,391,1291622400"; d="scan'208";a="701618198"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by orsmga001.jf.intel.com with ESMTP; 28 Jan 2011 02:00:46 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1Pil8z-0001iW-W5; Fri, 28 Jan 2011 18:01:30 +0800
Message-Id: <1eec11d1126152a4ae4930d8df5aedfec1bdf7b7.1296208216.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1296208216.git.lianhao.lu@intel.com>
References: <cover.1296208216.git.lianhao.lu@intel.com>
Old-Date: Fri, 28 Jan 2011 09:41:32 +0800
Date: Fri, 28 Jan 2011 18:01:29 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 1/5] cross-canadian.bbclass: Correct deb package arch.
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
X-List-Received-Date: Fri, 28 Jan 2011 10:00:48 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

Set DPKG_ARCH to make debian package to be generated with correct
architecture.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/cross-canadian.bbclass |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/classes/cross-canadian.bbclass b/meta/classes/cross-canadian.bbclass
index 993f831..1a045ba 100644
--- a/meta/classes/cross-canadian.bbclass
+++ b/meta/classes/cross-canadian.bbclass
@@ -43,6 +43,9 @@ HOST_OS = "${SDK_OS}"
 HOST_PREFIX = "${SDK_PREFIX}"
 HOST_CC_ARCH = "${SDK_CC_ARCH}"
 
+#assign DPKG_ARCH
+DPKG_ARCH = "${SDK_ARCH}"
+
 CPPFLAGS = "${BUILDSDK_CPPFLAGS}"
 CFLAGS = "${BUILDSDK_CFLAGS}"
 CXXFLAGS = "${BUILDSDK_CFLAGS}"
-- 
1.7.0.4


