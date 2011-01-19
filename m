Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 862454C8112C
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 15:31:03 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 19 Jan 2011 13:31:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,345,1291622400"; d="scan'208";a="377001759"
Received: from unknown (HELO localhost) ([10.255.14.100])
	by azsmga001.ch.intel.com with ESMTP; 19 Jan 2011 13:31:02 -0800
Message-Id: <e83e1c33e7bb78a253175c470ad74f0f90c3cca1.1295472579.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1295472579.git.dvhart@linux.intel.com>
References: <cover.1295472579.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Old-Date: Wed, 19 Jan 2011 10:12:49 -0800
Date: Wed, 19 Jan 2011 13:30:54 -0800
To: poky@yoctoproject.org, jonathan@jonmasters.org,
	robert.karl.berger@gmail.com
Subject: [PATCH 4/6] overo: use the new upstream u-boot recipe
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
X-List-Received-Date: Wed, 19 Jan 2011 21:31:03 -0000

In preparation to remove the u-boot-omap3 recipe, update the overo
machine to use the new upstream u-boot recipe.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
CC: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/conf/machine/overo.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/machine/overo.conf b/meta/conf/machine/overo.conf
index 9fefd73..5271db6 100644
--- a/meta/conf/machine/overo.conf
+++ b/meta/conf/machine/overo.conf
@@ -18,7 +18,7 @@ SERIAL_CONSOLE = "115200 ttyS2"
 
 IMAGE_FSTYPES += "tar.bz2 jffs2"
 EXTRA_IMAGECMD_jffs2 = "-lnp "
-EXTRA_IMAGEDEPENDS += "u-boot-omap3 x-load"
+EXTRA_IMAGEDEPENDS += "u-boot x-load"
 
 PREFERRED_PROVIDER_virtual/xserver = "xserver-kdrive"
 #XSERVER = "xserver-xorg \
-- 
1.7.1


