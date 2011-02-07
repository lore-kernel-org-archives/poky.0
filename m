Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0E46E4C80A7A
	for <poky@yoctoproject.org>; Mon,  7 Feb 2011 17:35:16 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 07 Feb 2011 15:35:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,439,1291622400"; d="scan'208";a="705066001"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga001.jf.intel.com with ESMTP; 07 Feb 2011 15:35:16 -0800
Message-Id: <bf9abd212857ef74ab91d51d457a64d8874f4c90.1297121546.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1297121546.git.scott.a.garman@intel.com>
References: <cover.1297121546.git.scott.a.garman@intel.com>
Old-Date: Sun, 6 Feb 2011 20:38:50 -0800
Date: Mon, 07 Feb 2011 15:36:23 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 1/6] xorg-cf-files: new recipe v1.0.4
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
X-List-Received-Date: Mon, 07 Feb 2011 23:35:17 -0000

From: Scott Garman <scott.a.garman@intel.com>

This package includes configuration files needed for old x11
imake-based packages - transfig in particular.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../xorg-util/xorg-cf-files_1.0.4.bb               |   14 ++++++++++++++
 1 files changed, 14 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-graphics/xorg-util/xorg-cf-files_1.0.4.bb

diff --git a/meta/recipes-graphics/xorg-util/xorg-cf-files_1.0.4.bb b/meta/recipes-graphics/xorg-util/xorg-cf-files_1.0.4.bb
new file mode 100644
index 0000000..a5de00a
--- /dev/null
+++ b/meta/recipes-graphics/xorg-util/xorg-cf-files_1.0.4.bb
@@ -0,0 +1,14 @@
+require xorg-util-common.inc
+
+SUMMARY = "Data files for the imake utility"
+DESCRIPTION = "Data files for the imake utility"
+LIC_FILES_CHKSUM = "file://COPYING;md5=0f334a06f2de517e37e86d6757167d88"
+
+DEPENDS = "font-util"
+
+PR = "r0"
+
+SRC_URI[md5sum] = "ff4502b6e31aac90e24ce134090d0e46"
+SRC_URI[sha256sum] = "8fc8a1224d2a716b1f3f1ca85dfda02387ab215251b8eddd03551eac998c9cb8"
+
+BBCLASSEXTEND = "native"
-- 
1.7.4


