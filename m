Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B4E274C80053
	for <poky@yoctoproject.org>; Wed,  9 Feb 2011 22:30:12 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 Feb 2011 20:30:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,450,1291622400"; d="scan'208";a="601195600"
Received: from fear.jf.intel.com (HELO localhost) ([10.7.201.75])
	by orsmga002.jf.intel.com with ESMTP; 09 Feb 2011 20:30:07 -0800
Message-Id: <2b62c0d3109b48892d1664778cf52d72ee013096.1297312726.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1297312726.git.dvhart@linux.intel.com>
References: <cover.1297312726.git.dvhart@linux.intel.com>
Old-Date: Wed, 9 Feb 2011 20:35:47 -0800
Date: Wed, 09 Feb 2011 20:39:55 -0800
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH] xkeyboard-config: make depend on intltool-native
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
X-List-Received-Date: Thu, 10 Feb 2011 04:30:13 -0000

From: Darren Hart <dvhart@linux.intel.com>

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/build
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/build

The xkeyboard-config listed intltool as a dependency, when in fact
it requires intltool-native in order to complete the do_configure
task.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Saul Wold <sgw@linux.intel.com>
---
 .../xorg-lib/xkeyboard-config_2.1.bb               |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.bb b/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.bb
index e0aa799..b077fa3 100644
--- a/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.bb
+++ b/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.bb
@@ -17,9 +17,9 @@ SRC_URI[md5sum] = "6ce65480445fb2d9c071ad1f002a7675"
 SRC_URI[sha256sum] = "e293aa4b0dd259dbb4f0e7f56fdd95db5047d052c7b3b80922fe5663923a805d"
 
 SECTION = "x11/libs"
-DEPENDS = "intltool xkbcomp-native glib-2.0"
+DEPENDS = "intltool-native xkbcomp-native glib-2.0"
 
-PR = "r0"
+PR = "r1"
 
 EXTRA_OECONF = "--with-xkb-rules-symlink=xorg"
 
-- 
1.7.0.4


