Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 11EF84C8009D
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 00:53:30 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Mar 2011 22:53:30 -0700
Message-Id: <0d30dc$lf83iv@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,193,1299484800"; d="scan'208";a="720637537"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by orsmga001.jf.intel.com with ESMTP; 15 Mar 2011 22:53:30 -0700
Old-Date: Tue, 15 Mar 2011 23:45:13 -0500
Date: Wed, 16 Mar 2011  0:53:26 -0500
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
X-List-Received-Date: Wed, 16 Mar 2011 05:53:31 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This fixes [BUGID #738] for crownbay-noemgd.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-gnome/gtk+/gtk+_2.22.1.bbappend        |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta-crownbay/recipes-gnome/gtk+/gtk+_2.22.1.bbappend b/meta-crownbay/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
index 6efeb5c..d20e233 100644
--- a/meta-crownbay/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
+++ b/meta-crownbay/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
@@ -1,2 +1,5 @@
+PR .= ".1"
+
 #-fomit-frame-pointer in default FULL_OPTIMIZATION will cause matchbox-panel segfault on crownbay
 FULL_OPTIMIZATION_crownbay = "-fexpensive-optimizations -frename-registers -O2 -ggdb -feliminate-unused-debug-types"
+FULL_OPTIMIZATION_crownbay-noemgd = "-fexpensive-optimizations -frename-registers -O2 -ggdb -feliminate-unused-debug-types"
-- 
1.7.0.4


