Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3A3E14C81230
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 00:09:48 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Nov 2010 22:09:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,274,1288594800"; d="scan'208";a="354271642"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by azsmga001.ch.intel.com with ESMTP; 28 Nov 2010 22:09:47 -0800
Message-Id: <d5c5f1f2ab835703a753e5e543f8dce37984d26d.1291011420.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291011420.git.dongxiao.xu@intel.com>
References: <cover.1291011420.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Mon, 29 Nov 2010 11:27:50 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 12/13] zeroconf: Fix LICENSE and LIC_FILES_CHKSUM info
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
X-List-Received-Date: Mon, 29 Nov 2010 06:09:48 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-connectivity/zeroconf/zeroconf_0.9.bb |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-connectivity/zeroconf/zeroconf_0.9.bb b/meta/recipes-connectivity/zeroconf/zeroconf_0.9.bb
index 32f186f..8bcd476 100644
--- a/meta/recipes-connectivity/zeroconf/zeroconf_0.9.bb
+++ b/meta/recipes-connectivity/zeroconf/zeroconf_0.9.bb
@@ -9,7 +9,9 @@ Addresses are assigned randomly by each host and, in case of collision, \
 both hosts (are supposed to) renumber."
 AUTHOR = "Anand Kumria <wildfire@progsoc.uts.edu.au>"
 HOMEPAGE = "http://www.progsoc.org/~wildfire/zeroconf/"
-LICENSE = "GPL"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=4325afd396febcb659c36b49533135d4 \
+                    file://zeroconf.c;beginline=1;endline=13;md5=a5bada96e1e34b08eb7446b28e2630b2"
 SECTION = "net"
 PRIORITY = "optional"
 
-- 
1.6.3.3


