Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id DABF44C80A7C
	for <poky@yoctoproject.org>; Mon,  7 Feb 2011 17:35:16 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 07 Feb 2011 15:35:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,439,1291622400"; d="scan'208";a="600353062"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga002.jf.intel.com with ESMTP; 07 Feb 2011 15:35:16 -0800
Message-Id: <ca33ebdc0731c06f451ece0b7a9694e0e7b5b02a.1297121546.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1297121546.git.scott.a.garman@intel.com>
References: <cover.1297121546.git.scott.a.garman@intel.com>
Old-Date: Sun, 6 Feb 2011 20:42:12 -0800
Date: Mon, 07 Feb 2011 15:36:23 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 3/6] libxpm: add native support to recipe
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

The native recipe is needed by the transfig-native dependency chain.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-graphics/xorg-lib/libxpm_3.5.9.bb |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/xorg-lib/libxpm_3.5.9.bb b/meta/recipes-graphics/xorg-lib/libxpm_3.5.9.bb
index 1a548fa..a4b3c0d 100644
--- a/meta/recipes-graphics/xorg-lib/libxpm_3.5.9.bb
+++ b/meta/recipes-graphics/xorg-lib/libxpm_3.5.9.bb
@@ -21,3 +21,5 @@ FILES_sxpm = "${bindir}/sxpm"
 
 SRC_URI[md5sum] = "2de3a1b9541f4b3a6f9d84b69d25530e"
 SRC_URI[sha256sum] = "8add01029cab0598ca86e01a2f7781a636f74b757abe6b50ba61b2a6e2fd621e"
+
+BBCLASSEXTEND = "native"
-- 
1.7.4


