Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4A8744C810C0
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 11:25:19 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 30 Dec 2010 09:25:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,250,1291622400"; d="scan'208";a="873078282"
Received: from unknown (HELO localhost) ([143.183.140.52])
	by fmsmga001.fm.intel.com with ESMTP; 30 Dec 2010 09:25:08 -0800
Message-Id: <f17bca27bf2df5d8dc0b09124127421ef68b420a.1293729977.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1293729977.git.nitin.a.kamble@intel.com>
References: <cover.1293729977.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Date: Sun, 26 Dec 2010 17:26:28 -0800
To: poky@yoctoproject.org
Subject: [PATCH 1/5] distro-tracking: update recently updated recipes
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
X-List-Received-Date: Thu, 30 Dec 2010 17:25:19 -0000

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   14 +++++++-------
 1 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 7a88447..727910a 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -15,8 +15,8 @@ RECIPE_LATEST_VERIONS_pn-gccmakedep = "check"
 RECIPE_MAINTAINER_pn-gccmakedep = "Dexuan Cui <dexuan.cui@intel.com>"
 DISTRO_PN_ALIAS_pn-gccmakedep = "Mandriva=gccmakedep Ubuntu=xutils-dev"
 
-RECIPE_STATUS_pn-git = "green"
-RECIPE_LATEST_VERIONS_pn-git = "1.7.3.2"
+RECIPE_STATUS_pn-git = "red"
+RECIPE_LATEST_VERIONS_pn-git = "1.7.3.4"
 RECIPE_MAINTAINER_pn-git = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
 RECIPE_STATUS_pn-gtk-theme-torturer = "red"
@@ -2677,7 +2677,7 @@ RECIPE_STATUS_pn-prelink="red"
 RECIPE_LATEST_VERSION_pn-prelink="1.0+git0+0x909470ee441237563d6236c505cb2d02ddc48704"
 RECIPE_MAINTAINER_pn-prelink = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-python-dbus="green" 
+RECIPE_STATUS_pn-python-dbus="red" 
 RECIPE_LATEST_VERSION_pn-python-dbus="0.83.1"
 RECIPE_MAINTAINER_pn-python-dbus = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 DISTRO_PN_ALIAS_pn-python-dbus = "Ubuntu=python-dbus Debian=python-dbus Mandriva=python-dbus"
@@ -2715,8 +2715,8 @@ RECIPE_LATEST_VERSION_pn-python-scons="2.0.1"
 DISTRO_PN_ALIAS_pn-python-scons = "Fedora=scons OpenSuSE=scons Ubuntu=scons Mandriva=scons Debian=scons"
 RECIPE_MAINTAINER_pn-python-scons = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-python="green"
-RECIPE_LATEST_VERSION_pn-python="2.6.6"
+RECIPE_STATUS_pn-python="red"
+RECIPE_LATEST_VERSION_pn-python="2.7.1"
 RECIPE_NO_OF_PATCHES_pn-python="8"
 RECIPE_LATEST_RELEASE_DATE_pn-python="2010/03/18"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-python="5 months"
@@ -2752,8 +2752,8 @@ RECIPE_LATEST_VERSION_pn-libmpc="0.8.2"
 RECIPE_MAINTAINER_pn-libmpc = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 DISTRO_PN_ALIAS_pn-libmpc = "Fedora=libmpc OpenSuse=libmpc2"
 
-RECIPE_STATUS_pn-byacc="green" 
-RECIPE_LATEST_VERSION_pn-byacc="20100610"
+RECIPE_STATUS_pn-byacc="red" 
+RECIPE_LATEST_VERSION_pn-byacc="20101127"
 RECIPE_MAINTAINER_pn-byacc = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
 RECIPE_STATUS_pn-libconvert-asn1-perl="red" # 0.22 version does not build, so created a recipe for version 0.21
-- 
1.7.2.3


