Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7BDF74C80A50
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 14:06:35 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Feb 2011 12:06:34 -0800
Message-Id: <849307$bkqj5g@azsmga001.ch.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,188,1297065600"; d="scan'208";a="390941882"
Received: from unknown (HELO localhost) ([10.255.12.33])
	by azsmga001.ch.intel.com with ESMTP; 18 Feb 2011 12:06:34 -0800
Old-Date: Thu, 17 Feb 2011 20:09:56 -0600
Date: Fri, 18 Feb 2011 14:06:17 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH] crownbay: fix matchbox-panel segfault
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
X-List-Received-Date: Fri, 18 Feb 2011 20:06:35 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This fixes [BUGID #738].

matchbox-panel[437]: segfault at c ip 4715bbed sp bff6e580 error 4 in
libgdk-x11-2.0.so.0.2000.1[470f6000+90000]

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-gnome/gtk+/gtk+_2.22.1.bbappend        |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)
 create mode 100644 meta-crownbay/recipes-gnome/gtk+/gtk+_2.22.1.bbappend

diff --git a/meta-crownbay/recipes-gnome/gtk+/gtk+_2.22.1.bbappend b/meta-crownbay/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
new file mode 100644
index 0000000..6efeb5c
--- /dev/null
+++ b/meta-crownbay/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
@@ -0,0 +1,2 @@
+#-fomit-frame-pointer in default FULL_OPTIMIZATION will cause matchbox-panel segfault on crownbay
+FULL_OPTIMIZATION_crownbay = "-fexpensive-optimizations -frename-registers -O2 -ggdb -feliminate-unused-debug-types"
-- 
1.7.0.4


