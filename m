Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F09A4C811EC
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:27:06 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 23 Dec 2010 06:27:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="639786505"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by fmsmga002.fm.intel.com with ESMTP; 23 Dec 2010 06:27:06 -0800
Message-Id: <7a264b11a5e0dd7bd8e9a5379c11a0bb11a7ed89.1293114004.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293114003.git.sgw@linux.intel.com>
References: <cover.1293114003.git.sgw@linux.intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Old-Date: Wed, 22 Dec 2010 20:53:50 +0800
Date: Thu, 23 Dec 2010  6:27:05 -0800
To: poky@yoctoproject.org
Subject: [PATCH 06/28] matchbox-keyboard: Make as singleton
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
X-List-Received-Date: Thu, 23 Dec 2010 14:27:07 -0000

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
1.7.2.3


