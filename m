Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C253B4C80A92
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 18:36:24 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 25 Feb 2011 16:36:24 -0800
Message-Id: <b9dded$i2ioa8@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,229,1297065600"; d="scan'208";a="606691661"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by orsmga002.jf.intel.com with ESMTP; 25 Feb 2011 16:36:23 -0800
Old-Date: Thu, 20 Jan 2011 10:21:34 -0600
Date: Fri, 25 Feb 2011 18:36:19 -0600
To: bruce.ashfield@windriver.com,poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 2/3][KERNEL 2.6.37] emgd: build fixups
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
X-List-Received-Date: Sat, 26 Feb 2011 00:36:24 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add emgd config option (DRM_EGD) and modify Makefiles for in-tree
builds.

Also added 2.6.34 compile fixes here, for bisectibility:

diff --git a/drivers/gpu/drm/emgd/emgd/gmm/gtt.c b/drivers/gpu/drm/emgd/emgd/gmm/gtt.c
index 1123630..9af741c 100644
--- a/drivers/gpu/drm/emgd/emgd/gmm/gtt.c
+++ b/drivers/gpu/drm/emgd/emgd/gmm/gtt.c
@@ -132,7 +132,7 @@ static void invalidate_vma(unsigned long pg_offset, unsigned long bus_addr) {
                        } else {
                                atomic_add_negative(-1, &pte_page(*pte)->_mapcount);
                                put_page(pte_page(*pte));
-                               dec_mm_counter(entry->vma->vm_mm, file_rss);
+                               dec_mm_counter(entry->vma->vm_mm, MM_FILEPAGES);
                        }

                        pte_clear(entry->vma->vm_mm, vaddr, pte);

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/drm/Kconfig             |    9 +++++++
 drivers/gpu/drm/Makefile            |    1 +
 drivers/gpu/drm/emgd/Makefile       |   41 +++-------------------------------
 drivers/gpu/drm/emgd/emgd/gmm/gtt.c |    2 +-
 4 files changed, 15 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
index 7af4436..d1e404d 100644
--- a/drivers/gpu/drm/Kconfig
+++ b/drivers/gpu/drm/Kconfig
@@ -163,3 +163,12 @@ config DRM_SAVAGE
 	help
 	  Choose this option if you have a Savage3D/4/SuperSavage/Pro/Twister
 	  chipset. If M is selected the module will be called savage.
+
+config DRM_EGD
+	tristate "Intel EMGD"
+	depends on DRM
+	select DRM_KMS_HELPER
+	help
+	  Choose this option if you have an EMGD-supported chipset
+	  (Intel E6xx or System Controller Hub US15W/US15WP/WPT).
+	  If M is selected the module will be called emgd.
diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
index 997c43d..cc38afa 100644
--- a/drivers/gpu/drm/Makefile
+++ b/drivers/gpu/drm/Makefile
@@ -36,4 +36,5 @@ obj-$(CONFIG_DRM_SAVAGE)+= savage/
 obj-$(CONFIG_DRM_VMWGFX)+= vmwgfx/
 obj-$(CONFIG_DRM_VIA)	+=via/
 obj-$(CONFIG_DRM_NOUVEAU) +=nouveau/
+obj-$(CONFIG_DRM_EGD)	+=emgd/
 obj-y			+= i2c/
diff --git a/drivers/gpu/drm/emgd/Makefile b/drivers/gpu/drm/emgd/Makefile
index 7661da9..73bf49b 100644
--- a/drivers/gpu/drm/emgd/Makefile
+++ b/drivers/gpu/drm/emgd/Makefile
@@ -19,10 +19,6 @@
 #----------------------------------------------------------------------------
 export EGD_TOPLEVEL = DRM Driver
 
-KERNELVER ?= $(shell uname -r)
-KERNELDIR ?= /lib/modules/$(KERNELVER)/build
-INSTALLDIR ?= /lib/modules/$(KERNELVER)/kernel/drivers/gpu/drm/emgd
-
 BLUE = \033[34m
 OFF = \033[0m
 BUILD ?= release
@@ -30,7 +26,7 @@ CONFIG_PVR_RELEASE ?= $(BUILD)
 CONFIG_DRM_EGD ?= m
 
 # Get the include paths pointed to the right place. 
-export  EMGD_MOD_DIR ?= $(CURDIR)
+export  EMGD_MOD_DIR ?= $(obj)
 
 PROJECT_INCLUDES = \
 	   -I$(EMGD_MOD_DIR)/include \
@@ -41,7 +37,7 @@ PROJECT_INCLUDES = \
 	   -I$(EMGD_MOD_DIR)/emgd/cfg \
 	   -I$(EMGD_MOD_DIR)/emgd/pal/lpd \
 	   -I$(EMGD_MOD_DIR)/emgd/drm \
-	   -I$(KERNELDIR)/include/drm \
+	   -Iinclude/drm \
 	   -I$(EMGD_MOD_DIR)/pvr/include4 \
 	   -I$(EMGD_MOD_DIR)/pvr/services4/include \
 	   -I$(EMGD_MOD_DIR)/pvr/services4/include/env/linux \
@@ -113,6 +109,8 @@ ifeq ($(PDUMP),1)
 	EXTRA_CFLAGS += -DPDUMP=1
 endif
 
+ccflags-y += $(EXTRA_CFLAGS)
+
 EMGD_OBJS := \
 	emgd/drm/emgd_fb.o \
 	emgd/drm/emgd_mmap.o \
@@ -271,34 +269,3 @@ ifeq ($(PDUMP),1)
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
-	mkdir -p $(EGD_PKG)/driver/
-	tar -C $(EMGD_MOD_DIR) --exclude "CVS" -czf $(EGD_PKG)/driver/emgd_drm.tgz *
-
diff --git a/drivers/gpu/drm/emgd/emgd/gmm/gtt.c b/drivers/gpu/drm/emgd/emgd/gmm/gtt.c
index 1123630..9af741c 100644
--- a/drivers/gpu/drm/emgd/emgd/gmm/gtt.c
+++ b/drivers/gpu/drm/emgd/emgd/gmm/gtt.c
@@ -132,7 +132,7 @@ static void invalidate_vma(unsigned long pg_offset, unsigned long bus_addr) {
 			} else {
 				atomic_add_negative(-1, &pte_page(*pte)->_mapcount);
 				put_page(pte_page(*pte));
-				dec_mm_counter(entry->vma->vm_mm, file_rss);
+				dec_mm_counter(entry->vma->vm_mm, MM_FILEPAGES);
 			}
 
 			pte_clear(entry->vma->vm_mm, vaddr, pte);
-- 
1.7.0.4


