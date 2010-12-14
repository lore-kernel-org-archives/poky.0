Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id DF0044C811E4
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 10:28:34 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 15 Dec 2010 08:28:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,349,1288594800"; d="scan'208";a="636610353"
Received: from unknown (HELO localhost) ([10.255.16.78])
	by fmsmga002.fm.intel.com with ESMTP; 15 Dec 2010 08:28:34 -0800
Message-Id: <0cc23a86562d0ce1e236ceb4a56a8f19d400192f.1292430240.git.josh@linux.intel.com>
In-Reply-To: <cover.1292430240.git.josh@linux.intel.com>
References: <cover.1292430240.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Tue, 14 Dec 2010 12:21:33 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 06/14] busybox: additional fixes for Make 3.82
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
X-List-Received-Date: Wed, 15 Dec 2010 16:28:35 -0000

There where still some mixed implicit and normal rules in the Busybox Makefile,
Update our existing make-382.patch to split these into separate rules.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 .../busybox/busybox-1.16.2/make-382-fix.patch      |   43 +++++++++++++++++---
 1 files changed, 37 insertions(+), 6 deletions(-)

diff --git a/meta/recipes-core/busybox/busybox-1.16.2/make-382-fix.patch b/meta/recipes-core/busybox/busybox-1.16.2/make-382-fix.patch
index 4ef125d..010457c 100644
--- a/meta/recipes-core/busybox/busybox-1.16.2/make-382-fix.patch
+++ b/meta/recipes-core/busybox/busybox-1.16.2/make-382-fix.patch
@@ -6,10 +6,10 @@ Subject: mkmakefile: make 3.82 fix
 Signed-off-by: Thomas Chou <thomas@wytron.com.tw>
 Signed-off-by: Denys Vlasenko <dvlasenk@redhat.com>
 ---
-diff --git a/scripts/mkmakefile b/scripts/mkmakefile
-index 7f9d544..9fc51a7 100755
---- a/scripts/mkmakefile
-+++ b/scripts/mkmakefile
+Index: busybox-1.16.2/scripts/mkmakefile
+===================================================================
+--- busybox-1.16.2.orig/scripts/mkmakefile
++++ busybox-1.16.2/scripts/mkmakefile
 @@ -31,6 +31,9 @@ all:
  
  Makefile:;
@@ -21,5 +21,36 @@ index 7f9d544..9fc51a7 100755
 +%/:
  	\$(MAKE) -C \$(KERNELSRC) O=\$(KERNELOUTPUT) \$@
  EOF
---
-cgit v0.8.2.1
+Index: busybox-1.16.2/Makefile
+===================================================================
+--- busybox-1.16.2.orig/Makefile
++++ busybox-1.16.2/Makefile
+@@ -428,11 +428,15 @@ ifeq ($(config-targets),1)
+ -include $(srctree)/arch/$(ARCH)/Makefile
+ export KBUILD_DEFCONFIG
+ 
+-config %config: scripts_basic outputmakefile FORCE
++config: scripts_basic outputmakefile FORCE
+ 	$(Q)mkdir -p include
+ 	$(Q)$(MAKE) $(build)=scripts/kconfig $@
+ 	$(Q)$(MAKE) -C $(srctree) KBUILD_SRC= .kernelrelease
+ 
++%config: scripts_basic outputmakefile FORCE
++	$(Q)mkdir -p include
++	$(Q)$(MAKE) $(build)=scripts/kconfig $@
++	$(Q)$(MAKE) -C $(srctree) KBUILD_SRC= .kernelrelease
+ else
+ # ===========================================================================
+ # Build targets only - this includes busybox, arch specific targets, clean
+@@ -1280,7 +1284,10 @@ endif
+ 	$(Q)$(MAKE) $(build)=$(build-dir) $(target-dir)$(notdir $@)
+ 
+ # Modules
+-/ %/: prepare scripts FORCE
++%/: prepare scripts FORCE
++	$(Q)$(MAKE) KBUILD_MODULES=$(if $(CONFIG_MODULES),1) \
++	$(build)=$(build-dir)
++/: prepare scripts FORCE
+ 	$(Q)$(MAKE) KBUILD_MODULES=$(if $(CONFIG_MODULES),1) \
+ 	$(build)=$(build-dir)
+ %.ko: prepare scripts FORCE
-- 
1.7.3.3


