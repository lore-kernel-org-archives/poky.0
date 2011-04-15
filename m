Return-Path: <lei.mei@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F29B4C810CE
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 09:18:12 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 15 Apr 2011 07:18:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,219,1301900400"; d="scan'208";a="419907205"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.47.161])
	by azsmga001.ch.intel.com with ESMTP; 15 Apr 2011 07:18:02 -0700
Message-Id: <329d8c0b2d5d4be78aed4cb1303d91acbf5ad236.1302856116.git.lei.mei@intel.com>
In-Reply-To: <cover.1302856115.git.lei.mei@intel.com>
References: <cover.1302856115.git.lei.mei@intel.com>
Old-Date: Thu, 14 Apr 2011 17:29:37 +0800
To: poky@yoctoproject.org
CC: 
From: Mei Lei <lei.mei@intel.com>
Subject: [PATCH 5/5] distro_tracking_fields.inc: update e2fsprogs, libidn, libffi, psmisc information
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
Date: Fri, 15 Apr 2011 14:18:12 -0000
X-Original-Date: 五, 15  4月 2011 22:22:50 +0800
X-List-Received-Date: Fri, 15 Apr 2011 14:18:12 -0000

From: Mei Lei <lei.mei@intel.com>

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   27 ++++++++++---------
 1 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 8469e96..0d730d0 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -266,12 +266,12 @@ RECIPE_MAINTAINER_pn-libpng = "Kevin Tian <kevin.tian@intel.com>"
 
 RECIPE_STATUS_pn-libidn = "green"
 RECIPE_DEPENDENCY_CHECK_pn-libidn = "not done"
-RECIPE_LATEST_VERSION_pn-libidn = "1.19"
+RECIPE_LATEST_VERSION_pn-libidn = "1.20"
 RECIPE_INTEL_SECTION_pn-libidn = "base libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libidn = "3 months"
-RECIPE_LATEST_RELEASE_DATE_pn-libidn = "05/2010"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libidn = "9 months"
+RECIPE_LATEST_RELEASE_DATE_pn-libidn = "03/2011"
 RECIPE_COMMENTS_pn-libidn = ""
-RECIPE_LAST_UPDATE_pn-libidn = "Jul 20, 2010"
+RECIPE_LAST_UPDATE_pn-libidn = "Apr 13, 2011"
 RECIPE_MAINTAINER_pn-libidn = "Kevin Tian <kevin.tian@intel.com>"
 
 RECIPE_STATUS_pn-glibc = "green"
@@ -615,15 +615,15 @@ RECIPE_MAINTAINER_pn-dbus-wait= "Kevin Tian <kevin.tian@intel.com>"
 
 RECIPE_STATUS_pn-e2fsprogs = "yellow" # patch comment
 RECIPE_DEPENDENCY_CHECK_pn-e2fsprogs = "not done"
-RECIPE_LATEST_VERSION_pn-e2fsprogs = "1.41.12"
+RECIPE_LATEST_VERSION_pn-e2fsprogs = "1.41.14"
 RECIPE_PATCH_pn-e2fsprogs+quotefix = "to be pushed upstream"
 RECIPE_PATCH_pn-e2fsprogs+mkdir = "to be pushed upstream; no comment; MKINSTALLDIRS is not supported in new version autotool"
 RECIPE_PATCH_pn-e2fsprogs+acinclude = "to be pushed upstream;"
 RECIPE_INTEL_SECTION_pn-e2fsprogs = "base utils"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-e2fsprogs = "2 months"
-RECIPE_LATEST_RELEASE_DATE_pn-e2fsprogs = "05/2010"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-e2fsprogs = "9 days"
+RECIPE_LATEST_RELEASE_DATE_pn-e2fsprogs = "12/2010"
 RECIPE_COMMENTS_pn-e2fsprogs = ""
-RECIPE_LAST_UPDATE_pn-e2fsprogs = "Jun 1, 2010"
+RECIPE_LAST_UPDATE_pn-e2fsprogs = "Apr 13, 2011"
 RECIPE_MAINTAINER_pn-e2fsprogs = "Kevin Tian <kevin.tian@intel.com>"
 
 RECIPE_STATUS_pn-initramfs-boot = "green"
@@ -1115,10 +1115,10 @@ DISTRO_PN_ALIAS_pn-libatomics-ops = "Meego=libatomic-ops Debian=libatomic-ops Ub
 RECIPE_LAST_UPDATE_pn-libatomics-ops = "Nov 22, 2010"
 RECIPE_MAINTAINER_pn-libatomics-ops = "Scott Garman <scott.a.garman@intel.com>"
 
-RECIPE_STATUS_pn-libffi  = "red"
-RECIPE_LATEST_VERSION_pn-libffi  = "3.0.9"
-RECIPE_LAST_UPDATE_pn-libffi = "Oct 15, 2010"
-RECIPE_MAINTAINER_pn-libffi  = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_STATUS_pn-libffi = "red"
+RECIPE_LATEST_VERSION_pn-libffi = "3.0.10rc0"
+RECIPE_LAST_UPDATE_pn-libffi = "Apr 13, 2011"
+RECIPE_MAINTAINER_pn-libffi = "Kevin Tian <kevin.tian@intel.com>"
 
 RECIPE_STATUS_pn-libgdbus = "green"
 RECIPE_DEPENDENCY_CHECK_pn-libgdbus = "not done"
@@ -1274,7 +1274,8 @@ RECIPE_MAINTAINER_pn-pm-utils = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-psmisc = "red"
 RECIPE_LATEST_VERSION_pn-psmisc = "22.13"
-RECIPE_LAST_UPDATE_pn-psmisc = "Jan 18, 2008"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-pm-utils = "58 days"
+RECIPE_LAST_UPDATE_pn-psmisc = "Apr 13, 2011"
 RECIPE_MAINTAINER_pn-psmisc = "Kevin Tian <kevin.tian@intel.com>"
 
 RECIPE_STATUS_pn-boost = "red"
-- 
1.6.3.3


