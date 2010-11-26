Return-Path: <edwin.zhai@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3A70C4C811E9
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 10:08:25 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 26 Nov 2010 08:08:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,261,1288594800"; d="scan'208";a="681310670"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by orsmga001.jf.intel.com with ESMTP; 26 Nov 2010 08:08:23 -0800
Message-Id: <97803429bbe8e453f719ab82183f4f0cacb8caee.1290787706.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290787706.git.edwin.zhai@intel.com>
References: <cover.1290787706.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 26 Nov 2010 23:58:15 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 11/11] qemu: Add license checksum
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
X-List-Received-Date: Fri, 26 Nov 2010 16:08:25 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 meta/recipes-devtools/qemu/qemu.inc       |    2 +-
 meta/recipes-devtools/qemu/qemu_0.12.4.bb |    3 +++
 2 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/qemu/qemu.inc b/meta/recipes-devtools/qemu/qemu.inc
index e9825c2..12ce82f 100644
--- a/meta/recipes-devtools/qemu/qemu.inc
+++ b/meta/recipes-devtools/qemu/qemu.inc
@@ -1,6 +1,6 @@
 DESCRIPTION = "open source processor emulator"
 HOMEPAGE = "http://qemu.org"
-LICENSE = "GPL"
+LICENSE = "GPLv2 & LGPLv2.1"
 DEPENDS = "zlib"
 
 EXTRA_OECONF = "--target-list=arm-linux-user,arm-softmmu,i386-linux-user,i386-softmmu,x86_64-linux-user,x86_64-softmmu,mips-linux-user,mips-softmmu,ppc-linux-user,ppc-softmmu,mipsel-linux-user --disable-werror --disable-vnc-tls"
diff --git a/meta/recipes-devtools/qemu/qemu_0.12.4.bb b/meta/recipes-devtools/qemu/qemu_0.12.4.bb
index 6e7d86f..cb8c949 100644
--- a/meta/recipes-devtools/qemu/qemu_0.12.4.bb
+++ b/meta/recipes-devtools/qemu/qemu_0.12.4.bb
@@ -1,5 +1,8 @@
 require qemu.inc
 
+LIC_FILES_CHKSUM = "file://COPYING;md5=441c28d2cf86e15a37fa47e15a72fbac \
+                    file://COPYING.LIB;endline=24;md5=c04def7ae38850e7d3ef548588159913"
+
 PR = "r22"
 
 FILESPATH = "${FILE_DIRNAME}/qemu-${PV}"
-- 
1.7.0.4


