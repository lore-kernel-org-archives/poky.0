Return-Path: <qing.he@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id A0F034C81001
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 03:49:21 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 Nov 2010 01:49:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,260,1288594800"; d="scan'208";a="353481567"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by azsmga001.ch.intel.com with ESMTP; 26 Nov 2010 01:49:19 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PLuqu-00054s-7l; Fri, 26 Nov 2010 17:44:24 +0800
Message-Id: <01a4667b3c2800ccdfa1328692dc5ae956b40d13.1290764498.git.qing.he@intel.com>
In-Reply-To: <cover.1290764497.git.qing.he@intel.com>
References: <cover.1290764497.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Fri, 26 Nov 2010 17:40:26 +0800
To: poky@yoctoproject.org
Subject: [PATCH 15/15] u-boot-mkimage: update license info
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
X-List-Received-Date: Fri, 26 Nov 2010 09:49:21 -0000

Signed-off-by: Qing He <qing.he@intel.com>
---
 meta/recipes-bsp/uboot/u-boot-mkimage_2009.08.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-bsp/uboot/u-boot-mkimage_2009.08.bb b/meta/recipes-bsp/uboot/u-boot-mkimage_2009.08.bb
index bf07198..895763b 100644
--- a/meta/recipes-bsp/uboot/u-boot-mkimage_2009.08.bb
+++ b/meta/recipes-bsp/uboot/u-boot-mkimage_2009.08.bb
@@ -1,5 +1,6 @@
 DESCRIPTION = "U-boot bootloader mkimage tool"
-LICENSE = "GPL"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=4c6cde5df68eff615d36789dc18edd3b"
 SECTION = "bootloader"
 
 PR = "r1"
-- 
1.7.0


