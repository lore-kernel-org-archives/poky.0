Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 665E24C81262
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 17:41:30 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 15:41:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="701466192"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by orsmga001.jf.intel.com with ESMTP; 27 Jan 2011 15:41:29 -0800
Message-Id: <9afafed458d3432cd09ec462d917e723997f8bac.1296171289.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1296171287.git.dexuan.cui@intel.com>
References: <cover.1296171287.git.dexuan.cui@intel.com>
Old-Date: Fri, 28 Jan 2011 00:40:40 +0800
Date: Fri, 28 Jan 2011  7:40:49 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [Dexuan: Jan 28: PULL 07/16] dmxproto: upgrade from 2.3 to 2.3.1
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
X-List-Received-Date: Thu, 27 Jan 2011 23:41:30 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../{dmxproto_2.3.bb => dmxproto_2.3.1.bb}         |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-graphics/xorg-proto/{dmxproto_2.3.bb => dmxproto_2.3.1.bb} (59%)

diff --git a/meta/recipes-graphics/xorg-proto/dmxproto_2.3.bb b/meta/recipes-graphics/xorg-proto/dmxproto_2.3.1.bb
similarity index 59%
rename from meta/recipes-graphics/xorg-proto/dmxproto_2.3.bb
rename to meta/recipes-graphics/xorg-proto/dmxproto_2.3.1.bb
index da62629..94c81f0 100644
--- a/meta/recipes-graphics/xorg-proto/dmxproto_2.3.bb
+++ b/meta/recipes-graphics/xorg-proto/dmxproto_2.3.1.bb
@@ -4,8 +4,8 @@ LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=a3c3499231a8035efd0e004cfbd3b72a \
                     file://dmxproto.h;endline=32;md5=ab8509955c3dd4c65fac728e1b367bc4"
 
-PR = "r1"
+PR = "r0"
 PE = "1"
 
-SRC_URI[md5sum] = "880a41720b2937e2660dcdc0d34a8791"
-SRC_URI[sha256sum] = "3a882ca43a1f359e3489468e6c407fd7d56d559f8895cf096a2ec877d6c403b0"
+SRC_URI[md5sum] = "4ee175bbd44d05c34d43bb129be5098a"
+SRC_URI[sha256sum] = "e72051e6a3e06b236d19eed56368117b745ca1e1a27bdc50fd51aa375bea6509"
-- 
1.7.2


