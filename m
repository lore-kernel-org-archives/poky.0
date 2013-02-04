Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FB63E006D2
	for <poky@yoctoproject.org>; Mon,  4 Feb 2013 03:02:29 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 04 Feb 2013 03:02:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,598,1355126400"; d="scan'208";a="282459169"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.76])
	by fmsmga001.fm.intel.com with ESMTP; 04 Feb 2013 03:02:27 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon,  4 Feb 2013 11:02:24 +0000
Message-Id: <1359975744-31340-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] Remove zypper from distro tracking files
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 04 Feb 2013 11:02:29 -0000

We no longer have zypper/libzypp/sat-solver, so remove references to
them.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc      |    3 ---
 meta-yocto/conf/distro/include/maintainers.inc       |    3 ---
 meta-yocto/conf/distro/include/recipe_color.inc      |    2 --
 meta-yocto/conf/distro/include/upstream_tracking.inc |    4 ----
 4 files changed, 12 deletions(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index 2f56d44..c88f15d 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -209,7 +209,6 @@ DISTRO_PN_ALIAS_pn-libxscrnsaver = "Fedora=libXScrnSaver Ubuntu=libxss1 Mandriva
 DISTRO_PN_ALIAS_pn-libxsettings-client = "Debian=libxsettings-client0 Ubuntu=libxsettings-client0 Mandriva=libXsettings-client0"
 DISTRO_PN_ALIAS_pn-libxtrap = "Debian=libxtrap6 Fedora=libXTrap"
 DISTRO_PN_ALIAS_pn-libxxf86misc = "Mandriva=libxxf86misc Fedora=libXxf86misc"
-DISTRO_PN_ALIAS_pn-libzypp = "OpenSuse=libzypp Meego=libzypp"
 DISTRO_PN_ALIAS_pn-linux-dummy = "Intel"
 DISTRO_PN_ALIAS_pn-linux-libc-headers = "Debian=linux-kernel-headers Ubuntu=linux-kernel-headers"
 DISTRO_PN_ALIAS_pn-linux-libc-headers-yocto = "Debian=linux-kernel-headers Ubuntu=linux-kernel-headers"
@@ -356,7 +355,6 @@ DISTRO_PN_ALIAS_pn-rt-tests = "Debian=rt-tests Ubuntu=rt-tests"
 DISTRO_PN_ALIAS_pn-run-postinsts = "OE-Core"
 DISTRO_PN_ALIAS_pn-sato-icon-theme = "OpenedHand"
 DISTRO_PN_ALIAS_pn-sato-screenshot = "OpenedHand"
-DISTRO_PN_ALIAS_pn-sat-solver = "OSPDT OpenSuSE=satsolver-tools"
 DISTRO_PN_ALIAS_pn-screenshot = "OpenedHand"
 DISTRO_PN_ALIAS_pn-scrnsaverproto = "Meego=xorg-x11-proto-scrnsaverproto Ubuntu=x11proto-scrnsaver-dev Debian=x11proto-scrnsaver-dev"
 DISTRO_PN_ALIAS_pn-settings-daemon = "OpenedHand"
@@ -452,4 +450,3 @@ DISTRO_PN_ALIAS_pn-xwininfo = "Fedora=xorg-x11-utils Ubuntu=x11-utils"
 DISTRO_PN_ALIAS_pn-yaffs2-utils = "OSPDT upstream=http://www.yaffs.net"
 DISTRO_PN_ALIAS_pn-zaurusd = "OpenedHand"
 DISTRO_PN_ALIAS_pn-zeroconf = "OSPDT upstream=http://www.progsoc.org/~wildfire/zeroconf/"
-DISTRO_PN_ALIAS_pn-zypper = "OpenSuse=zypper Meego=zypper"
diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 83e5202..3069f72 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -469,7 +469,6 @@ RECIPE_MAINTAINER_pn-libxxf86dga ="Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libxxf86dga = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-libxxf86misc = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-libxxf86vm = "Constantin Musca <constantinx.musca@intel.com>"
-RECIPE_MAINTAINER_pn-libzypp = "Mark Hatle <mark.hatle@windriver.com>"
 RECIPE_MAINTAINER_pn-lighttpd = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-linuxdoc-tools = "Andrei Dinu <andrei.adrianx.dinu@intel.com>"
 RECIPE_MAINTAINER_pn-linux-dummy = "Saul Wold <sgw@linux.intel.com>"
@@ -718,7 +717,6 @@ RECIPE_MAINTAINER_pn-run-postinsts = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-rxvt-unicode = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-sato-icon-theme = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-sato-screenshot = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-sat-solver = "Mark Hatle <mark.hatle@windriver.com>"
 RECIPE_MAINTAINER_pn-screenshot = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-screen = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-scrnsaverproto = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
@@ -878,4 +876,3 @@ RECIPE_MAINTAINER_pn-zaurusd = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-zeroconf = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-zip = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-zlib = "Radu Moisan <radu.moisan@intel.com>"
-RECIPE_MAINTAINER_pn-zypper = "Mark Hatle <mark.hatle@windriver.com>"
diff --git a/meta-yocto/conf/distro/include/recipe_color.inc b/meta-yocto/conf/distro/include/recipe_color.inc
index f61250a..757e86f 100644
--- a/meta-yocto/conf/distro/include/recipe_color.inc
+++ b/meta-yocto/conf/distro/include/recipe_color.inc
@@ -244,7 +244,6 @@ RECIPE_COLOR_pn-libxv = "yellow"
 RECIPE_COLOR_pn-libxvmc = "yellow"
 RECIPE_COLOR_pn-libxxf86misc = "yellow"
 RECIPE_COLOR_pn-libxxf86vm = "yellow"
-RECIPE_COLOR_pn-libzypp = "yellow"
 RECIPE_COLOR_pn-lighttpd = "yellow"
 RECIPE_COLOR_pn-linuxdoc-tools = "yellow"
 RECIPE_COLOR_pn-loudmouth = "red"
@@ -446,4 +445,3 @@ RECIPE_COLOR_pn-yaffs2-utils = "red"
 RECIPE_COLOR_pn-zeroconf = "red"
 RECIPE_COLOR_pn-zip = "yellow"
 RECIPE_COLOR_pn-zlib = "yellow"
-RECIPE_COLOR_pn-zypper = "yellow"
diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index 28cb387..06f0cc8 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -885,8 +885,6 @@ CHECK_DATE_pn-libxxf86misc = "Aug 31, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libxxf86vm = "1.1.2"
 RECIPE_UPSTREAM_DATE_pn-libxxf86vm = "Mar 08, 2012"
 CHECK_DATE_pn-libxxf86vm = "Aug 31, 2012"
-RECIPE_UPSTREAM_VERSION_pn-libzypp = "git"
-CHECK_DATE_pn-libzypp = "Aug 31, 2012"
 RECIPE_UPSTREAM_VERSION_pn-lighttpd = "1.4.31"
 RECIPE_UPSTREAM_DATE_pn-lighttpd = "May 31, 2012"
 CHECK_DATE_pn-lighttpd = "Aug 31, 2012"
@@ -1206,7 +1204,6 @@ RECIPE_UPSTREAM_VERSION_pn-run-postinsts = "check"
 RECIPE_UPSTREAM_DATE_pn-rxvt-unicode = "Jan 21, 2012"
 RECIPE_UPSTREAM_VERSION_pn-rxvt-unicode = "9.15"
 CHECK_DATE_pn-rxvt-unicode = "Sep 03, 2012"
-RECIPE_UPSTREAM_VERSION_pn-sat-solver = "0.0-git1+e74e0bfd23e4e95064d08e13efb5de9caf433f40"
 RECIPE_UPSTREAM_DATE_pn-sato-icon-theme = "Nov 06, 2008"
 RECIPE_UPSTREAM_VERSION_pn-sato-icon-theme = "0.4.1"
 CHECK_DATE_pn-sato-icon-theme = "Sep 03, 2012"
@@ -1551,4 +1548,3 @@ CHECK_DATE_pn-zip = "Sep 04, 2012"
 RECIPE_UPSTREAM_VERSION_pn-zlib = "1.2.7"
 RECIPE_UPSTREAM_DATE_pn-zlib = "May 02, 2012"
 CHECK_DATE_pn-zlib = "Sep 04, 2012"
-RECIPE_UPSTREAM_VERSION_pn-zypper = "git"
-- 
1.7.10.4


