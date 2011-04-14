Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4B0684C80852
	for <poky@yoctoproject.org>; Wed, 13 Apr 2011 19:15:58 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Apr 2011 17:15:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,207,1301900400"; d="scan'208";a="733052307"
Received: from yocto-build8.sh.intel.com (HELO localhost) ([10.239.48.1])
	by orsmga001.jf.intel.com with ESMTP; 13 Apr 2011 17:15:57 -0700
Message-Id: <770bf5230a97944e76bb70ca544999355e032a6c.1302739788.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1302739788.git.edwin.zhai@intel.com>
References: <cover.1302739788.git.edwin.zhai@intel.com>
Old-Date: Wed, 13 Apr 2011 13:01:29 +0800
Date: Thu, 14 Apr 2011  8:13:24 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 5/9] libcanberry: Upgrade to 0.28 (from 0.26)
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
X-List-Received-Date: Thu, 14 Apr 2011 00:15:58 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../{libcanberra_0.26.bb => libcanberra_0.28.bb}   |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-multimedia/pulseaudio/{libcanberra_0.26.bb => libcanberra_0.28.bb} (85%)

diff --git a/meta/recipes-multimedia/pulseaudio/libcanberra_0.26.bb b/meta/recipes-multimedia/pulseaudio/libcanberra_0.28.bb
similarity index 85%
rename from meta/recipes-multimedia/pulseaudio/libcanberra_0.26.bb
rename to meta/recipes-multimedia/pulseaudio/libcanberra_0.28.bb
index 0daeb0e..1922f72 100644
--- a/meta/recipes-multimedia/pulseaudio/libcanberra_0.26.bb
+++ b/meta/recipes-multimedia/pulseaudio/libcanberra_0.28.bb
@@ -11,8 +11,8 @@ inherit gconf autotools
 
 SRC_URI = "http://0pointer.de/lennart/projects/libcanberra/libcanberra-${PV}.tar.gz"
 
-SRC_URI[md5sum] = "ee2c66ada7c851a4e7b6eb1682285a24"
-SRC_URI[sha256sum] = "4b5d8d2c2835133620adbc53745dd107b6e58b9a2963059e8f457143fee00982"
+SRC_URI[md5sum] = "c198b4811598c4c161ff505e4531b02c"
+SRC_URI[sha256sum] = "eb1f8b2cabad7f07b6e44d606a91d73e1efca4b46daf92bd553e7222bc68868c"
 
 EXTRA_OECONF = " --disable-oss --disable-ltdl-install" 
 
-- 
1.7.1


