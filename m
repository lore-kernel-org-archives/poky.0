Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7DB614C811CF
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 00:53:31 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Nov 2010 22:53:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,260,1288594800"; d="scan'208";a="630447397"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga002.fm.intel.com with ESMTP; 25 Nov 2010 22:53:30 -0800
Message-Id: <5057c7ddc8155f9d421cefdc68b335613f4c3077.1290736298.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1290736297.git.dongxiao.xu@intel.com>
References: <cover.1290736297.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 23 Nov 2010 14:49:20 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 02/14] gypsy: Upgrade to version 0.8
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
X-List-Received-Date: Fri, 26 Nov 2010 06:53:31 -0000

Fixed recipe metadata

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-connectivity/gypsy/gypsy_0.6.bb |   15 ---------------
 meta/recipes-connectivity/gypsy/gypsy_0.8.bb |   25 +++++++++++++++++++++++++
 2 files changed, 25 insertions(+), 15 deletions(-)
 delete mode 100644 meta/recipes-connectivity/gypsy/gypsy_0.6.bb
 create mode 100644 meta/recipes-connectivity/gypsy/gypsy_0.8.bb

diff --git a/meta/recipes-connectivity/gypsy/gypsy_0.6.bb b/meta/recipes-connectivity/gypsy/gypsy_0.6.bb
deleted file mode 100644
index 9328f96..0000000
--- a/meta/recipes-connectivity/gypsy/gypsy_0.6.bb
+++ /dev/null
@@ -1,15 +0,0 @@
-SUMMARY = "GPS Multiplexing Daemon"
-DESCRIPTION = "Gypsy is a GPS multiplexing daemon which allows \
-multiple clients to access GPS data from multiple GPS sources \
-concurrently.  Gypsy also hides the details of parsing NMEA from the \
-client applications, passing the data as simple values for the clients \
-to use."
-LICENSE = "GPL"
-SECTION = "x11"
-DEPENDS = "glib-2.0 dbus bluez4 dbus-glib libxslt"
-
-SRC_URI = "http://gypsy.freedesktop.org/releases/gypsy-${PV}.tar.gz" 
-
-inherit autotools pkgconfig
-
-FILES_${PN} += "/usr/share/dbus-1/services/"
diff --git a/meta/recipes-connectivity/gypsy/gypsy_0.8.bb b/meta/recipes-connectivity/gypsy/gypsy_0.8.bb
new file mode 100644
index 0000000..ab7f6b0
--- /dev/null
+++ b/meta/recipes-connectivity/gypsy/gypsy_0.8.bb
@@ -0,0 +1,25 @@
+SUMMARY = "GPS Multiplexing Daemon"
+DESCRIPTION = "Gypsy is a GPS multiplexing daemon which allows \
+multiple clients to access GPS data from multiple GPS sources \
+concurrently.  Gypsy also hides the details of parsing NMEA from the \
+client applications, passing the data as simple values for the clients \
+to use."
+LICENSE = "GPLv2+ & LGPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
+                    file://COPYING.lib;md5=7fbc338309ac38fefcd64b04bb903e34 \
+                    file://src/main.c;beginline=1;endline=25;md5=3fe64e27e61b289b77383a54a982cbdd \
+                    file://gypsy/gypsy-time.h;beginline=1;endline=24;md5=06432ea19a7b6607428d04d9dadc37fd"
+
+SECTION = "x11"
+DEPENDS = "glib-2.0 dbus bluez4 dbus-glib libxslt"
+
+SRC_URI = "http://gypsy.freedesktop.org/releases/gypsy-${PV}.tar.gz" 
+
+PR = "r0"
+
+inherit autotools pkgconfig
+
+FILES_${PN} += "/usr/share/dbus-1/services/"
+
+SRC_URI[md5sum] = "32b8db24db86d2dac87b391dd255f4bf"
+SRC_URI[sha256sum] = "1986a58189614a950725c3bc7d05faa3b84695f35cb696326f340ef87fc3acaa"
-- 
1.6.3.3


