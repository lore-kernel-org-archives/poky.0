Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id D12874C811FC
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 20:48:56 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 28 Nov 2010 18:48:56 -0800
Message-Id: <c6d829$pm72ln@fmsmga001.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,274,1288594800"; d="scan'208";a="862161599"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.36])
	by fmsmga001.fm.intel.com with ESMTP; 28 Nov 2010 18:48:55 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Mon, 29 Nov 2010 10:23:05 +0800
To: poky@pokylinux.org
Subject: [PATCH 3/4] libfontenc: add dependency on font-util
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
X-List-Received-Date: Mon, 29 Nov 2010 02:48:57 -0000

it's enforced by libfontenc configuration script

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 meta/recipes-graphics/xorg-lib/libfontenc_1.1.0.bb |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-graphics/xorg-lib/libfontenc_1.1.0.bb b/meta/recipes-graphics/xorg-lib/libfontenc_1.1.0.bb
index dc7b62d..691624c 100644
--- a/meta/recipes-graphics/xorg-lib/libfontenc_1.1.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libfontenc_1.1.0.bb
@@ -5,8 +5,8 @@ require xorg-lib-common.inc
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=96254c20ab81c63e65b26f0dbcd4a1c1"
 
-DEPENDS += "zlib xproto"
-PR = "r0"
+DEPENDS += "zlib xproto font-util"
+PR = "r1"
 PE = "1"
 
 BBCLASSEXTEND = "native"
-- 
1.6.0.4


