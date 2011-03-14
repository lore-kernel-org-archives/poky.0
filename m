Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 20BA14C804D4
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 04:05:20 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 Mar 2011 02:05:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,314,1297065600"; d="scan'208";a="666965304"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by fmsmga002.fm.intel.com with ESMTP; 14 Mar 2011 02:05:19 -0700
Message-Id: <a1248560c2c914346f3b9296471717c54d16ef98.1300093238.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1300093238.git.dexuan.cui@intel.com>
References: <cover.1300093238.git.dexuan.cui@intel.com>
Old-Date: Mon, 14 Mar 2011 16:52:37 +0800
Date: Mon, 14 Mar 2011 17:03:50 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 1/1] poky-qemu-internal: force oprofile into using timer interrupt mode for qemux86/qemux86-64 for now
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
X-List-Received-Date: Mon, 14 Mar 2011 09:05:20 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Currently oprofile's event based interrupt mode doesn't work(Bug #828) in
qemux86 and qemux86-64. We can use timer interrupt mode for now.

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 scripts/poky-qemu-internal |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/scripts/poky-qemu-internal b/scripts/poky-qemu-internal
index 3638a65..046e2b6 100755
--- a/scripts/poky-qemu-internal
+++ b/scripts/poky-qemu-internal
@@ -309,6 +309,9 @@ if [ "$MACHINE" = "qemux86" ]; then
         KERNCMDLINE="root=/dev/nfs nfsroot=$NFS_SERVER:$NFS_DIR,$UNFS_OPTS rw $KERNEL_NETWORK_CMD mem=$QEMU_MEMORY"
         QEMUOPTIONS="$QEMU_NETWORK_CMD $QEMU_UI_OPTIONS"
     fi
+    # Currently oprofile's event based interrupt mode doesn't work(Bug #828) in
+    # qemux86 and qemux86-64. We can use timer interrupt mode for now.
+    KERNCMDLINE="$KERNCMDLINE oprofile.timer=1"
 fi
 
 if [ "$MACHINE" = "qemux86-64" ]; then
@@ -330,6 +333,9 @@ if [ "$MACHINE" = "qemux86-64" ]; then
         KERNCMDLINE="root=/dev/nfs nfsroot=$NFS_SERVER:$NFS_DIR,$UNFS_OPTS rw $KERNEL_NETWORK_CMD mem=$QEMU_MEMORY"
         QEMUOPTIONS="$QEMU_NETWORK_CMD $QEMU_UI_OPTIONS"
     fi
+    # Currently oprofile's event based interrupt mode doesn't work(Bug #828) in
+    # qemux86 and qemux86-64. We can use timer interrupt mode for now.
+    KERNCMDLINE="$KERNCMDLINE oprofile.timer=1"
 fi
 
 if [ "$MACHINE" = "spitz" ]; then
-- 
1.7.2


