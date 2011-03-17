Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 526E54C805A8
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 23:04:03 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Mar 2011 21:04:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,197,1299484800"; d="scan'208";a="898115483"
Received: from unknown (HELO localhost) ([10.255.12.146])
	by fmsmga001.fm.intel.com with ESMTP; 16 Mar 2011 21:04:02 -0700
Message-Id: <49bffc5de0226fb1a215200d800189aaf286970b.1300334468.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1300334468.git.dvhart@linux.intel.com>
References: <cover.1300334468.git.dvhart@linux.intel.com>
Old-Date: Wed, 16 Mar 2011 20:13:12 -0700
Date: Wed, 16 Mar 2011 21:03:33 -0700
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>,
	Richard Purdie <richard.purdie@intel.com>
Subject: [PATCH 1/1] gtk+: remove per-machine gtk+ FULL_OPTIMIZATION in favor of tune-atom.inc
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
X-List-Received-Date: Thu, 17 Mar 2011 04:04:03 -0000

From: Darren Hart <dvhart@linux.intel.com>

Now that the FULL_OPTIMIZATION for gtk+ has been enabled in the core
tune-atom.inc, it is no longer necessary to do so for every atom based
bsp.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
CC: Ke Yu <ke.yu@intel.com>
CC: Richard Purdie <richard.purdie@intel.com>
---
 .../recipes-gnome/gtk+/gtk+_2.22.1.bbappend        |    5 -----
 meta-n450/recipes-gnome/gtk+/gtk+_2.22.1.bbappend  |    2 --
 2 files changed, 0 insertions(+), 7 deletions(-)
 delete mode 100644 meta-crownbay/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
 delete mode 100644 meta-n450/recipes-gnome/gtk+/gtk+_2.22.1.bbappend

diff --git a/meta-crownbay/recipes-gnome/gtk+/gtk+_2.22.1.bbappend b/meta-crownbay/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
deleted file mode 100644
index d20e233..0000000
--- a/meta-crownbay/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
+++ /dev/null
@@ -1,5 +0,0 @@
-PR .= ".1"
-
-#-fomit-frame-pointer in default FULL_OPTIMIZATION will cause matchbox-panel segfault on crownbay
-FULL_OPTIMIZATION_crownbay = "-fexpensive-optimizations -frename-registers -O2 -ggdb -feliminate-unused-debug-types"
-FULL_OPTIMIZATION_crownbay-noemgd = "-fexpensive-optimizations -frename-registers -O2 -ggdb -feliminate-unused-debug-types"
diff --git a/meta-n450/recipes-gnome/gtk+/gtk+_2.22.1.bbappend b/meta-n450/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
deleted file mode 100644
index 3af4187..0000000
--- a/meta-n450/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-#-fomit-frame-pointer in default FULL_OPTIMIZATION will cause matchbox-panel segfault on n450
-FULL_OPTIMIZATION_n450 = "-fexpensive-optimizations -frename-registers -O2 -ggdb -feliminate-unused-debug-types"
-- 
1.7.1


