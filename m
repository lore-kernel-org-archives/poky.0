Return-Path: <edwin.zhai@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 425084C811E7
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 10:08:21 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 Nov 2010 08:08:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,261,1288594800"; d="scan'208";a="353589789"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by azsmga001.ch.intel.com with ESMTP; 26 Nov 2010 08:08:20 -0800
Message-Id: <5380f91dedaf3936f02b1086f0130c9c2bfaf763.1290787706.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290787706.git.edwin.zhai@intel.com>
References: <cover.1290787706.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 26 Nov 2010 23:36:21 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 09/11] matchbox-session-sato: Add license checksum
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
X-List-Received-Date: Fri, 26 Nov 2010 16:08:21 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../matchbox-sato/matchbox-session-sato_0.1.bb     |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-sato/matchbox-sato/matchbox-session-sato_0.1.bb b/meta/recipes-sato/matchbox-sato/matchbox-session-sato_0.1.bb
index 5c01a13..96d644c 100644
--- a/meta/recipes-sato/matchbox-sato/matchbox-session-sato_0.1.bb
+++ b/meta/recipes-sato/matchbox-sato/matchbox-session-sato_0.1.bb
@@ -3,6 +3,7 @@ HOMEPAGE = "http://www.matchbox-project.org/"
 BUGTRACKER = "http://bugzilla.openedhand.com/"
 
 LICENSE = "GPL"
+LIC_FILES_CHKSUM = "file://session;endline=3;md5=f8a5c5b9c279e52dc094d10e11c2be63"
 
 SECTION = "x11"
 RDEPENDS = "formfactor gtk-sato-engine matchbox-theme-sato gtk-theme-sato matchbox-panel-2 matchbox-desktop-sato initscripts matchbox-session"
-- 
1.7.0.4


