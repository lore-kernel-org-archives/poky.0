Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6E2414C81118
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 15:31:02 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 19 Jan 2011 13:31:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,345,1291622400"; d="scan'208";a="648908742"
Received: from unknown (HELO localhost) ([10.255.14.100])
	by fmsmga002.fm.intel.com with ESMTP; 19 Jan 2011 13:31:01 -0800
Message-Id: <455c2f77ab74eba0904bc5493fba44ddf9a8c8b2.1295472579.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1295472579.git.dvhart@linux.intel.com>
References: <cover.1295472579.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Old-Date: Mon, 17 Jan 2011 16:35:39 -0800
Date: Wed, 19 Jan 2011 13:30:53 -0800
To: poky@yoctoproject.org, jonathan@jonmasters.org,
	robert.karl.berger@gmail.com
Subject: [PATCH 3/6] beagleboard: add x-load and u-boot depends
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
X-List-Received-Date: Wed, 19 Jan 2011 21:31:02 -0000

The Beagleboard xM requires x-load and u-boot to be installed
on the MMC as it has no NAND (as of rev B and onward).

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
CC: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/conf/machine/beagleboard.conf |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/conf/machine/beagleboard.conf b/meta/conf/machine/beagleboard.conf
index cb6417b..34fc6f2 100644
--- a/meta/conf/machine/beagleboard.conf
+++ b/meta/conf/machine/beagleboard.conf
@@ -12,6 +12,9 @@ GUI_MACHINE_CLASS = "bigscreen"
 #Ship all kernel modules till the board support has matured enough
 MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
 
+# Allow for MMC booting (required by the NAND-less Beagleboard XM)
+EXTRA_IMAGEDEPENDS += "u-boot x-load"
+
 #include conf/machine/include/tune-arm1136jf-s.inc
 include conf/machine/include/tune-cortexa8.inc
 
-- 
1.7.1


