Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B31974C811FE
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 20:29:35 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 Dec 2010 18:29:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,247,1291622400"; d="scan'208";a="691842812"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga001.jf.intel.com with ESMTP; 29 Dec 2010 18:29:35 -0800
Message-Id: <f9ecc55f1bf908b4270df7cb19f3a16978bbe76c.1293676328.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1293676328.git.dongxiao.xu@intel.com>
References: <cover.1293676328.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Thu, 30 Dec 2010 10:31:16 +0800
Date: Thu, 30 Dec 2010 10:39:20 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 19/19] distro_tracking: update pulseaudio, ofono, netbase, etc.
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
X-List-Received-Date: Thu, 30 Dec 2010 02:29:36 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |  142 +++++++++++---------
 1 files changed, 77 insertions(+), 65 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 3836572..e8ebe63 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -42,10 +42,13 @@ RECIPE_LAST_UPDATE_pn-libtimedate-perl = "Aug 13, 2010"
 RECIPE_MAINTAINER_pn-libtimedate-perl = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 DISTRO_PN_ALIAS_pn-libtimedate-perl = "Debian=libtimedate-perl Ubuntu=libtimedate-perl"
 
-RECIPE_STATUS_pn-linux-firmware = "red"
-RECIPE_LATEST_VERSION_pn-linux-firmware = "check"
-RECIPE_LAST_UPDATE_pn-linux-firmware = "Jun 13, 2010"
-RECIPE_MAINTAINER_pn-linux-firmware = "Dongxiao Xu <dongxiao.xu@intel.com"
+RECIPE_STATUS_pn-linux-firmware = "green"
+RECIPE_LATEST_VERSION_pn-linux-firmware = "40c0f950"
+RECIPE_LATEST_RELEASE_DATE_pn-linux-firmware = "2010/12/01"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-linux-firmware = "n/a"
+RECIPE_NO_OF_PATCHES_pn-linux-firmware = "0"
+RECIPE_LAST_UPDATE_pn-linux-firmware = "Dec 30, 2010"
+RECIPE_MAINTAINER_pn-linux-firmware = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-logrotate = "red"
 RECIPE_LATEST_VERSION_pn-logrotate = "check"
@@ -159,15 +162,15 @@ RECIPE_MAINTAINER_pn-libdaemon = "Kevin Tian <kevin.tian@intel.com>"
 RECIPE_STATUS_pn-glib-2.0 = "green"
 DISTRO_PN_ALIAS_pn-glib-2.0 = "Meego=glib2 Fedora=glib2 OpenSuSE=glib2 Ubuntu=glib2.0 Mandriva=glib2.0 Debian=glib2.0"
 DEPENDENCY_CHECK_pn-glib-2.0 = "not done"
-RECIPE_LATEST_VERSION_pn-glib-2.0 = "2.27.3"
+RECIPE_LATEST_VERSION_pn-glib-2.0 = "2.27.5"
 RECIPE_PATCH_pn-glib-2.0+60_wait-longer-for-threads-to-die = "to be pushed upstream"
 RECIPE_PATCH_pn-glib-2.0+configure-libtool = "local"
 RECIPE_PATCH_pn-glib-2.0+glib-gettextize-dir = "marked as REMOVAL"
 RECIPE_INTEL_SECTION_pn-glib-2.0 = "base libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-glib-2.0 = "8 days"
-RECIPE_LATEST_RELEASE_DATE_pn-glib-2.0 = "2010/11/09"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-glib-2.0 = "1 month"
+RECIPE_LATEST_RELEASE_DATE_pn-glib-2.0 = "2010/12/20"
 RECIPE_COMMENTS_pn-glib-2.0 = ""
-RECIPE_LAST_UPDATE_pn-glib-2.0 = "Nov 16, 2010"
+RECIPE_LAST_UPDATE_pn-glib-2.0 = "Dec 30, 2010"
 RECIPE_MAINTAINER_pn-glib-2.0 = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-libpam = "green"
@@ -798,9 +801,12 @@ RECIPE_COMMENTS_pn-opkg = ""
 RECIPE_LAST_UPDATE_pn-opkg = "Jul 21, 2010"
 RECIPE_MAINTAINER_pn-opkg = "Dongxiao Xu <dongxiao.xu@intel.com"
 
-RECIPE_STATUS_pn-dpkg = "red"
-RECIPE_LATEST_VERSION_pn-dpkg = "check: 1.15.8.5"
-RECIPE_LAST_UPDATE_pn-dpkg = "Oct 9, 2010"
+RECIPE_STATUS_pn-dpkg = "green"
+RECIPE_LATEST_VERSION_pn-dpkg = "1.15.8.7"
+RECIPE_INTEL_SECTION_pn-dpkg = "base utils"
+RECIPE_LATEST_RELEASE_DATE_pn-dpkg = "2010/12/20"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-dpkg = "3 months"
+RECIPE_LAST_UPDATE_pn-dpkg = "Dec 30, 2010"
 RECIPE_MAINTAINER_pn-dpkg = "Dongxiao Xu <dongxiao.xu@intel.com"
 
 RECIPE_STATUS_pn-opkg-utils = "green"
@@ -880,14 +886,14 @@ RECIPE_MAINTAINER_pn-iproute2 = "Qing He <qing.he@intel.com>"
 
 RECIPE_STATUS_pn-netbase = "green"
 DEPENDENCY_CHECK_pn-netbase = "not done"
-RECIPE_LATEST_VERSION_pn-netbase = "4.43"
+RECIPE_LATEST_VERSION_pn-netbase = "4.44"
 RECIPE_PATCH_pn-netbase+busybox = "marked as REMOVAL"
 RECIPE_PATCH_pn-many = "local scripts"
 RECIPE_INTEL_SECTION_pn-netbase = "base utils"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-netbase = "2 years"
-RECIPE_LATEST_RELEASE_DATE_pn-netbase = "2010/10/23"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-netbase = "2 months"
+RECIPE_LATEST_RELEASE_DATE_pn-netbase = "2010/12/13"
 RECIPE_COMMENTS_pn-netbase = ""
-RECIPE_LAST_UPDATE_pn-netbase = "Nov 18, 2010"
+RECIPE_LAST_UPDATE_pn-netbase = "Dec 30, 2010"
 RECIPE_MAINTAINER_pn-netbase = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-busybox = "green"
@@ -2071,12 +2077,12 @@ RECIPE_MAINTAINER_pn-irda-utils = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-bluez4="green"
 DISTRO_PN_ALIAS_pn-bluez4="Meego=bluz Fedora=bluz Ubuntu=bluz OpenSuSE=bluz Mandriva=bluz"
-RECIPE_LATEST_VERSION_pn-bluez4="4.79"
+RECIPE_LATEST_VERSION_pn-bluez4="4.82"
 RECIPE_NO_OF_PATCHES_pn-bluez4="2"
-RECIPE_LATEST_RELEASE_DATE_pn-bluez4="2010/11/08"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-bluez4="2 days"
+RECIPE_LATEST_RELEASE_DATE_pn-bluez4="2010/12/18"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-bluez4="20 days"
 DISTRO_PN_ALIAS_pn-bluez4= "Fedora=bluez Ubuntu=bluez Debian=bluez-utils Opensuse=bluez"
-RECIPE_LAST_UPDATE_pn-bluez4 = "Nov 15, 2010"
+RECIPE_LAST_UPDATE_pn-bluez4 = "Dec 30, 2010"
 RECIPE_MAINTAINER_pn-bluez4 = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-libpcap="green"
@@ -2114,19 +2120,19 @@ RECIPE_MAINTAINER_pn-libproxy = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-connman = "green"
 DISTRO_PN_ALIAS_pn-connman = "Meego=connman"
-RECIPE_LATEST_VERSION_pn-connman = "0.63"
+RECIPE_LATEST_VERSION_pn-connman = "0.65"
 RECIPE_NO_OF_PATCHES_pn-connman="2"
-RECIPE_LATEST_RELEASE_DATE_pn-connman="2010/11/04"
+RECIPE_LATEST_RELEASE_DATE_pn-connman="2010/12/24"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-connman="1 month"
-RECIPE_LAST_UPDATE_pn-connman = "Nov 23, 2010"
+RECIPE_LAST_UPDATE_pn-connman = "Dec 30, 2010"
 RECIPE_MAINTAINER_pn-connman = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-connman-gnome = "green"
 RECIPE_LATEST_VERSION_pn-connman-gnome = "0.5"
-RECIPE_NO_OF_PATCHES_pn-connman-gnome="1"
+RECIPE_NO_OF_PATCHES_pn-connman-gnome="3"
 RECIPE_LATEST_RELEASE_DATE_pn-connman-gnome="n/a"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-connman-gnome="n/a"
-RECIPE_LAST_UPDATE_pn-connman-gnome = "Aug 26, 2010"
+RECIPE_LAST_UPDATE_pn-connman-gnome = "Dec 30, 2010"
 RECIPE_MAINTAINER_pn-connman-gnome = "Dongxiao Xu <dongxiao.xu@intel.com>"
 DISTRO_PN_ALIAS_pn-connman-gnome = "Intel"
 
@@ -2185,11 +2191,11 @@ RECIPE_LAST_UPDATE_pn-libopensync-plugin-syncml = "Jul 31, 2009"
 RECIPE_MAINTAINER_pn-libopensync-plugin-syncml = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-ofono = "green"
-RECIPE_LATEST_VERSION_pn-ofono = "0.33"
+RECIPE_LATEST_VERSION_pn-ofono = "0.37"
 RECIPE_NO_OF_PATCHES_pn-ofono="0"
-RECIPE_LATEST_RELEASE_DATE_pn-ofono="2010/10/25"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-ofono="5 days"
-RECIPE_LAST_UPDATE_pn-ofono = "Nov 25, 2010"
+RECIPE_LATEST_RELEASE_DATE_pn-ofono="2010/12/24"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-ofono="1 month"
+RECIPE_LAST_UPDATE_pn-ofono = "Dec 30, 2010"
 RECIPE_MAINTAINER_pn-ofono = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-libtelepathy = "red"
@@ -2207,22 +2213,28 @@ RECIPE_LATEST_VERSION_pn-telepathy-gabble = "0.9.11"
 RECIPE_LAST_UPDATE_pn-telepathy-gabble = "Aug 19, 2009"
 RECIPE_MAINTAINER_pn-telepathy-gabble = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-telepathy-glib = "red"
-RECIPE_LATEST_VERSION_pn-telepathy-glib = "0.11.6"
-RECIPE_LAST_UPDATE_pn-telepathy-glib = "Nov 11, 2010"
+RECIPE_STATUS_pn-telepathy-glib = "green"
+RECIPE_NO_OF_PATCHES_pn-telepathy-glib ="0"
+RECIPE_LATEST_RELEASE_DATE_pn-telepathy-glib = "2010/11/17"
+RECIPE_LATEST_VERSION_pn-telepathy-glib = "0.13.6"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-telepathy-glib = "12 days"
+RECIPE_LAST_UPDATE_pn-telepathy-glib = "Dec 30, 2010"
 RECIPE_MAINTAINER_pn-telepathy-glib = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-telepathy-idle = "red"
-RECIPE_LATEST_VERSION_pn-telepathy-idle = "0.1.6"
-RECIPE_LAST_UPDATE_pn-telepathy-idle = "Nov 11, 2010"
+RECIPE_STATUS_pn-telepathy-idle = "green"
+RECIPE_NO_OF_PATCHES_pn-telepathy-idle ="0"
+RECIPE_LATEST_RELEASE_DATE_pn-telepathy-glib ="2010/12/07"
+RECIPE_LATEST_VERSION_pn-telepathy-idle = "0.1.7"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-telepathy-idle = "10 months"
+RECIPE_LAST_UPDATE_pn-telepathy-idle = "Dec 30, 2010"
 RECIPE_MAINTAINER_pn-telepathy-idle = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-telepathy-python = "green"
-RECIPE_LATEST_VERSION_pn-telepathy-python = "0.15.18"
+RECIPE_LATEST_VERSION_pn-telepathy-python = "0.15.19"
 RECIPE_NO_OF_PATCHES_pn-telepathy-python="0"
-RECIPE_LATEST_RELEASE_DATE_pn-telepathy-python="2010/08/05"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-telepathy-python="5 months"
-RECIPE_LAST_UPDATE_pn-telepathy-python = "Nov 23, 2010"
+RECIPE_LATEST_RELEASE_DATE_pn-telepathy-python="2010/12/03"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-telepathy-python="4 months"
+RECIPE_LAST_UPDATE_pn-telepathy-python = "Dec 30, 2010"
 RECIPE_MAINTAINER_pn-telepathy-python = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-bluez-hcidump = "red"
@@ -2274,11 +2286,11 @@ RECIPE_LAST_UPDATE_pn-libsyncml = "Jul 31, 2009"
 RECIPE_MAINTAINER_pn-libsyncml = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-telepathy-mission-control = "green"
-RECIPE_LATEST_VERSION_pn-telepathy-mission-control = "5.7.0"
+RECIPE_LATEST_VERSION_pn-telepathy-mission-control = "5.7.1"
 RECIPE_NO_OF_PATCHES_pn-telepathy-mission-control ="0"
-RECIPE_LATEST_RELEASE_DATE_pn-telepathy-mission-control ="2010/11/18"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-telepathy-mission-control ="2 months"
-RECIPE_LAST_UPDATE_pn-telepathy-mission-control = "Nov 23, 2010"
+RECIPE_LATEST_RELEASE_DATE_pn-telepathy-mission-control ="2010/12/07"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-telepathy-mission-control ="20 days"
+RECIPE_LAST_UPDATE_pn-telepathy-mission-control = "Dec 30, 2010"
 RECIPE_MAINTAINER_pn-telepathy-mission-control = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-libetpan = "red"
@@ -2526,37 +2538,37 @@ RECIPE_LAST_UPDATE_pn-libvorbis = "Nov 15, 2010"
 RECIPE_MAINTAINER_pn-libvorbis = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-libogg="green"
-RECIPE_LATEST_VERSION_pn-libogg="1.2.1"
+RECIPE_LATEST_VERSION_pn-libogg="1.2.2"
 RECIPE_NO_OF_PATCHES_pn-libogg="0"
-RECIPE_LATEST_RELEASE_DATE_pn-libogg="2010/11/02"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libogg="7 months"
-RECIPE_LAST_UPDATE_pn-libogg = "Nov 15, 2010"
+RECIPE_LATEST_RELEASE_DATE_pn-libogg="2010/12/07"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libogg="1 months"
+RECIPE_LAST_UPDATE_pn-libogg = "Dec 30, 2010"
 RECIPE_MAINTAINER_pn-libogg = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-gstreamer="green"
-RECIPE_LATEST_VERSION_pn-gstreamer="0.10.30"
+RECIPE_LATEST_VERSION_pn-gstreamer="0.10.31"
 RECIPE_NO_OF_PATCHES_pn-gstreamer="2"
-RECIPE_LATEST_RELEASE_DATE_pn-gstreamer="2010/07/15"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gstreamer="3 month"
-RECIPE_LAST_UPDATE_pn-gstreamer = "Nov 12, 2010"
+RECIPE_LATEST_RELEASE_DATE_pn-gstreamer="2010/11/30"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gstreamer="4 month"
+RECIPE_LAST_UPDATE_pn-gstreamer = "Dec 30, 2010"
 RECIPE_MAINTAINER_pn-gstreamer = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-gst-plugins-base="green"
 DISTRO_PN_ALIAS_pn-gst-plugins-base = "Meego=gst-plugins-base Fedora=gstreamer-plugins-base OpenSuSE=gstreamer-plugins-base Ubuntu=gst-plugins-base0.10 Mandriva=gstreamer0.10-plugins-base Debian=gst-plugins-base0.10"
-RECIPE_LATEST_VERSION_pn-gst-plugins-base="0.10.30"
+RECIPE_LATEST_VERSION_pn-gst-plugins-base="0.10.31"
 RECIPE_NO_OF_PATCHES_pn-gst-plugins-base="0"
-RECIPE_LATEST_RELEASE_DATE_pn-gst-plugins-base="2010/07/15"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gst-plugins-base="3 months"
-RECIPE_LAST_UPDATE_pn-gst-plugins-base = "Nov 12, 2010"
+RECIPE_LATEST_RELEASE_DATE_pn-gst-plugins-base="2010/11/30"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gst-plugins-base="4 months"
+RECIPE_LAST_UPDATE_pn-gst-plugins-base = "Dec 30, 2010"
 RECIPE_MAINTAINER_pn-gst-plugins-base = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-gst-plugins-good="green"
 DISTRO_PN_ALIAS_pn-gst-plugins-good = "Meego=gst-plugins-good Fedora=gstreamer-plugins-good OpenSuSE=gstreamer-plugins-good Ubuntu=gst-plugins-good0.10 Mandriva=gstreamer0.10-plugins-good Debian=gst-plugins-good0.10"
-RECIPE_LATEST_VERSION_pn-gst-plugins-good="0.10.25"
+RECIPE_LATEST_VERSION_pn-gst-plugins-good="0.10.26"
 RECIPE_NO_OF_PATCHES_pn-gst-plugins-good="0"
-RECIPE_LATEST_RELEASE_DATE_pn-gst-plugins-good="2010/09/02"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gst-plugins-good="2 month"
-RECIPE_LAST_UPDATE_pn-gst-plugins-good = "Nov 12, 2010"
+RECIPE_LATEST_RELEASE_DATE_pn-gst-plugins-good="2010/12/01"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gst-plugins-good="3 month"
+RECIPE_LAST_UPDATE_pn-gst-plugins-good = "Dec 30, 2010"
 RECIPE_MAINTAINER_pn-gst-plugins-good = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-gst-plugins-ugly="green"
@@ -2594,11 +2606,11 @@ RECIPE_LAST_UPDATE_pn-alsa-lib = "Jun 26, 2010"
 RECIPE_MAINTAINER_pn-alsa-lib = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-tremor="green"
-RECIPE_LATEST_VERSION_pn-tremor="20101027"
+RECIPE_LATEST_VERSION_pn-tremor="20101121"
 RECIPE_NO_OF_PATCHES_pn-tremor="0"
-RECIPE_LATEST_RELEASE_DATE_pn-tremor="2010/10/27"
+RECIPE_LATEST_RELEASE_DATE_pn-tremor="2010/11/21"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-tremor="n/a"
-RECIPE_LAST_UPDATE_pn-tremor = "Nov 16, 2010"
+RECIPE_LAST_UPDATE_pn-tremor = "Dec 30, 2010"
 RECIPE_MAINTAINER_pn-tremor = "Dongxiao Xu <dongxiao.xu@intel.com>"
 DISTRO_PN_ALIAS_pn-tremor = "OSPDT upstream=http://www.xiph.org/vorbis/"
 
@@ -2670,11 +2682,11 @@ RECIPE_LAST_UPDATE_pn-libsndfile1 = "Nov 11, 2010"
 RECIPE_MAINTAINER_pn-libsndfile1 = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-pulseaudio = "green"
-RECIPE_LATEST_VERSION_pn-pulseaudio = "0.9.21"
+RECIPE_LATEST_VERSION_pn-pulseaudio = "0.9.22"
 RECIPE_NO_OF_PATCHES_pn-pulseaudio = "5"
-RECIPE_LATEST_RELEASE_DATE_pn-pulseaudio = "2009/10/23"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-pulseaudio = "12 days"
-RECIPE_LAST_UPDATE_pn-pulseaudio = "Dec 7, 2010"
+RECIPE_LATEST_RELEASE_DATE_pn-pulseaudio = "2010/11/26"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-pulseaudio = "1 year"
+RECIPE_LAST_UPDATE_pn-pulseaudio = "Dec 30, 2010"
 RECIPE_MAINTAINER_pn-pulseaudio = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-taglib = "green"
-- 
1.6.3.3


