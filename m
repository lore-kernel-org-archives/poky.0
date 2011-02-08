Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 035764C8032C
	for <poky@yoctoproject.org>; Mon,  7 Feb 2011 19:03:00 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 07 Feb 2011 17:03:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,439,1291622400"; d="scan'208";a="600375179"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga002.jf.intel.com with ESMTP; 07 Feb 2011 17:03:00 -0800
Message-Id: <2f3ac80e89a0f0d1679e8c6914b2203fcd53d354.1297126971.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1297126971.git.scott.a.garman@intel.com>
References: <cover.1297126971.git.scott.a.garman@intel.com>
Old-Date: Mon, 7 Feb 2011 14:14:00 -0800
Date: Mon, 07 Feb 2011 17:04:07 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 1/1] xserver-kdrive.inc: add openssl to DEPENDS
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
X-List-Received-Date: Tue, 08 Feb 2011 01:03:01 -0000

From: Scott Garman <scott.a.garman@intel.com>

This fixes the following configure error:
No suitable SHA1 implementation found

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../xorg-xserver/xserver-kdrive.inc                |    2 +-
 .../xorg-xserver/xserver-kdrive_1.7.99.2.bb        |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-graphics/xorg-xserver/xserver-kdrive.inc b/meta/recipes-graphics/xorg-xserver/xserver-kdrive.inc
index 920c032..52b63ed 100644
--- a/meta/recipes-graphics/xorg-xserver/xserver-kdrive.inc
+++ b/meta/recipes-graphics/xorg-xserver/xserver-kdrive.inc
@@ -2,7 +2,7 @@ LICENSE = "MIT"
 DEPENDS = "compositeproto damageproto fixesproto recordproto resourceproto \
         scrnsaverproto xineramaproto videoproto xextproto xproto libxau libxext \
         libxdmcp libxfont libxrandr tslib virtual/libx11 xtrans bigreqsproto \
-        xcmiscproto libdrm"
+        xcmiscproto libdrm openssl"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=3dd2bbe3563837f80ed8926b06c1c353"
 
diff --git a/meta/recipes-graphics/xorg-xserver/xserver-kdrive_1.7.99.2.bb b/meta/recipes-graphics/xorg-xserver/xserver-kdrive_1.7.99.2.bb
index ea3268e..f6a0d83 100644
--- a/meta/recipes-graphics/xorg-xserver/xserver-kdrive_1.7.99.2.bb
+++ b/meta/recipes-graphics/xorg-xserver/xserver-kdrive_1.7.99.2.bb
@@ -7,7 +7,7 @@ RDEPENDS_${PN} += "xkeyboard-config"
 EXTRA_OECONF += "--disable-glx"
 
 PE = "1"
-PR = "r25"
+PR = "r26"
 
 SRC_URI = "${XORG_MIRROR}/individual/xserver/xorg-server-${PV}.tar.bz2 \
 	file://extra-kmodes.patch;patch=1 \
-- 
1.7.4


