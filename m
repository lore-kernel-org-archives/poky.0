Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C74A14C800AB
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 02:52:10 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 Feb 2011 00:52:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,454,1291622400"; d="scan'208";a="656675503"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga002.fm.intel.com with ESMTP; 11 Feb 2011 00:52:10 -0800
Message-Id: <0a9dc7a03251c1521a2e5baaead56055207ae72f.1297415188.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1297415188.git.dongxiao.xu@intel.com>
References: <cover.1297415188.git.dongxiao.xu@intel.com>
Old-Date: Fri, 11 Feb 2011 17:03:55 +0800
Date: Fri, 11 Feb 2011 17:11:38 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 1/2] wpa-supplicant: change dbus interface
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
X-List-Received-Date: Fri, 11 Feb 2011 08:52:10 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

The new interface "fi.w1.wpa_supplicant1" is used in latest connman,
thus change the wpa_supplicant default configuration.

Besides, enable netlink support with libnl 2.0 mode.

[BUGID #603]

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../wpa-supplicant-0.7.3/defconfig-gnutls          |    5 +++--
 .../wpa-supplicant/wpa-supplicant-0.7.inc          |    2 +-
 .../wpa-supplicant/wpa-supplicant_0.7.3.bb         |    2 +-
 3 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/defconfig-gnutls b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/defconfig-gnutls
index e325bb8..84bf68e 100644
--- a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/defconfig-gnutls
+++ b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.3/defconfig-gnutls
@@ -81,7 +81,8 @@ CONFIG_DRIVER_HOSTAP=y
 CONFIG_DRIVER_WEXT=y
 
 # Driver interface for Linux drivers using the nl80211 kernel interface
-#CONFIG_DRIVER_NL80211=y
+CONFIG_LIBNL20=y
+CONFIG_DRIVER_NL80211=y
 
 # Driver interface for FreeBSD net80211 layer (e.g., Atheros driver)
 #CONFIG_DRIVER_BSD=y
@@ -404,4 +405,4 @@ CONFIG_PEERKEY=y
 #LIBS_c += -lbfd -liberty -lz
 CONFIG_TLS = gnutls
 CONFIG_GNUTLS_EXTRA=y
-CONFIG_CTRL_IFACE_DBUS=y
+CONFIG_CTRL_IFACE_DBUS_NEW=y
diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
index 7865b8f..cd62d8f 100644
--- a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
+++ b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
@@ -6,7 +6,7 @@ LICENSE = "GPLv2 | BSD"
 LIC_FILES_CHKSUM = "file://../COPYING;md5=c54ce9345727175ff66d17b67ff51f58 \
                     file://../README;md5=54cfc88015d3ce83f7156e63c6bb1738 \
                     file://wpa_supplicant.c;beginline=1;endline=17;md5=acdc5a4b0d6345f21f136eace747260e"
-DEPENDS = "gnutls dbus"
+DEPENDS = "gnutls dbus libnl"
 RRECOMMENDS_${PN} = "wpa-supplicant-passphrase wpa-supplicant-cli"
 
 SRC_URI = "http://hostap.epitest.fi/releases/wpa_supplicant-${PV}.tar.gz \
diff --git a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb
index 87baf33..03bd937 100644
--- a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb
+++ b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb
@@ -1,6 +1,6 @@
 require wpa-supplicant-0.7.inc
 
-PR = "r3"
+PR = "r4"
 
 SRC_URI[md5sum] = "f516f191384a9a546e3f5145c08addda"
 SRC_URI[sha256sum] = "d0cd50caa85346ccc376dcda5ed3c258eef19a93b3cade39d25760118ad59443"
-- 
1.6.3.3


