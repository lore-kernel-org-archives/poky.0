Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 24B934C806DA
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 11:37:38 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Mar 2011 09:37:37 -0700
Message-Id: <b9dded$i9a6ap@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,195,1299484800"; d="scan'208";a="613751140"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by orsmga002.jf.intel.com with ESMTP; 16 Mar 2011 09:37:37 -0700
Old-Date: Wed, 16 Mar 2011 11:18:19 -0500
Date: Wed, 16 Mar 2011 11:37:33 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/1] crownbay-noemgd: fix matchbox-panel segfault
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
X-List-Received-Date: Wed, 16 Mar 2011 16:37:38 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This fixes [BUGID #738] for crownbay-noemgd.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-gnome/gtk+/gtk+_2.20.1.bbappend        |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/meta-crownbay/recipes-gnome/gtk+/gtk+_2.20.1.bbappend b/meta-crownbay/recipes-gnome/gtk+/gtk+_2.20.1.bbappend
index 74a5f79..d20e233 100644
--- a/meta-crownbay/recipes-gnome/gtk+/gtk+_2.20.1.bbappend
+++ b/meta-crownbay/recipes-gnome/gtk+/gtk+_2.20.1.bbappend
@@ -1,2 +1,5 @@
-#-fomit-frame-pointer in default FULL_OPTIMIZATION will cause matchbox-panel segfault on atom-pc & emenlow
+PR .= ".1"
+
+#-fomit-frame-pointer in default FULL_OPTIMIZATION will cause matchbox-panel segfault on crownbay
 FULL_OPTIMIZATION_crownbay = "-fexpensive-optimizations -frename-registers -O2 -ggdb -feliminate-unused-debug-types"
+FULL_OPTIMIZATION_crownbay-noemgd = "-fexpensive-optimizations -frename-registers -O2 -ggdb -feliminate-unused-debug-types"
-- 
1.7.0.4


