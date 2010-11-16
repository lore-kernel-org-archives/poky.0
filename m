Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6BC9A4C811D6
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 07:42:56 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 Nov 2010 05:42:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,206,1288594800"; d="scan'208";a="349371714"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.22])
	by azsmga001.ch.intel.com with ESMTP; 16 Nov 2010 05:42:55 -0800
Message-Id: <5326116b0049f4c84d7c9edefb78a82d4fd1b5ec.1289914983.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1289914982.git.dongxiao.xu@intel.com>
References: <cover.1289914982.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 16 Nov 2010 15:34:06 +0800
To: poky@yoctoproject.org
Subject: [PATCH 14/14] distro_tracking: update distro tracking fileds for bluez4, neon, etc.
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
X-List-Received-Date: Tue, 16 Nov 2010 13:42:56 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   74 ++++++++++----------
 1 files changed, 38 insertions(+), 36 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 372297a..1b6bafe 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -144,14 +144,13 @@ RECIPE_MAINTAINER_pn-libdaemon = "Kevin Tian <kevin.tian@intel.com>"
 RECIPE_STATUS_pn-glib-2.0 = "green"
 DISTRO_PN_ALIAS_pn-glib-2.0 = "Meego=glib2 Fedora=glib2 OpenSuSE=glib2 Ubuntu=glib2.0 Mandriva=glib2.0 Debian=glib2.0"
 DEPENDENCY_CHECK_pn-glib-2.0 = "not done"
-RECIPE_LATEST_VERSION_pn-glib-2.0 = "2.24.1"
+RECIPE_LATEST_VERSION_pn-glib-2.0 = "2.27.3"
 RECIPE_PATCH_pn-glib-2.0+60_wait-longer-for-threads-to-die = "to be pushed upstream"
 RECIPE_PATCH_pn-glib-2.0+configure-libtool = "local"
-RECIPE_PATCH_pn-glib-2.0+gatomic-proper-pointer-get-cast = "in upstream"
 RECIPE_PATCH_pn-glib-2.0+glib-gettextize-dir = "marked as REMOVAL"
 RECIPE_INTEL_SECTION_pn-glib-2.0 = "base libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-glib-2.0 = "7 months"
-RECIPE_LATEST_RELEASE_DATE_pn-glib-2.0 = "05/2010"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-glib-2.0 = "8 days"
+RECIPE_LATEST_RELEASE_DATE_pn-glib-2.0 = "2010/11/09"
 RECIPE_COMMENTS_pn-glib-2.0 = ""
 RECIPE_MAINTAINER_pn-glib-2.0 = "Kevin Tian <kevin.tian@intel.com>"
 
@@ -219,11 +218,11 @@ RECIPE_MAINTAINER_pn-dbus-glib = "Kevin Tian <kevin.tian@intel.com>"
 
 RECIPE_STATUS_pn-neon="green"
 DEPENDENCY_CHECK_pn-neon = "not done"
-RECIPE_LATEST_VERSION_pn-neon="0.29.3"
+RECIPE_LATEST_VERSION_pn-neon="0.29.5"
 RECIPE_NO_OF_PATCHES_pn-neon="0"
 RECIPE_INTEL_SECTION_pn-neon = "base libs"
-RECIPE_LATEST_RELEASE_DATE_pn-neon="01/2010"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-neon="15 days"
+RECIPE_LATEST_RELEASE_DATE_pn-neon="2010/10/14"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-neon="10 days"
 RECIPE_COMMENTS_pn-neon = ""
 RECIPE_MAINTAINER_pn-neon = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
@@ -919,10 +918,10 @@ RECIPE_MAINTAINER_pn-gperf = "Kevin Tian <kevin.tian@intel.com>"
 
 RECIPE_STATUS_pn-valgrind = "green"
 DEPENDENCY_CHECK_pn-valgrind = "not done"
-RECIPE_LATEST_VERSION_pn-valgrind = "3.5.0"
+RECIPE_LATEST_VERSION_pn-valgrind = "3.6.0"
 RECIPE_INTEL_SECTION_pn-valgrind = "base utils"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-valgrind = "6 months"
-RECIPE_LATEST_RELEASE_DATE_pn-valgrind = "08/2009"
+RECIPE_LATEST_RELEASE_DATE_pn-valgrind = "2010/10/21"
 RECIPE_COMMENTS_pn-valgrind = ""
 RECIPE_MAINTAINER_pn-valgrind = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
@@ -965,10 +964,10 @@ RECIPE_MAINTAINER_pn-which = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-quota = "green"
 DEPENDENCY_CHECK_pn-quota = "not done"
-RECIPE_LATEST_VERSION_pn-quota = "3.17"
+RECIPE_LATEST_VERSION_pn-quota = "4.00-pre1"
 RECIPE_INTEL_SECTION_pn-quota = "base utils"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-quota = "10 months"
-RECIPE_LATEST_RELEASE_DATE_pn-quota = "01/2009"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-quota = "13 months"
+RECIPE_LATEST_RELEASE_DATE_pn-quota = "2010/02/17"
 RECIPE_COMMENTS_pn-quota = ""
 RECIPE_MAINTAINER_pn-quota = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
@@ -1987,10 +1986,10 @@ RECIPE_MAINTAINER_pn-irda-utils = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-bluez4="green"
 DISTRO_PN_ALIAS_pn-bluez4="Meego=bluz Fedora=bluz Ubuntu=bluz OpenSuSE=bluz Mandriva=bluz"
-RECIPE_LATEST_VERSION_pn-bluez4="4.66"
+RECIPE_LATEST_VERSION_pn-bluez4="4.79"
 RECIPE_NO_OF_PATCHES_pn-bluez4="2"
-RECIPE_LATEST_RELEASE_DATE_pn-bluez4="2010/05/24"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-bluez4="1 month"
+RECIPE_LATEST_RELEASE_DATE_pn-bluez4="2010/11/08"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-bluez4="2 days"
 DISTRO_PN_ALIAS_pn-bluez4= "Fedora=bluez Ubuntu=bluez Debian=bluez-utils Opensuse=bluez"
 RECIPE_MAINTAINER_pn-bluez4 = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
@@ -2018,11 +2017,10 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-ppp="4 years"
 RECIPE_MAINTAINER_pn-ppp = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-libproxy="green"
-RECIPE_LATEST_VERSION_pn-libproxy="0.4.4"
-RECIPE_NO_UPDATE_REASON_pn-libproxy="There are some issues in 0.4.4, and the fix is not pushed in yet"
+RECIPE_LATEST_VERSION_pn-libproxy="0.4.6"
 RECIPE_NO_OF_PATCHES_pn-libproxy="1"
-RECIPE_LATEST_RELEASE_DATE_pn-libproxy="2010/05/19"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libproxy="3 months"
+RECIPE_LATEST_RELEASE_DATE_pn-libproxy="2010/09/01"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libproxy="10 days"
 RECIPE_MAINTAINER_pn-libproxy = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-networkmanager="red"
@@ -2209,9 +2207,9 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-hostap-utils="7 months"
 RECIPE_MAINTAINER_pn-hostap-utils = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-kexec-tools="green"
-RECIPE_LATEST_VERSION_pn-kexec-tools="2.0.1"
+RECIPE_LATEST_VERSION_pn-kexec-tools="2.0.2"
 RECIPE_NO_OF_PATCHES_pn-kexec-tools="1"
-RECIPE_LATEST_RELEASE_DATE_pn-kexec-tools="2009/08/12"
+RECIPE_LATEST_RELEASE_DATE_pn-kexec-tools="2010/07/29"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-kexec-tools="1 year"
 RECIPE_MAINTAINER_pn-kexec-tools = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
@@ -2222,11 +2220,12 @@ RECIPE_MAINTAINER_pn-hostap-conf = "Dongxiao Xu <dongxiao.xu@intel.com>"
 RECIPE_STATUS_pn-orinoco-conf = "red"
 RECIPE_LATEST_VERSION_pn-orinoco-conf = "1.0"
 RECIPE_MAINTAINER_pn-orinoco-conf = "Dongxiao Xu <dongxiao.xu@intel.com>"
+
 RECIPE_STATUS_pn-libical="green"
-RECIPE_LATEST_VERSION_pn-libical="0.44"
+RECIPE_LATEST_VERSION_pn-libical="0.46"
 RECIPE_NO_OF_PATCHES_pn-libical="0"
-RECIPE_LATEST_RELEASE_DATE_pn-libical="2009/09/27"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libical="8 months"
+RECIPE_LATEST_RELEASE_DATE_pn-libical="2010/08/30"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libical="11 months"
 RECIPE_MAINTAINER_pn-libical = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-task-base="green"
@@ -2488,17 +2487,17 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-flac="2 months"
 RECIPE_MAINTAINER_pn-flac = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-libvorbis="green"
-RECIPE_LATEST_VERSION_pn-libvorbis="1.3.1"
+RECIPE_LATEST_VERSION_pn-libvorbis="1.3.2"
 RECIPE_NO_OF_PATCHES_pn-libvorbis="0"
-RECIPE_LATEST_RELEASE_DATE_pn-libvorbis="2010/05/26"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libvorbis="8 months"
+RECIPE_LATEST_RELEASE_DATE_pn-libvorbis="2010/11/01"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libvorbis="7 months"
 RECIPE_MAINTAINER_pn-libvorbis = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-libogg="green"
-RECIPE_LATEST_VERSION_pn-libogg="1.2.0"
+RECIPE_LATEST_VERSION_pn-libogg="1.2.1"
 RECIPE_NO_OF_PATCHES_pn-libogg="0"
-RECIPE_LATEST_RELEASE_DATE_pn-libogg="2010/05/26"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libogg="9 months"
+RECIPE_LATEST_RELEASE_DATE_pn-libogg="2010/11/02"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libogg="7 months"
 RECIPE_MAINTAINER_pn-libogg = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-mpeg2dec="green"
@@ -2562,9 +2561,9 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-alsa-lib="4 months"
 RECIPE_MAINTAINER_pn-alsa-lib = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-tremor="green"
-RECIPE_LATEST_VERSION_pn-tremor="20100422"
+RECIPE_LATEST_VERSION_pn-tremor="20101027"
 RECIPE_NO_OF_PATCHES_pn-tremor="0"
-RECIPE_LATEST_RELEASE_DATE_pn-tremor="2010/04/22"
+RECIPE_LATEST_RELEASE_DATE_pn-tremor="2010/10/27"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-tremor="n/a"
 RECIPE_MAINTAINER_pn-tremor = "Dongxiao Xu <dongxiao.xu@intel.com>"
 DISTRO_PN_ALIAS_pn-tremor = "OSPDT upstream=http://www.xiph.org/vorbis/"
@@ -2591,10 +2590,10 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-speex="8 months"
 RECIPE_MAINTAINER_pn-speex = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-libmusicbrainz="green"
-RECIPE_LATEST_VERSION_pn-libmusicbrainz="3.0.2"
+RECIPE_LATEST_VERSION_pn-libmusicbrainz="3.0.3"
 RECIPE_NO_OF_PATCHES_pn-libmusicbrainz="0"
-RECIPE_LATEST_RELEASE_DATE_pn-libmusicbrainz="2008/09/13"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libmusicbrainz="14 months"
+RECIPE_LATEST_RELEASE_DATE_pn-libmusicbrainz="2010/09/27"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libmusicbrainz="2 years"
 RECIPE_MAINTAINER_pn-libmusicbrainz = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-clutter-gst-0.10 = "red"
@@ -2652,8 +2651,11 @@ RECIPE_STATUS_pn-pulseaudio = "red"
 RECIPE_LATEST_VERSION_pn-pulseaudio = "0.9.21"
 RECIPE_MAINTAINER_pn-pulseaudio = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-taglib = "red"
+RECIPE_STATUS_pn-taglib = "green"
 RECIPE_LATEST_VERSION_pn-taglib = "1.6.3"
+RECIPE_NO_OF_PATCHES_pn-taglib = "2"
+RECIPE_LATEST_RELEASE_DATE_pn-taglib = "2010/04/19"
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-taglib = "10 days"
 RECIPE_MAINTAINER_pn-taglib = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
 RECIPE_STATUS_pn-libnice = "red"
-- 
1.6.3.3


