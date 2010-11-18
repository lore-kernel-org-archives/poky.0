Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E55334C811CE
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 08:48:38 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Nov 2010 06:48:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,217,1288594800"; d="scan'208";a="350399212"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by azsmga001.ch.intel.com with ESMTP; 18 Nov 2010 06:48:37 -0800
Message-Id: <d7b553fbfd65089790f374e9d58ba61aa29f438b.1290091760.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1290091759.git.dongxiao.xu@intel.com>
References: <cover.1290091759.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Thu, 18 Nov 2010 19:51:05 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 7/7] distro_tracking: Update distro tracking fields for pm-utils, netbase, etc.
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
X-List-Received-Date: Thu, 18 Nov 2010 14:48:39 -0000

pm-utils
netbase
mtd-utils
glib-2.0
msynctool
polkit
polkit-gnome

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   56 +++++++++++++------
 1 files changed, 38 insertions(+), 18 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index dc4ee49..ef51fb5 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -148,7 +148,7 @@ RECIPE_INTEL_SECTION_pn-glib-2.0 = "base libs"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-glib-2.0 = "8 days"
 RECIPE_LATEST_RELEASE_DATE_pn-glib-2.0 = "2010/11/09"
 RECIPE_COMMENTS_pn-glib-2.0 = ""
-RECIPE_MAINTAINER_pn-glib-2.0 = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-glib-2.0 = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-libpam = "green"
 DISTRO_PN_ALIAS_pn-libpam = "Meego=pam Fedora=pam OpenSuSE=pam Ubuntu=pam Mandriva=pam Debian=pam"
@@ -748,12 +748,12 @@ DISTRO_PN_ALIAS_pn-opkg-utils = "OSPDT upstream=http://svn.openmoko.org/trunk/sr
 
 RECIPE_STATUS_pn-polkit = "green"
 DEPENDENCY_CHECK_pn-polkit = "not done"
-RECIPE_LATEST_VERSION_pn-polkit = "0.96"
+RECIPE_LATEST_VERSION_pn-polkit = "0.99"
 RECIPE_INTEL_SECTION_pn-polkit = "base utils"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-polkit = "2 months"
-RECIPE_LATEST_RELEASE_DATE_pn-polkit = "01/2010"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-polkit = "1 months"
+RECIPE_LATEST_RELEASE_DATE_pn-polkit = "2010/09/15"
 RECIPE_COMMENTS_pn-polkit = ""
-RECIPE_MAINTAINER_pn-polkit = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-polkit = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-psplash = "not done"
 DEPENDENCY_CHECK_pn-psplash = "not done"
@@ -808,14 +808,14 @@ RECIPE_MAINTAINER_pn-iproute2 = "Kevin Tian <kevin.tian@intel.com>"
 
 RECIPE_STATUS_pn-netbase = "green"
 DEPENDENCY_CHECK_pn-netbase = "not done"
-RECIPE_LATEST_VERSION_pn-netbase = "4.41"
+RECIPE_LATEST_VERSION_pn-netbase = "4.43"
 RECIPE_PATCH_pn-netbase+busybox = "marked as REMOVAL"
 RECIPE_PATCH_pn-many = "local scripts"
 RECIPE_INTEL_SECTION_pn-netbase = "base utils"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-netbase = "2 years"
-RECIPE_LATEST_RELEASE_DATE_pn-netbase = "04/2010"
+RECIPE_LATEST_RELEASE_DATE_pn-netbase = "2010/10/23"
 RECIPE_COMMENTS_pn-netbase = ""
-RECIPE_MAINTAINER_pn-netbase = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_MAINTAINER_pn-netbase = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-busybox = "green"
 DEPENDENCY_CHECK_pn-busybox = "not done"
@@ -1118,9 +1118,14 @@ RECIPE_STATUS_pn-modutils-collateral = "red"
 RECIPE_LATEST_VERSION_pn-modutils-collateral = "1.0"
 RECIPE_MAINTAINER_pn-modutils-collateral = "Kevin Tian <kevin.tian@intel.com>"
 
-RECIPE_STATUS_pn-mtd-utils = "red"
-RECIPE_LATEST_VERSION_pn-mtd-utils = "1.3.1+a67747b7a314e685085b62e8239442ea54959dbc"
-RECIPE_MAINTAINER_pn-mtd-utils = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_STATUS_pn-mtd-utils = "green"
+DEPENDENCY_CHECK_pn-mtd-utils = "not done"
+RECIPE_LATEST_VERSION_pn-mtd-utils = "1.4.1"
+RECIPE_INTEL_SECTION_pn-mtd-utils = "base utils"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-mtd-utils = "1 months"
+RECIPE_LATEST_RELEASE_DATE_pn-mtd-utils = "2010/10/15"
+RECIPE_COMMENTS_pn-mtd-utils = ""
+RECIPE_MAINTAINER_pn-mtd-utils = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-ohm = "red"
 RECIPE_LATEST_VERSION_pn-ohm = "3cb3496846508929b9f2d05683ec93523de7947c"
@@ -1174,18 +1179,28 @@ RECIPE_STATUS_pn-fuse = "red"
 RECIPE_LATEST_VERSION_pn-fuse = "2.8.4"
 RECIPE_MAINTAINER_pn-fuse = "Kevin Tian <kevin.tian@intel.com>"
 
-RECIPE_STATUS_pn-msynctool = "red"
+RECIPE_STATUS_pn-msynctool = "green"
+DEPENDENCY_CHECK_pn-msynctool = "not done"
 RECIPE_LATEST_VERSION_pn-msynctool = "0.38"
-RECIPE_MAINTAINER_pn-msynctool = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_INTEL_SECTION_pn-msynctool = "base utils"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-msynctool = "3 months"
+RECIPE_LATEST_RELEASE_DATE_pn-msynctool = "2008/11/11"
+RECIPE_COMMENTS_pn-msynctool = ""
+RECIPE_MAINTAINER_pn-msynctool = "Dongxiao Xu <dongxiao.xu@intel.com>"
 DISTRO_PN_ALIAS_pn-msynctool = "OpenSuse=msynctool Mandriva=msynctool"
 
 RECIPE_STATUS_pn-mtools = "red"
 RECIPE_LATEST_VERSION_pn-mtools = "4.0.13"
 RECIPE_MAINTAINER_pn-mtools = "Kevin Tian <kevin.tian@intel.com>"
 
-RECIPE_STATUS_pn-pm-utils = "red"
-RECIPE_LATEST_VERSION_pn-pm-utils = "1.3.0"
-RECIPE_MAINTAINER_pn-pm-utils = "Kevin Tian <kevin.tian@intel.com>"
+RECIPE_STATUS_pn-pm-utils = "green"
+DEPENDENCY_CHECK_pn-pm-utils = "not done"
+RECIPE_LATEST_VERSION_pn-pm-utils = "1.4.1"
+RECIPE_INTEL_SECTION_pn-pm-utils = "base utils"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-pm-utils = "15 days"
+RECIPE_LATEST_RELEASE_DATE_pn-pm-utils = "2010o/07/04"
+RECIPE_COMMENTS_pn-pm-utils = ""
+RECIPE_MAINTAINER_pn-pm-utils = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-psmisc = "red"
 RECIPE_LATEST_VERSION_pn-psmisc = "22.11"
@@ -4755,8 +4770,13 @@ RECIPE_STATUS_pn-metacity = "red"
 RECIPE_LATEST_VERSION_pn-metacity = "2.30.1"
 RECIPE_MAINTAINER_pn-metacity = "Edwin Zhai <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-polkit-gnome = "red"
-RECIPE_LATEST_VERSION_pn-polkit-gnome = "0.96"
+RECIPE_STATUS_pn-polkit-gnome = "green"
+DEPENDENCY_CHECK_pn-polkit-gnome = "not done"
+RECIPE_LATEST_VERSION_pn-polkit-gnome = "0.99"
+RECIPE_INTEL_SECTION_pn-polkit-gnome = "base utils"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-polkit-gnome = "1 months"
+RECIPE_LATEST_RELEASE_DATE_pn-polkit-gnome = "2010/09/15"
+RECIPE_COMMENTS_pn-polkit-gnome = ""
 RECIPE_MAINTAINER_pn-polkit-gnome = "Edwin Zhai <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-pong-clock = "red"
-- 
1.7.0.4


