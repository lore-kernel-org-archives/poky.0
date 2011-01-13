Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 24E204C80039
	for <poky@yoctoproject.org>; Thu, 13 Jan 2011 12:56:01 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Jan 2011 10:55:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,318,1291622400"; d="scan'208";a="696553634"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga001.jf.intel.com with ESMTP; 13 Jan 2011 10:55:53 -0800
Message-Id: <b18f063ffaa6cfa798aa13bdc5fe3865d97f2584.1294944826.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1294944826.git.scott.a.garman@intel.com>
References: <cover.1294944826.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Fri, 12 Nov 2010 16:31:13 -0800
Date: Thu, 13 Jan 2011 10:58:13 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/3] poky-qemu: Fix issues when running Yocto 0.9 release images
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
X-List-Received-Date: Thu, 13 Jan 2011 18:56:06 -0000

This fixes two bugs with poky-qemu when it is run from a
standalone meta-toolchain setup.

[BUGFIX #535] and [BUGFIX #536]

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 scripts/poky-qemu |   64 +++++++++++++++++++++++++++++-----------------------
 1 files changed, 36 insertions(+), 28 deletions(-)

diff --git a/scripts/poky-qemu b/scripts/poky-qemu
index 9e604b5..bc312e0 100755
--- a/scripts/poky-qemu
+++ b/scripts/poky-qemu
@@ -51,6 +51,37 @@ SCRIPT_KERNEL_OPT=""
 
 TMPDIR=""
 
+# Determine whether the file is a kernel or QEMU image, and set the
+# appropriate variables
+process_filename() {
+    filename=$1
+
+    # Extract the filename extension
+    EXT=`echo $filename | awk -F . '{ print \$NF }'`
+    # A file ending in .bin is a kernel
+    if [ "x$EXT" = "xbin" ]; then
+        if [ -z "$KERNEL" ]; then
+            KERNEL=$filename
+        else
+            echo "Error: conflicting KERNEL args [$KERNEL] and [$filename]"
+            usage
+        fi
+    elif [[ "x$EXT" == "xext2" || "x$EXT" == "xext3" ||
+            "x$EXT" == "xjffs2" ]]; then
+        # A file ending in a supportted fs type is a rootfs image
+        if [[ -z "$FSTYPE" || "$FSTYPE" == "$EXT" ]]; then
+            FSTYPE=$EXT
+            ROOTFS=$filename
+        else
+            echo "Error: conflicting FSTYPE types [$FSTYPE] and [$EXT]"
+            usage
+        fi
+    else
+       echo "Error: unknown file arg [$filename]"
+       usage
+    fi
+}
+
 # Parse command line args without requiring specific ordering. It's a
 # bit more complex, but offers a great user experience.
 i=1
@@ -66,7 +97,7 @@ while [ $i -le $# ]; do
             fi
             ;;
         "ext2" | "ext3" | "jffs2" | "nfs")
-            if [ -z "$FSTYPE" ]; then
+            if [[ -z "$FSTYPE" || "$FSTYPE" == "$arg" ]]; then
                 FSTYPE=$arg
             else
                 echo "Error: conflicting FSTYPE types [$FSTYPE] and [$arg]"
@@ -75,8 +106,8 @@ while [ $i -le $# ]; do
             ;;
         *-image-*)
             if [ -z "$ROOTFS" ]; then
-                if [ -e "$arg" ]; then
-                    ROOTFS=$arg
+                if [ -f "$arg" ]; then
+                    process_filename $arg
                 else
                     ROOTFS=$arg
                     LAZY_ROOTFS="true"
@@ -111,30 +142,7 @@ while [ $i -le $# ]; do
                     usage
                 fi
             elif [ -f "$arg" ]; then
-                # Extract the filename extension
-                EXT=`echo $arg | awk -F . '{ print \$NF }'`
-                # A file ending in .bin is a kernel
-                if [ "x$EXT" = "xbin" ]; then
-                    if [ -z "$KERNEL" ]; then
-                        KERNEL=$arg
-                    else
-                        echo "Error: conflicting KERNEL args [$KERNEL] and [$arg]"
-                        usage
-                    fi
-                elif [[ "x$EXT" == "xext2" || "x$EXT" == "xext3" ||
-                        "x$EXT" == "xjffs2" ]]; then
-                     # A file ending in a supportted fs type is a rootfs image
-                     if [[ -z "$FSTYPE" || "$FSTYPE" == "$EXT" ]]; then
-                         FSTYPE=$EXT
-                         ROOTFS=$arg
-                     else
-                         echo "Error: conflicting FSTYPE types [$FSTYPE] and [$arg]"
-                         usage
-                     fi
-                else
-                    echo "Error: unknown file arg [$arg]"
-                    usage
-                fi
+                process_filename $arg
             else
                 echo "Error: unable to classify arg [$arg]"
                 usage
@@ -155,7 +163,7 @@ if [[ "$FSTYPE" == "nfs" && -z "$ROOTFS" ]]; then
 fi
 
 if [ -z "$MACHINE" ]; then
-    MACHINE=`basename $KERNEL | sed -r -e 's#.*-([a-z]+[0-9\-]*)-?[0-9]*..*#\1#'`
+    MACHINE=`basename $KERNEL | sed 's/.*-\(qemux86-64\|qemux86\|qemuarm\|qemumips\|qemuppc\).*/\1/'`
     if [ -z "$MACHINE" ]; then
         echo "Error: Unable to set MACHINE from kernel filename [$KERNEL]"
         usage
-- 
1.7.3.4


