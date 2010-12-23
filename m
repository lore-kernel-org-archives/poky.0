Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D3A04C811F5
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:27:08 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 Dec 2010 06:27:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="690189109"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by orsmga001.jf.intel.com with ESMTP; 23 Dec 2010 06:27:07 -0800
Message-Id: <955d570fa9b28f309c7bfa3e3702232b5216a8a8.1293114004.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293114003.git.sgw@linux.intel.com>
References: <cover.1293114003.git.sgw@linux.intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Old-Date: Wed, 22 Dec 2010 21:22:24 +0800
Date: Thu, 23 Dec 2010  6:27:07 -0800
To: poky@yoctoproject.org
Subject: [PATCH 08/28] qemu: Add some checks before enabling KVM
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
X-List-Received-Date: Thu, 23 Dec 2010 14:27:08 -0000

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
1.7.2.3


