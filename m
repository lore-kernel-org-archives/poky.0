Return-Path: <edwin.zhai@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id AD5724C805A8
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 00:21:02 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Mar 2011 22:21:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,203,1299484800"; d="scan'208";a="721479942"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.224])
	by orsmga001.jf.intel.com with ESMTP; 17 Mar 2011 22:21:01 -0700
Message-Id: <1c56783be10e6d51a801ccbee9e9ec5ae2c5db32.1300425643.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1300425643.git.edwin.zhai@intel.com>
References: <cover.1300425643.git.edwin.zhai@intel.com>
Old-Date: Thu, 17 Mar 2011 15:47:06 +0800
Date: Fri, 18 Mar 2011 13:23:41 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 1/1] qemu: Warnings of qemu segfault caused by nVidia's libGL
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
X-List-Received-Date: Fri, 18 Mar 2011 05:21:03 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Proprietary nVidia driver introduce its own libGL that precede mesa's.
qemu has segfault if linked with it. This fix give warnings and workaround
to end user.

[YOCTO #649]
[YOCTO #698]


Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 scripts/poky-qemu-internal |   14 +++++++++++++-
 1 files changed, 13 insertions(+), 1 deletions(-)

diff --git a/scripts/poky-qemu-internal b/scripts/poky-qemu-internal
index 3638a65..5f32447 100755
--- a/scripts/poky-qemu-internal
+++ b/scripts/poky-qemu-internal
@@ -436,10 +436,22 @@ else
     echo "Warning: distccd not present, no distcc support loaded."
 fi
 
+# qemu got segfault if linked with nVidia's libgl
+if ldd $QEMUBIN | grep -i nvidia &> /dev/null
+then
+    echo "************** !!!Warning!!! **************
+    nVidia's proprietary OpenGL libraries are known to have compatibility
+    issues with qemu, resulting in a segfault. Please uninstall these
+    drivers or ensure the mesa libGL libraries precede nvidia's via LD_PRELOAD.
+    " 
+fi
+
 echo "Running $QEMU..."
 # -no-reboot is a mandatory option - see bug #100
 echo $QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append '"'$KERNCMDLINE $SCRIPT_KERNEL_OPT'"'
-$QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append "$KERNCMDLINE $SCRIPT_KERNEL_OPT" || /bin/true
+# If QEMU crashes, we need to run stty sane
+$QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append "$KERNCMDLINE $SCRIPT_KERNEL_OPT" || stty sane
+
 
 cleanup
 
-- 
1.7.1


