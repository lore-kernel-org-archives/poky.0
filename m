Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7E9744C811D1
	for <poky@yoctoproject.org>; Thu, 25 Nov 2010 08:17:45 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Nov 2010 06:17:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,255,1288594800"; d="scan'208";a="630270690"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by fmsmga002.fm.intel.com with ESMTP; 25 Nov 2010 06:17:44 -0800
Message-Id: <1537a75241c3bef33fb32501a5d06459853b4360.1290689785.git.ke.yu@intel.com>
In-Reply-To: <cover.1290689785.git.ke.yu@intel.com>
References: <cover.1290689785.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Thu, 25 Nov 2010 20:38:12 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 6/8] xf86-input-synaptics: add license checksum
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
 .../xorg-driver/xf86-input-synaptics_1.2.1.bb      |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.2.1.bb b/meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.2.1.bb
index 8112839..8b7b3f7 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.2.1.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-input-synaptics_1.2.1.bb
@@ -2,4 +2,6 @@ require xf86-input-common.inc
 
 DESCRIPTION = "X.Org X server -- keyboard input driver"
 
+LIC_FILES_CHKSUM = "file://COPYING;md5=08955125302e95a16628a4bec64ade5f"
+
 DEPENDS += "libxi"
-- 
1.7.0.4


