Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 05ED04C80B71
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 01:43:11 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 25 Apr 2011 23:43:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,267,1301900400"; d="scan'208";a="683961379"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga002.fm.intel.com with ESMTP; 25 Apr 2011 23:43:06 -0700
Message-Id: <4be9d636c2f5c59f9a13e811a50a09d71bd1fdbd.1303798223.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1303798223.git.dongxiao.xu@intel.com>
References: <cover.1303798223.git.dongxiao.xu@intel.com>
Old-Date: Tue, 19 Apr 2011 15:57:41 +0800
Date: Tue, 26 Apr 2011 14:46:01 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 03/13] bluez-hcidump: upgrade to version 2.0
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
X-List-Received-Date: Tue, 26 Apr 2011 06:43:12 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 ...{bluez-hcidump_1.42.bb => bluez-hcidump_2.0.bb} |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)
 rename meta/recipes-connectivity/bluez/{bluez-hcidump_1.42.bb => bluez-hcidump_2.0.bb} (69%)

diff --git a/meta/recipes-connectivity/bluez/bluez-hcidump_1.42.bb b/meta/recipes-connectivity/bluez/bluez-hcidump_2.0.bb
similarity index 69%
rename from meta/recipes-connectivity/bluez/bluez-hcidump_1.42.bb
rename to meta/recipes-connectivity/bluez/bluez-hcidump_2.0.bb
index 7291548..67dd2c6 100644
--- a/meta/recipes-connectivity/bluez/bluez-hcidump_1.42.bb
+++ b/meta/recipes-connectivity/bluez/bluez-hcidump_2.0.bb
@@ -7,13 +7,13 @@ PRIORITY = "optional"
 DEPENDS = "bluez4"
 LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=eb723b61539feef013de476e68b5c50a \
-                    file://src/hcidump.c;beginline=1;endline=23;md5=22f51010959a0cd483c4d7f0bd77aaa3"
+                    file://src/hcidump.c;beginline=1;endline=23;md5=3bee3a162dff43a5be7470710b99fbcf"
 PR = "r0"
 
-SRC_URI = "http://bluez.sourceforge.net/download/bluez-hcidump-${PV}.tar.gz"
+SRC_URI = "http://www.kernel.org/pub/linux/bluetooth/bluez-hcidump-${PV}.tar.gz"
 
-SRC_URI[md5sum] = "5704737aaf72104eeaf77335218a1827"
-SRC_URI[sha256sum] = "689e39f9432ab90af5f390d86cb46e06c35693d01ea29aec4e41c4f9e315f49f"
+SRC_URI[md5sum] = "5c2e3ef0a68b2845047867ba51ff8ac9"
+SRC_URI[sha256sum] = "b3b64fd0b18301df07d3aaf34c037c1e4808b4aaf702294822d62b5424f617fd"
 S = "${WORKDIR}/bluez-hcidump-${PV}"
 
 EXTRA_OECONF = "--with-bluez-libs=${STAGING_LIBDIR} --with-bluez-includes=${STAGING_INCDIR}"
-- 
1.7.1


