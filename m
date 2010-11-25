Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C97CB4C8110E
	for <poky@yoctoproject.org>; Thu, 25 Nov 2010 08:17:40 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2010 06:17:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,255,1288594800"; d="scan'208";a="681015202"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga001.jf.intel.com with ESMTP; 25 Nov 2010 06:17:39 -0800
Message-Id: <44758360af1258c28c961549409171277a0f123e.1290689785.git.ke.yu@intel.com>
In-Reply-To: <cover.1290689785.git.ke.yu@intel.com>
References: <cover.1290689785.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Thu, 25 Nov 2010 20:12:39 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/8] libdrm: add license checksum
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
X-List-Received-Date: Thu, 25 Nov 2010 14:17:41 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/recipes-graphics/drm/libdrm_2.4.22.bb |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/drm/libdrm_2.4.22.bb b/meta/recipes-graphics/drm/libdrm_2.4.22.bb
index e0c0f01..d8e0fff 100644
--- a/meta/recipes-graphics/drm/libdrm_2.4.22.bb
+++ b/meta/recipes-graphics/drm/libdrm_2.4.22.bb
@@ -1,5 +1,7 @@
 require libdrm.inc
 
+LIC_FILES_CHKSUM = "file://xf86drm.c;beginline=9;endline=32;md5=c8a3b961af7667c530816761e949dc71"
+
 SRC_URI += "file://installtests.patch"
 SRC_URI[md5sum] = "3bdfa33f35d1c902e5115cceb5500c83"
 SRC_URI[sha256sum] = "0bb0e594e4094d9000d80f38e96e8f640b6364f96cfef5b970cf4481443c6b3d"
-- 
1.7.0.4


