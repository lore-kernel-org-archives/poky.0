Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9A72A4C811CA
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 00:12:15 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 30 Jan 2011 22:12:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,403,1291622400"; d="scan'208";a="652741255"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by fmsmga002.fm.intel.com with ESMTP; 30 Jan 2011 22:12:14 -0800
Message-Id: <6d09714cf58e235d776834cbce2e89764ea05dc8.1296453989.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1296453989.git.dexuan.cui@intel.com>
References: <cover.1296453989.git.dexuan.cui@intel.com>
Old-Date: Mon, 31 Jan 2011 13:51:19 +0800
Date: Mon, 31 Jan 2011 14:11:30 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [Dexuan: Jan 31: pixman: PULL 2/2] distro_tracking_fields.inc: update pixman
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
X-List-Received-Date: Mon, 31 Jan 2011 06:12:15 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 9f99e50..0b3e232 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -4332,12 +4332,13 @@ RECIPE_MAINTAINER_pn-libxkbfile = "Dexuan Cui <dexuan.cui@intel.com>"
 RECIPE_STATUS_pn-pixman = "green"
 RECIPE_DEPENDENCY_CHECK_pn-pixman = "not done"
 RECIPE_LATEST_VERSION_pn-pixman = "0.21.4"
+RECIPE_NO_UPDATE_REASON_pn-pixman = "Do not upgrade to version: 0.21.4 because it's a development snapshot. pixman's stable releases have even minor version numbers."
 RECIPE_NO_OF_PATCHES_pn-pixman = "0"
 RECIPE_INTEL_SECTION_pn-pixman = "x11/libs"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-pixman = "2 months"
 RECIPE_LATEST_RELEASE_DATE_pn-pixman = "Jan 19, 2011"
 RECIPE_COMMENTS_pn-pixman = ""
-RECIPE_LAST_UPDATE_pn-pixman = "Jan 28, 2011"
+RECIPE_LAST_UPDATE_pn-pixman = "Jan 31, 2011"
 RECIPE_MAINTAINER_pn-pixman = "Dexuan Cui <dexuan.cui@intel.com>"
 
 RECIPE_STATUS_pn-xtrans = "green"
-- 
1.7.2


