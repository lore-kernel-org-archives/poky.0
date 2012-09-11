Return-Path: <andrei.adrianx.dinu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2F4FE00344
	for <poky@yoctoproject.org>; Tue, 11 Sep 2012 02:15:58 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 11 Sep 2012 02:15:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,402,1344236400"; d="scan'208";a="143713122"
Received: from adinu-vostro-460 (HELO localhost.localdomain) ([10.237.105.39])
	by AZSMGA002.ch.intel.com with ESMTP; 11 Sep 2012 02:15:56 -0700
From: Andrei Dinu <andrei.adrianx.dinu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 11 Sep 2012 12:16:17 +0300
Message-Id: <1347354977-30142-1-git-send-email-andrei.adrianx.dinu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] Update to upstream_tracking.inc
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
X-List-Received-Date: Tue, 11 Sep 2012 09:15:59 -0000

Signed-off-by: Andrei Dinu <andrei.adrianx.dinu@intel.com>
---
 .../conf/distro/include/upstream_tracking.inc      |   13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index b3f90a7..fcaf789 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -26,6 +26,7 @@ RECIPE_UPSTREAM_VERSION_pn-acpid = "1.0.10"
 RECIPE_UPSTREAM_DATE_pn-acpid = "Apr 22, 2009"
 CHECK_DATE_pn-acpid = "Aug 27, 2012"
 RECIPE_UPSTREAM_VERSION_pn-adt-installer = "1.1"
+CHECK_DATE_pn-adt-installer = "Sep 11, 2012"
 RECIPE_UPSTREAM_DATE_pn-alsa-utils="Jan 25, 2012"
 RECIPE_UPSTREAM_VERSION_pn-apmd = "3.2.2-14"
 RECIPE_UPSTREAM_DATE_pn-apmd = "Jul 01, 2009"
@@ -84,7 +85,7 @@ RECIPE_UPSTREAM_DATE_pn-bluez-dtl1-workaround="n/a"
 RECIPE_UPSTREAM_VERSION_pn-bluez4="4.101"
 RECIPE_UPSTREAM_DATE_pn-bluez4="Jun 22, 2012"
 CHECK_DATE_pn-bluez4 = "Aug 27, 2012"
-RECIPE_UPSTREAM_VERSION_pn-boost = "1.50.1"
+RECIPE_UPSTREAM_VERSION_pn-boost = "1.51.0"
 CHECK_DATE_pn-boost = "Aug 27, 2012"
 RECIPE_UPSTREAM_DATE_pn-boost = "Aug 20, 2012"
 RECIPE_UPSTREAM_VERSION_pn-btrfs-tools="git"
@@ -470,6 +471,9 @@ CHECK_DATE_pn-json-glib = "Aug 29, 2012"
 RECIPE_UPSTREAM_VERSION_pn-kbproto = "1.0.6"
 RECIPE_UPSTREAM_DATE_pn-kbproto = "Mar 23, 2012"
 CHECK_DATE_pn-kbproto = "Aug 29, 2012"
+RECIPE_UPSTREAM_VERSION_pn-kconfig-frontends = "3.5.0"
+RECIPE_UPSTREAM_DATE_pn-kconfig-frontends = "Jul 22, 2012"
+CHECK_DATE_pn-kconfig-frontends = "Sep 11, 2012"
 RECIPE_UPSTREAM_VERSION_pn-kern-tools-native = "check"
 RECIPE_UPSTREAM_VERSION_pn-kernelshark = "0.2"
 RECIPE_NO_UPDATE_REASON_pn-kernelshark = "0.2 is the latest version."
@@ -520,6 +524,9 @@ CHECK_DATE_pn-libcanberra = "Aug 30, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libcap = "2.22"
 CHECK_DATE_pn-libcap = "Aug 30, 2012"
 RECIPE_UPSTREAM_DATE_pn-libcap = "Jan 01, 2010"
+RECIPE_UPSTREAM_VERSION_pn-libcgroup = "0.38-1"
+RECIPE_UPSTREAM_DATE_pn-libcgroup = "Jun 06, 2012"
+CHECK_DATE_pn-libcgroup = "Sep 11, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libcheck = "0.9.8"
 CHECK_DATE_pn-libcheck = "Aug 30, 2012"
 RECIPE_UPSTREAM_DATE_pn-libcheck = "Sep 23, 2009"
@@ -1141,6 +1148,9 @@ CHECK_DATE_pn-puzzles = "Aug 31, 2012"
 RECIPE_UPSTREAM_DATE_pn-python-pycurl = "Sep 09, 2008"
 RECIPE_UPSTREAM_VERSION_pn-python-pycurl = "7.19.0"
 CHECK_DATE_pn-python-pycurl = "Aug 31, 2012"
+RECIPE_UPSTREAM_VERSION_pn-python-scons = "2.2.0"
+RECIPE_UPSTREAM_DATE_pn-python-scons = "Aug 05, 2012"
+CHECK_DATE_pn-python-scons = "Sep 11, 2012"
 RECIPE_UPSTREAM_VERSION_pn-python="3.2.3"
 RECIPE_UPSTREAM_DATE_pn-python = "Apr 10, 2012"
 CHECK_DATE_pn-python = "Aug 31, 2012"
@@ -1349,6 +1359,7 @@ RECIPE_UPSTREAM_DATE_pn-u-boot-fw-utils = "Dec 23, 2011"
 RECIPE_UPSTREAM_VERSION_pn-u-boot-fw-utils = "20012.07"
 CHCEK_DATE_pn-u-boot-fw-utils = "Sep 03, 2012"
 RECIPE_UPSTREAM_VERSION_pn-ubootchart = "0.0+r12"
+CHECK_DATE_pn-ubootchart = "Sep 11, 2012"
 RECIPE_UPSTREAM_DATE_pn-udev-extraconf = "n/a"
 RECIPE_UPSTREAM_VERSION_pn-udev = "182"
 RECIPE_UPSTREAM_DATE_pn-udev = "Mar 19, 2012"
-- 
1.7.9.5


