Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C23454C80AAD
	for <poky@yoctoproject.org>; Wed,  6 Apr 2011 15:55:18 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Apr 2011 13:55:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,312,1299484800"; d="scan'208";a="676100253"
Received: from unknown (HELO localhost) ([10.255.12.254])
	by fmsmga002.fm.intel.com with ESMTP; 06 Apr 2011 13:55:00 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed,  6 Apr 2011 13:54:33 -0700
Message-Id: <24a677317c4a8d2b20c91e9fbc42697b19b94d37.1302123273.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH] Update trace-cmd and kernelshark distro_tracking
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
X-List-Received-Date: Wed, 06 Apr 2011 20:55:19 -0000

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   14 ++++++++++----
 1 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index cadfac2..6384f80 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -113,11 +113,17 @@ RECIPE_LATEST_VERSION_pn-subversion = "1.6.15"
 RECIPE_MANUAL_CHECK_DATE_pn-subversion = "Jan 25, 2011" 
 RECIPE_MAINTAINER_pn-subversion = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-trace-cmd = "red"
-RECIPE_LATEST_VERSION_pn-trace-cmd = "check"
+RECIPE_STATUS_pn-trace-cmd = "green"
+RECIPE_LATEST_VERSION_pn-trace-cmd = "1.1.1"
 DISTRO_PN_ALIAS_pn-trace-cmd = "Mandriva=trace-cmd Ubuntu=trace-cmd"
-RECIPE_LAST_UPDATE_pn-trace-cmd = "Aug 20, 2010"
-RECIPE_MAINTAINER_pn-trace-cmd = "Bruce"
+RECIPE_LAST_UPDATE_pn-trace-cmd = "Jan 11, 2011"
+RECIPE_MAINTAINER_pn-trace-cmd = "Darren Hart <dvhart@linux.intel.com>"
+
+RECIPE_STATUS_pn-kernelshark = "green"
+RECIPE_LATEST_VERSION_pn-kernelshark = "0.2"
+DISTRO_PN_ALIAS_pn-kernelshark = "Mandriva=kernelshark Ubuntu=kernelshark"
+RECIPE_LAST_UPDATE_pn-kernelshark = "Jan 11, 2011"
+RECIPE_MAINTAINER_pn-kernelshark = "Darren Hart <dvhart@linux.intel.com>"
 
 RECIPE_STATUS_pn-web = "green"
 RECIPE_LATEST_VERSION_pn-web = "0.0+svnr129"
-- 
1.7.1


