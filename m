Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 00C484C811D1
	for <poky@yoctoproject.org>; Thu, 25 Nov 2010 08:17:44 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 Nov 2010 06:17:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,255,1288594800"; d="scan'208";a="861347415"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2010 06:17:43 -0800
Message-Id: <a9ffdcf724d97431bf935f23cda039f1c4702b8e.1290689785.git.ke.yu@intel.com>
In-Reply-To: <cover.1290689785.git.ke.yu@intel.com>
References: <cover.1290689785.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Thu, 25 Nov 2010 20:28:04 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 5/8] xf86-video-vesa: add license checksum
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
X-List-Received-Date: Thu, 25 Nov 2010 14:17:45 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../xorg-driver/xf86-video-vesa_2.3.0.bb           |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-vesa_2.3.0.bb b/meta/recipes-graphics/xorg-driver/xf86-video-vesa_2.3.0.bb
index 3212004..17f9d37 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-video-vesa_2.3.0.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-video-vesa_2.3.0.bb
@@ -1,5 +1,7 @@
 require xf86-video-common.inc
 
+LIC_FILES_CHKSUM = "file://COPYING;md5=e5418e7a75e21268637984e70265e146"
+
 EXTRA_OECONF += "--disable-xvmc"
 
 DESCRIPTION = "X.Org X server -- Generic Vesa display driver"
-- 
1.7.0.4


