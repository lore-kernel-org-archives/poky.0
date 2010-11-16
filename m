Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3A4154C811CC
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 07:41:54 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Nov 2010 05:41:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,206,1288594800"; d="scan'208";a="574291025"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.22])
	by orsmga002.jf.intel.com with ESMTP; 16 Nov 2010 05:41:53 -0800
Message-Id: <e91d4293c8ab7a1431460ac88f667d61908b18c7.1289914983.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1289914982.git.dongxiao.xu@intel.com>
References: <cover.1289914982.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 16 Nov 2010 09:56:49 +0800
To: poky@yoctoproject.org
Subject: [PATCH 07/14] libical: Upgraded to version 0.46
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
X-List-Received-Date: Tue, 16 Nov 2010 13:41:54 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../libical/{libical_0.44.bb => libical_0.46.bb}   |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)
 rename meta/recipes-sato/libical/{libical_0.44.bb => libical_0.46.bb} (97%)

diff --git a/meta/recipes-sato/libical/libical_0.44.bb b/meta/recipes-sato/libical/libical_0.46.bb
similarity index 97%
rename from meta/recipes-sato/libical/libical_0.44.bb
rename to meta/recipes-sato/libical/libical_0.46.bb
index 0b016a0..7b2d7b3 100644
--- a/meta/recipes-sato/libical/libical_0.44.bb
+++ b/meta/recipes-sato/libical/libical_0.46.bb
@@ -5,6 +5,7 @@ LICENSE = "LGPLv2.1 | MPLv1.1"
 LIC_FILES_CHKSUM = "file://COPYING;md5=35da21efce2b9f0ca07524c9f844e6ed \
 			file://LICENSE;md5=35da21efce2b9f0ca07524c9f844e6ed"
 SECTION = "libs"
+PR = "r0"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/freeassociation/${P}.tar.gz"
 
-- 
1.6.3.3


