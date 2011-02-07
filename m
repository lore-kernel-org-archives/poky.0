Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3D7424C80A7E
	for <poky@yoctoproject.org>; Mon,  7 Feb 2011 16:18:51 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Feb 2011 14:18:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,438,1291622400"; d="scan'208";a="705044847"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga001.jf.intel.com with ESMTP; 07 Feb 2011 14:18:50 -0800
Message-Id: <172a643da29979c53cbb3d46e4b414e35779d607.1297117094.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1297117094.git.scott.a.garman@intel.com>
References: <cover.1297117094.git.scott.a.garman@intel.com>
Old-Date: Mon, 7 Feb 2011 14:14:00 -0800
Date: Mon, 07 Feb 2011 14:19:57 -0800
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
X-List-Received-Date: Mon, 07 Feb 2011 22:18:51 -0000

From: Scott Garman <scott.a.garman@intel.com>

This fixes the following configure error:
No suitable SHA1 implementation found

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../xorg-xserver/xserver-kdrive.inc                |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

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
 
-- 
1.7.4


