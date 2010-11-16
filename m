Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 90FFF4C811D0
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 02:49:34 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Nov 2010 00:49:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,210,1288594800"; d="scan'208";a="349804661"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by azsmga001.ch.intel.com with ESMTP; 17 Nov 2010 00:49:33 -0800
Message-Id: <5d8638322c3dd9309c82a709780fb3c47a090225.1289982119.git.ke.yu@intel.com>
In-Reply-To: <cover.1289982119.git.ke.yu@intel.com>
References: <cover.1289982119.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Tue, 16 Nov 2010 21:50:53 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 05/10] xf86-video-intel: upgrade from 2.12.0 to 2.13.0
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
X-List-Received-Date: Wed, 17 Nov 2010 08:49:34 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 ...-intel_2.12.0.bb => xf86-video-intel_2.13.0.bb} |    0
 2 files changed, 1 insertions(+), 1 deletions(-)
 rename meta/recipes-graphics/xorg-driver/{xf86-video-intel_2.12.0.bb => xf86-video-intel_2.13.0.bb} (100%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index b8e9d37..0cf844f 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -146,6 +146,6 @@ PREFERRED_VERSION_xf86-input-evdev ?= "2.5.0"
 PREFERRED_VERSION_xf86-input-mouse ?= "1.6.0"
 PREFERRED_VERSION_xf86-input-keyboard ?= "1.4.0"
 PREFERRED_VERSION_xf86-input-synaptics ?= "1.2.1"
-PREFERRED_VERSION_xf86-video-intel ?= "2.12.0"
+PREFERRED_VERSION_xf86-video-intel ?= "2.13.0"
 
 
diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.12.0.bb b/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.13.0.bb
similarity index 100%
rename from meta/recipes-graphics/xorg-driver/xf86-video-intel_2.12.0.bb
rename to meta/recipes-graphics/xorg-driver/xf86-video-intel_2.13.0.bb
-- 
1.7.0.4


