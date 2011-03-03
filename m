Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 166924C80050
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 16:49:18 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Mar 2011 14:49:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,260,1297065600"; d="scan'208";a="715899296"
Received: from unknown (HELO localhost) ([10.255.12.102])
	by orsmga001.jf.intel.com with ESMTP; 03 Mar 2011 14:49:18 -0800
Message-Id: <10b7f170693dd6217b2f6a75893be872082696f9.1299192495.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299192495.git.sgw@linux.intel.com>
References: <cover.1299192495.git.sgw@linux.intel.com>
Old-Date: Thu, 3 Mar 2011 19:54:09 +0800
Date: Thu, 03 Mar 2011 14:49:18 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 02/10] x11vnc: Fix the start failure
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
X-List-Received-Date: Thu, 03 Mar 2011 22:49:19 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Default parameter "-gui" and "-rfbport" make x11vnc failed to start if no
"wish" installed.

[BUGID #781] got fixed.

[sgw: removed patch=1, as it's unneeded]
Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../x11vnc/files/starting-fix.patch                |   18 ++++++++++++++++++
 meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb      |    3 ++-
 2 files changed, 20 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-graphics/x11vnc/files/starting-fix.patch

diff --git a/meta/recipes-graphics/x11vnc/files/starting-fix.patch b/meta/recipes-graphics/x11vnc/files/starting-fix.patch
new file mode 100644
index 0000000..f59e801
--- /dev/null
+++ b/meta/recipes-graphics/x11vnc/files/starting-fix.patch
@@ -0,0 +1,18 @@
+"-gui" & "-rfbport" require "wish" installed, or else x11vnc fails to start.
+Removing these 2 parameters makes x11vnc works well on poky sato image.
+
+
+Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
+Index: x11vnc-0.9.12/x11vnc/x11vnc.desktop
+===================================================================
+--- x11vnc-0.9.12.orig/x11vnc/x11vnc.desktop	2011-03-03 10:33:18.000000000 +0800
++++ x11vnc-0.9.12/x11vnc/x11vnc.desktop	2011-03-03 10:35:20.000000000 +0800
+@@ -1,7 +1,7 @@
+ [Desktop Entry]
+ Name=X11VNC Server
+ Comment=Share this desktop by VNC
+-Exec=x11vnc -gui tray=setpass -rfbport PROMPT -bg -o %%HOME/.x11vnc.log.%%VNCDISPLAY
++Exec=x11vnc -bg -o %%HOME/.x11vnc.log.%%VNCDISPLAY
+ Icon=computer
+ Terminal=false
+ Type=Application
diff --git a/meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb b/meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb
index 87cda2c..f5a6662 100644
--- a/meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb
+++ b/meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb
@@ -9,7 +9,8 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=361b6b837cad26c6900a926b62aada5f \
 
 DEPENDS = "openssl virtual/libx11 libxext avahi jpeg zlib"
 
-SRC_URI = "${SOURCEFORGE_MIRROR}/libvncserver/x11vnc-${PV}.tar.gz"
+SRC_URI = "${SOURCEFORGE_MIRROR}/libvncserver/x11vnc-${PV}.tar.gz\
+           file://starting-fix.patch"
 
 SRC_URI[md5sum] = "1498a68d02aa7b6c97bf746c073c8d00"
 SRC_URI[sha256sum] = "60a7cceee2c9a5f1c854340b2bae13f975ac55906237042f81f795b28a154a79"
-- 
1.7.1.1


