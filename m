Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id BAB4B4C8110E
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 18:40:42 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Dec 2010 16:40:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,252,1291622400"; d="scan'208";a="588501075"
Received: from unknown (HELO localhost) ([10.255.13.230])
	by orsmga002.jf.intel.com with ESMTP; 30 Dec 2010 16:40:42 -0800
Message-Id: <671f1222499169324580abe6b35db81649399dd1.1293755504.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1293755504.git.dvhart@linux.intel.com>
References: <cover.1293755504.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Old-Date: Fri, 17 Dec 2010 16:05:25 -0800
Date: Thu, 30 Dec 2010 16:40:41 -0800
To: poky@yoctoproject.org
Subject: [PATCH 4/5] machine/qemu: Allow for users to override the preferred kernel version
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
X-List-Received-Date: Fri, 31 Dec 2010 00:40:42 -0000

The linux-yocto-rt kernel has been boot tested on qemux86-64. Unlock the
preferred provider for virtual/kernel so it can be selected and used.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/conf/machine/include/qemu.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/machine/include/qemu.inc b/meta/conf/machine/include/qemu.inc
index d762d01..225906b 100644
--- a/meta/conf/machine/include/qemu.inc
+++ b/meta/conf/machine/include/qemu.inc
@@ -15,7 +15,7 @@ IMAGE_ROOTFS_SIZE_ext3 ?= "280000"
 RDEPENDS_kernel-base = ""
 
 # Use a common kernel recipe for all QEMU machines
-PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 
 EXTRA_IMAGEDEPENDS += "qemu-native qemu-helper-native"
-- 
1.7.1


