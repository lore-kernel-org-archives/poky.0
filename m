Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 100CA4C811E4
	for <poky@yoctoproject.org>; Sat, 29 Jan 2011 21:34:58 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 29 Jan 2011 19:34:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,398,1291622400"; d="scan'208";a="597722148"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga002.jf.intel.com with ESMTP; 29 Jan 2011 19:34:57 -0800
Message-Id: <d8553a4f9bc4c06ce427f12171ce098e67a19d77.1296359355.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1296359355.git.dongxiao.xu@intel.com>
References: <cover.1296359355.git.dongxiao.xu@intel.com>
Old-Date: Sun, 30 Jan 2011 11:46:48 +0800
Date: Sun, 30 Jan 2011 11:51:41 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 1/1] xserver-kdrive: add missing RDEPENDS of hal
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
X-List-Received-Date: Sun, 30 Jan 2011 03:34:59 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

I met the qemuarm X boot failure due to the missing of libhal.so.1,
so add RDEPENDS of hal in xserver-kdrive.
Thanks Kevin for suggestions on finding the cause of this issue.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../xorg-xserver/xserver-kdrive_1.7.99.2.bb        |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/xorg-xserver/xserver-kdrive_1.7.99.2.bb b/meta/recipes-graphics/xorg-xserver/xserver-kdrive_1.7.99.2.bb
index ea3268e..6d28c98 100644
--- a/meta/recipes-graphics/xorg-xserver/xserver-kdrive_1.7.99.2.bb
+++ b/meta/recipes-graphics/xorg-xserver/xserver-kdrive_1.7.99.2.bb
@@ -2,12 +2,14 @@ require xserver-kdrive.inc
 
 DEPENDS += "libxkbfile libxcalibrate font-util pixman"
 
+RDEPENDS += "hal"
+
 RDEPENDS_${PN} += "xkeyboard-config"
 
 EXTRA_OECONF += "--disable-glx"
 
 PE = "1"
-PR = "r25"
+PR = "r26"
 
 SRC_URI = "${XORG_MIRROR}/individual/xserver/xorg-server-${PV}.tar.bz2 \
 	file://extra-kmodes.patch;patch=1 \
-- 
1.6.3.3


