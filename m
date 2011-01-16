Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7134A4C81204
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 06:15:42 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Jan 2011 04:15:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,329,1291622400"; d="scan'208";a="593465396"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 16 Jan 2011 04:15:16 -0800
Message-Id: <9059bb22d2ca3b0a3a899e285cb5138c5ab847a8.1295179186.git.ke.yu@intel.com>
In-Reply-To: <cover.1295179186.git.ke.yu@intel.com>
References: <cover.1295179186.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Fri, 14 Jan 2011 16:26:38 +0800
Date: Sun, 16 Jan 2011 20:19:52 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 15/19] cairo: upgrade to 1.10.2
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
X-List-Received-Date: Sun, 16 Jan 2011 12:15:42 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../cairo/{cairo_1.10.0.bb => cairo_1.10.2.bb}     |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/cairo/{cairo_1.10.0.bb => cairo_1.10.2.bb} (90%)

diff --git a/meta/recipes-graphics/cairo/cairo_1.10.0.bb b/meta/recipes-graphics/cairo/cairo_1.10.2.bb
similarity index 90%
rename from meta/recipes-graphics/cairo/cairo_1.10.0.bb
rename to meta/recipes-graphics/cairo/cairo_1.10.2.bb
index 59e5ff9..603b51d 100644
--- a/meta/recipes-graphics/cairo/cairo_1.10.0.bb
+++ b/meta/recipes-graphics/cairo/cairo_1.10.2.bb
@@ -2,12 +2,12 @@ require cairo.inc
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=e73e999e0c72b5ac9012424fa157ad77"
 
-PR = "r1"
+PR = "r0"
 
 SRC_URI = "http://cairographics.org/releases/cairo-${PV}.tar.gz"
 
-SRC_URI[md5sum] = "70a2ece66cf473d976e2db0f75bf199e"
-SRC_URI[sha256sum] = "0f2ce4cc4615594088d74eb8b5360bad7c3cc3c3da9b61af9bfd979ed1ed94b2"
+SRC_URI[md5sum] = "f101a9e88b783337b20b2e26dfd26d5f"
+SRC_URI[sha256sum] = "32018c7998358eebc2ad578ff8d8559d34fc80252095f110a572ed23d989fc41"
 
 RDEPENDS_${PN} += "libcairo2 libcairo-gobject2 libcairo-script-interpreter2 \
 		  cairo-perf-utils"
-- 
1.7.0.4


