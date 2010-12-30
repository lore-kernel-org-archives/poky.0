Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 51F974C80BD4
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 14:24:05 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 Dec 2010 12:24:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,251,1291622400"; d="scan'208";a="873119354"
Received: from unknown (HELO localhost) ([10.255.13.209])
	by fmsmga001.fm.intel.com with ESMTP; 30 Dec 2010 12:24:04 -0800
Message-Id: <847e329c4936ba5fe1b9c3c626e51656521d4182.1293740437.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1293740437.git.tom.zanussi@intel.com>
References: <cover.1293740437.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@intel.com>
Old-Date: Thu, 30 Dec 2010 14:16:19 -0600
Date: Thu, 30 Dec 2010 14:23:57 -0600
To: poky@yoctoproject.org
Subject: [PATCH 2/2] distro_tracking_fields.inc: add fields for sysprof
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
X-List-Received-Date: Thu, 30 Dec 2010 20:24:05 -0000

Add distro tracking fields for sysprof recipe.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   13 +++++++++++++
 1 files changed, 13 insertions(+), 0 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 39e1c6c..16db013 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -2855,6 +2855,19 @@ RECIPE_COMMENTS_pn-blktrace = ""
 RECIPE_LAST_UPDATE_pn-blktrace = "Dec 29, 2010"
 RECIPE_MAINTAINER_pn-blktrace = "Tom Zanussi <tom.zanussi@intel.com>"
 
+RECIPE_STATUS_pn-sysprof = "red"
+RECIPE_LATEST_VERSION_pn-sysprof = "1.1.6"
+RECIPE_NO_OF_PATCHES_pn-sysprof = "3"
+RECIPE_PATCH_pn-sysprof+ppc-macro-fix = "to be pushed upstream (from perf)"
+RECIPE_PATCH_pn-sysprof+rmb-arm = "to be pushed upstream (from perf)"
+RECIPE_PATCH_pn-sysprof+rmb-mips = "to be pushed upstream (from perf)"
+RECIPE_INTEL_SECTION_pn-sysprof = "sdk-tools"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-sysprof = "n/a"
+RECIPE_LATEST_RELEASE_DATE_pn-sysprof = "12/2010"
+RECIPE_COMMENTS_pn-sysprof = ""
+RECIPE_LAST_UPDATE_pn-sysprof = "Dec 8, 2010"
+RECIPE_MAINTAINER_pn-sysprof = "Tom Zanussi <tom.zanussi@intel.com>"
+
 RECIPE_STATUS_pn-binutils="green"
 RECIPE_LATEST_VERSION_pn-binutils="2.20.1"
 RECIPE_LAST_UPDATE_pn-binutils = "Jun 3, 2010"
-- 
1.7.0.4


