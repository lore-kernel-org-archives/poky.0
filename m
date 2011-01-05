Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A3BAA4C811BC
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 15:36:48 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Jan 2011 13:36:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,279,1291622400"; d="scan'208";a="693948338"
Received: from nbuild1.sc.intel.com (HELO localhost) ([172.25.110.36])
	by orsmga001.jf.intel.com with ESMTP; 05 Jan 2011 13:36:48 -0800
Message-Id: <6e44d057fda98058f66af3da67f130d4208190aa.1294237909.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1294237909.git.nitin.a.kamble@intel.com>
References: <cover.1294237909.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Sun, 26 Dec 2010 17:26:28 -0800
Date: Wed, 05 Jan 2011  7:06:46 -0800
To: poky@yoctoproject.org
Subject: [PATCH 1/8] distro-tracking: update recently updated recipes
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
X-List-Received-Date: Wed, 05 Jan 2011 21:36:48 -0000

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   13 +++++--------
 1 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 16db013..c3a78e4 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -15,13 +15,11 @@ RECIPE_MAINTAINER_pn-gccmakedep = "Dexuan Cui <dexuan.cui@intel.com>"
 DISTRO_PN_ALIAS_pn-gccmakedep = "Mandriva=gccmakedep Ubuntu=xutils-dev"
 
 RECIPE_STATUS_pn-git = "green"
-RECIPE_LATEST_VERSION_pn-git = "1.7.3.2"
-RECIPE_LAST_UPDATE_pn-git = "Dec 1, 2010"
+RECIPE_LATEST_VERIONS_pn-git = "1.7.3.4"
 RECIPE_MAINTAINER_pn-git = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
 RECIPE_STATUS_pn-gtk-theme-torturer = "red"
 RECIPE_LATEST_VERSION_pn-gtk-theme-torturer = "check"
-RECIPE_LAST_UPDATE_pn-git = "Dec 27, 2007"
 RECIPE_MAINTAINER_pn-gtk-theme-torturer = "Edwin Zhai <edwin.zhai@intel.com>"
 DISTRO_PN_ALIAS_pn-gtk-theme-torturer = "OSPDT upstream=http://wiki.laptop.org/go/GTK_for_OLPC"
 
@@ -2970,7 +2968,7 @@ RECIPE_LATEST_VERSION_pn-prelink="1.0+git0+0x909470ee441237563d6236c505cb2d02ddc
 RECIPE_LAST_UPDATE_pn-perl = "Jul 23, 2010"
 RECIPE_MAINTAINER_pn-prelink = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-python-dbus="green" 
+RECIPE_STATUS_pn-python-dbus="red" 
 RECIPE_LATEST_VERSION_pn-python-dbus="0.83.1"
 RECIPE_LAST_UPDATE_pn-python-dbus = "Jul 7, 2010"
 RECIPE_MAINTAINER_pn-python-dbus = "Nitin A Kamble <nitin.a.kamble@intel.com>"
@@ -3016,8 +3014,8 @@ DISTRO_PN_ALIAS_pn-python-scons = "Fedora=scons OpenSuSE=scons Ubuntu=scons Mand
 RECIPE_LAST_UPDATE_pn-python-scons = "Nov 8, 2010"
 RECIPE_MAINTAINER_pn-python-scons = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-python="green"
-RECIPE_LATEST_VERSION_pn-python="2.6.6"
+RECIPE_STATUS_pn-python="red"
+RECIPE_LATEST_VERSION_pn-python="2.7.1"
 RECIPE_NO_OF_PATCHES_pn-python="8"
 RECIPE_LATEST_RELEASE_DATE_pn-python="2010/03/18"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-python="5 months"
@@ -3061,8 +3059,7 @@ RECIPE_MAINTAINER_pn-libmpc = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 DISTRO_PN_ALIAS_pn-libmpc = "Fedora=libmpc OpenSuse=libmpc2"
 
 RECIPE_STATUS_pn-byacc="green" 
-RECIPE_LATEST_VERSION_pn-byacc="20100610"
-RECIPE_LAST_UPDATE_pn-byacc = "Aug 13, 2010"
+RECIPE_LATEST_VERSION_pn-byacc="20101127"
 RECIPE_MAINTAINER_pn-byacc = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
 RECIPE_STATUS_pn-libconvert-asn1-perl="green" # 0.22 version does not build, so created a recipe for version 0.21
-- 
1.7.2.2


