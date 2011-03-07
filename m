Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 514C54C800A7
	for <poky@yoctoproject.org>; Mon,  7 Mar 2011 03:00:20 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 07 Mar 2011 01:00:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,276,1297065600"; d="scan'208";a="398632508"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by azsmga001.ch.intel.com with ESMTP; 07 Mar 2011 01:00:09 -0800
Message-Id: <419b867b8d8f918fcd0ec82dc5b7cbd546745e81.1299488041.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1299488041.git.dexuan.cui@intel.com>
References: <cover.1299488041.git.dexuan.cui@intel.com>
Old-Date: Mon, 7 Mar 2011 16:47:20 +0800
Date: Mon, 07 Mar 2011 16:58:47 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 1/1] util-macros: fix DEPENDS in the case of native/nativesdk
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
X-List-Received-Date: Mon, 07 Mar 2011 09:00:20 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

This fixes [YOCTO #814]

Without the line fixing nativesdk, bitbake meta-toolchain-gmae would
get the following:

Missing or unbuildable dependency chain was: ['meta-toolchain-gmae', 'task-sdk-host', 'qemu-nativesdk', 'libsdl-nativesdk', 'libx11-nativesdk', 'util-macros-nativesdk', 'libgpg-error-nativesdk']
ERROR: Nothing PROVIDES 'libgpg-error-nativesdk'

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 .../xorg-util/util-macros_1.11.0.bb                |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/xorg-util/util-macros_1.11.0.bb b/meta/recipes-graphics/xorg-util/util-macros_1.11.0.bb
index 2bfe514..f9f9fc5 100644
--- a/meta/recipes-graphics/xorg-util/util-macros_1.11.0.bb
+++ b/meta/recipes-graphics/xorg-util/util-macros_1.11.0.bb
@@ -12,7 +12,8 @@ PR = "r0"
 
 # ${PN} is empty so we need to tweak -dev and -dbg package dependencies
 DEPENDS = "gettext libgpg-error"
-DEPENDS_virtclass-native = "gettext"
+DEPENDS_virtclass-native = "gettext-native"
+DEPENDS_virtclass-nativesdk = "gettext-nativesdk"
 
 RDEPENDS_${PN}-dev = ""
 RRECOMMENDS_${PN}-dbg = "${PN}-dev (= ${EXTENDPV})"
-- 
1.7.2


