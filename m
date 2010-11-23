Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id AFE2D4C811D5
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 00:53:35 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 Nov 2010 22:53:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,259,1288594800"; d="scan'208";a="861529553"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2010 22:53:35 -0800
Message-Id: <e5525e1aebc0cfa779f27a5bba79ba51ee65b5d8.1290736298.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1290736297.git.dongxiao.xu@intel.com>
References: <cover.1290736297.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 23 Nov 2010 15:06:24 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 05/14] connman: Upgrade to version 0.63
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
X-List-Received-Date: Fri, 26 Nov 2010 06:53:36 -0000

Add build dependency iptables.

Fix recipe metadata.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../connman/{connman-0.56 => connman-0.63}/connman |    0
 .../{connman-0.56 => connman-0.63}/dbusperms.patch |    0
 .../fix-shutdown-ap-disconnect.patch               |    0
 meta/recipes-connectivity/connman/connman.inc      |    2 +-
 .../connman/{connman_0.56.bb => connman_0.63.bb}   |    5 ++++-
 5 files changed, 5 insertions(+), 2 deletions(-)
 rename meta/recipes-connectivity/connman/{connman-0.56 => connman-0.63}/connman (100%)
 mode change 100755 => 100644
 rename meta/recipes-connectivity/connman/{connman-0.56 => connman-0.63}/dbusperms.patch (100%)
 rename meta/recipes-connectivity/connman/{connman-0.56 => connman-0.63}/fix-shutdown-ap-disconnect.patch (100%)
 rename meta/recipes-connectivity/connman/{connman_0.56.bb => connman_0.63.bb} (79%)

diff --git a/meta/recipes-connectivity/connman/connman-0.56/connman b/meta/recipes-connectivity/connman/connman-0.63/connman
old mode 100755
new mode 100644
similarity index 100%
rename from meta/recipes-connectivity/connman/connman-0.56/connman
rename to meta/recipes-connectivity/connman/connman-0.63/connman
diff --git a/meta/recipes-connectivity/connman/connman-0.56/dbusperms.patch b/meta/recipes-connectivity/connman/connman-0.63/dbusperms.patch
similarity index 100%
rename from meta/recipes-connectivity/connman/connman-0.56/dbusperms.patch
rename to meta/recipes-connectivity/connman/connman-0.63/dbusperms.patch
diff --git a/meta/recipes-connectivity/connman/connman-0.56/fix-shutdown-ap-disconnect.patch b/meta/recipes-connectivity/connman/connman-0.63/fix-shutdown-ap-disconnect.patch
similarity index 100%
rename from meta/recipes-connectivity/connman/connman-0.56/fix-shutdown-ap-disconnect.patch
rename to meta/recipes-connectivity/connman/connman-0.63/fix-shutdown-ap-disconnect.patch
diff --git a/meta/recipes-connectivity/connman/connman.inc b/meta/recipes-connectivity/connman/connman.inc
index ced21fe..fb970ed 100644
--- a/meta/recipes-connectivity/connman/connman.inc
+++ b/meta/recipes-connectivity/connman/connman.inc
@@ -13,7 +13,7 @@ LICENSE  = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e \
                     file://src/main.c;beginline=1;endline=20;md5=4b55b550fa6b33cc2055ef30dd262b3e"
 
-DEPENDS  = "libgdbus dbus glib-2.0 hal"
+DEPENDS  = "libgdbus dbus glib-2.0 hal iptables"
 RDEPENDS_${PN} = "wpa-supplicant resolvconf"
 
 INITSCRIPT_NAME = "connman"
diff --git a/meta/recipes-connectivity/connman/connman_0.56.bb b/meta/recipes-connectivity/connman/connman_0.63.bb
similarity index 79%
rename from meta/recipes-connectivity/connman/connman_0.56.bb
rename to meta/recipes-connectivity/connman/connman_0.63.bb
index 665da32..e99f784 100644
--- a/meta/recipes-connectivity/connman/connman_0.56.bb
+++ b/meta/recipes-connectivity/connman/connman_0.63.bb
@@ -1,5 +1,5 @@
 require connman.inc
-PR = "r2"
+PR = "r0"
 
 EXTRA_OECONF += "\
   ac_cv_path_WPASUPPLICANT=/usr/sbin/wpa_supplicant \
@@ -23,3 +23,6 @@ SRC_URI  = "\
   file://fix-shutdown-ap-disconnect.patch \
   file://connman \
 "
+
+SRC_URI[md5sum] = "11616a4fa1d03f96f0739730645f7c53"
+SRC_URI[sha256sum] = "e2a57376cdcd42b3876262da6959aa58428941e0eb2df9a4724cd3f1af934492"
-- 
1.6.3.3


