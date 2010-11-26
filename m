Return-Path: <edwin.zhai@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 005D94C811D7
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 10:08:15 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 Nov 2010 08:08:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,261,1288594800"; d="scan'208";a="577900957"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by orsmga002.jf.intel.com with ESMTP; 26 Nov 2010 08:08:15 -0800
Message-Id: <2ce7fdb60cb46c36bfc9eb5d4fdea67fcd47f052.1290787706.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290787706.git.edwin.zhai@intel.com>
References: <cover.1290787706.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 26 Nov 2010 22:53:19 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 05/11] matchbox-wm-2: Add license checksum
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
X-List-Received-Date: Fri, 26 Nov 2010 16:08:16 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../matchbox-wm-2/matchbox-wm-2_svn.bb             |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/matchbox-wm-2/matchbox-wm-2_svn.bb b/meta/recipes-graphics/matchbox-wm-2/matchbox-wm-2_svn.bb
index f67e060..9c5cd93 100644
--- a/meta/recipes-graphics/matchbox-wm-2/matchbox-wm-2_svn.bb
+++ b/meta/recipes-graphics/matchbox-wm-2/matchbox-wm-2_svn.bb
@@ -1,6 +1,8 @@
 SECTION = "x11/wm"
 DESCRIPTION = "Matchbox window manager"
-LICENSE = "GPL"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://matchbox/core/mb-wm.h;endline=21;md5=1b1d328a527906350ea7ce7ab1bb7564"
+
 DEPENDS = "virtual/libx11 libxext libxrender startup-notification expat gconf pango libxdamage libxcomposite gtk+"
 
 PV = "0.0+svnr${SRCREV}"
-- 
1.7.0.4


