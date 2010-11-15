Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D8E454C80052
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 07:41:44 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Nov 2010 05:41:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,206,1288594800"; d="scan'208";a="678004569"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.22])
	by orsmga001.jf.intel.com with ESMTP; 16 Nov 2010 05:41:43 -0800
Message-Id: <0bee46c94b8c296612b737a67b37afeb428f0bed.1289914983.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1289914982.git.dongxiao.xu@intel.com>
References: <cover.1289914982.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Mon, 15 Nov 2010 20:56:18 +0800
To: poky@yoctoproject.org
Subject: [PATCH 01/14] bluez4: Upgraded to version 4.79.
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
X-List-Received-Date: Tue, 16 Nov 2010 13:41:45 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../{bluez4-4.66 => bluez4-4.79}/bluetooth.conf    |    0
 .../fix-dfutool-usb-declaration-mismatch.patch     |    0
 .../hid2hci_usb_init.patch                         |    0
 .../{bluez4-4.66 => bluez4-4.79}/sbc-thumb.patch   |    0
 .../bluez/{bluez4_4.66.bb => bluez4_4.79.bb}       |    0
 5 files changed, 0 insertions(+), 0 deletions(-)
 rename meta/recipes-connectivity/bluez/{bluez4-4.66 => bluez4-4.79}/bluetooth.conf (100%)
 rename meta/recipes-connectivity/bluez/{bluez4-4.66 => bluez4-4.79}/fix-dfutool-usb-declaration-mismatch.patch (100%)
 rename meta/recipes-connectivity/bluez/{bluez4-4.66 => bluez4-4.79}/hid2hci_usb_init.patch (100%)
 rename meta/recipes-connectivity/bluez/{bluez4-4.66 => bluez4-4.79}/sbc-thumb.patch (100%)
 rename meta/recipes-connectivity/bluez/{bluez4_4.66.bb => bluez4_4.79.bb} (100%)

diff --git a/meta/recipes-connectivity/bluez/bluez4-4.66/bluetooth.conf b/meta/recipes-connectivity/bluez/bluez4-4.79/bluetooth.conf
similarity index 100%
rename from meta/recipes-connectivity/bluez/bluez4-4.66/bluetooth.conf
rename to meta/recipes-connectivity/bluez/bluez4-4.79/bluetooth.conf
diff --git a/meta/recipes-connectivity/bluez/bluez4-4.66/fix-dfutool-usb-declaration-mismatch.patch b/meta/recipes-connectivity/bluez/bluez4-4.79/fix-dfutool-usb-declaration-mismatch.patch
similarity index 100%
rename from meta/recipes-connectivity/bluez/bluez4-4.66/fix-dfutool-usb-declaration-mismatch.patch
rename to meta/recipes-connectivity/bluez/bluez4-4.79/fix-dfutool-usb-declaration-mismatch.patch
diff --git a/meta/recipes-connectivity/bluez/bluez4-4.66/hid2hci_usb_init.patch b/meta/recipes-connectivity/bluez/bluez4-4.79/hid2hci_usb_init.patch
similarity index 100%
rename from meta/recipes-connectivity/bluez/bluez4-4.66/hid2hci_usb_init.patch
rename to meta/recipes-connectivity/bluez/bluez4-4.79/hid2hci_usb_init.patch
diff --git a/meta/recipes-connectivity/bluez/bluez4-4.66/sbc-thumb.patch b/meta/recipes-connectivity/bluez/bluez4-4.79/sbc-thumb.patch
similarity index 100%
rename from meta/recipes-connectivity/bluez/bluez4-4.66/sbc-thumb.patch
rename to meta/recipes-connectivity/bluez/bluez4-4.79/sbc-thumb.patch
diff --git a/meta/recipes-connectivity/bluez/bluez4_4.66.bb b/meta/recipes-connectivity/bluez/bluez4_4.79.bb
similarity index 100%
rename from meta/recipes-connectivity/bluez/bluez4_4.66.bb
rename to meta/recipes-connectivity/bluez/bluez4_4.79.bb
-- 
1.6.3.3


