Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 67A3C4C811A8
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 20:28:57 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 Dec 2010 18:28:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,247,1291622400"; d="scan'208";a="691842683"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga001.jf.intel.com with ESMTP; 29 Dec 2010 18:28:56 -0800
Message-Id: <1b69bd58cba5b2519bbdb28355d8472c6edcae3f.1293676328.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1293676328.git.dongxiao.xu@intel.com>
References: <cover.1293676328.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Tue, 28 Dec 2010 09:08:01 +0800
Date: Thu, 30 Dec 2010 10:38:42 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 04/19] bluez4: upgrade to version 4.82
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
X-List-Received-Date: Thu, 30 Dec 2010 02:28:57 -0000

upgrade from 4.79 to 4.82.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../{bluez4-4.79 => bluez4-4.82}/bluetooth.conf    |    0
 .../fix-dfutool-usb-declaration-mismatch.patch     |    0
 .../hid2hci_usb_init.patch                         |    0
 .../{bluez4-4.79 => bluez4-4.82}/sbc-thumb.patch   |    0
 .../bluez/{bluez4_4.79.bb => bluez4_4.82.bb}       |    4 ++--
 5 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-connectivity/bluez/{bluez4-4.79 => bluez4-4.82}/bluetooth.conf (100%)
 rename meta/recipes-connectivity/bluez/{bluez4-4.79 => bluez4-4.82}/fix-dfutool-usb-declaration-mismatch.patch (100%)
 rename meta/recipes-connectivity/bluez/{bluez4-4.79 => bluez4-4.82}/hid2hci_usb_init.patch (100%)
 rename meta/recipes-connectivity/bluez/{bluez4-4.79 => bluez4-4.82}/sbc-thumb.patch (100%)
 rename meta/recipes-connectivity/bluez/{bluez4_4.79.bb => bluez4_4.82.bb} (94%)

diff --git a/meta/recipes-connectivity/bluez/bluez4-4.79/bluetooth.conf b/meta/recipes-connectivity/bluez/bluez4-4.82/bluetooth.conf
similarity index 100%
rename from meta/recipes-connectivity/bluez/bluez4-4.79/bluetooth.conf
rename to meta/recipes-connectivity/bluez/bluez4-4.82/bluetooth.conf
diff --git a/meta/recipes-connectivity/bluez/bluez4-4.79/fix-dfutool-usb-declaration-mismatch.patch b/meta/recipes-connectivity/bluez/bluez4-4.82/fix-dfutool-usb-declaration-mismatch.patch
similarity index 100%
rename from meta/recipes-connectivity/bluez/bluez4-4.79/fix-dfutool-usb-declaration-mismatch.patch
rename to meta/recipes-connectivity/bluez/bluez4-4.82/fix-dfutool-usb-declaration-mismatch.patch
diff --git a/meta/recipes-connectivity/bluez/bluez4-4.79/hid2hci_usb_init.patch b/meta/recipes-connectivity/bluez/bluez4-4.82/hid2hci_usb_init.patch
similarity index 100%
rename from meta/recipes-connectivity/bluez/bluez4-4.79/hid2hci_usb_init.patch
rename to meta/recipes-connectivity/bluez/bluez4-4.82/hid2hci_usb_init.patch
diff --git a/meta/recipes-connectivity/bluez/bluez4-4.79/sbc-thumb.patch b/meta/recipes-connectivity/bluez/bluez4-4.82/sbc-thumb.patch
similarity index 100%
rename from meta/recipes-connectivity/bluez/bluez4-4.79/sbc-thumb.patch
rename to meta/recipes-connectivity/bluez/bluez4-4.82/sbc-thumb.patch
diff --git a/meta/recipes-connectivity/bluez/bluez4_4.79.bb b/meta/recipes-connectivity/bluez/bluez4_4.82.bb
similarity index 94%
rename from meta/recipes-connectivity/bluez/bluez4_4.79.bb
rename to meta/recipes-connectivity/bluez/bluez4_4.82.bb
index 54b9fc1..9189a58 100644
--- a/meta/recipes-connectivity/bluez/bluez4_4.79.bb
+++ b/meta/recipes-connectivity/bluez/bluez4_4.82.bb
@@ -25,8 +25,8 @@ SRC_URI = "\
   file://bluetooth.conf \
 "
 
-SRC_URI[md5sum] = "b3afea97981c1c6be04438930c57d891"
-SRC_URI[sha256sum] = "1b486824e486e7a7a17ebcbce99a417e724f42ebb17f9fe574bc4737fda6b7db"
+SRC_URI[md5sum] = "b9e5de607e5e43c868c35c68fe6f189f"
+SRC_URI[sha256sum] = "75dc506f5346e1eb803f44294ae02406e806e309d9c9bda1de7ed235ff794b6d"
 S = "${WORKDIR}/bluez-${PV}"
 
 inherit autotools
-- 
1.6.3.3


