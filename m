Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0DD2F4C811FD
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 00:09:33 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 Nov 2010 22:09:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,274,1288594800"; d="scan'208";a="631095189"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga002.fm.intel.com with ESMTP; 28 Nov 2010 22:09:33 -0800
Message-Id: <df978d7656d4247dcf6373236ac87266c47a60a2.1291011420.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291011420.git.dongxiao.xu@intel.com>
References: <cover.1291011420.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Sat, 27 Nov 2010 22:44:11 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 01/13] linux-firmware: Update LIC_FILES_CHKSUM info
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
X-List-Received-Date: Mon, 29 Nov 2010 06:09:34 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../linux-firmware/linux-firmware_git.bb           |   13 +++++++++++++
 1 files changed, 13 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb b/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb
index 14cfc9c..a912c45 100644
--- a/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb
+++ b/meta/recipes-kernel/linux-firmware/linux-firmware_git.bb
@@ -3,6 +3,19 @@ SECTION = "kernel"
 LICENSE = "Proprietary"
 LICENSE_${PN}-sd8686 = "Firmware:LICENSE.libertas"
 
+LIC_FILES_CHKSUM = "file://LICENSE.radeon_rlc;md5=4c243f7854d2884b483abda991adef43 \
+                    file://LICENSE.dib0700;md5=f7411825c8a555a1a3e5eab9ca773431 \
+                    file://LICENCE.xc5000;md5=1e170c13175323c32c7f4d0998d53f66 \
+                    file://LICENCE.ralink-firmware.txt;md5=ab2c269277c45476fb449673911a2dfd \
+                    file://LICENCE.qla2xxx;md5=4005328a134054f0fa077bdc37aa64f2 \
+                    file://LICENCE.mwl8k;md5=9ddea1734a4baf3c78d845151f42a37a \
+                    file://LICENCE.libertas;md5=2d2127d203ac000f1afabfce593659ce \
+                    file://LICENCE.iwlwifi_firmware;md5=311cc823df5b1be4f00fbf0f17d96a6b \
+                    file://LICENCE.i2400m;md5=14b901969e23c41881327c0d9e4b7d36 \
+                    file://LICENCE.atheros_firmware;md5=62748c8fecfa12010fd76409db4b5459 \
+                    file://LICENCE.agere;md5=af0133de6b4a9b2522defd5f188afd31 \
+                   "
+
 PROVIDES += "linux-firmware-sd8686"
 
 PV = "0.0+git${SRCREV}"
-- 
1.6.3.3


