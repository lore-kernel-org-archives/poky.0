Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id E878B4C811E7
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 19:12:52 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 07 Dec 2010 17:12:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,313,1288594800"; d="scan'208";a="634165037"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by fmsmga002.fm.intel.com with ESMTP; 07 Dec 2010 17:12:52 -0800
Message-Id: <d2b8534f05c77f9081c3df3e55adf95731c2296a.1291769648.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1291769648.git.edwin.zhai@intel.com>
References: <cover.1291769648.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Thu, 2 Dec 2010 15:11:53 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] qemu: Enable KVM support on x86/x86-64 host
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
X-List-Received-Date: Wed, 08 Dec 2010 01:12:53 -0000

User need build kvm module for native kernel and install them by "modprobe
kvm_intel". Then add "kvm" option to poky-qemu to enable it.

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 meta/recipes-devtools/qemu/qemu.inc |    2 +-
 scripts/poky-qemu                   |   12 ++++++++++++
 2 files changed, 13 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/qemu/qemu.inc b/meta/recipes-devtools/qemu/qemu.inc
index 12ce82f..33c2c71 100644
--- a/meta/recipes-devtools/qemu/qemu.inc
+++ b/meta/recipes-devtools/qemu/qemu.inc
@@ -3,7 +3,7 @@ HOMEPAGE = "http://qemu.org"
 LICENSE = "GPLv2 & LGPLv2.1"
 DEPENDS = "zlib"
 
-EXTRA_OECONF = "--target-list=arm-linux-user,arm-softmmu,i386-linux-user,i386-softmmu,x86_64-linux-user,x86_64-softmmu,mips-linux-user,mips-softmmu,ppc-linux-user,ppc-softmmu,mipsel-linux-user --disable-werror --disable-vnc-tls"
+EXTRA_OECONF = "--target-list=arm-linux-user,arm-softmmu,i386-linux-user,i386-softmmu,x86_64-linux-user,x86_64-softmmu,mips-linux-user,mips-softmmu,ppc-linux-user,ppc-softmmu,mipsel-linux-user --disable-werror --disable-vnc-tls --enable-kvm"
 #EXTRA_OECONF += "--disable-sdl"
 
 inherit autotools
diff --git a/scripts/poky-qemu b/scripts/poky-qemu
index bc312e0..05deb81 100755
--- a/scripts/poky-qemu
+++ b/scripts/poky-qemu
@@ -84,6 +84,7 @@ process_filename() {
 
 # Parse command line args without requiring specific ordering. It's a
 # bit more complex, but offers a great user experience.
+KVM_ENABLED="no"
 i=1
 while [ $i -le $# ]; do
     arg=${!i}
@@ -124,6 +125,10 @@ while [ $i -le $# ]; do
             SCRIPT_QEMU_OPT="$SCRIPT_QEMU_OPT -serial stdio"
             SCRIPT_KERNEL_OPT="$SCRIPT_KERNEL_OPT console=ttyS0"
             ;;
+        "kvm")
+            KVM_ENABLED="yes"
+            KVM_CAPABLE=`grep 'vmx\|smx' /proc/cpuinfo`
+            ;;
         *)
             # A directory name is an nfs rootfs
             if [ -d "$arg" ]; then
@@ -152,6 +157,13 @@ while [ $i -le $# ]; do
     i=$((i + 1))
 done
 
+# Detect KVM configuration
+if [[ "x$KVM_ENABLED" == "xyes" && ! -z "$KVM_CAPABLE" ]]; then
+    if [[ "x$MACHINE" == "xqemux86" || "x$MACHINE" == "xqemux86-64" ]]; then
+        SCRIPT_QEMU_OPT="$SCRIPT_QEMU_OPT -enable-kvm"
+    fi
+fi
+
 # Report errors for missing combinations of options
 if [[ -z "$MACHINE" && -z "$KERNEL" ]]; then
     echo "Error: you must specify at least a MACHINE or KERNEL argument"
-- 
1.7.0.4


