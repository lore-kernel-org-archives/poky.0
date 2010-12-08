Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id B78804C811F4
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 23:25:53 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 33741304F9
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 00:25:49 -0500 (EST)
Message-Id: <d101f08a4edaa96f5dff038447f9fc8bf021aa9b.1291785237.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1291785237.git.scott.a.garman@intel.com>
References: <cover.1291785237.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Date: Tue, 7 Dec 2010 20:59:06 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 33741304F9.50510
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 1/1] Make poky-qemu and related scripts work with arbitrary SDK locations
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
X-List-Received-Date: Wed, 08 Dec 2010 05:25:53 -0000

* No longer assume SDK toolchains are installed in /opt/poky
* [BUGFIX #568] where specifying paths to both the kernel and fs
  image caused an error due to POKY_NATIVE_SYSROOT never being
  set, triggering failure of poky-qemu-ifup/ifdown
* Cosmetic improvements to usage() functions by using basename

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 scripts/poky-find-native-sysroot |    2 +-
 scripts/poky-qemu                |   38 ++++++++++++++++++++++----------------
 scripts/poky-qemu-ifdown         |    9 +--------
 scripts/poky-qemu-ifup           |    9 +--------
 scripts/poky-qemu-internal       |   16 +---------------
 5 files changed, 26 insertions(+), 48 deletions(-)

diff --git a/scripts/poky-find-native-sysroot b/scripts/poky-find-native-sysroot
index d8002f9..2262294 100755
--- a/scripts/poky-find-native-sysroot
+++ b/scripts/poky-find-native-sysroot
@@ -1,7 +1,7 @@
 #!/bin/bash
 #
 # Find a native sysroot to use - either from an in-tree Poky build or
-# from a toolchain installation in /opt/poky. It then ensures the variable
+# from a toolchain installation. It then ensures the variable
 # $POKY_NATIVE_SYSROOT is set to the sysroot's base directory, and sets 
 # $PSEUDO to the path of the pseudo binary.
 #
diff --git a/scripts/poky-qemu b/scripts/poky-qemu
index bc312e0..67af439 100755
--- a/scripts/poky-qemu
+++ b/scripts/poky-qemu
@@ -31,9 +31,9 @@ usage() {
     echo "    serial - enables a serial console on /dev/ttyS0"
     echo ""
     echo "Examples:"
-    echo "  $0 qemuarm"
-    echo "  $0 qemux86-64 poky-image-sato ext3"
-    echo "  $0 path/to/bzImage-qemux86.bin path/to/nfsrootdir/ serial"
+    echo "  $MYNAME qemuarm"
+    echo "  $MYNAME qemux86-64 poky-image-sato ext3"
+    echo "  $MYNAME path/to/bzImage-qemux86.bin path/to/nfsrootdir/ serial"
     exit 1
 }
 
@@ -213,23 +213,29 @@ setup_tmpdir() {
                 echo "before running this script" >&2;
                 exit 1; }
 
-            # We have bitbake in PATH, get TMPDIR and BUILD_SYS
-            # from the environment
+            # We have bitbake in PATH, get TMPDIR from bitbake
             TMPDIR=`bitbake -e | grep TMPDIR=\" | cut -d '=' -f2 | cut -d '"' -f2`
-            BUILD_SYS=`bitbake -e | grep BUILD_SYS=\" | cut -d '=' -f2 | cut -d '"' -f2`
         else
-            BUILD_ARCH=`uname -m`
-            BUILD_OS=`uname | tr '[A-Z]' '[a-z]'`
-            BUILD_SYS="$BUILD_ARCH-$BUILD_OS"
             TMPDIR=$BUILDDIR/tmp
         fi
-        if [ -z "$POKY_NATIVE_SYSROOT" ]; then
-            POKY_NATIVE_SYSROOT=$TMPDIR/sysroots/$BUILD_SYS
-        fi
-        CROSSPATH=$POKY_NATIVE_SYSROOT/usr/bin
     fi
 }
 
+setup_sysroot() {
+	# Toolchain installs set up $POKY_NATIVE_SYSROOT in their
+	# environment script. If that variable isn't set, we're
+	# either in an in-tree poky scenario or the environment
+	# script wasn't source'd.
+	if [ -z "$POKY_NATIVE_SYSROOT" ]; then
+		setup_tmpdir
+		BUILD_ARCH=`uname -m`
+		BUILD_OS=`uname | tr '[A-Z]' '[a-z]'`
+		BUILD_SYS="$BUILD_ARCH-$BUILD_OS"
+
+		POKY_NATIVE_SYSROOT=$TMPDIR/sysroots/$BUILD_SYS
+	fi 
+}
+
 # Locate a rootfs image based on defaults defined above
 findimage() {
     where=$1
@@ -254,8 +260,6 @@ findimage() {
 }
 
 if [[ -e "$ROOTFS" && -z "$FSTYPE" ]]; then
-    setup_tmpdir
-
     # Extract the filename extension
     EXT=`echo $ROOTFS | awk -F . '{ print \$NF }'`
     if [[ "x$EXT" == "xext2" || "x$EXT" == "xext3" || 
@@ -281,7 +285,6 @@ fi
 # KERNEL is now set for all cases
 
 if [ -z "$FSTYPE" ]; then
-    setup_tmpdir
     eval FSTYPE=\$${machine2}_DEFAULT_FSTYPE
 
     if [ -z "$FSTYPE" ]; then
@@ -318,6 +321,9 @@ echo "KERNEL: [$KERNEL]"
 echo "ROOTFS: [$ROOTFS]"
 echo "FSTYPE: [$FSTYPE]"
 
+setup_sysroot
+# POKY_NATIVE_SYSROOT is now set for all cases
+
 # We can't run without a libGL.so
 libgl='no'
 
diff --git a/scripts/poky-qemu-ifdown b/scripts/poky-qemu-ifdown
index 60ca919..bc90a9c 100755
--- a/scripts/poky-qemu-ifdown
+++ b/scripts/poky-qemu-ifdown
@@ -27,7 +27,7 @@
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
 usage() {
-	echo "sudo $0 <tap-dev> <native-sysroot-basedir>"
+	echo "sudo $(basename $0) <tap-dev> <native-sysroot-basedir>"
 }
 
 if [ $EUID -ne 0 ]; then
@@ -46,13 +46,6 @@ NATIVE_SYSROOT_DIR=$2
 TUNCTL=$NATIVE_SYSROOT_DIR/usr/bin/tunctl
 if [ ! -e "$TUNCTL" ]; then
 	echo "Error: Unable to find tunctl binary in '$NATIVE_SYSROOT_DIR/usr/bin'"
-
-	if [[ "$NATIVE_SYSROOT_DIR" =~ ^\/opt\/poky ]]; then
-		echo "This shouldn't happen - something is wrong with your toolchain installation"
-	else
-		echo "Have you run 'bitbake meta-ide-support'?"
-	fi
-
 	exit 1
 fi
 
diff --git a/scripts/poky-qemu-ifup b/scripts/poky-qemu-ifup
index 8685c83..f82848c 100755
--- a/scripts/poky-qemu-ifup
+++ b/scripts/poky-qemu-ifup
@@ -34,7 +34,7 @@
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
 usage() {
-	echo "sudo $0 <gid> <native-sysroot-basedir>"
+	echo "sudo $(basename $0) <gid> <native-sysroot-basedir>"
 }
 
 if [ $EUID -ne 0 ]; then
@@ -53,13 +53,6 @@ NATIVE_SYSROOT_DIR=$2
 TUNCTL=$NATIVE_SYSROOT_DIR/usr/bin/tunctl
 if [ ! -x "$TUNCTL" ]; then
 	echo "Error: Unable to find tunctl binary in '$NATIVE_SYSROOT_DIR/usr/bin'"
-
-	if [[ "$NATIVE_SYSROOT_DIR" =~ ^\/opt\/poky ]]; then
-		echo "This shouldn't happen - something is wrong with your toolchain installation"
-	else
-		echo "Have you run 'bitbake meta-ide-support'?"
-	fi
-	
 	exit 1
 fi
 
diff --git a/scripts/poky-qemu-internal b/scripts/poky-qemu-internal
index 62c1040..ca2511a 100755
--- a/scripts/poky-qemu-internal
+++ b/scripts/poky-qemu-internal
@@ -394,23 +394,9 @@ if [ "x$QEMUOPTIONS" = "x" ]; then
     return
 fi
 
-SDKDIR="/opt/poky/sysroots"
-if [ "$MACHINE" = "qemuarm" -o "$MACHINE" = "spitz" -o "$MACHINE" = "borzoi" -o "$MACHINE" = "akita" -o "$MACHINE" = "nokia800" ]; then
-    SDKPATH="$SDKDIR/arm-poky-linux-gnueabi/bin"
-fi
-
-if [ "$MACHINE" = "qemux86" ]; then
-    SDKPATH="$SDKDIR/i586-poky-linux/bin"
-fi
-
-if [ "$MACHINE" = "qemux86-64" ]; then
-    SDKPATH="$SDKDIR/x86_64-poky-linux/bin"
-fi
-
-PATH=$CROSSPATH:$SDKPATH:$PATH
+PATH=$CROSSPATH:$POKY_NATIVE_SYSROOT/usr/bin:$PATH
 
 QEMUBIN=`which $QEMU`
-
 if [ ! -x "$QEMUBIN" ]; then
     echo "Error: No QEMU binary '$QEMU' could be found."
     cleanup
-- 
1.7.1


