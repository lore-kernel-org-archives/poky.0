Return-Path: <edwin.zhai@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C43B14C805A8
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 07:20:18 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 17 Mar 2011 05:20:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,198,1299484800"; d="scan'208";a="898235067"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.224])
	by fmsmga001.fm.intel.com with ESMTP; 17 Mar 2011 05:20:06 -0700
Message-Id: <f596757000465a4b8350e16f21553a23b8bbedfa.1300352186.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1300352186.git.edwin.zhai@intel.com>
References: <cover.1300352186.git.edwin.zhai@intel.com>
Old-Date: Thu, 17 Mar 2011 15:47:06 +0800
Date: Thu, 17 Mar 2011 20:22:46 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 1/1] qemu: Use mesa's libGL rather than nVidia's to avoid segfault of qemu
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
X-List-Received-Date: Thu, 17 Mar 2011 12:20:18 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Proprietary nVidia driver introduce its own libGL that precede mesa's.
qemu has segfault if linked with it. This fix try to use mesa's libGL
if ldd find qemu linked with nVidia libGL.

[YOCTO #649]
[YOCTO #698]


Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 scripts/poky-qemu-internal |   16 +++++++++++++++-
 1 files changed, 15 insertions(+), 1 deletions(-)

diff --git a/scripts/poky-qemu-internal b/scripts/poky-qemu-internal
index 3638a65..1f09fe7 100755
--- a/scripts/poky-qemu-internal
+++ b/scripts/poky-qemu-internal
@@ -436,10 +436,24 @@ else
     echo "Warning: distccd not present, no distcc support loaded."
 fi
 
+# qemu got segfault if linked with nVidia's libgl
+GL_LD_PRELOAD=$LD_PRELOAD
+
+if ldd $QEMUBIN | grep -i nvidia &> /dev/null
+then
+    echo "************** !!!Warning!!! **************
+    You installed nVidia's libGL.so that probably lead qemu segfault!
+    Pls. uninstall proprietary nVidia driver or make mesa libgl precede nvidia's."
+
+    # To avoid segfault of qemu, skip nVidia's libGL and use mesa's instead
+    echo "Skip nVidia's libGL!"
+    GL_LD_PRELOAD="/usr/lib/libGL.so $LD_PRELOAD"
+fi
+
 echo "Running $QEMU..."
 # -no-reboot is a mandatory option - see bug #100
 echo $QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append '"'$KERNCMDLINE $SCRIPT_KERNEL_OPT'"'
-$QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append "$KERNCMDLINE $SCRIPT_KERNEL_OPT" || /bin/true
+LD_PRELOAD="$GL_LD_PRELOAD" $QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append "$KERNCMDLINE $SCRIPT_KERNEL_OPT" || /bin/true
 
 cleanup
 
-- 
1.7.1


