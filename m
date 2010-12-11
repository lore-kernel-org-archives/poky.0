Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id D0CA14C811CE
	for <poky@yoctoproject.org>; Sat, 11 Dec 2010 13:36:05 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 11 Dec 2010 11:36:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,329,1288594800"; d="scan'208";a="360328441"
Received: from unknown (HELO localhost) ([10.255.13.46])
	by azsmga001.ch.intel.com with ESMTP; 11 Dec 2010 11:36:04 -0800
Message-Id: <17b219983646fe56ab20f49f724eed7145049e8e.1292096034.git.sgw@linux.intel.com>
In-Reply-To: <cover.1292096034.git.sgw@linux.intel.com>
References: <cover.1292096034.git.sgw@linux.intel.com>
From: Saul Wold <Saul.Wold@intel.com>
Date: Fri, 10 Dec 2010 17:01:45 -0800
To: poky@yoctoproject.org
Cc: Saul Wold <Saul.Wold@intel.com>
Subject: [PATCH 09/13] libxscrnsaver: Add LIC_FILES_CHKSUM
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
X-List-Received-Date: Sat, 11 Dec 2010 19:36:06 -0000

Signed-off-by: Saul Wold <Saul.Wold@intel.com>
---
 .../xorg-lib/libxscrnsaver_1.2.1.bb                |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/xorg-lib/libxscrnsaver_1.2.1.bb b/meta/recipes-graphics/xorg-lib/libxscrnsaver_1.2.1.bb
index a95cc96..3df0aca 100644
--- a/meta/recipes-graphics/xorg-lib/libxscrnsaver_1.2.1.bb
+++ b/meta/recipes-graphics/xorg-lib/libxscrnsaver_1.2.1.bb
@@ -1,7 +1,9 @@
 require xorg-lib-common.inc
 
 DESCRIPTION = "X Screen Saver extension library"
-LICENSE = "GPL"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://COPYING;md5=21fd154ee757813632ada871a34113fb"
+
 DEPENDS += "libxext scrnsaverproto"
 PROVIDES = "libxss"
 RREPLACES = "libxss"
-- 
1.7.1.1


