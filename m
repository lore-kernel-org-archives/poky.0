Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D9C024C8121F
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 00:09:41 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 Nov 2010 22:09:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,274,1288594800"; d="scan'208";a="631095218"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga002.fm.intel.com with ESMTP; 28 Nov 2010 22:09:41 -0800
Message-Id: <215aa236e7912c92c24060311b5d57be6e7542ce.1291011420.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291011420.git.dongxiao.xu@intel.com>
References: <cover.1291011420.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Mon, 29 Nov 2010 10:55:12 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 07/13] libomxil: Fix LICENSE and LIC_FILES_CHKSUM info
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
X-List-Received-Date: Mon, 29 Nov 2010 06:09:42 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-multimedia/libomxil/libomxil_0.3.3.bb |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-multimedia/libomxil/libomxil_0.3.3.bb b/meta/recipes-multimedia/libomxil/libomxil_0.3.3.bb
index 016aed5..0498c19 100644
--- a/meta/recipes-multimedia/libomxil/libomxil_0.3.3.bb
+++ b/meta/recipes-multimedia/libomxil/libomxil_0.3.3.bb
@@ -1,6 +1,8 @@
 DESCRIPTION = "Bellagio OpenMAX Integration Layer"
 HOMEPAGE = "http://omxil.sourceforge.net/"
-LICENSE = "LGPL"
+LICENSE = "LGPLv2.1+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=ae6f0f4dbc7ac193b50f323a6ae191cb \
+                    file://src/omxcore.h;beginline=1;endline=27;md5=c2e37f68ba9652ca9b2431f466944174"
 DEPENDS = "libvorbis libogg alsa-lib libmad"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/omxil/libomxil-B-${PV}.tar.gz"
-- 
1.6.3.3


