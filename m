Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id DB9014C811E4
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 10:28:41 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Dec 2010 08:28:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,349,1288594800"; d="scan'208";a="687433067"
Received: from unknown (HELO localhost) ([10.255.16.78])
	by orsmga001.jf.intel.com with ESMTP; 15 Dec 2010 08:28:40 -0800
Message-Id: <0f8244faba5c36c0580081c112ea27ce683af99b.1292430240.git.josh@linux.intel.com>
In-Reply-To: <cover.1292430240.git.josh@linux.intel.com>
References: <cover.1292430240.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Tue, 14 Dec 2010 12:49:13 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 07/14] linux-libc-headers: fix for Make 3.82
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
X-List-Received-Date: Wed, 15 Dec 2010 16:28:42 -0000

Fix the kernel Makefile for use with Make 3.82 by splitting mixed implicit and
normal rules into separate rules.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 .../connector-msg-size-fix.patch                   |    4 +-
 .../linux-libc-headers/make-382.patch              |   36 ++++++++++++++++++++
 .../linux-libc-headers_2.6.34.bb                   |    7 ++--
 3 files changed, 42 insertions(+), 5 deletions(-)
 create mode 100644 meta/recipes-kernel/linux-libc-headers/linux-libc-headers/make-382.patch

diff --git a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers/connector-msg-size-fix.patch b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers/connector-msg-size-fix.patch
index 60072c7..f26b99b 100644
--- a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers/connector-msg-size-fix.patch
+++ b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers/connector-msg-size-fix.patch
@@ -14,8 +14,8 @@ Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
 
 Index: linux-2.6.34/include/linux/connector.h
 ===================================================================
---- linux-2.6.34.orig/include/linux/connector.h	2010-09-30 14:15:25.000000000 +0800
-+++ linux-2.6.34/include/linux/connector.h	2010-09-30 14:15:43.000000000 +0800
+--- linux-2.6.34.orig/include/linux/connector.h
++++ linux-2.6.34/include/linux/connector.h
 @@ -48,7 +48,7 @@
  /*
   * Maximum connector's message size.
diff --git a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers/make-382.patch b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers/make-382.patch
new file mode 100644
index 0000000..5ffe2fe
--- /dev/null
+++ b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers/make-382.patch
@@ -0,0 +1,36 @@
+Index: linux-2.6.34/arch/powerpc/Makefile
+===================================================================
+--- linux-2.6.34.orig/arch/powerpc/Makefile
++++ linux-2.6.34/arch/powerpc/Makefile
+@@ -158,9 +158,10 @@ drivers-$(CONFIG_OPROFILE)	+= arch/power
+ # Default to zImage, override when needed
+ all: zImage
+ 
+-BOOT_TARGETS = zImage zImage.initrd uImage zImage% dtbImage% treeImage.% cuImage.% simpleImage.%
++BOOT_TARGETS1 = zImage zImage.initrd uImage
++BOOT_TARGETS2 = zImage% dtbImage% treeImage.% cuImage.% simpleImage.%
+ 
+-PHONY += $(BOOT_TARGETS)
++PHONY += $(BOOT_TARGETS1) $(BOOT_TARGETS2)
+ 
+ boot := arch/$(ARCH)/boot
+ 
+@@ -175,10 +176,16 @@ relocs_check: arch/powerpc/relocs_check.
+ zImage: relocs_check
+ endif
+ 
+-$(BOOT_TARGETS): vmlinux
++$(BOOT_TARGETS1): vmlinux
+ 	$(Q)$(MAKE) ARCH=ppc64 $(build)=$(boot) $(patsubst %,$(boot)/%,$@)
+ 
+-bootwrapper_install %.dtb:
++$(BOOT_TARGETS2): vmlinux
++	$(Q)$(MAKE) ARCH=ppc64 $(build)=$(boot) $(patsubst %,$(boot)/%,$@)
++
++bootwrapper_install:
++	$(Q)$(MAKE) ARCH=ppc64 $(build)=$(boot) $(patsubst %,$(boot)/%,$@)
++
++%.dtb:
+ 	$(Q)$(MAKE) ARCH=ppc64 $(build)=$(boot) $(patsubst %,$(boot)/%,$@)
+ 
+ define archhelp
diff --git a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_2.6.34.bb b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_2.6.34.bb
index 685b70a..d62fa83 100644
--- a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_2.6.34.bb
+++ b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_2.6.34.bb
@@ -2,11 +2,12 @@ require linux-libc-headers.inc
 
 INHIBIT_DEFAULT_DEPS = "1"
 DEPENDS += "unifdef-native"
-PR = "r1"
+PR = "r2"
 
 SRC_URI += "file://hayes-gone.patch \
-           file://ppc_glibc_build_fix.patch \
-           file://connector-msg-size-fix.patch"
+	    file://ppc_glibc_build_fix.patch \
+	    file://make-382.patch \
+	    file://connector-msg-size-fix.patch"
 
 S = "${WORKDIR}/linux-${PV}"
 
-- 
1.7.3.3


