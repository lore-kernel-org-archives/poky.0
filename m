Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 75CE64C8007E
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 12:27:17 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Feb 2011 10:27:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,411,1291622400"; d="scan'208";a="702917602"
Received: from nbuild1.sc.intel.com (HELO localhost) ([172.25.110.36])
	by orsmga001.jf.intel.com with ESMTP; 01 Feb 2011 10:27:14 -0800
Message-Id: <f260ac9776a6e9a62c3b8c88e0e2b7ce6c1c2a87.1296560850.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1296560850.git.nitin.a.kamble@intel.com>
References: <cover.1296560850.git.nitin.a.kamble@intel.com>
Old-Date: Tue, 25 Jan 2011 15:58:54 -0800
Date: Tue, 01 Feb 2011  3:57:21 -0800
To: poky@yoctoproject.org
CC: 
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 1/4] distro_tracking: update latest upstream versions
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
X-List-Received-Date: Tue, 01 Feb 2011 18:27:17 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   43 ++++++++++---------
 1 files changed, 23 insertions(+), 20 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 9f99e50..1bdf521 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -102,9 +102,14 @@ RECIPE_LATEST_VERSION_pn-run-postinsts = "check"
 RECIPE_LAST_UPDATE_pn-run-postinsts = "Nov 22, 2010"
 RECIPE_MAINTAINER_pn-run-postinsts = "Dongxiao Xu <dongxiao.xu@intel.com"
 
-RECIPE_STATUS_pn-subversion = "green"
-RECIPE_LATEST_VERSION_pn-subversion = "1.6.13"
-RECIPE_LAST_UPDATE_pn-subversion = "Nov 18, 2010"
+RECIPE_STATUS_pn-screen = "red"
+RECIPE_LATEST_VERSION_pn-screen = "check"
+RECIPE_LAST_UPDATE_pn-screen = "Aug 31, 2010"
+RECIPE_MAINTAINER_pn-screen = "Qing He <qing.he@intel.com>"
+
+RECIPE_STATUS_pn-subversion = "red"
+RECIPE_LATEST_VERSION_pn-subversion = "1.6.15"
+RECIPE_MANUAL_CHECK_DATE_pn-subversion = "Jan 25, 2011" 
 RECIPE_MAINTAINER_pn-subversion = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
 RECIPE_STATUS_pn-trace-cmd = "red"
@@ -2807,17 +2812,16 @@ RECIPE_STATUS_pn-ldconfig-native = "red"
 RECIPE_LAST_UPDATE_pn-ldconfig-native = "Nov 23, 2007"
 DISTRO_PN_ALIAS_pn-ldconfig-native = "Ubuntu=libc-bin Fedora=glibc"
 
-RECIPE_STATUS_pn-gcc="green" 
-RECIPE_LATEST_VERSION_pn-gcc="4.5.1"
-RECIPE_NO_OF_PATCHES_pn-gcc="8"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gcc="5 months"
+RECIPE_STATUS_pn-gcc="red" 
+RECIPE_LATEST_VERSION_pn-gcc="4.5.2"
 RECIPE_LATEST_RELEASE_DATE_pn-gcc="2010/03/03"
 RECIPE_LAST_UPDATE_pn-gcc = "Nov 8, 2010"
 RECIPE_MAINTAINER_pn-gcc = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-autoconf="green" 
+RECIPE_STATUS_pn-autoconf="red" 
 RECIPE_LATEST_VERSION_pn-autoconf="2.68"
 RECIPE_LAST_UPDATE_pn-autoconf = "Jan 29, 2010"
+RECIPE_NO_UPDATE_REASON_autoconf="seeing rpm issue with the 2.68 version, a bug is open"
 RECIPE_MAINTAINER_pn-autoconf = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
 RECIPE_STATUS_pn-automake="green" 
@@ -2887,7 +2891,7 @@ RECIPE_MAINTAINER_pn-postinsts = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
 RECIPE_STATUS_pn-nasm="green" 
 RECIPE_LATEST_VERSION_pn-nasm="2.07"
-RECIPE_LAST_UPDATE_pn-nasm = "Jun 23, 2010"
+RECIPE_MANUAL_CHECK_DATE_pn-nasm = "Jan 25, 2011" 
 RECIPE_MAINTAINER_pn-nasm = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
 RECIPE_STATUS_pn-perl="red" # upgrade needed
@@ -2898,7 +2902,7 @@ RECIPE_MAINTAINER_pn-perl = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 RECIPE_STATUS_pn-prelink="red" 
 RECIPE_LATEST_VERSION_pn-prelink="1.0+git0+0x909470ee441237563d6236c505cb2d02ddc48704"
 RECIPE_LAST_UPDATE_pn-perl = "Jul 23, 2010"
-RECIPE_MAINTAINER_pn-prelink = "Nitin A Kamble <nitin.a.kamble@intel.com>"
+RECIPE_MAINTAINER_pn-prelink = "Mark Hatle <mark.hatle@windriver.com>"
 
 RECIPE_STATUS_pn-python-dbus="red" 
 RECIPE_LATEST_VERSION_pn-python-dbus="0.83.1"
@@ -2906,8 +2910,8 @@ RECIPE_LAST_UPDATE_pn-python-dbus = "Jul 7, 2010"
 RECIPE_MAINTAINER_pn-python-dbus = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 DISTRO_PN_ALIAS_pn-python-dbus = "Ubuntu=python-dbus Debian=python-dbus Mandriva=python-dbus"
 
-RECIPE_STATUS_pn-python-gst="green" 
-RECIPE_LATEST_VERSION_pn-python-gst="0.10.19"
+RECIPE_STATUS_pn-python-gst="red" 
+RECIPE_LATEST_VERSION_pn-python-gst="0.10.21"
 DISTRO_PN_ALIAS_pn-python-gst = "OpenSuSE=python-gstreamer Ubuntu=gst0.10-python Debian=gst0.10-python"
 RECIPE_LAST_UPDATE_pn-python-gst = "Nov 8, 2010"
 RECIPE_MAINTAINER_pn-python-gst = "Nitin A Kamble <nitin.a.kamble@intel.com>"
@@ -2948,9 +2952,6 @@ RECIPE_MAINTAINER_pn-python-scons = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
 RECIPE_STATUS_pn-python="red"
 RECIPE_LATEST_VERSION_pn-python="2.7.1"
-RECIPE_NO_OF_PATCHES_pn-python="8"
-RECIPE_LATEST_RELEASE_DATE_pn-python="2010/03/18"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-python="5 months"
 RECIPE_LAST_UPDATE_pn-python = "Nov 8, 2010"
 RECIPE_MAINTAINER_pn-python = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
@@ -2976,7 +2977,7 @@ RECIPE_MAINTAINER_pn-gnu-config = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
 RECIPE_STATUS_pn-mpfr="green"
 RECIPE_LATEST_VERSION_pn-mpfr="3.0.0"
-RECIPE_LAST_UPDATE_pn-mpfr = "Aug 27, 2010"
+RECIPE_MANUAL_CHECK_DATE_pn-mpfr = "Jan 25, 2011" 
 RECIPE_MAINTAINER_pn-mpfr = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
 RECIPE_STATUS_pn-gmp="green"
@@ -2986,16 +2987,18 @@ RECIPE_MAINTAINER_pn-gmp = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
 RECIPE_STATUS_pn-libmpc="green"
 RECIPE_LATEST_VERSION_pn-libmpc="0.8.2"
-RECIPE_LAST_UPDATE_pn-libmpc = "Jul 19, 2010"
+RECIPE_MANUAL_CHECK_DATE_pn-libmpc = "Jan 25, 2011" 
 RECIPE_MAINTAINER_pn-libmpc = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 DISTRO_PN_ALIAS_pn-libmpc = "Fedora=libmpc OpenSuse=libmpc2"
 
-RECIPE_STATUS_pn-byacc="green" 
-RECIPE_LATEST_VERSION_pn-byacc="20101127"
+RECIPE_STATUS_pn-byacc="red" 
+RECIPE_LATEST_VERSION_pn-byacc="20101229"
 RECIPE_MAINTAINER_pn-byacc = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-libconvert-asn1-perl="green" # 0.22 version does not build, so created a recipe for version 0.21
+RECIPE_STATUS_pn-libconvert-asn1-perl="green" 
+# 0.22 version does not build, so created a recipe for version 0.21
 RECIPE_LATEST_VERSION_pn-libconvert-asn1-perl="0.22"
+RECIPE_NO_UPDATE_REASON_pn-libconvert-asn1-perl = "0.22 version does not build, so created a recipe for version 0.21"
 RECIPE_LAST_UPDATE_pn-libconvert-asn1-perl = "Aug 13, 2010"
 RECIPE_MAINTAINER_pn-libconvert-asn1-perl = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-- 
1.7.2.2


