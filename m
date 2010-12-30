Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 55FD94C811E0
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 14:24:19 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Dec 2010 12:24:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,251,1291622400"; d="scan'208";a="588452936"
Received: from unknown (HELO localhost) ([10.255.13.209])
	by orsmga002.jf.intel.com with ESMTP; 30 Dec 2010 12:24:03 -0800
Message-Id: <15d90335e64ef5b73e454a68d1519c219d9bd4db.1293740437.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1293740437.git.tom.zanussi@intel.com>
References: <cover.1293740437.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@intel.com>
Old-Date: Thu, 30 Dec 2010 13:59:57 -0600
Date: Thu, 30 Dec 2010 14:23:56 -0600
To: poky@yoctoproject.org
Subject: [PATCH 1/2] distro_tracking_fields.inc: add fields for blktrace
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
X-List-Received-Date: Thu, 30 Dec 2010 20:24:19 -0000

Add distro tracking fields for blktrace recipe.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   11 +++++++++++
 1 files changed, 11 insertions(+), 0 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 27351d8..39e1c6c 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -2844,6 +2844,17 @@ RECIPE_COMMENTS_pn-lttng-viewer = ""
 RECIPE_LAST_UPDATE_pn-lttng-viewer = "Sep 3, 2010"
 RECIPE_MAINTAINER_pn-lttng-viewer = "Dexuan Cui <dexuan.cui@intel.com>"
 
+RECIPE_STATUS_pn-blktrace = "red"
+RECIPE_LATEST_VERSION_pn-blktrace = "1.0.1"
+RECIPE_NO_OF_PATCHES_pn-blktrace = "1"
+RECIPE_PATCH_pn-blktrace+compile-fixes = "to be pushed upstream"
+RECIPE_INTEL_SECTION_pn-blktrace = "sdk-tools"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-blktrace = "n/a"
+RECIPE_LATEST_RELEASE_DATE_pn-blktrace = "12/2010"
+RECIPE_COMMENTS_pn-blktrace = ""
+RECIPE_LAST_UPDATE_pn-blktrace = "Dec 29, 2010"
+RECIPE_MAINTAINER_pn-blktrace = "Tom Zanussi <tom.zanussi@intel.com>"
+
 RECIPE_STATUS_pn-binutils="green"
 RECIPE_LATEST_VERSION_pn-binutils="2.20.1"
 RECIPE_LAST_UPDATE_pn-binutils = "Jun 3, 2010"
-- 
1.7.0.4


