Return-Path: <ke.yu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4BCF04C811D4
	for <poky@yoctoproject.org>; Thu, 25 Nov 2010 08:17:47 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 25 Nov 2010 06:17:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,255,1288594800"; d="scan'208";a="353208699"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by azsmga001.ch.intel.com with ESMTP; 25 Nov 2010 06:17:46 -0800
Message-Id: <36aabc11cec9fa45a6f1aa643df944535315762c.1290689785.git.ke.yu@intel.com>
In-Reply-To: <cover.1290689785.git.ke.yu@intel.com>
References: <cover.1290689785.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Thu, 25 Nov 2010 20:40:35 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 7/8] xf86-video-intel: add license checksum
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
X-List-Received-Date: Thu, 25 Nov 2010 14:17:47 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../xorg-driver/xf86-video-intel_2.13.0.bb         |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.13.0.bb b/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.13.0.bb
index f902005..6f0c81c 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.13.0.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.13.0.bb
@@ -2,6 +2,8 @@ require xf86-video-common.inc
 
 DESCRIPTION = "X.Org X server -- Intel i8xx, i9xx display driver"
 
+LIC_FILES_CHKSUM = "file://COPYING;md5=8730ad58d11c7bbad9a7066d69f7808e"
+
 EXTRA_OECONF += "--disable-xvmc"
 
 DEPENDS += "virtual/libx11 libxvmc drm xf86driproto glproto \
-- 
1.7.0.4


