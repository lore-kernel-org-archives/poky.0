Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7A5284C80523
	for <poky@yoctoproject.org>; Tue, 10 May 2011 15:49:06 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 May 2011 13:49:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,347,1301900400"; 
   d="scan'208";a="541375"
Received: from unknown (HELO localhost) ([10.255.12.106])
	by fmsmga001.fm.intel.com with ESMTP; 10 May 2011 13:48:58 -0700
Message-Id: <d3a3b40425e885e77428c24f2c0332fcf30ccc0e.1305058814.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1305058813.git.tom.zanussi@intel.com>
References: <cover.1305058813.git.tom.zanussi@intel.com>
Old-Date: Tue, 3 May 2011 16:56:56 -0500
Date: Tue, 10 May 2011 15:48:48 -0500
To: bruce.ashfield@windriver.com,poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [KERNEL][linux-yocto-dev PATCH 2/3] yocto/emgd: build fixups
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
X-List-Received-Date: Tue, 10 May 2011 20:49:06 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add emgd config option (DRM_EGD) and modify Makefiles for in-tree
builds.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/drm/Kconfig       |    9 +++++++++
 drivers/gpu/drm/Makefile      |    1 +
 drivers/gpu/drm/emgd/Makefile |   41 ++++-------------------------------------
 3 files changed, 14 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
index a6feb78..b041620 100644
--- a/drivers/gpu/drm/Kconfig
+++ b/drivers/gpu/drm/Kconfig
@@ -156,3 +156,12 @@ config DRM_SAVAGE
 	help
 	  Choose this option if you have a Savage3D/4/SuperSavage/Pro/Twister
 	  chipset. If M is selected the module will be called savage.
+
+config DRM_EGD
+       tristate "Intel EMGD"
+       depends on DRM
+       select DRM_KMS_HELPER
+       help
+         Choose this option if you have an EMGD-supported chipset
+         (Intel E6xx or System Controller Hub US15W/US15WP/WPT).
+         If M is selected the module will be called emgd.
diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
index 89cf05a..1eb1dd5 100644
--- a/drivers/gpu/drm/Makefile
+++ b/drivers/gpu/drm/Makefile
@@ -35,4 +35,5 @@ obj-$(CONFIG_DRM_SAVAGE)+= savage/
 obj-$(CONFIG_DRM_VMWGFX)+= vmwgfx/
 obj-$(CONFIG_DRM_VIA)	+=via/
 obj-$(CONFIG_DRM_NOUVEAU) +=nouveau/
+obj-$(CONFIG_DRM_EGD)  +=emgd/
 obj-y			+= i2c/
diff --git a/drivers/gpu/drm/emgd/Makefile b/drivers/gpu/drm/emgd/Makefile
index d673fe9..556600f 100755
--- a/drivers/gpu/drm/emgd/Makefile
+++ b/drivers/gpu/drm/emgd/Makefile
@@ -24,10 +24,6 @@
 #----------------------------------------------------------------------------
 export EGD_TOPLEVEL = DRM Driver
 
-KERNELVER ?= $(shell uname -r)
-KERNELDIR ?= /lib/modules/$(KERNELVER)/build
-INSTALLDIR ?= /lib/modules/$(KERNELVER)/kernel/drivers/gpu/drm/emgd
-
 BLUE = \033[34m
 OFF = \033[0m
 BUILD ?= release
@@ -35,7 +31,7 @@ CONFIG_PVR_RELEASE ?= $(BUILD)
 CONFIG_DRM_EGD ?= m
 
 # Get the include paths pointed to the right place. 
-export  EMGD_MOD_DIR ?= $(CURDIR)
+export  EMGD_MOD_DIR ?= $(obj)
 
 # Note the hardcoded '2.6.32-5' directory is a temporary hack for Debian
 # which structures its kernel headers package into two different
@@ -52,7 +48,7 @@ PROJECT_INCLUDES = \
 	   -I$(EMGD_MOD_DIR)/emgd/cfg \
 	   -I$(EMGD_MOD_DIR)/emgd/pal/lpd \
 	   -I$(EMGD_MOD_DIR)/emgd/drm \
-	   -I$(KERNELDIR)/include/drm \
+	   -Iinclude/drm \
 	   -I/usr/src/linux-headers-2.6.32-5-common/include/drm \
 	   -I$(EMGD_MOD_DIR)/pvr/include4 \
 	   -I$(EMGD_MOD_DIR)/pvr/services4/include \
@@ -125,6 +121,8 @@ ifeq ($(PDUMP),1)
 	EXTRA_CFLAGS += -DPDUMP=1
 endif
 
+ccflags-y += $(EXTRA_CFLAGS)
+
 EMGD_OBJS := \
 	emgd/drm/emgd_fb.o \
 	emgd/drm/emgd_mmap.o \
@@ -283,34 +281,3 @@ ifeq ($(PDUMP),1)
 endif
 
 obj-$(CONFIG_DRM_EGD) += emgd.o
-
-all:: clean modules
-
-modules::
-	@echo $(CURDIR) -- $(CONFIG_PVR_RELEASE)
-	@echo "$(MAKE) -C $(KERNELDIR) M=$(CURDIR) modules"
-	@$(MAKE) -C $(KERNELDIR) M=$(CURDIR) modules
-
-clean::
-	@rm -f $(emgd-y)
-	@rm -f emgd.o emgd.mod.* emgd.ko Module.* modules.order
-	@find . -name "*.cmd" -exec rm '{}' \;
-
-install::
-	install -o root -g root -m 755 -d $(INSTALLDIR)
-	install -o root -g root -m 744 emgd.ko $(INSTALLDIR)
-	/sbin/depmod -a
-
-uninstall::
-	rmmod $(INSTALLDIR)/emgd.ko
-	rm -rf $(INSTALLDIR)/emgd.ko
-	/sbin/depmod -a
-
-debug::
-	export CONFIG_PVR_RELEASE=debug; $(MAKE) modules
-
-package:: clean
-	@echo -e "$(BLUE)Packaging $(EGD_TOPLEVEL)$(OFF)";
-	mkdir -p $(EGD_PKG)
-	tar -C $(EMGD_MOD_DIR) --exclude "CVS" -czf $(EGD_PKG)/emgd_drm.tgz *
-
-- 
1.7.0.4


