Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3183C4C811D9
	for <poky@yoctoproject.org>; Fri, 17 Dec 2010 18:20:24 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 Dec 2010 16:20:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,190,1291622400"; d="scan'208";a="584859665"
Received: from unknown (HELO localhost) ([10.255.14.50])
	by orsmga002.jf.intel.com with ESMTP; 17 Dec 2010 16:20:24 -0800
Message-Id: <7aa34388cd1c42920ce27a64cf8e1685e6f24a10.1292630935.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1292630935.git.dvhart@linux.intel.com>
References: <cover.1292630935.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Fri, 17 Dec 2010 16:05:25 -0800
To: poky@yoctoproject.org,tom.zanussi@intel.com,bruce.ashfield@intel.com
Subject: [PATCH 4/4] machine/qemu: Allow for users to override the preferred kernel version
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
X-List-Received-Date: Sat, 18 Dec 2010 00:20:25 -0000

The linux-yocto-rt kernel has been boot tested on qemux86-64. Unlock
the preferred provider for virtual/kernel so it can be selected and
used.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/conf/machine/include/qemu.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/machine/include/qemu.inc b/meta/conf/machine/include/qemu.inc
index 502e24f..61281bf 100644
--- a/meta/conf/machine/include/qemu.inc
+++ b/meta/conf/machine/include/qemu.inc
@@ -15,7 +15,7 @@ IMAGE_ROOTFS_SIZE_ext3 ?= "280000"
 RDEPENDS_kernel-base = ""
 
 # Use a common kernel recipe for all QEMU machines
-PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 #PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 
 EXTRA_IMAGEDEPENDS += "qemu-native qemu-helper-native"
-- 
1.7.2.3


