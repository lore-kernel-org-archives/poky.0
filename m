Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8481D4C811EF
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 07:06:37 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 05 Jan 2011 05:06:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,278,1291622400"; d="scan'208";a="874651672"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by fmsmga001.fm.intel.com with ESMTP; 05 Jan 2011 05:06:35 -0800
Message-Id: <a4cb0d63ca469aea89c1dd9be660e274b1fec279.1294232460.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1294232460.git.dexuan.cui@intel.com>
References: <cover.1294232460.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Wed, 5 Jan 2011 20:16:46 +0800
Date: Wed, 05 Jan 2011 21:06:19 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 08/12] libdmx: upgrade from 1.1.0 to 1.1.1
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
X-List-Received-Date: Wed, 05 Jan 2011 13:06:37 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../xorg-lib/{libdmx_1.1.0.bb => libdmx_1.1.1.bb}  |    8 +++++---
 1 files changed, 5 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/xorg-lib/{libdmx_1.1.0.bb => libdmx_1.1.1.bb} (66%)

diff --git a/meta/recipes-graphics/xorg-lib/libdmx_1.1.0.bb b/meta/recipes-graphics/xorg-lib/libdmx_1.1.1.bb
similarity index 66%
rename from meta/recipes-graphics/xorg-lib/libdmx_1.1.0.bb
rename to meta/recipes-graphics/xorg-lib/libdmx_1.1.1.bb
index 11845cc..f007e30 100644
--- a/meta/recipes-graphics/xorg-lib/libdmx_1.1.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libdmx_1.1.1.bb
@@ -7,8 +7,10 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=4641deddaa80fe7ca88e944e1fd94a94 \
                     file://src/dmx.c;endline=33;md5=79ff7aacf716dafea0d490316f998a11"
 
 DEPENDS += "libxext dmxproto"
-PR = "r1"
+
+PR = "r0"
 PE = "1"
 
-SRC_URI[md5sum] = "a2fcf0382837888d3781b714489a8999"
-SRC_URI[sha256sum] = "1904a8f848cc5d76105cb07707890aca095540a37fb0a63d359f71da51d3e2d5"
+SRC_URI[md5sum] = "75fd328fab3bd4a55cccaa6d5dfff749"
+SRC_URI[sha256sum] = "a6de6e87470bc749de02056fa38758d0e633303789830fdafc56600e75b3de18"
+
-- 
1.7.2


