Return-Path: <paul.eggleton@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8CDF84C80052
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 09:03:38 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Nov 2010 07:03:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,223,1288594800"; d="scan'208";a="679121343"
Received: from unknown (HELO helios.localnet) ([10.255.16.119])
	by orsmga001.jf.intel.com with ESMTP; 19 Nov 2010 07:03:36 -0800
From: Paul Eggleton <paul.eggleton@intel.com>
Organization: Intel Corporation
To: poky@yoctoproject.org
Date: Fri, 19 Nov 2010 15:03:32 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-22-generic-pae; KDE/4.5.1; i686; ; )
MIME-Version: 1.0
Message-Id: <201011191503.33006.paul.eggleton@intel.com>
Subject: [PATCH] qemu: fix failure to find zlib header files during configure
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
X-List-Received-Date: Fri, 19 Nov 2010 15:03:39 -0000
Content-Type: Text/Plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Corrects problems during configure of qemu-native due to the BUILD_CFLAGS
not being included when attempting to compile the test program for zlib
within the configure script.

Signed-off-by: Paul Eggleton <paul.eggleton@intel.com>
---
 .../qemu/qemu-0.12.4/fix-configure-checks.patch    |   12 ++++++++++++
 meta/recipes-devtools/qemu/qemu_0.12.4.bb          |    3 ++-
 2 files changed, 14 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-devtools/qemu/qemu-0.12.4/fix-configure-checks.patch

diff --git a/meta/recipes-devtools/qemu/qemu-0.12.4/fix-configure-checks.patch b/meta/recipes-devtools/qemu/qemu-0.12.4/fix-configure-checks.patch
new file mode 100644
index 0000000..5d81fc3
--- /dev/null
+++ b/meta/recipes-devtools/qemu/qemu-0.12.4/fix-configure-checks.patch
@@ -0,0 +1,12 @@
+Index: qemu-0.12.4/configure
+===================================================================
+--- qemu-0.12.4.orig/configure
++++ qemu-0.12.4/configure
+@@ -99,6 +99,7 @@ QEMU_CFLAGS="-Wstrict-prototypes -Wredun
+ QEMU_CFLAGS="-D_GNU_SOURCE -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE $QEMU_CFLAGS"
+ QEMU_CFLAGS="-U_FORTIFY_SOURCE $QEMU_CFLAGS"
+ QEMU_CFLAGS="-I. -I\$(SRC_PATH) $QEMU_CFLAGS"
++QEMU_CFLAGS="$QEMU_CFLAGS $BUILD_CFLAGS"
+ LDFLAGS="-g $LDFLAGS"
+ 
+ gcc_flags="-Wold-style-declaration -Wold-style-definition"
diff --git a/meta/recipes-devtools/qemu/qemu_0.12.4.bb b/meta/recipes-devtools/qemu/qemu_0.12.4.bb
index 6e7d86f..ec0d9d2 100644
--- a/meta/recipes-devtools/qemu/qemu_0.12.4.bb
+++ b/meta/recipes-devtools/qemu/qemu_0.12.4.bb
@@ -1,6 +1,6 @@
 require qemu.inc
 
-PR = "r22"
+PR = "r23"
 
 FILESPATH = "${FILE_DIRNAME}/qemu-${PV}"
 FILESDIR = "${WORKDIR}"
@@ -21,6 +21,7 @@ SRC_URI = "\
     file://arm-cp15-fix.patch \
     file://cursor-shadow-fix.patch \
     file://vmware-vga-fifo-rewind.patch \
+    file://fix-configure-checks.patch \
     file://powerpc_rom.bin"
 
 do_install_append () {
-- 
1.7.3.1

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


