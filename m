Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 509E6E0047F
	for <poky@yoctoproject.org>; Thu, 21 Feb 2013 16:57:04 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Feb 2013 16:55:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,711,1355126400"; d="scan'208";a="265970504"
Received: from envy.jf.intel.com (HELO localhost) ([10.7.199.102])
	by orsmga001.jf.intel.com with ESMTP; 21 Feb 2013 16:57:03 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>
Date: Thu, 21 Feb 2013 16:56:57 -0800
Message-Id: <8916fbba3c7c340f78fa724c3126b38f75218082.1361494617.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH] tiny-init: Mount devtmpfs manually
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 22 Feb 2013 00:57:04 -0000

When using an initramfs, the default for poky-tiny, the kernel can't
automatically mount devtmpfs. Ensure it is mounted. This eliminates the
need to create the ptmx device.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-yocto/recipes-core/tiny-init/files/init   | 4 +++-
 meta-yocto/recipes-core/tiny-init/tiny-init.bb | 2 +-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/recipes-core/tiny-init/files/init b/meta-yocto/recipes-core/tiny-init/files/init
index 89fe39e..4b78f01 100644
--- a/meta-yocto/recipes-core/tiny-init/files/init
+++ b/meta-yocto/recipes-core/tiny-init/files/init
@@ -4,8 +4,10 @@
 mount none -t proc /proc
 mount none -t sysfs /sys
 
+# Ensure devtmpfs is mounted, it must be done manually with initramfs
+mount none -t devtmpfs /dev
+
 # Setup PTY infrastructure
-mknod /dev/ptmx c 5 2
 mkdir /dev/pts
 mount none -t devpts /dev/pts
 
diff --git a/meta-yocto/recipes-core/tiny-init/tiny-init.bb b/meta-yocto/recipes-core/tiny-init/tiny-init.bb
index 394d70f..5d90051 100644
--- a/meta-yocto/recipes-core/tiny-init/tiny-init.bb
+++ b/meta-yocto/recipes-core/tiny-init/tiny-init.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "Basic init system for poky-tiny"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
-PR = "r1"
+PR = "r2"
 
 RDEPENDS_${PN} = "busybox"
 
-- 
1.8.1.2


