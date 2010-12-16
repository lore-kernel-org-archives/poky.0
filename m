Return-Path: <ke.yu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id D1D484C810AC
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 23:18:29 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 16 Dec 2010 21:18:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,359,1288594800"; d="scan'208";a="362980351"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by azsmga001.ch.intel.com with ESMTP; 16 Dec 2010 21:18:28 -0800
Message-Id: <8599268571abce8747ff2041db24dfaae678176d.1292563366.git.ke.yu@intel.com>
In-Reply-To: <cover.1292563366.git.ke.yu@intel.com>
References: <cover.1292563366.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Thu, 16 Dec 2010 14:10:15 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/2] distro_tracking: Fix name inconsistency
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
X-List-Received-Date: Fri, 17 Dec 2010 05:18:30 -0000

in distro_tracking_fields.inc, my name has two version: "Ke Yu <ke.yu@intel.com>",
and "Yu Ke <ke.yu@intel.com>". this patch unify it to be "Yu Ke <ke.yu@intel.com>".

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   14 +++++++-------
 1 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 204ef95..ed18ff9 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -490,7 +490,7 @@ RECIPE_LATEST_RELEASE_DATE_pn-popt = "05/2010"
 RECIPE_COMMENTS_pn-popt = ""
 
 RECIPE_STATUS_pn-sqlite3 = "green"   # need upgrade
-RECIPE_MAINTAINER_pn-sqlite3 = "Ke Yu <ke.yu@intel.com>"
+RECIPE_MAINTAINER_pn-sqlite3 = "Yu Ke <ke.yu@intel.com>"
 DEPENDENCY_CHECK_pn-sqlite3 = "not done"
 RECIPE_LATEST_VERSION_pn-sqlite3 = "3.7.3"
 RECIPE_INTEL_SECTION_pn-sqlite3 = "base libs"
@@ -1383,7 +1383,7 @@ RECIPE_COMMENTS_pn-curl = ""
 
 RECIPE_STATUS_pn-gconf-dbus = "green"
 DISTRO_PN_ALIAS_pn-gconf-dbus = "Meego=GConf-dbus"
-RECIPE_MAINTAINER_pn-gconf-dbus = "Ke Yu <ke.yu@intel.com>"
+RECIPE_MAINTAINER_pn-gconf-dbus = "Yu Ke <ke.yu@intel.com>"
 DEPENDENCY_CHECK_pn-gconf-dbus = "not done"
 RECIPE_LATEST_VERSION_pn-gconf-dbus = "2.16.0+svnr705"
 RECIPE_INTEL_SECTION_pn-gconf-dbus = "base utils"
@@ -3260,21 +3260,21 @@ RECIPE_MAINTAINER_pn-xserver-xf86-dri-lite="Yu Ke <ke.yu@intel.com>"
 RECIPE_STATUS_pn-xf86-input-synaptics = "red"
 DISTRO_PN_ALIAS_pn-xf86-input-synaptics = "Meego=xorg-x11-drv-synaptics Fedora=xorg-x11-drv-synaptics Ubuntu=xserver-xorg-input-synaptics Mandriva=x11-driver-input-synaptics Debian=xfree86-driver-synaptics"
 RECIPE_LATEST_VERSION_pn-xf86-input-synaptics = "1.2.2"
-RECIPE_MAINTAINER_pn-xf86-input-synaptics = "Ke Yu <ke.yu@intel.com>"
+RECIPE_MAINTAINER_pn-xf86-input-synaptics = "Yu Ke <ke.yu@intel.com>"
 
 RECIPE_STATUS_pn-xf86-video-intel = "red"
 DISTRO_PN_ALIAS_pn-xf86-video-intel = "Debian=xserver-xorg-video-intel Fedora=xorg-x11-drv-intel Mandriva=x11-driver-video-intel Meego=xorg-x11-drv-intel Ubuntu=xserver-xorg-video-intel"
 RECIPE_LATEST_VERSION_pn-xf86-video-intel = "2.11.0"
-RECIPE_MAINTAINER_pn-xf86-video-intel = "Ke Yu <ke.yu@intel.com>"
+RECIPE_MAINTAINER_pn-xf86-video-intel = "Yu Ke <ke.yu@intel.com>"
 
 RECIPE_STATUS_pn-xf86-video-omapfb = "red"
 DISTRO_PN_ALIAS_pn-xf86-video-omapfb = "OSPDT"
 RECIPE_LATEST_VERSION_pn-xf86-video-omapfb = "0.1.1+git_db636c8436265c3d86"
-RECIPE_MAINTAINER_pn-xf86-video-omapfb = "Ke Yu <ke.yu@intel.com>"
+RECIPE_MAINTAINER_pn-xf86-video-omapfb = "Yu Ke <ke.yu@intel.com>"
 
 RECIPE_STATUS_pn-xorg-cf-files = "red"
 RECIPE_LATEST_VERSION_pn-xorg-cf-files = "1.0.3"
-RECIPE_MAINTAINER_pn-xorg-cf-files = "Ke Yu <ke.yu@intel.com>"
+RECIPE_MAINTAINER_pn-xorg-cf-files = "Yu Ke <ke.yu@intel.com>"
 DISTRO_PN_ALIAS_pn-xorg-cf-files = "Fedora=imake Ubuntu=xutils-dev"
 
 RECIPE_STATUS_pn-libdrm-poulsbo = "green" # no update needed
@@ -4854,7 +4854,7 @@ RECIPE_MAINTAINER_pn-mutter = "Edwin Zhai <edwin.zhai@intel.com>"
 RECIPE_STATUS_pn-qt4-x11-free = "green"
 DISTRO_PN_ALIAS_pn-qt4-x11-free = "Ubuntu=qt-x11-free Debian=qt-x11-free"
 RECIPE_LATEST_VERSION_pn-qt4-x11-free = "4.6.3"
-RECIPE_MAINTAINER_pn-qt4-x11-free = "Ke Yu <ke.yu@intel.com>"
+RECIPE_MAINTAINER_pn-qt4-x11-free = "Yu Ke <ke.yu@intel.com>"
 DISTRO_PN_ALIAS_pn-poky-feed-config-opkg = "Poky"
 DISTRO_PN_ALIAS_pn-poky-image-base = "Poky"
 DISTRO_PN_ALIAS_pn-poky-image-basic = "Poky"
-- 
1.7.0.4


