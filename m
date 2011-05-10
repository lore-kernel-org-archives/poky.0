Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id D118B4C8090C
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:55:58 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 May 2011 01:55:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; d="scan'208";a="433485337"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 10 May 2011 01:55:58 -0700
Message-Id: <8c1868a9c84e2f5e98d9c70c5ff67c03bb858643.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 13:07:22 +0800
Date: Tue, 10 May 2011 17:01:26 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 03/39] bluez: add upstream status for bluez's patches
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
X-List-Received-Date: Tue, 10 May 2011 08:55:59 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../fix-dfutool-usb-declaration-mismatch.patch     |    1 +
 .../bluez/bluez4-4.82/hid2hci_usb_init.patch       |    2 ++
 .../bluez/bluez4-4.82/sbc-thumb.patch              |    1 +
 3 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-connectivity/bluez/bluez4-4.82/fix-dfutool-usb-declaration-mismatch.patch b/meta/recipes-connectivity/bluez/bluez4-4.82/fix-dfutool-usb-declaration-mismatch.patch
index 91c802b..27dead0 100644
--- a/meta/recipes-connectivity/bluez/bluez4-4.82/fix-dfutool-usb-declaration-mismatch.patch
+++ b/meta/recipes-connectivity/bluez/bluez4-4.82/fix-dfutool-usb-declaration-mismatch.patch
@@ -3,6 +3,7 @@
 # Date:   Thu Jan 29 16:52:21 2009 +0000
 #
 # Acquired from OpenEmbedded
+Upstream-Status: Pending
 
 Index: bluez-4.27/tools/dfutool.c
 ===================================================================
diff --git a/meta/recipes-connectivity/bluez/bluez4-4.82/hid2hci_usb_init.patch b/meta/recipes-connectivity/bluez/bluez4-4.82/hid2hci_usb_init.patch
index ed15fd5..e8a58e5 100644
--- a/meta/recipes-connectivity/bluez/bluez4-4.82/hid2hci_usb_init.patch
+++ b/meta/recipes-connectivity/bluez/bluez4-4.82/hid2hci_usb_init.patch
@@ -6,6 +6,8 @@
 # data (e.g. ctx) which is used in subsequent calls to libusb
 # We return immediately if usb_init() fails for some reason.
 
+Upstream-Status: Inappropriate [not used]
+
 Index: bluez-4.24/tools/hid2hci.c
 ===================================================================
 --- bluez-4.24.orig/tools/hid2hci.c	2008-10-25 23:40:34.000000000 -0700
diff --git a/meta/recipes-connectivity/bluez/bluez4-4.82/sbc-thumb.patch b/meta/recipes-connectivity/bluez/bluez4-4.82/sbc-thumb.patch
index 4744236..881cb9c 100644
--- a/meta/recipes-connectivity/bluez/bluez4-4.82/sbc-thumb.patch
+++ b/meta/recipes-connectivity/bluez/bluez4-4.82/sbc-thumb.patch
@@ -1,4 +1,5 @@
 # Acquired from OpenEmbedded
+Upstream-Status: Inappropriate [embedded specific]
 
 --- bluez/sbc/sbc_math.h~	2008-03-05 20:18:03.000000000 +0000
 +++ bluez/sbc/sbc_math.h	2008-10-27 13:39:27.000000000 +0000
-- 
1.7.1


