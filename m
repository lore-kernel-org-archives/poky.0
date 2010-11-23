Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C349D4C81065
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 04:07:06 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Nov 2010 02:07:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="680165684"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by orsmga001.jf.intel.com with ESMTP; 23 Nov 2010 02:07:05 -0800
Message-Id: <201f0e77238af434064c752c4835788c52767cc1.1290506494.git.lei.mei@intel.com>
In-Reply-To: <cover.1290506494.git.lei.mei@intel.com>
References: <cover.1290506494.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Tue, 23 Nov 2010 14:04:11 +0800
To: poky@yoctoproject.org
Subject: [PATCH 04/25] libart-lgpl:Add license file checksum and update the GPL information
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
X-List-Received-Date: Tue, 23 Nov 2010 10:07:06 -0000

Add COPYING file checksum and update the "LGPL" to "LGPLv2" according to COPYING file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-gnome/gnome/libart-lgpl_2.3.19.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-gnome/gnome/libart-lgpl_2.3.19.bb b/meta/recipes-gnome/gnome/libart-lgpl_2.3.19.bb
index fa565f3..3bdd697 100644
--- a/meta/recipes-gnome/gnome/libart-lgpl_2.3.19.bb
+++ b/meta/recipes-gnome/gnome/libart-lgpl_2.3.19.bb
@@ -1,6 +1,7 @@
 DESCRIPTION = "Library of functions for 2D graphics"
 SECTION = "x11/gnome"
-LICENSE = "LGPL"
+LICENSE = "LGPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7"
 PR = "r1"
 
 ART_CONFIG = "${HOST_ARCH}/art_config.h"
-- 
1.6.3.3


