Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B56884C80050
	for <poky@yoctoproject.org>; Fri,  4 Mar 2011 05:39:49 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 04 Mar 2011 03:39:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,263,1297065600"; d="scan'208";a="663825017"
Received: from gzhai-nhm.sh.intel.com (HELO localhost) ([10.239.36.8])
	by fmsmga002.fm.intel.com with ESMTP; 04 Mar 2011 03:39:48 -0800
Message-Id: <76afd5854cf557f72a522936b6fa67ab5b0684f0.1299238414.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1299238414.git.edwin.zhai@intel.com>
References: <cover.1299238414.git.edwin.zhai@intel.com>
Old-Date: Fri, 4 Mar 2011 19:32:18 +0800
Date: Fri, 04 Mar 2011 19:37:57 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 1/1] qemu-script: Remove mmap_min_addr check
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
X-List-Received-Date: Fri, 04 Mar 2011 11:39:49 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

qemu 0.13.0 can handle mmap_min_addr well, and patch to remove checks in
sanity.bbclass has already in oe-core mailinglist by Raj. This patch does
the same thing for qemu-script.

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 scripts/poky-qemu-internal |    7 -------
 1 files changed, 0 insertions(+), 7 deletions(-)

diff --git a/scripts/poky-qemu-internal b/scripts/poky-qemu-internal
index 5e74169..3638a65 100755
--- a/scripts/poky-qemu-internal
+++ b/scripts/poky-qemu-internal
@@ -268,13 +268,6 @@ if [ "$NFS_SERVER" = "" ]; then
 fi
 
 if [ "$MACHINE" = "qemuarm" -o "$MACHINE" = "qemuarmv6" -o "$MACHINE" = "qemuarmv7" ]; then
-    if [ -e /proc/sys/vm/mmap_min_addr ]; then
-        if [ `cat /proc/sys/vm/mmap_min_addr` != "0" ]; then
-            echo "Error, please set /proc/sys/vm/mmap_min_addr to 0 since otherwise it can cause problems with QEMU"
-            return
-        fi
-    fi
-
     QEMU=qemu-system-arm
     MACHINE_SUBTYPE=versatilepb
     QEMU_UI_OPTIONS="$QEMU_UI_OPTIONS"
-- 
1.6.3.3


