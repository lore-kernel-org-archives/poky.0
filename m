Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 818B54C811CC
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 05:21:44 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Nov 2010 03:21:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,222,1288594800"; d="scan'208";a="679076713"
Received: from gzhai-nhm.sh.intel.com (HELO localhost) ([10.239.36.111])
	by orsmga001.jf.intel.com with ESMTP; 19 Nov 2010 03:21:43 -0800
Message-Id: <460a261a393cf6ec1794504b93bf47f2e3089e13.1290165996.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290165996.git.edwin.zhai@intel.com>
References: <cover.1290165996.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 19 Nov 2010 19:24:38 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 17/17] commit ae8dd607a154e8639d18014eb442f0fa48d55971
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
X-List-Received-Date: Fri, 19 Nov 2010 11:21:44 -0000

    distro tracking: Updates for libgpg-error...

    Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   82 ++++++++++----------
 1 files changed, 41 insertions(+), 41 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 372297a..553155a 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -168,11 +168,11 @@ RECIPE_MAINTAINER_pn-libpam = "Kevin Tian <kevin.tian@intel.com>"
 
 RECIPE_STATUS_pn-libgpg-error = "yellow" # specific .pc handle
 DEPENDENCY_CHECK_pn-libgpg-error = "not done"
-RECIPE_LATEST_VERSION_pn-libgpg-error = "1.8"
+RECIPE_LATEST_VERSION_pn-libgpg-error = "1.9"
 RECIPE_PATCH_pn-libgpg-error+pkgconfig = "long existing since 0.7; no exact commit; it's to add a .pc.in. perhaps we don't require it now?"
 RECIPE_INTEL_SECTION_pn-libgpg-error = "base libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libgpg-error = "18 months"
-RECIPE_LATEST_RELEASE_DATE_pn-libgpg-error = "05/2010"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libgpg-error = "2 months"
+RECIPE_LATEST_RELEASE_DATE_pn-libgpg-error = "07/2010"
 RECIPE_COMMENTS_pn-libgpg-error = ""
 RECIPE_MAINTAINER_pn-libgpg-error = "Edwin Zhai <edwin.zhai@intel.com>"
 
@@ -269,11 +269,11 @@ RECIPE_MAINTAINER_pn-liboil = "Edwin Zhai <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-libassuan = "green"
 DEPENDENCY_CHECK_pn-libassuan = "not done"
-RECIPE_LATEST_VERSION_pn-libassuan = "2.0.0"
+RECIPE_LATEST_VERSION_pn-libassuan = "2.0.1"
 RECIPE_NO_OF_PATCHES_pn-libassuan = "0"
 RECIPE_INTEL_SECTION_pn-libassuan = "base libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libassuan = "2 years"
-RECIPE_LATEST_RELEASE_DATE_pn-libassuan = "01/2010"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libassuan = "7 months"
+RECIPE_LATEST_RELEASE_DATE_pn-libassuan = "08/2010"
 RECIPE_COMMENTS_pn-libassuan = ""
 RECIPE_MAINTAINER_pn-libassuan = "Edwin Zhai <edwin.zhai@intel.com>"
 
@@ -1026,24 +1026,24 @@ RECIPE_LATEST_VERSION_pn-coreutils = "8.5"
 
 
 
-RECIPE_STATUS_pn-libuser = "red"
+RECIPE_STATUS_pn-libuser = "green"
 RECIPE_MAINTAINER_pn-libuser = "Edwin Zhai <edwin.zhai@intel.com>"
 DEPENDENCY_CHECK_pn-libuser = "not done"
-RECIPE_LATEST_VERSION_pn-libuser = "0.56.16"
+RECIPE_LATEST_VERSION_pn-libuser = "0.56.18"
 RECIPE_NO_OF_PATCHES_pn-libuser = "1"
 RECIPE_INTEL_SECTION_pn-libuser = "base utils"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libuser = "21 days"
-RECIPE_LATEST_RELEASE_DATE_pn-libuser = "03/2010"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libuser = "1 month"
+RECIPE_LATEST_RELEASE_DATE_pn-libuser = "09/2010"
 RECIPE_COMMENTS_pn-libuser = ""
 
 RECIPE_STATUS_pn-xz = "green"
 RECIPE_MAINTAINER_pn-xz = "Edwin Zhai <edwin.zhai@intel.com>"
 DEPENDENCY_CHECK_pn-xz = "not done"
-RECIPE_LATEST_VERSION_pn-xz = "4.999.9beta"
+RECIPE_LATEST_VERSION_pn-xz = "5.0.0"
 RECIPE_NO_OF_PATCHES_pn-xz = "0"
 RECIPE_INTEL_SECTION_pn-xz = "base utils"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xz = "n/a"
-RECIPE_LATEST_RELEASE_DATE_pn-xz = "05/2010"
+RECIPE_LATEST_RELEASE_DATE_pn-xz = "10/2010"
 RECIPE_COMMENTS_pn-xz = ""
 
 RECIPE_STATUS_pn-bc = "green"
@@ -1059,11 +1059,11 @@ RECIPE_COMMENTS_pn-bc = ""
 RECIPE_STATUS_pn-ed = "green"
 RECIPE_MAINTAINER_pn-ed = "Edwin Zhai <edwin.zhai@intel.com>"
 DEPENDENCY_CHECK_pn-ed = "not done"
-RECIPE_LATEST_VERSION_pn-ed = "1.4"
+RECIPE_LATEST_VERSION_pn-ed = "1.5"
 RECIPE_NO_OF_PATCHES_pn-ed = "1"
 RECIPE_INTEL_SECTION_pn-ed = "base utils"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-ed = "2 months"
-RECIPE_LATEST_RELEASE_DATE_pn-ed = "07/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-ed = "14 months"
+RECIPE_LATEST_RELEASE_DATE_pn-ed = "07/2010"
 RECIPE_COMMENTS_pn-ed = "GPLv3 was used since ed 0.6"
 
 RECIPE_STATUS_pn-pax = "green"
@@ -1552,10 +1552,10 @@ RECIPE_COMMENTS_pn-hal-info = ""
 RECIPE_STATUS_pn-avahi = "green"
 RECIPE_MAINTAINER_pn-avahi = "Edwin Zhai <edwin.zhai@intel.com>"
 DEPENDENCY_CHECK_pn-avahi = "not done"
-RECIPE_LATEST_VERSION_pn-avahi = "0.6.27"
+RECIPE_LATEST_VERSION_pn-avahi = "0.6.28"
 RECIPE_INTEL_SECTION_pn-avahi = "base utils"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-avahi = "1 month"
-RECIPE_LATEST_RELEASE_DATE_pn-avahi = "07/2010"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-avahi = "3 month"
+RECIPE_LATEST_RELEASE_DATE_pn-avahi = "10/2010"
 RECIPE_COMMENTS_pn-avahi = ""
 
 RECIPE_STATUS_pn-js = "yellow"    # may not work for platforms other than 32bit x86
@@ -3036,11 +3036,11 @@ RECIPE_MAINTAINER_pn-xrestop = "Zhai Edwin <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-pcmanfm = "green"
 DEPENDENCY_CHECK_pn-pcmanfm = "not done"
-RECIPE_LATEST_VERSION_pn-pcmanfm = "0.9.7"
+RECIPE_LATEST_VERSION_pn-pcmanfm = "0.9.8"
 RECIPE_NO_OF_PATCHES_pn-pcmanfm = "4"
 RECIPE_INTEL_SECTION_pn-pcmanfm = "graphic apps"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-pcmanfm = "4 months"
-RECIPE_LATEST_RELEASE_DATE_pn-pcmanfm = "05/2010"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-pcmanfm = "5 months"
+RECIPE_LATEST_RELEASE_DATE_pn-pcmanfm = "10/2010"
 RECIPE_COMMENTS_pn-pcmanfm = ""
 RECIPE_MAINTAINER_pn-pcmanfm = "Zhai Edwin <edwin.zhai@intel.com>"
 
@@ -4670,7 +4670,7 @@ RECIPE_MAINTAINER_pn-libowl = "Zhai Edwin <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-libowl-av = "green" # no update needed
 DEPENDENCY_CHECK_pn-libowl-av = "not done"
-RECIPE_LATEST_VERSION_pn-libowl-av = "0.0+svnr398"
+RECIPE_LATEST_VERSION_pn-libowl-av = "0.0+svnr416"
 RECIPE_NO_OF_PATCHES_pn-libowl-av = "0"
 RECIPE_INTEL_SECTION_pn-libowl-av = "graphic UX"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libowl-av = "n/a"
@@ -4782,11 +4782,11 @@ RECIPE_MAINTAINER_pn-screenshot = "Zhai Edwin <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-tasks = "green"
 DEPENDENCY_CHECK_pn-tasks = "not done"
-RECIPE_LATEST_VERSION_pn-tasks = "0.16"
+RECIPE_LATEST_VERSION_pn-tasks = "0.18"
 RECIPE_NO_OF_PATCHES_pn-tasks = "1"
 RECIPE_INTEL_SECTION_pn-tasks = "graphic UX"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-tasks = "4 months"
-RECIPE_LATEST_RELEASE_DATE_pn-tasks = "07/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-tasks = "12 months"
+RECIPE_LATEST_RELEASE_DATE_pn-tasks = "07/2010"
 RECIPE_COMMENTS_pn-tasks = ""
 RECIPE_MAINTAINER_pn-tasks = "Zhai Edwin <edwin.zhai@intel.com>"
 
@@ -4832,11 +4832,11 @@ RECIPE_MAINTAINER_pn-leafpad = "Zhai Edwin <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-atk = "green"
 DEPENDENCY_CHECK_pn-atk = "not done"
-RECIPE_LATEST_VERSION_pn-atk = "1.30.0"
+RECIPE_LATEST_VERSION_pn-atk = "1.32.0"
 RECIPE_NO_OF_PATCHES_pn-atk = "0"
 RECIPE_INTEL_SECTION_pn-atk = "graphic UX"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-atk = "1 month"
-RECIPE_LATEST_RELEASE_DATE_pn-atk = "03/2010"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-atk = "6 month"
+RECIPE_LATEST_RELEASE_DATE_pn-atk = "09/2010"
 RECIPE_COMMENTS_pn-atk = ""
 RECIPE_MAINTAINER_pn-atk = "Zhai Edwin <edwin.zhai@intel.com>"
 
@@ -4908,11 +4908,11 @@ RECIPE_MAINTAINER_pn-eds-dbus = "Zhai Edwin <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-gnome-keyring = "green"
 DEPENDENCY_CHECK_pn-gnome-keyring = "not done"
-RECIPE_LATEST_VERSION_pn-gnome-keyring = "2.31.4"
+RECIPE_LATEST_VERSION_pn-gnome-keyring = "2.32.1"
 RECIPE_NO_OF_PATCHES_pn-gnome-keyring = "0"
 RECIPE_INTEL_SECTION_pn-gnome-keyring = "graphic UX"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gnome-keyring = "1 month"
-RECIPE_LATEST_RELEASE_DATE_pn-gnome-keyring = "06/2010"
+RECIPE_LATEST_RELEASE_DATE_pn-gnome-keyring = "10/2010"
 RECIPE_COMMENTS_pn-gnome-keyring = ""
 RECIPE_MAINTAINER_pn-gnome-keyring = "Zhai Edwin <edwin.zhai@intel.com>"
 
@@ -4971,11 +4971,11 @@ RECIPE_MAINTAINER_pn-libglade = "Zhai Edwin <edwin.zhai@intel.com>"
 RECIPE_STATUS_pn-libsoup-2.4 = "green"
 DISTRO_PN_ALIAS_pn-libsoup-2.4 = "Meego=libsoup Fedora=libsoup OpenSuSE=libsoup Ubuntu=libsoup2.4 Mandriva=libsoup Debian=libsoup2.4"
 DEPENDENCY_CHECK_pn-libsoup-2.4 = "not done"
-RECIPE_LATEST_VERSION_pn-libsoup-2.4 = "2.31.2"
+RECIPE_LATEST_VERSION_pn-libsoup-2.4 = "2.32.1"
 RECIPE_NO_OF_PATCHES_pn-libsoup-2.4 = "0"
 RECIPE_INTEL_SECTION_pn-libsoup-2.4 = "graphic UX"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libsoup-2.4 = "1 month"
-RECIPE_LATEST_RELEASE_DATE_pn-libsoup-2.4 = "05/2010"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libsoup-2.4 = "2 month"
+RECIPE_LATEST_RELEASE_DATE_pn-libsoup-2.4 = "11/2010"
 RECIPE_COMMENTS_pn-libsoup-2.4 = ""
 RECIPE_MAINTAINER_pn-libsoup-2.4 = "Zhai Edwin <edwin.zhai@intel.com>"
 
@@ -5012,11 +5012,11 @@ RECIPE_MAINTAINER_pn-matchbox-keyboard = "Zhai Edwin <edwin.zhai@intel.com>"
 RECIPE_STATUS_pn-matchbox-panel-2 = "green"
 DISTRO_PN_ALIAS_pn-matchbox-panel-2 = "Debian=matchbox-panel Mandriva=matchbox-panel Ubuntu=matchbox-panel"
 DEPENDENCY_CHECK_pn-matchbox-panel-2 = "not done"
-RECIPE_LATEST_VERSION_pn-matchbox-panel-2 = "0.0+svnr2109"
-RECIPE_NO_OF_PATCHES_pn-matchbox-panel-2 = "0"
+RECIPE_LATEST_VERSION_pn-matchbox-panel-2 = "0.0+svnr2111"
+RECIPE_NO_OF_PATCHES_pn-matchbox-panel-2 = "1"
 RECIPE_INTEL_SECTION_pn-matchbox-panel-2 = "graphic UX"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-matchbox-panel-2 = "n/a"
-RECIPE_LATEST_RELEASE_DATE_pn-matchbox-panel-2 = "04/2010"
+RECIPE_LATEST_RELEASE_DATE_pn-matchbox-panel-2 = "08/2010"
 RECIPE_COMMENTS_pn-matchbox-panel-2 = ""
 RECIPE_MAINTAINER_pn-matchbox-panel-2 = "Zhai Edwin <edwin.zhai@intel.com>"
 
@@ -5053,11 +5053,11 @@ RECIPE_MAINTAINER_pn-pointercal = "Zhai Edwin <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-libgnome-keyring = "green"
 DEPENDENCY_CHECK_pn-libgnome-keyring = "not done"
-RECIPE_LATEST_VERSION_pn-libgnome-keyring = "2.30.1"
+RECIPE_LATEST_VERSION_pn-libgnome-keyring = "2.32.0"
 RECIPE_NO_OF_PATCHES_pn-libgnome-keyring = "0"
 RECIPE_INTEL_SECTION_pn-libgnome-keyring = "graphic UX"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libgnome-keyring = "1 month"
-RECIPE_LATEST_RELEASE_DATE_pn-libgnome-keyring = "04/2010"
+RECIPE_LATEST_RELEASE_DATE_pn-libgnome-keyring = "09/2010"
 RECIPE_COMMENTS_pn-libgnome-keyring = "New recipe separated from gnome-keyring"
 RECIPE_MAINTAINER_pn-libgnome-keyring = "Zhai Edwin <edwin.zhai@intel.com>"
 
@@ -5073,11 +5073,11 @@ RECIPE_MAINTAINER_pn-web-webkit = "Zhai Edwin <edwin.zhai@intel.com>"
 
 RECIPE_STATUS_pn-libfm = "green"
 DEPENDENCY_CHECK_pn-libfm = "not done"
-RECIPE_LATEST_VERSION_pn-libfm = "0.1.12"
+RECIPE_LATEST_VERSION_pn-libfm = "0.1.14"
 RECIPE_NO_OF_PATCHES_pn-libfm = "0"
 RECIPE_INTEL_SECTION_pn-libfm = "graphic UX"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libfm = "1 month"
-RECIPE_LATEST_RELEASE_DATE_pn-libfm = "05/2010"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libfm = "5 months"
+RECIPE_LATEST_RELEASE_DATE_pn-libfm = "10/2010"
 RECIPE_COMMENTS_pn-libfm = "Add as required when updating pcmanfm"
 RECIPE_MAINTAINER_pn-libfm = "Zhai Edwin <edwin.zhai@intel.com>"
 
-- 
1.6.3.3


