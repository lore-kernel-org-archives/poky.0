Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A879F4C811CD
	for <poky@yoctoproject.org>; Thu, 25 Nov 2010 08:17:59 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Nov 2010 06:17:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,255,1288594800"; d="scan'208";a="681015229"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga001.jf.intel.com with ESMTP; 25 Nov 2010 06:17:48 -0800
Message-Id: <739944a5ff34168916505688b446ac13ffca789b.1290689785.git.ke.yu@intel.com>
In-Reply-To: <cover.1290689785.git.ke.yu@intel.com>
References: <cover.1290689785.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Thu, 25 Nov 2010 20:44:54 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 8/8] xf86-video-omapfb: add license checksum
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
X-List-Received-Date: Thu, 25 Nov 2010 14:17:59 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../xorg-driver/xf86-video-omapfb_git.bb           |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-omapfb_git.bb b/meta/recipes-graphics/xorg-driver/xf86-video-omapfb_git.bb
index 15bef87..f85018e 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-video-omapfb_git.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-video-omapfb_git.bb
@@ -1,6 +1,8 @@
 require xf86-driver-common.inc
 
 DESCRIPTION = "X.Org X server -- OMAP display driver"
+LICENSE = "MIT-X"
+LIC_FILES_CHKSUM = "file://src/omapfb-driver.c;beginline=1;endline=30;md5=f92471b5389bc1d5f765d679f54ebade"
 DEPENDS += "virtual/libx11"
 
 PE = "1"
-- 
1.7.0.4


