Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 309224C8120E
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:27:25 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 23 Dec 2010 06:27:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="365818586"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by azsmga001.ch.intel.com with ESMTP; 23 Dec 2010 06:27:24 -0800
Message-Id: <0355d6e904a09bc6b328ccda53ce5129b7ac4816.1293114004.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293114003.git.sgw@linux.intel.com>
References: <cover.1293114003.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Old-Date: Wed, 22 Dec 2010 22:33:31 -0800
Date: Thu, 23 Dec 2010  6:27:24 -0800
To: poky@yoctoproject.org
Subject: [PATCH 27/28] xserver-xf86: Add LIC_FILES_CHKSUM
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
X-List-Received-Date: Thu, 23 Dec 2010 14:27:25 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../xorg-xserver/xserver-xf86-common.inc           |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/xorg-xserver/xserver-xf86-common.inc b/meta/recipes-graphics/xorg-xserver/xserver-xf86-common.inc
index cf69a1e..3d56fcf 100644
--- a/meta/recipes-graphics/xorg-xserver/xserver-xf86-common.inc
+++ b/meta/recipes-graphics/xorg-xserver/xserver-xf86-common.inc
@@ -3,6 +3,8 @@ HOMEPAGE = "http://www.x.org"
 SECTION = "x11/base"
 LICENSE = "MIT-X"
 
+LIC_FILES_CHECKSUM = file://COPYING;md5=3dd2bbe3563837f80ed8926b06c1c353"
+
 # xf86-*-* packages depend on an X server built with the xfree86 DDX
 # so we have a virtual to represent that:
 PROVIDES = "virtual/xserver-xf86"
-- 
1.7.2.3


