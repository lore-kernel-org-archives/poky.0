Return-Path: <edwin.zhai@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8AF9B4C811CF
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 10:08:22 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 26 Nov 2010 08:08:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,261,1288594800"; d="scan'208";a="681310663"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by orsmga001.jf.intel.com with ESMTP; 26 Nov 2010 08:08:21 -0800
Message-Id: <e3f2e1a6ed03bdcb06d3c8a322e349a74eac427c.1290787706.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290787706.git.edwin.zhai@intel.com>
References: <cover.1290787706.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 26 Nov 2010 23:43:11 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 10/11] matchbox-stroke: Add license checksum
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
X-List-Received-Date: Fri, 26 Nov 2010 16:08:22 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../matchbox-stroke/matchbox-stroke_svn.bb         |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-sato/matchbox-stroke/matchbox-stroke_svn.bb b/meta/recipes-sato/matchbox-stroke/matchbox-stroke_svn.bb
index f362655..1e25369 100644
--- a/meta/recipes-sato/matchbox-stroke/matchbox-stroke_svn.bb
+++ b/meta/recipes-sato/matchbox-stroke/matchbox-stroke_svn.bb
@@ -3,6 +3,7 @@ HOMEPAGE = "http://matchbox-project.org"
 BUGTRACKER = "http://bugzilla.openedhand.com/"
 
 LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://src/matchbox-stroke.h;endline=12;md5=8ed5c5bbec2321fbf5d31bdd55af03aa"
 
 DEPENDS = "libfakekey expat libxft"
 SECTION = "x11/wm"
-- 
1.7.0.4


