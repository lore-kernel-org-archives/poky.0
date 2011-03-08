Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 954404C80AA9
	for <poky@yoctoproject.org>; Mon,  7 Mar 2011 18:29:36 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 07 Mar 2011 16:29:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,280,1297065600"; d="scan'208";a="399048515"
Received: from unknown (HELO localhost) ([10.255.12.99])
	by azsmga001.ch.intel.com with ESMTP; 07 Mar 2011 16:29:35 -0800
Message-Id: <0c04b8bd89465d186d0ccb6912e7c08aae506541.1299544029.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299544029.git.sgw@linux.intel.com>
References: <cover.1299544029.git.sgw@linux.intel.com>
Old-Date: Mon, 7 Mar 2011 16:47:20 +0800
Date: Mon, 07 Mar 2011 16:29:34 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
X-Mailman-Approved-At: Mon, 07 Mar 2011 18:30:15 -0600
Subject: [PATCH 6/8] util-macros: fix DEPENDS in the case of native/nativesdk
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
X-List-Received-Date: Tue, 08 Mar 2011 00:29:36 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

This fixes [YOCTO #814]

Without the line fixing nativesdk, bitbake meta-toolchain-gmae would
get the following:

Missing or unbuildable dependency chain was: ['meta-toolchain-gmae', 'task-sdk-host', 'qemu-nativesdk', 'libsdl-nativesdk', 'libx11-nativesdk', 'util-macros-nativesdk', 'libgpg-error-nativesdk']
ERROR: Nothing PROVIDES 'libgpg-error-nativesdk'

[sgw: inherit gettext]
Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../xorg-util/util-macros_1.11.0.bb                |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-graphics/xorg-util/util-macros_1.11.0.bb b/meta/recipes-graphics/xorg-util/util-macros_1.11.0.bb
index 2bfe514..10de96c 100644
--- a/meta/recipes-graphics/xorg-util/util-macros_1.11.0.bb
+++ b/meta/recipes-graphics/xorg-util/util-macros_1.11.0.bb
@@ -11,12 +11,13 @@ PE = "1"
 PR = "r0"
 
 # ${PN} is empty so we need to tweak -dev and -dbg package dependencies
-DEPENDS = "gettext libgpg-error"
-DEPENDS_virtclass-native = "gettext"
+DEPENDS = "libgpg-error"
 
 RDEPENDS_${PN}-dev = ""
 RRECOMMENDS_${PN}-dbg = "${PN}-dev (= ${EXTENDPV})"
 
+inherit gettext
+
 BBCLASSEXTEND = "native nativesdk"
 
 SRC_URI[md5sum] = "8580021f3a9e242ab09d23d62e475d53"
-- 
1.7.1.1


