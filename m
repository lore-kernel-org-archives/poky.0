Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 122BE4C80A75
	for <poky@yoctoproject.org>; Wed,  9 Mar 2011 04:44:12 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 09 Mar 2011 02:44:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,289,1297065600"; d="scan'208";a="399912585"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by azsmga001.ch.intel.com with ESMTP; 09 Mar 2011 02:44:11 -0800
Message-Id: <a465d3ff4505a5051605f0638a0c056893667aa4.1299667162.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1299667162.git.dexuan.cui@intel.com>
References: <cover.1299667162.git.dexuan.cui@intel.com>
Old-Date: Wed, 9 Mar 2011 18:29:42 +0800
Date: Wed, 09 Mar 2011 18:42:48 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 2/2] distro_tracking_fields.inc: update the info for oprofileui
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
X-List-Received-Date: Wed, 09 Mar 2011 10:44:13 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   11 ++++++-----
 1 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 1b05341..cadfac2 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -2681,13 +2681,14 @@ RECIPE_MAINTAINER_pn-libsamplerate0 = "Dongxiao Xu <dongxiao.xu@intel.com>"
 RECIPE_STATUS_pn-oprofileui = "green"
 DISTRO_PN_ALIAS_pn-oprofileui = "Fedora=oprofileui Ubuntu=oprofile-gui Debian=oprofile-gui"
 RECIPE_DEPENDENCY_CHECK_pn-oprofileui = "not done"
-RECIPE_LATEST_VERSION_pn-oprofileui = "0.0+svnr197"
-RECIPE_NO_OF_PATCHES_pn-oprofileui = "0"
+RECIPE_LATEST_VERSION_pn-oprofileui = "0.0+git0+e2d998d8a55dc1e49d1588841f83eff8e6809753"
+RECIPE_NO_OF_PATCHES_pn-oprofileui = "1"
+RECIPE_PATCH_pn-oprofileui+dso_linking_change_build_fix = "fix the build by explicitely passing -lm to linker"
 RECIPE_INTEL_SECTION_pn-oprofileui = "sdk-tools"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-oprofileui = "13 days"
-RECIPE_LATEST_RELEASE_DATE_pn-oprofileui = "07/2008"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-oprofileui = "5 months"
+RECIPE_LATEST_RELEASE_DATE_pn-oprofileui = "Dec 10, 2010"
 RECIPE_COMMENTS_pn-oprofileui = ""
-RECIPE_LAST_UPDATE_pn-oprofileui = "Jul 20, 2010"
+RECIPE_LAST_UPDATE_pn-oprofileui = "Mar 9, 2011"
 RECIPE_MAINTAINER_pn-oprofileui = "Dexuan Cui <dexuan.cui@intel.com>"
 
 RECIPE_STATUS_pn-oprofile = "green"
-- 
1.7.2


