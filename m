Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 87FD94C80AAC
	for <poky@yoctoproject.org>; Fri,  4 Mar 2011 13:42:43 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 04 Mar 2011 11:42:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,265,1297065600"; d="scan'208";a="609190636"
Received: from unknown (HELO localhost) ([10.255.12.102])
	by orsmga002.jf.intel.com with ESMTP; 04 Mar 2011 11:42:15 -0800
Message-Id: <48181023314ac09743b958b0035399797fe6cff9.1299267630.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299267630.git.sgw@linux.intel.com>
References: <cover.1299267630.git.sgw@linux.intel.com>
Old-Date: Fri, 4 Mar 2011 19:32:18 +0800
Date: Fri, 04 Mar 2011 11:42:14 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 07/13] qemu-script: Remove mmap_min_addr check
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
X-List-Received-Date: Fri, 04 Mar 2011 19:42:43 -0000

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
1.7.1.1


