Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2DF8B4C8006D
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 16:43:35 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 Feb 2011 14:43:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,412,1291622400"; d="scan'208";a="653468917"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga002.fm.intel.com with ESMTP; 01 Feb 2011 14:43:35 -0800
Message-Id: <a786b8bfb92f6ce1f23600358406ead745d3fb1c.1296600047.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1296600047.git.nitin.a.kamble@intel.com>
References: <cover.1296600047.git.nitin.a.kamble@intel.com>
Old-Date: Mon, 31 Jan 2011 15:49:57 -0800
Date: Tue, 01 Feb 2011 14:43:34 -0800
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 6/6] distro_Tracking: update as per current devel/toolchain recipes
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
X-List-Received-Date: Tue, 01 Feb 2011 22:43:35 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 1bdf521..9fb1147 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -107,7 +107,7 @@ RECIPE_LATEST_VERSION_pn-screen = "check"
 RECIPE_LAST_UPDATE_pn-screen = "Aug 31, 2010"
 RECIPE_MAINTAINER_pn-screen = "Qing He <qing.he@intel.com>"
 
-RECIPE_STATUS_pn-subversion = "red"
+RECIPE_STATUS_pn-subversion = "green"
 RECIPE_LATEST_VERSION_pn-subversion = "1.6.15"
 RECIPE_MANUAL_CHECK_DATE_pn-subversion = "Jan 25, 2011" 
 RECIPE_MAINTAINER_pn-subversion = "Nitin A Kamble <nitin.a.kamble@intel.com>"
-- 
1.7.3.4


