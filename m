Return-Path: <scott.a.garman@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id F19B54C80FA7
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 17:29:10 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 Nov 2010 15:29:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,213,1288594800"; d="scan'208";a="350129258"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.73])
	by azsmga001.ch.intel.com with ESMTP; 17 Nov 2010 15:29:10 -0800
Message-Id: <0f7f0b88445d48778b5a38aefae327fb155540a7.1290036267.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1290036267.git.scott.a.garman@intel.com>
References: <cover.1290036267.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Date: Wed, 17 Nov 2010 13:53:40 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/2] distro_tracking_fields.inc: update tar and openssh
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
X-List-Received-Date: Wed, 17 Nov 2010 23:29:11 -0000

Updated to include recent tar upgrade.
Also fixes inaccurate info in openssh.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   15 ++++++++-------
 1 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 372297a..09bdd6e 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -1942,21 +1942,22 @@ RECIPE_MAINTAINER_pn-grep = "Scott Garman <scott.a.garman@intel.com>"
 
 RECIPE_STATUS_pn-openssh = "red" 
 DEPENDENCY_CHECK_pn-openssh = "not done"
-RECIPE_LATEST_VERSION_pn-openssh = "5.5p1"
+RECIPE_LATEST_VERSION_pn-openssh = "5.6p1"
 RECIPE_INTEL_SECTION_pn-openssh = "base"
-RECIPE_NO_OF_PATCHES_pn-openssh = "0"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-openssh = "1 month"
-RECIPE_LATEST_RELEASE_DATE_pn-openssh = "04/2010"
+RECIPE_NO_OF_PATCHES_pn-openssh = "1"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-openssh = "4 months"
+RECIPE_LATEST_RELEASE_DATE_pn-openssh = "08/2010"
 RECIPE_MAINTAINER_pn-openssh = "Scott Garman <scott.a.garman@intel.com>"
 
 RECIPE_STATUS_pn-tar = "green" 
 DEPENDENCY_CHECK_pn-tar = "not done"
-RECIPE_LATEST_VERSION_pn-tar = "1.23"
+RECIPE_LATEST_VERSION_pn-tar = "1.25"
 RECIPE_INTEL_SECTION_pn-tar = "base"
 RECIPE_NO_OF_PATCHES_pn-tar = "2"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-tar = "12 months"
-RECIPE_LATEST_RELEASE_DATE_pn-tar = "03/2010"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-tar = "2 weeks"
+RECIPE_LATEST_RELEASE_DATE_pn-tar = "11/2010"
 RECIPE_MAINTAINER_pn-tar = "Scott Garman <scott.a.garman@intel.com>"
+
 RECIPE_STATUS_pn-lrzsz="yellow" # patch investigation needed.
 RECIPE_LATEST_VERSION_pn-lrzsz="0.12.20"
 RECIPE_NO_OF_PATCHES_pn-lrzsz="3"
-- 
1.7.3.2


