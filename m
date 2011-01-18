Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9F1A74C81065
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 17:25:39 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 18 Jan 2011 15:25:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,340,1291622400"; d="scan'208";a="698142769"
Received: from unknown (HELO localhost) ([10.255.14.100])
	by orsmga001.jf.intel.com with ESMTP; 18 Jan 2011 15:25:39 -0800
Message-Id: <820a5479d2a6d8d7cec11b4c0335018af8886489.1295393078.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1295393078.git.dvhart@linux.intel.com>
References: <cover.1295393078.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Old-Date: Fri, 17 Dec 2010 16:05:25 -0800
Date: Tue, 18 Jan 2011 15:25:35 -0800
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
X-List-Received-Date: Tue, 18 Jan 2011 23:25:39 -0000

The linux-yocto-rt kernel has been boot tested on qemux86-64. Unlock
the preferred provider for virtual/kernel so it can be selected and
used.

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


