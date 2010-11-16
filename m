Return-Path: <scott.a.garman@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C140A4C80FAC
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 16:59:48 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Nov 2010 14:59:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,207,1288594800"; d="scan'208";a="627482601"
Received: from unknown (HELO localhost) ([10.7.199.163])
	by fmsmga002.fm.intel.com with ESMTP; 16 Nov 2010 14:59:48 -0800
Message-Id: <99e07a2a403421f9a1d2f70d8b1e7493850f1509.1289947396.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1289947396.git.scott.a.garman@intel.com>
References: <cover.1289947396.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Date: Tue, 16 Nov 2010 12:56:11 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] busybox: Fix another make 3.82 issue
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
X-List-Received-Date: Tue, 16 Nov 2010 22:59:48 -0000

This fixes two "mixed implicit and normal rules" Makefile errors
during do_configure, seen on Fedora 14 build hosts.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../busybox/busybox-1.16.2/make-382-fix2.patch     |   24 ++++++++++++++++++++
 meta/recipes-core/busybox/busybox_1.16.2.bb        |    1 +
 2 files changed, 25 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-core/busybox/busybox-1.16.2/make-382-fix2.patch

diff --git a/meta/recipes-core/busybox/busybox-1.16.2/make-382-fix2.patch b/meta/recipes-core/busybox/busybox-1.16.2/make-382-fix2.patch
new file mode 100644
index 0000000..b5f18cb
--- /dev/null
+++ b/meta/recipes-core/busybox/busybox-1.16.2/make-382-fix2.patch
@@ -0,0 +1,24 @@
+# Fix to build with make v3.82 (needed for Fedora 14 host)
+# Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
+diff -urN busybox-1.16.2.orig/Makefile busybox-1.16.2/Makefile
+--- busybox-1.16.2.orig/Makefile	2010-06-12 06:51:56.000000000 -0700
++++ busybox-1.16.2/Makefile	2010-11-16 12:49:42.890122989 -0800
+@@ -428,7 +428,7 @@
+ -include $(srctree)/arch/$(ARCH)/Makefile
+ export KBUILD_DEFCONFIG
+ 
+-config %config: scripts_basic outputmakefile FORCE
++%config: scripts_basic outputmakefile FORCE
+ 	$(Q)mkdir -p include
+ 	$(Q)$(MAKE) $(build)=scripts/kconfig $@
+ 	$(Q)$(MAKE) -C $(srctree) KBUILD_SRC= .kernelrelease
+@@ -1276,7 +1276,7 @@
+ 	$(Q)$(MAKE) $(build)=$(build-dir) $(target-dir)$(notdir $@)
+ 
+ # Modules
+-/ %/: prepare scripts FORCE
++%/: prepare scripts FORCE
+ 	$(Q)$(MAKE) KBUILD_MODULES=$(if $(CONFIG_MODULES),1) \
+ 	$(build)=$(build-dir)
+ %.ko: prepare scripts FORCE
diff --git a/meta/recipes-core/busybox/busybox_1.16.2.bb b/meta/recipes-core/busybox/busybox_1.16.2.bb
index 6e53502..b358fe0 100644
--- a/meta/recipes-core/busybox/busybox_1.16.2.bb
+++ b/meta/recipes-core/busybox/busybox_1.16.2.bb
@@ -9,6 +9,7 @@ SRC_URI = "http://www.busybox.net/downloads/busybox-${PV}.tar.bz2;name=tarball \
            file://busybox-appletlib-dependency.patch \
            file://run-parts.in.usr-bin.patch \
            file://make-382-fix.patch \
+           file://make-382-fix2.patch \
            file://find-touchscreen.sh \
            file://busybox-cron \
            file://busybox-httpd \
-- 
1.7.3.2


