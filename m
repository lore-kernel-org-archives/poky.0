Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B057C4C80093
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 20:28:18 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Feb 2011 18:28:11 -0800
Message-Id: <0d30dc$l4e0v6@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,184,1297065600"; d="scan'208";a="709297133"
Received: from unknown (HELO localhost) ([10.255.12.33])
	by orsmga001.jf.intel.com with ESMTP; 17 Feb 2011 18:28:10 -0800
Old-Date: Thu, 17 Feb 2011 20:09:56 -0600
Date: Thu, 17 Feb 2011 20:27:55 -0600
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
X-List-Received-Date: Fri, 18 Feb 2011 02:28:18 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This fixes [BUGID #738].

matchbox-panel[437]: segfault at c ip 4715bbed sp bff6e580 error 4 in
libgdk-x11-2.0.so.0.2000.1[470f6000+90000]

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-gnome/gtk+/gtk+_2.20.1.bbappend        |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)
 create mode 100644 meta-crownbay/recipes-gnome/gtk+/gtk+_2.20.1.bbappend

diff --git a/meta-crownbay/recipes-gnome/gtk+/gtk+_2.20.1.bbappend b/meta-crownbay/recipes-gnome/gtk+/gtk+_2.20.1.bbappend
new file mode 100644
index 0000000..74a5f79
--- /dev/null
+++ b/meta-crownbay/recipes-gnome/gtk+/gtk+_2.20.1.bbappend
@@ -0,0 +1,2 @@
+#-fomit-frame-pointer in default FULL_OPTIMIZATION will cause matchbox-panel segfault on atom-pc & emenlow
+FULL_OPTIMIZATION_crownbay = "-fexpensive-optimizations -frename-registers -O2 -ggdb -feliminate-unused-debug-types"
-- 
1.7.0.4


