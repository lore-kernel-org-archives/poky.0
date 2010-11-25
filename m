Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8CE814C811D0
	for <poky@yoctoproject.org>; Thu, 25 Nov 2010 08:17:42 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Nov 2010 06:17:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,255,1288594800"; d="scan'208";a="577577452"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga002.jf.intel.com with ESMTP; 25 Nov 2010 06:17:41 -0800
Message-Id: <b6941f9da10ebccaac7aebb0fec2b08949ad5fdb.1290689785.git.ke.yu@intel.com>
In-Reply-To: <cover.1290689785.git.ke.yu@intel.com>
References: <cover.1290689785.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Thu, 25 Nov 2010 20:13:45 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 4/8] qemugl: add license checksum
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
X-List-Received-Date: Thu, 25 Nov 2010 14:17:42 -0000

also correct the license type according to the src

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/recipes-graphics/mesa/qemugl_git.bb |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/mesa/qemugl_git.bb b/meta/recipes-graphics/mesa/qemugl_git.bb
index 8f89291..19d6557 100644
--- a/meta/recipes-graphics/mesa/qemugl_git.bb
+++ b/meta/recipes-graphics/mesa/qemugl_git.bb
@@ -1,7 +1,9 @@
 DESCRIPTION = "QEMU i386 OpenGL passtrough"
 HOMEPAGE = "http://savannah.nongnu.org/projects/qemugl"
 SECTION = "x11/drivers"
-LICENSE = "GPL"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://opengl_client.c;beginline=4;endline=23;md5=a7dbe915be5fb5df8fd496f348ed9a05 \
+                    file://parse_mesa_get_c.c;befinline=4;endline=23;md5=a55f258f32720c9565a425a3956bcb5e"
 
 DEPENDS = "virtual/libx11 xproto glproto libxfixes"
 
-- 
1.7.0.4


