Return-Path: <edwin.zhai@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B68D44C8115C
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 07:32:12 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 22 Dec 2010 05:32:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,213,1291622400"; d="scan'208";a="870879375"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.31])
	by fmsmga001.fm.intel.com with ESMTP; 22 Dec 2010 05:32:11 -0800
Message-Id: <e2624f17516d9b3cc3d6ff08a2910b6e383ac292.1293024880.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1293024880.git.edwin.zhai@intel.com>
References: <cover.1293024880.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Wed, 22 Dec 2010 21:22:24 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/3] qemu: Add some checks before enabling KVM
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
X-List-Received-Date: Wed, 22 Dec 2010 13:32:13 -0000

Check the missing modules and permission with informative output.

[BUGID #599] got fixed.

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 scripts/poky-qemu |   25 ++++++++++++++++++++++---
 1 files changed, 22 insertions(+), 3 deletions(-)

diff --git a/scripts/poky-qemu b/scripts/poky-qemu
index 313248f..b19a89d 100755
--- a/scripts/poky-qemu
+++ b/scripts/poky-qemu
@@ -29,7 +29,7 @@ usage() {
     echo "  Additional QEMU command-line options can be passed with:"
     echo "    nographic - disables video console"
     echo "    serial - enables a serial console on /dev/ttyS0"
-    echo "    kvm - enables kvm"
+    echo "    kvm - enables KVM when running qemux86/qemux86-64, VT capable CPU required"
     echo "    \"<extra-qemu-options>\" - enables extra qemu options, excluding serial and kvm"
     echo ""
     echo "Examples:"
@@ -171,10 +171,29 @@ while [ $i -le $# ]; do
     i=$((i + 1))
 done
 
+POKY_KVM_WIKI="https://wiki.yoctoproject.org/wiki/How_to_enable_KVM_for_Poky_qemu"
 # Detect KVM configuration
-if [[ "x$KVM_ENABLED" == "xyes" && ! -z "$KVM_CAPABLE" ]]; then
-    if [[ "x$MACHINE" == "xqemux86" || "x$MACHINE" == "xqemux86-64" ]]; then
+if [[ "x$KVM_ENABLED" == "xyes" ]]; then
+    if [[ -z "$KVM_CAPABLE" ]]; then
+        echo "You are tring to enable KVM on cpu without VT support. Remove kvm from the command-line, or refer";
+        echo "$POKY_KVM_WIKI";
+        exit 1;
+    fi
+    if [[ "x$MACHINE" != "xqemux86" && "x$MACHINE" != "xqemux86-64" ]]; then
+        echo "KVM only support x86 & x86-64. Remove kvm from the command-line";
+        exit 1;
+    fi
+    if [ ! -e /dev/kvm ]; then
+        echo "Missing KVM device. Have you inserted kvm modules? Pls. refer";
+        echo "$POKY_KVM_WIKI";
+        exit 1;
+    fi
+    if 9<>/dev/kvm ; then
         SCRIPT_QEMU_OPT="$SCRIPT_QEMU_OPT -enable-kvm"
+    else
+        echo "You have no rights on /dev/kvm. Pls. change the owndership as described at";
+        echo "$POKY_KVM_WIKI";
+        exit 1;
     fi
 fi
 
-- 
1.7.0.4


