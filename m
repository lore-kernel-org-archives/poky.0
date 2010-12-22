Return-Path: <edwin.zhai@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A7EF94C808B0
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 07:32:09 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 Dec 2010 05:32:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,213,1291622400"; d="scan'208";a="689735652"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.31])
	by orsmga001.jf.intel.com with ESMTP; 22 Dec 2010 05:32:08 -0800
Message-Id: <cbd312f37f4d18946dacdf1954cda03ba3c1a19c.1293024880.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1293024880.git.edwin.zhai@intel.com>
References: <cover.1293024880.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Wed, 22 Dec 2010 20:53:50 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/3] matchbox-keyboard: Make as singleton
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
X-List-Received-Date: Wed, 22 Dec 2010 13:32:09 -0000

Multiple matchbox-keyboard instances would occupy whole screen and cause X
window segfault. Making matchbox-keyboard singleton is one work around.

This patch allow only one instance of matchbox-keyboard based on some mechanism
in matchbox-desktop. In future, an applet and GTK-IM modules in
matchbox-keyboard can be used to automatically map/unmap the virtual keyboard
on demand.

[BUGID #509] got fixed.


Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../matchbox-keyboard/files/single-instance.patch  |   22 ++++++++++++++++++++
 .../matchbox-keyboard/matchbox-keyboard_svn.bb     |    1 +
 2 files changed, 23 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-sato/matchbox-keyboard/files/single-instance.patch

diff --git a/meta/recipes-sato/matchbox-keyboard/files/single-instance.patch b/meta/recipes-sato/matchbox-keyboard/files/single-instance.patch
new file mode 100644
index 0000000..d0adc47
--- /dev/null
+++ b/meta/recipes-sato/matchbox-keyboard/files/single-instance.patch
@@ -0,0 +1,22 @@
+Multiple matchbox-keyboard instances would occupy whole screen and cause X
+window segfault(Bug 509). Making matchbox-keyboard singleton is one work
+around.
+
+This patch allow only one instance of matchbox-keyboard based on some mechanism
+in matchbox-desktop. In future, an applet and GTK-IM modules in
+matchbox-keyboard can be used to automatically map/unmap the virtual keyboard
+on demand.
+
+Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
+
+
+Index: matchbox-keyboard/matchbox-keyboard.desktop
+===================================================================
+--- matchbox-keyboard.orig/matchbox-keyboard.desktop	2010-12-22 20:41:40.000000000 +0800
++++ matchbox-keyboard/matchbox-keyboard.desktop	2010-12-22 20:42:12.000000000 +0800
+@@ -6,3 +6,5 @@
+ Icon=matchbox-keyboard.png
+ Categories=Panel;Utility;MB
+ X-MB-INPUT-MECHANSIM=True
++X-MB-SingleInstance=true
++StartupNotify=true
diff --git a/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_svn.bb b/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_svn.bb
index 0425fec..337738e 100644
--- a/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_svn.bb
+++ b/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_svn.bb
@@ -15,6 +15,7 @@ PR = "r4"
 
 SRC_URI = "svn://svn.o-hand.com/repos/matchbox/trunk;module=${PN};proto=http \
            file://configure_fix.patch;patch=1;maxrev=1819 \
+           file://single-instance.patch;patch=1 \
 	   file://80matchboxkeyboard.shbg"
 
 S = "${WORKDIR}/${PN}"
-- 
1.7.0.4


