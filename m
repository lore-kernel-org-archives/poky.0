Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0D6E84C80FD4
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 20:12:15 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Nov 2010 18:12:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="858380855"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by fmsmga001.fm.intel.com with ESMTP; 16 Nov 2010 18:12:14 -0800
Message-Id: <f69c2e0cadaf9d0b47dfec0c281f9d0d5fa903cc.1289958240.git.ke.yu@intel.com>
In-Reply-To: <cover.1289958240.git.ke.yu@intel.com>
References: <cover.1289958240.git.ke.yu@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Date: Tue, 16 Nov 2010 23:23:02 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 12/12] Distro Tracking: update distro tracking field for recipes of Graphics libs
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
X-List-Received-Date: Wed, 17 Nov 2010 02:12:15 -0000

They are:

damageproto
fixesproto
fontsproto
glproto
kbproto
randrproto
recordproto
scrnsaverproto
videoproto
xcmiscproto
xextproto

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   66 ++++++++++----------
 1 files changed, 33 insertions(+), 33 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 372297a..3214270 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -3743,11 +3743,11 @@ RECIPE_MAINTAINER_pn-compositeproto = "Dexuan Cui <dexuan.cui@intel.com>"
 RECIPE_STATUS_pn-damageproto = "green"
 DISTRO_PN_ALIAS_pn-damageproto = "Meego=xorg-x11-proto-damageproto"
 DEPENDENCY_CHECK_pn-damageproto = "not done"
-RECIPE_LATEST_VERSION_pn-damageproto = "1.2.0"
+RECIPE_LATEST_VERSION_pn-damageproto = "1.2.1"
 RECIPE_NO_OF_PATCHES_pn-damageproto = "0"
 RECIPE_INTEL_SECTION_pn-damageproto = "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-damageproto = "2 years"
-RECIPE_LATEST_RELEASE_DATE_pn-damageproto = "08/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-damageproto = "1+ years"
+RECIPE_LATEST_RELEASE_DATE_pn-damageproto = "Oct 29, 2010"
 RECIPE_COMMENTS_pn-damageproto = ""
 RECIPE_MAINTAINER_pn-damageproto = "Dexuan Cui <dexuan.cui@intel.com>"
 
@@ -3765,11 +3765,11 @@ RECIPE_MAINTAINER_pn-dmxproto = "Dexuan Cui <dexuan.cui@intel.com>"
 RECIPE_STATUS_pn-fixesproto = "green"
 DISTRO_PN_ALIAS_pn-fixesproto = "Meego=xorg-x11-proto-fixesproto"
 DEPENDENCY_CHECK_pn-fixesproto = "not done"
-RECIPE_LATEST_VERSION_pn-fixesproto = "4.1.1"
+RECIPE_LATEST_VERSION_pn-fixesproto = "4.1.2"
 RECIPE_NO_OF_PATCHES_pn-fixesproto = "0"
 RECIPE_INTEL_SECTION_pn-fixesproto = "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-fixesproto = "3 months"
-RECIPE_LATEST_RELEASE_DATE_pn-fixesproto = "10/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-fixesproto = "1 year"
+RECIPE_LATEST_RELEASE_DATE_pn-fixesproto = "Oct 29, 2010"
 RECIPE_COMMENTS_pn-fixesproto = ""
 RECIPE_MAINTAINER_pn-fixesproto = "Dexuan Cui <dexuan.cui@intel.com>"
 
@@ -3787,22 +3787,22 @@ RECIPE_MAINTAINER_pn-fontcacheproto = "Dexuan Cui <dexuan.cui@intel.com>"
 RECIPE_STATUS_pn-fontsproto = "green"
 DISTRO_PN_ALIAS_pn-fontsproto = "Meego=xorg-x11-proto-fontsproto"
 DEPENDENCY_CHECK_pn-fontsproto = "not done"
-RECIPE_LATEST_VERSION_pn-fontsproto = "2.1.0"
+RECIPE_LATEST_VERSION_pn-fontsproto = "2.1.1"
 RECIPE_NO_OF_PATCHES_pn-fontsproto = "0"
 RECIPE_INTEL_SECTION_pn-fontsproto = "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-fontsproto = "3 years"
-RECIPE_LATEST_RELEASE_DATE_pn-fontsproto = "08/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-fontsproto = "1+ years"
+RECIPE_LATEST_RELEASE_DATE_pn-fontsproto = "Oct 29, 2010"
 RECIPE_COMMENTS_pn-fontsproto = ""
 RECIPE_MAINTAINER_pn-fontsproto = "Dexuan Cui <dexuan.cui@intel.com>"
 
 RECIPE_STATUS_pn-glproto = "green"
 DISTRO_PN_ALIAS_pn-glproto = "Meego=xorg-x11-proto-glproto"
 DEPENDENCY_CHECK_pn-glproto = "not done"
-RECIPE_LATEST_VERSION_pn-glproto = "1.4.11"
+RECIPE_LATEST_VERSION_pn-glproto = "1.4.12"
 RECIPE_NO_OF_PATCHES_pn-glproto = "0"
 RECIPE_INTEL_SECTION_pn-glproto = "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-glproto = "8 months"
-RECIPE_LATEST_RELEASE_DATE_pn-glproto = "01/2010"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-glproto = "7 months"
+RECIPE_LATEST_RELEASE_DATE_pn-glproto = "Aug 10, 2010"
 RECIPE_COMMENTS_pn-glproto = ""
 RECIPE_MAINTAINER_pn-glproto = "Dexuan Cui <dexuan.cui@intel.com>"
 
@@ -3820,11 +3820,11 @@ RECIPE_MAINTAINER_pn-inputproto = "Dexuan Cui <dexuan.cui@intel.com>"
 RECIPE_STATUS_pn-kbproto = "green"
 DISTRO_PN_ALIAS_pn-kbproto = "Meego=xorg-x11-proto-kbproto Ubuntu=x11proto-kb-dev Debian=x11proto-kb-dev"
 DEPENDENCY_CHECK_pn-kbproto = "not done"
-RECIPE_LATEST_VERSION_pn-kbproto = "1.0.4"
+RECIPE_LATEST_VERSION_pn-kbproto = "1.0.5"
 RECIPE_NO_OF_PATCHES_pn-kbproto = "0"
 RECIPE_INTEL_SECTION_pn-kbproto = "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-kbproto = "3 years"
-RECIPE_LATEST_RELEASE_DATE_pn-kbproto = "10/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-kbproto = "10 months"
+RECIPE_LATEST_RELEASE_DATE_pn-kbproto = "Aug 10, 2010"
 RECIPE_COMMENTS_pn-kbproto = ""
 RECIPE_MAINTAINER_pn-kbproto = "Dexuan Cui <dexuan.cui@intel.com>"
 
@@ -3905,22 +3905,22 @@ RECIPE_MAINTAINER_pn-printproto = "Dexuan Cui <dexuan.cui@intel.com>"
 RECIPE_STATUS_pn-randrproto = "green"
 DISTRO_PN_ALIAS_pn-randrproto = "Meego=xorg-x11-proto-randrproto"
 DEPENDENCY_CHECK_pn-randrproto = "not done"
-RECIPE_LATEST_VERSION_pn-randrproto = "1.3.1"
+RECIPE_LATEST_VERSION_pn-randrproto = "1.3.2"
 RECIPE_NO_OF_PATCHES_pn-randrproto = "0"
 RECIPE_INTEL_SECTION_pn-randrproto = "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-randrproto = "2 years"
-RECIPE_LATEST_RELEASE_DATE_pn-randrproto = "07/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-randrproto = "1 year"
+RECIPE_LATEST_RELEASE_DATE_pn-randrproto = "Oct 29, 2010"
 RECIPE_COMMENTS_pn-randrproto = ""
 RECIPE_MAINTAINER_pn-randrproto = "Dexuan Cui <dexuan.cui@intel.com>"
 
 RECIPE_STATUS_pn-recordproto = "green"
 DISTRO_PN_ALIAS_pn-recordproto = "Meego=xorg-x11-proto-recordproto"
 DEPENDENCY_CHECK_pn-recordproto = "not done"
-RECIPE_LATEST_VERSION_pn-recordproto = "1.14"
+RECIPE_LATEST_VERSION_pn-recordproto = "1.14.1"
 RECIPE_NO_OF_PATCHES_pn-recordproto = "0"
 RECIPE_INTEL_SECTION_pn-recordproto = "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-recordproto = "2 months"
-RECIPE_LATEST_RELEASE_DATE_pn-recordproto = "10/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-recordproto = "1 year"
+RECIPE_LATEST_RELEASE_DATE_pn-recordproto = "Oct 29, 2010"
 RECIPE_COMMENTS_pn-recordproto = ""
 RECIPE_MAINTAINER_pn-recordproto = "Dexuan Cui <dexuan.cui@intel.com>"
 
@@ -3949,11 +3949,11 @@ RECIPE_MAINTAINER_pn-resourceproto = "Dexuan Cui <dexuan.cui@intel.com>"
 RECIPE_STATUS_pn-scrnsaverproto = "green"
 DISTRO_PN_ALIAS_pn-scrnsaverproto = "Meego=xorg-x11-proto-scrnsaverproto Ubuntu=x11proto-scrnsaver-dev Debian=x11proto-scrnsaver-dev"
 DEPENDENCY_CHECK_pn-scrnsaverproto = "not done"
-RECIPE_LATEST_VERSION_pn-scrnsaverproto = "1.2.0"
+RECIPE_LATEST_VERSION_pn-scrnsaverproto = "1.2.1"
 RECIPE_NO_OF_PATCHES_pn-scrnsaverproto = "0"
 RECIPE_INTEL_SECTION_pn-scrnsaverproto = "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-scrnsaverproto = "3 years"
-RECIPE_LATEST_RELEASE_DATE_pn-scrnsaverproto = "08/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-scrnsaverproto = "1+ years"
+RECIPE_LATEST_RELEASE_DATE_pn-scrnsaverproto = "Oct 29, 2010"
 RECIPE_COMMENTS_pn-scrnsaverproto = ""
 RECIPE_MAINTAINER_pn-scrnsaverproto = "Dexuan Cui <dexuan.cui@intel.com>"
 
@@ -3971,22 +3971,22 @@ RECIPE_MAINTAINER_pn-trapproto = "Dexuan Cui <dexuan.cui@intel.com>"
 RECIPE_STATUS_pn-videoproto = "green"
 DISTRO_PN_ALIAS_pn-videoproto = "Meego=xorg-x11-proto-videoproto"
 DEPENDENCY_CHECK_pn-videoproto = "not done"
-RECIPE_LATEST_VERSION_pn-videoproto = "2.3.0"
+RECIPE_LATEST_VERSION_pn-videoproto = "2.3.1"
 RECIPE_NO_OF_PATCHES_pn-videoproto = "0"
 RECIPE_INTEL_SECTION_pn-videoproto = "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-videoproto = "3 years"
-RECIPE_LATEST_RELEASE_DATE_pn-videoproto = "08/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-videoproto = "1 year"
+RECIPE_LATEST_RELEASE_DATE_pn-videoproto = "Aug 10, 2010"
 RECIPE_COMMENTS_pn-videoproto = ""
 RECIPE_MAINTAINER_pn-videoproto = "Dexuan Cui <dexuan.cui@intel.com>"
 
 RECIPE_STATUS_pn-xcmiscproto = "green"
 DISTRO_PN_ALIAS_pn-xcmiscproto = "Meego=xorg-x11-proto-xcmiscproto"
 DEPENDENCY_CHECK_pn-xcmiscproto = "not done"
-RECIPE_LATEST_VERSION_pn-xcmiscproto = "1.2.0"
+RECIPE_LATEST_VERSION_pn-xcmiscproto = "1.2.1"
 RECIPE_NO_OF_PATCHES_pn-xcmiscproto = "0"
 RECIPE_INTEL_SECTION_pn-xcmiscproto = "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xcmiscproto = "3 years"
-RECIPE_LATEST_RELEASE_DATE_pn-xcmiscproto = "08/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xcmiscproto = "1+ years"
+RECIPE_LATEST_RELEASE_DATE_pn-xcmiscproto = "Oct 30, 2010"
 RECIPE_COMMENTS_pn-xcmiscproto = ""
 RECIPE_MAINTAINER_pn-xcmiscproto = "Dexuan Cui <dexuan.cui@intel.com>"
 
@@ -4080,11 +4080,11 @@ RECIPE_MAINTAINER_pn-xcb-proto = "Dexuan Cui <dexuan.cui@intel.com>"
 RECIPE_STATUS_pn-xextproto = "green"
 DISTRO_PN_ALIAS_pn-xextproto = "Meego=xorg-x11-proto-xextproto"
 DEPENDENCY_CHECK_pn-xextproto = "not done"
-RECIPE_LATEST_VERSION_pn-xextproto = "7.1.1"
+RECIPE_LATEST_VERSION_pn-xextproto = "7.1.2"
 RECIPE_NO_OF_PATCHES_pn-xextproto = "0"
 RECIPE_INTEL_SECTION_pn-xextproto = "x11/libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xextproto = "20 days"
-RECIPE_LATEST_RELEASE_DATE_pn-xextproto = "08/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xextproto = "1 year"
+RECIPE_LATEST_RELEASE_DATE_pn-xextproto = "Aug 10, 2010"
 RECIPE_COMMENTS_pn-xextproto = ""
 RECIPE_MAINTAINER_pn-xextproto = "Dexuan Cui <dexuan.cui@intel.com>"
 
-- 
1.7.0.4


