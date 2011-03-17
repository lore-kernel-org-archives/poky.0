Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id DF6B14C80AAD
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 21:20:47 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Mar 2011 19:20:47 -0700
Message-Id: <1bdc18$jt5k9u@fmsmga002.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,197,1299484800"; d="scan'208";a="668127552"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by fmsmga002.fm.intel.com with ESMTP; 16 Mar 2011 19:20:47 -0700
Old-Date: Wed, 16 Mar 2011 20:19:43 -0500
Date: Wed, 16 Mar 2011 21:20:42 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/1] crownbay: xserver-xf86-emgd sum fixes
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
X-List-Received-Date: Thu, 17 Mar 2011 02:20:48 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Fixes [BUGID #885].  Fix changed md5 and sha256 sums for this package.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb     |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb
index 5f22213..01f0a24 100644
--- a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb
+++ b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb
@@ -15,8 +15,8 @@ SRC_URI += "file://nodolt.patch \
 # Misc build failure for master HEAD
 SRC_URI += "file://fix_open_max_preprocessor_error.patch"
 
-SRC_URI[md5sum] = "5c8773499a6a8c1ddaedf33577ec9634"
-SRC_URI[sha256sum] = "8b30800004c98fc7a8e6ff31a339f28451be5132e774443be22bf226e1791e34"
+SRC_URI[md5sum] = "cafc4e2d4ef6cf6e47f3e7dffeb3346a"
+SRC_URI[sha256sum] = "a89f13b166b412930fe418ff50032dd2cde8bb181d8b47b5ca6f848d218fdcf2"
 
 RDEPENDS_${PN} += "xserver-xf86-emgd-bin mesa-dri"
 
-- 
1.7.0.4


