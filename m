Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E78474C811CC
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 06:43:59 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Dec 2010 04:43:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,310,1288594800"; d="scan'208";a="684710256"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga001.jf.intel.com with ESMTP; 07 Dec 2010 04:43:58 -0800
Message-Id: <9d6c2bb400c19cfc1040f4545c3e6f1f573b0de1.1291716364.git.ke.yu@intel.com>
In-Reply-To: <cover.1291716364.git.ke.yu@intel.com>
References: <cover.1291716364.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Tue, 7 Dec 2010 17:48:15 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/3] xserver-xf86-config: add license checksum
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
X-List-Received-Date: Tue, 07 Dec 2010 12:44:00 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../xorg-xserver/xserver-xf86-config_0.1.bb        |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bb b/meta/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bb
index fc91285..4344736 100644
--- a/meta/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bb
+++ b/meta/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bb
@@ -2,6 +2,7 @@ DESCRIPTION = "X.Org X server configuration file"
 HOMEPAGE = "http://www.x.org"
 SECTION = "x11/base"
 LICENSE = "MIT-X"
+LIC_FILES_CHKSUM = "file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 PR = "r9"
 
 SRC_URI = "file://xorg.conf"
-- 
1.7.0.4


