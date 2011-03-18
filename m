Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id F01E44C80B87
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 12:32:59 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 18 Mar 2011 10:32:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="668781513"
Received: from unknown (HELO localhost) ([10.255.12.119])
	by fmsmga002.fm.intel.com with ESMTP; 18 Mar 2011 10:32:59 -0700
Message-Id: <21991ec3e5870e795b386c4c62deeba0cdcfa50b.1300469427.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1300469427.git.dvhart@linux.intel.com>
References: <cover.1300469427.git.dvhart@linux.intel.com>
Old-Date: Fri, 18 Mar 2011 10:28:08 -0700
Date: Fri, 18 Mar 2011 10:32:59 -0700
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 2/2] qemu: make warning messages consistent in format
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
X-List-Received-Date: Fri, 18 Mar 2011 17:33:00 -0000

From: Darren Hart <dvhart@linux.intel.com>

Try to make the output of the qemu script a bit more consistent by using the
same format for the various warning messages:

WARNING: description of warning.
Detailed description of warning, actions taken, and/or instructions to user.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 scripts/poky-qemu-internal |   17 +++++++++--------
 1 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/scripts/poky-qemu-internal b/scripts/poky-qemu-internal
index 0f0f799..82ef265 100755
--- a/scripts/poky-qemu-internal
+++ b/scripts/poky-qemu-internal
@@ -75,7 +75,7 @@ if [ "$MACHINE" = "qemuarm" ]; then
     RAM=`echo $QEMU_MEMORY | sed 's/M$//'`
     if [[ -z "$RAM" || $RAM -gt 128 ]]; then
         echo "WARNING: qemuarm does not support > 128M of RAM."
-        echo "*** Changing QEMU_MEMORY to default of 128M ***"
+        echo "Changing QEMU_MEMORY to default of 128M."
         QEMU_MEMORY="128M"
         SCRIPT_QEMU_EXTRA_OPT=`echo $SCRIPT_QEMU_EXTRA_OPT | sed -e "s/$mem_set/-m 128/" `
     fi
@@ -102,7 +102,7 @@ acquire_lock() {
         # Check that the lockfile is not stale
         ps=`ps -ewwo pid | grep $(cat $lockfile.lock)`
         if [ -z "$ps" ]; then
-            echo "Warning: Stale lock file detected, deleting $lockfile.lock"
+            echo "WARNING: Stale lock file detected, deleting $lockfile.lock."
             rm -f $lockfile.lock
             echo $$ > $lockfile.lock
         else
@@ -439,17 +439,18 @@ if [ -x "$DISTCCD" ]; then
     PIDFILE=`mktemp`
     $DISTCCD --allow 192.168.7.2 --daemon --pid-file $PIDFILE &
 else
-    echo "Warning: distccd not present, no distcc support loaded."
+    echo "WARNING: distccd not present, no distcc support loaded."
 fi
 
 # qemu got segfault if linked with nVidia's libgl
 if ldd $QEMUBIN | grep -i nvidia &> /dev/null
 then
-    echo "************** !!!Warning!!! **************
-    nVidia's proprietary OpenGL libraries are known to have compatibility
-    issues with qemu, resulting in a segfault. Please uninstall these
-    drivers or ensure the mesa libGL libraries precede nvidia's via LD_PRELOAD.
-    " 
+cat << EOM
+WARNING: nVidia proprietary OpenGL libraries detected.
+nVidia's OpenGL libraries are known to have compatibility issues with qemu,
+resulting in a segfault. Please uninstall these drivers or ensure the mesa libGL
+libraries precede nvidia's via LD_PRELOAD.
+EOM
 fi
 
 echo "Running $QEMU..."
-- 
1.7.1


