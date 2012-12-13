Return-Path: <andrei.adrianx.dinu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0C7BE006C9
	for <poky@yoctoproject.org>; Thu, 13 Dec 2012 07:42:23 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Dec 2012 07:42:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,274,1355126400"; d="scan'208";a="231111510"
Received: from adinu-vostro-460 (HELO localhost.localdomain) ([10.237.105.33])
	by azsmga001.ch.intel.com with ESMTP; 13 Dec 2012 07:42:17 -0800
From: Andrei Dinu <andrei.adrianx.dinu@intel.com>
To: poky@yoctoproject.org
Date: Thu, 13 Dec 2012 17:42:21 +0200
Message-Id: <1355413341-8484-1-git-send-email-andrei.adrianx.dinu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] [Bug1474] SLiRP support in runqemu
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
X-List-Received-Date: Thu, 13 Dec 2012 15:42:24 -0000

runqemu script now takes argument "slirp" in order to
run networking on the qemu machine, without root privileges.

changed the runqemu-internal script in order not to activate
the tap devices if the option is set. Also trimmed the
cleanup function so that after the image is closed, no
tap releases warnings showed up.

Signed-off-by: Andrei Dinu <andrei.adrianx.dinu@intel.com>
---
 scripts/runqemu          |    5 +-
 scripts/runqemu-internal |  220 ++++++++++++++++++++++++++--------------------
 2 files changed, 131 insertions(+), 94 deletions(-)

diff --git a/scripts/runqemu b/scripts/runqemu
index fb7ac56..70f52fe 100755
--- a/scripts/runqemu
+++ b/scripts/runqemu
@@ -149,7 +149,7 @@ while true; do
             if [ "x$MACHINE" = "xqemux86" -o "x$MACHINE" = "xqemux86-64" ]; then
                 echo "Enabling audio in qemu."
                 echo "Please install snd_intel8x0 or snd_ens1370 driver in linux guest."
-                QEMU_AUDIO_DRV="alsa"
+                export QEMU_AUDIO_DRV="alsa"
                 SCRIPT_QEMU_OPT="$SCRIPT_QEMU_OPT -soundhw ac97,es1370"
             fi
             ;;
@@ -157,6 +157,9 @@ while true; do
             KVM_ENABLED="yes"
             KVM_CAPABLE=`grep -q 'vmx\|smx' /proc/cpuinfo && echo 1`
             ;;
+	"slirp")
+	    SLIRP_ENABLED="yes"
+	    ;;
         "") break ;;
         *)
             # A directory name is an nfs rootfs
diff --git a/scripts/runqemu-internal b/scripts/runqemu-internal
index 7ca00f8..140f5a0 100755
--- a/scripts/runqemu-internal
+++ b/scripts/runqemu-internal
@@ -105,98 +105,112 @@ fi
 
 NFSRUNNING="false"
 
-acquire_lock() {
-    lockfile=$1
-    if [ -z "$lockfile" ]; then
-        echo "Error: missing lockfile arg passed to acquire_lock()"
-        return 1
+if [ "$SLIRP_ENABLED" = "yes" ]; then
+    KERNEL_NETWORK_CMD=""
+    QEMU_TAP_CMD=""
+    if [ "$KVM_ACTIVE" = "yes" ]; then
+        QEMU_NETWORK_CMD=""
+        DROOT="/dev/vda"
+        ROOTFS_OPTIONS="-drive file=$ROOTFS,if=virtio"
+    else
+        QEMU_NETWORK_CMD=""
+        DROOT="/dev/hda"
+        ROOTFS_OPTIONS="-hda $ROOTFS"
     fi
 
-    if [ -e "$lockfile.lock" ]; then
-        # Check that the lockfile is not stale
-        ps=`ps -eo pid | grep $(cat $lockfile.lock)`
-        if [ -z "$ps" ]; then
-            echo "WARNING: Stale lock file detected, deleting $lockfile.lock."
-            rm -f $lockfile.lock
-            echo $$ > $lockfile.lock
-        else
+else
+    acquire_lock() {
+        lockfile=$1
+        if [ -z "$lockfile" ]; then
+            echo "Error: missing lockfile arg passed to acquire_lock()"
             return 1
         fi
-    else
-        echo $$ > $lockfile.lock
-    fi
 
-    return 0
-}
+        if [ -e "$lockfile.lock" ]; then
+            # Check that the lockfile is not stale
+            ps=`ps -eo pid | grep $(cat $lockfile.lock)`
+            if [ -z "$ps" ]; then
+                echo "WARNING: Stale lock file detected, deleting $lockfile.lock."
+                rm -f $lockfile.lock
+                echo $$ > $lockfile.lock
+            else
+                return 1
+            fi
+        else
+            echo $$ > $lockfile.lock
+        fi
 
-release_lock() {
-    lockfile=$1
-    if [ -z "$lockfile" ]; then
-        echo "Error: missing lockfile arg passed to release_lock()"
-        return 1
-    fi
+        return 0
+    }
 
-    rm -f $lockfile.lock
-}
+    release_lock() {
+        lockfile=$1
+        if [ -z "$lockfile" ]; then
+            echo "Error: missing lockfile arg passed to release_lock()"
+            return 1
+        fi
 
-LOCKDIR="/tmp/qemu-tap-locks"
-if [ ! -d "$LOCKDIR" ]; then
-    mkdir $LOCKDIR
-    chmod 777 $LOCKDIR
-fi
+        rm -f $lockfile.lock
+    }
 
-IFCONFIG=`which ifconfig 2> /dev/null`
-if [ -z "$IFCONFIG" ]; then
-    IFCONFIG=/sbin/ifconfig
-fi
-if [ ! -x "$IFCONFIG" ]; then
-       echo "$IFCONFIG cannot be executed"
-       exit 1
-fi
+    LOCKDIR="/tmp/qemu-tap-locks"
+    if [ ! -d "$LOCKDIR" ]; then
+        mkdir $LOCKDIR
+        chmod 777 $LOCKDIR
+    fi
 
-POSSIBLE=`$IFCONFIG -a | grep '^tap' | awk '{print $1}' | sed s/://`
-TAP=""
-LOCKFILE=""
-for tap in $POSSIBLE; do
-    LOCKFILE="$LOCKDIR/$tap"
-    echo "Acquiring lockfile for $tap..."
-    acquire_lock $LOCKFILE
-    if [ $? -eq 0 ]; then
-        TAP=$tap
-        break
+    IFCONFIG=`which ifconfig 2> /dev/null`
+    if [ -z "$IFCONFIG" ]; then
+        IFCONFIG=/sbin/ifconfig
     fi
-done
-
-if [ "$TAP" = "" ]; then
-    if [ -e "$NOSUDO_FLAG" ]; then
-        echo "Error: There are no available tap devices to use for networking,"
-        echo "and I see $NOSUDO_FLAG exists, so I am not going to try creating"
-        echo "a new one with sudo."
-        exit 1
+    if [ ! -x "$IFCONFIG" ]; then
+          echo "$IFCONFIG cannot be executed"
+          exit 1
     fi
 
-    GROUPID=`id -g`
-    USERID=`id -u`
-    echo "Setting up tap interface under sudo"
-    # Redirect stderr since we could see a LD_PRELOAD warning here if pseudo is loaded
-    # but inactive. This looks scary but is harmless
-    tap=`sudo $QEMUIFUP $USERID $GROUPID $OECORE_NATIVE_SYSROOT 2> /dev/null`
-    if [ $? -ne 0 ]; then
-        # Re-run standalone to see verbose errors
-        sudo $QEMUIFUP $USERID $GROUPID $OECORE_NATIVE_SYSROOT
-        return
-    fi
-    LOCKFILE="$LOCKDIR/$tap"
-    echo "Acquiring lockfile for $tap..."
-    acquire_lock $LOCKFILE
-    if [ $? -eq 0 ]; then
-        TAP=$tap
-    fi 
-else
-    echo "Using preconfigured tap device '$TAP'"
-fi
+    POSSIBLE=`$IFCONFIG -a | grep '^tap' | awk '{print $1}' | sed s/://`
+    TAP=""
+    LOCKFILE=""
+    for tap in $POSSIBLE; do
+        LOCKFILE="$LOCKDIR/$tap"
+        echo "Acquiring lockfile for $tap..."
+        acquire_lock $LOCKFILE
+        if [ $? -eq 0 ]; then
+           TAP=$tap
+           break
+        fi
+    done
+
+    if [ "$TAP" = "" ]; then
+        if [ -e "$NOSUDO_FLAG" ]; then
+            echo "Error: There are no available tap devices to use for networking,"
+            echo "and I see $NOSUDO_FLAG exists, so I am not going to try creating"
+            echo "a new one with sudo."
+            exit 1
+        fi
 
-cleanup() {
+        GROUPID=`id -g`
+        USERID=`id -u`
+        echo "Setting up tap interface under sudo"
+        # Redirect stderr since we could see a LD_PRELOAD warning here if pseudo is loaded
+        # but inactive. This looks scary but is harmless
+        tap=`sudo $QEMUIFUP $USERID $GROUPID $OECORE_NATIVE_SYSROOT 2> /dev/null`
+        if [ $? -ne 0 ]; then
+            # Re-run standalone to see verbose errors
+            sudo $QEMUIFUP $USERID $GROUPID $OECORE_NATIVE_SYSROOT
+            return
+        fi
+        LOCKFILE="$LOCKDIR/$tap"
+        echo "Acquiring lockfile for $tap..."
+        acquire_lock $LOCKFILE
+        if [ $? -eq 0 ]; then
+            TAP=$tap
+        fi 
+    else
+        echo "Using preconfigured tap device '$TAP'"
+    fi
+    
+    cleanup() {
     if [ ! -e "$NOSUDO_FLAG" ]; then
         # Redirect stderr since we could see a LD_PRELOAD warning here if pseudo is loaded
         # but inactive. This looks scary but is harmless
@@ -204,7 +218,7 @@ cleanup() {
     fi
     echo "Releasing lockfile of preconfigured tap device '$TAP'"
     release_lock $LOCKFILE
-
+        
     if [ "$NFSRUNNING" = "true" ]; then
         echo "Shutting down the userspace NFS server..."
         echo "runqemu-export-rootfs stop $ROOTFS"
@@ -215,21 +229,37 @@ cleanup() {
     stty sane
 }
 
-n0=$(echo $TAP | sed 's/tap//')
-n1=$(($n0 * 2 + 1))
-n2=$(($n1 + 1))
+    n0=$(echo $TAP | sed 's/tap//')
+    n1=$(($n0 * 2 + 1))
+    n2=$(($n1 + 1))
+    KERNEL_NETWORK_CMD="ip=192.168.7.$n2::192.168.7.$n1:255.255.255.0"
+    QEMU_TAP_CMD="-net tap,vlan=0,ifname=$TAP,script=no,downscript=no"
 
-KERNEL_NETWORK_CMD="ip=192.168.7.$n2::192.168.7.$n1:255.255.255.0"
-QEMU_TAP_CMD="-net tap,vlan=0,ifname=$TAP,script=no,downscript=no"
-if [ "$KVM_ACTIVE" = "yes" ]; then
-    QEMU_NETWORK_CMD="-net nic,model=virtio $QEMU_TAP_CMD,vhost=on"
-    DROOT="/dev/vda"
-    ROOTFS_OPTIONS="-drive file=$ROOTFS,if=virtio"
-else
-    QEMU_NETWORK_CMD="-net nic,vlan=0 $QEMU_TAP_CMD"
-    DROOT="/dev/hda"
-    ROOTFS_OPTIONS="-hda $ROOTFS"
+
+    if [ "$KVM_ACTIVE" = "yes" ]; then
+        QEMU_NETWORK_CMD="-net nic,model=virtio $QEMU_TAP_CMD,vhost=on"
+        DROOT="/dev/vda"
+        ROOTFS_OPTIONS="-drive file=$ROOTFS,if=virtio"
+    else
+        QEMU_NETWORK_CMD="-net nic,vlan=0 $QEMU_TAP_CMD"
+        DROOT="/dev/hda"
+        ROOTFS_OPTIONS="-hda $ROOTFS"
+    fi
 fi
+
+cleanup() {
+    
+    if [ "$NFSRUNNING" = "true" ]; then
+	echo "Shutting down the userspace NFS server..."
+	echo "runqemu-export-rootfs stop $ROOTFS"
+	runqemu-export-rootfs stop $ROOTFS
+    fi
+    # If QEMU crashes or somehow tty properties are not restored
+    # after qemu exits, we need to run stty sane
+    stty sane
+}
+
+
 KERNCMDLINE="mem=$QEMU_MEMORY"
 QEMU_UI_OPTIONS="-show-cursor -usb -usbdevice wacom-tablet"
 
@@ -413,7 +443,11 @@ if [ "$MACHINE" = "qemuppc" ]; then
     MACHINE_SUBTYPE=mac99
     CPU_SUBTYPE=G4
     QEMU_UI_OPTIONS="$QEMU_UI_OPTIONS"
-    QEMU_NETWORK_CMD="-net nic,model=pcnet $QEMU_TAP_CMD"
+    if [ "$SLIRP_ENABLED" = "yes" ]; then
+        QEMU_NETWORK_CMD=""
+    else 
+        QEMU_NETWORK_CMD="-net nic,model=pcnet $QEMU_TAP_CMD"
+    fi
     if [ "$FSTYPE" = "ext3" -o "$FSTYPE" = "btrfs" ]; then
         KERNCMDLINE="root=/dev/hda rw console=ttyS0 console=tty $KERNEL_NETWORK_CMD mem=$QEMU_MEMORY"
         QEMUOPTIONS="$QEMU_NETWORK_CMD -cpu $CPU_SUBTYPE -M $MACHINE_SUBTYPE -hda $ROOTFS -no-reboot $QEMU_UI_OPTIONS"
-- 
1.7.9.5


