Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 887654C81060
	for <poky@yoctoproject.org>; Fri,  3 Dec 2010 02:43:53 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 Dec 2010 00:43:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,292,1288594800"; d="scan'208";a="356532805"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by azsmga001.ch.intel.com with ESMTP; 03 Dec 2010 00:43:52 -0800
Message-Id: <5fb46efbc3bcd30682112ddc2c85d7a437204812.1291366246.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291366245.git.dongxiao.xu@intel.com>
References: <cover.1291366245.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Fri, 3 Dec 2010 14:46:08 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 19/19] bluez-hcidump: update LICENSE and LIC_FILES_CHKSUM info
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
X-List-Received-Date: Fri, 03 Dec 2010 08:43:53 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../bluez/bluez-hcidump_1.42.bb                    |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-connectivity/bluez/bluez-hcidump_1.42.bb b/meta/recipes-connectivity/bluez/bluez-hcidump_1.42.bb
index 8d4e41b..d974dc5 100644
--- a/meta/recipes-connectivity/bluez/bluez-hcidump_1.42.bb
+++ b/meta/recipes-connectivity/bluez/bluez-hcidump_1.42.bb
@@ -5,7 +5,9 @@ and displays the commands, events and data in a human-readable form."
 SECTION = "console"
 PRIORITY = "optional"
 DEPENDS = "bluez4"
-LICENSE = "GPL"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=eb723b61539feef013de476e68b5c50a \
+                    file://src/hcidump.c;beginline=1;endline=23;md5=22f51010959a0cd483c4d7f0bd77aaa3"
 PR = "r0"
 
 SRC_URI = "http://bluez.sourceforge.net/download/bluez-hcidump-${PV}.tar.gz"
-- 
1.6.3.3


