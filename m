Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 34A624C81209
	for <poky@yoctoproject.org>; Sun, 23 Jan 2011 22:24:06 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Jan 2011 20:24:05 -0800
Message-Id: <0d30dc$krcrmm@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,368,1291622400"; d="scan'208";a="699821784"
Received: from unknown (HELO localhost) ([10.255.14.50])
	by orsmga001.jf.intel.com with ESMTP; 23 Jan 2011 20:23:57 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
Old-Date: Thu, 20 Jan 2011 23:47:27 -0600
Date: Sun, 23 Jan 2011 22:23:51 -0600
To: poky@yoctoproject.org,bruce.ashfield@windriver.com
Subject: [PATCH 5/6] emenlow: switch to psb
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
X-List-Received-Date: Mon, 24 Jan 2011 04:24:06 -0000

Use drm-psb instead of drm for emenlow.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/Makefile  |    2 +-
 drivers/video/Kconfig |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/Makefile b/drivers/gpu/Makefile
index cc92778..7585044 100644
--- a/drivers/gpu/Makefile
+++ b/drivers/gpu/Makefile
@@ -1 +1 @@
-obj-y			+= drm/ vga/ stub/
+obj-y			+= drm-psb/ vga/ stub/
diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 27c1fb4..156eb48 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -15,7 +15,7 @@ source "drivers/char/agp/Kconfig"
 
 source "drivers/gpu/vga/Kconfig"
 
-source "drivers/gpu/drm/Kconfig"
+source "drivers/gpu/drm-psb/Kconfig"
 
 source "drivers/gpu/stub/Kconfig"
 
-- 
1.7.0.4


