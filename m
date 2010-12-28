Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 75EF74C810B6
	for <poky@yoctoproject.org>; Tue, 28 Dec 2010 10:45:57 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Dec 2010 08:45:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,239,1291622400"; d="scan'208";a="691386405"
Received: from unknown (HELO localhost) ([10.255.13.217])
	by orsmga001.jf.intel.com with ESMTP; 28 Dec 2010 08:45:56 -0800
Message-Id: <edda44a1a7537cc3f6727b655d58e99d7daad10c.1293522033.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1293522033.git.tom.zanussi@intel.com>
References: <cover.1293522033.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@intel.com>
Old-Date: Sat, 25 Dec 2010 13:20:32 -0600
Date: Tue, 28 Dec 2010 10:45:51 -0600
To: poky@yoctoproject.org
Subject: [PATCH 2/4] meta-emenlow: remove psb-kernel-source
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
X-List-Received-Date: Tue, 28 Dec 2010 16:45:57 -0000

The psb kernel source was merged into the linux-2.6-windriver repo
when meta-emenlow was switched over to the linux-wrs kernel.  The
psb-kernel-source package was kept around in case there was a need to
use the 2.6.33.2 kernel.  Removing meta-emenlow support for 2.6.33.2
also means there's no longer any need to keep separate
psb-kernel-source recipes or patches around, so remove them.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-emenlow/conf/checksums.ini                    |    4 -
 .../psb-kernel-source-4.42.0/build.patch           |  175 --------------------
 .../psb-kernel-source/psb-kernel-source_4.42.0.bb  |   24 ---
 3 files changed, 0 insertions(+), 203 deletions(-)
 delete mode 100644 meta-emenlow/recipes-graphics/psb-kernel-source/psb-kernel-source-4.42.0/build.patch
 delete mode 100644 meta-emenlow/recipes-graphics/psb-kernel-source/psb-kernel-source_4.42.0.bb

diff --git a/meta-emenlow/conf/checksums.ini b/meta-emenlow/conf/checksums.ini
index e6fc77f..476cfca 100644
--- a/meta-emenlow/conf/checksums.ini
+++ b/meta-emenlow/conf/checksums.ini
@@ -10,10 +10,6 @@ sha256=306468f87b9e13fdb3b6f0c6e2159b20198b33eed9eda4c31d7381a88911554f
 md5=760005739edc64387240e56f6916e825
 sha256=714bc9162409b172caaabdaff5a942bc9d104a9b3a47a165754f7090803ba4b3
 
-[https://launchpad.net/~gma500/+archive/ppa/+files/psb-kernel-source_4.42.0-0ubuntu2~1004um2.tar.gz]
-md5=4f079e4f880bd45b281f5f3c017e8afa
-sha256=91ac0646ab02423a91b0a6027ffa1b0dbf1082588c03a3f7e4302c37c155f3fd
-
 [https://launchpad.net/~gma500/+archive/ppa/+files/xpsb-glx_0.18-0ubuntu1netbook2~1004um1ubuntu1.tar.gz]
 md5=50423a9e861ccff5814eb95a32494952
 sha256=03c958defef56ae0ec051c6f67620fa90733649925386824b7bf029f40bd7905
diff --git a/meta-emenlow/recipes-graphics/psb-kernel-source/psb-kernel-source-4.42.0/build.patch b/meta-emenlow/recipes-graphics/psb-kernel-source/psb-kernel-source-4.42.0/build.patch
deleted file mode 100644
index ce6f2aa..0000000
--- a/meta-emenlow/recipes-graphics/psb-kernel-source/psb-kernel-source-4.42.0/build.patch
+++ /dev/null
@@ -1,175 +0,0 @@
-# These are various fixes needed to make the psb kernel driver build against
-# 2.6.33.2.
-# The Makefile patch is specific to the Poky environment - the external kernel
-# module build expects the kernel tree it's building against to have fixdep
-# and modpost built, which isn't the case here.  So, the modules rule makes
-# sure that they are built before the module is built.
-# Aside from that, the changes involve adding missing header files and 
-# compensating for a structure field changing name and type.
-
-Index: psb-kernel-source-4.42.0/drm_os_linux.h
-===================================================================
---- psb-kernel-source-4.42.0.orig/drm_os_linux.h
-+++ psb-kernel-source-4.42.0/drm_os_linux.h
-@@ -50,12 +50,6 @@
- 
- /** IRQ handler arguments and return type and values */
- #define DRM_IRQ_ARGS		int irq, void *arg
--/** backwards compatibility with old irq return values */
--#ifndef IRQ_HANDLED
--typedef void irqreturn_t;
--#define IRQ_HANDLED		/* nothing */
--#define IRQ_NONE		/* nothing */
--#endif
- 
- /** AGP types */
- #if __OS_HAS_AGP
-Index: psb-kernel-source-4.42.0/Makefile
-===================================================================
---- psb-kernel-source-4.42.0.orig/Makefile
-+++ psb-kernel-source-4.42.0/Makefile
-@@ -165,7 +165,10 @@ endif
- all: modules
- 
- modules: includes
--	+make -C $(LINUXDIR) $(GETCONFIG) SUBDIRS=`pwd` DRMSRCDIR=`pwd` modules
-+	+make -C $(LINUXDIR)/scripts/basic fixdep
-+#	+make -C $(LINUXDIR) SUBDIRS=scripts/mod modpost
-+	+make -C $(LINUXDIR) SUBDIRS=scripts
-+	+make -k -C $(LINUXDIR) $(GETCONFIG) SUBDIRS=`pwd` DRMSRCDIR=`pwd` modules
- 
- ifeq ($(HEADERFROMBOOT),1)
- 
-@@ -243,7 +246,7 @@ dristat: dristat.c
- drmstat: drmstat.c
- 	$(CC) $(PRGCFLAGS) $< -o $@ $(DRMSTATLIBS)
- 
--install:
-+modules_install:
- 	make -C $(LINUXDIR) $(GETCONFIG) SUBDIRS=`pwd` DRMSRCDIR=`pwd` modules_install
- 
- else
-Index: psb-kernel-source-4.42.0/drm_edid.c
-===================================================================
---- psb-kernel-source-4.42.0.orig/drm_edid.c
-+++ psb-kernel-source-4.42.0/drm_edid.c
-@@ -11,6 +11,7 @@
- #include "drm_edid.h"
- 
- #include <acpi/acpi_drivers.h>
-+#include <linux/i2c.h>
- 
- /* Valid EDID header has these bytes */
- static u8 edid_header[] = { 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00 };
-@@ -39,7 +40,7 @@ int drm_get_acpi_edid(char *method, char
- 	if (obj && obj->type == ACPI_TYPE_BUFFER)
- 		memcpy(edid, obj->buffer.pointer, obj->buffer.length);
- 	else {
--		printk(KERN_ERR PREFIX "Invalid _DDC data\n");
-+		printk(KERN_ERR "Invalid _DDC data\n");
- 		status = -EFAULT;
- 		kfree(obj);
- 	}
-Index: psb-kernel-source-4.42.0/drm_ttm.c
-===================================================================
---- psb-kernel-source-4.42.0.orig/drm_ttm.c
-+++ psb-kernel-source-4.42.0/drm_ttm.c
-@@ -28,6 +28,8 @@
-  * Authors: Thomas Hellström <thomas-at-tungstengraphics-dot-com>
-  */
- 
-+#include "linux/spinlock.h"
-+#include "asm/agp.h"
- #include "drmP.h"
- 
- static void drm_ttm_ipi_handler(void *null)
-Index: psb-kernel-source-4.42.0/psb_drv.c
-===================================================================
---- psb-kernel-source-4.42.0.orig/psb_drv.c
-+++ psb-kernel-source-4.42.0/psb_drv.c
-@@ -34,8 +34,10 @@
- #include <linux/cpu.h>
- #include <linux/notifier.h>
- #include <linux/fb.h>
-+#include "linux/spinlock.h"
-+#include "asm/agp.h"
- 
--int drm_psb_debug = 0;
-+int drm_psb_debug = 255;
- EXPORT_SYMBOL(drm_psb_debug);
- static int drm_psb_trap_pagefaults = 0;
- static int drm_psb_clock_gating = 0;
-Index: psb-kernel-source-4.42.0/intel_lvds.c
-===================================================================
---- psb-kernel-source-4.42.0.orig/intel_lvds.c
-+++ psb-kernel-source-4.42.0/intel_lvds.c
-@@ -29,6 +29,7 @@
- 
- #include <linux/i2c.h>
- #include <linux/backlight.h>
-+#include <linux/i2c.h>
- #include "drm_crtc.h"
- #include "drm_edid.h"
- #include "intel_lvds.h"
-Index: psb-kernel-source-4.42.0/drm_memory.c
-===================================================================
---- psb-kernel-source-4.42.0.orig/drm_memory.c
-+++ psb-kernel-source-4.42.0/drm_memory.c
-@@ -264,9 +264,9 @@ static void *agp_remap(unsigned long off
- 		return NULL;
- 
- 	phys_addr_map =
--	    agpmem->memory->memory + (offset - agpmem->bound) / PAGE_SIZE;
-+	    agpmem->memory->pages + (offset - agpmem->bound) / PAGE_SIZE;
- 	for (i = 0; i < num_pages; ++i)
--		page_map[i] = pfn_to_page(phys_addr_map[i] >> PAGE_SHIFT);
-+                page_map[i] = phys_addr_map[i];
- 	addr = vmap(page_map, num_pages, VM_IOREMAP, PAGE_AGP);
- 	vfree(page_map);
- 
-Index: psb-kernel-source-4.42.0/drm_agpsupport.c
-===================================================================
---- psb-kernel-source-4.42.0.orig/drm_agpsupport.c
-+++ psb-kernel-source-4.42.0/drm_agpsupport.c
-@@ -524,7 +524,7 @@ static int drm_agp_populate(struct drm_t
- 	DRM_DEBUG("Current page count is %ld\n", (long) mem->page_count);
- 	mem->page_count = 0;
- 	for (cur_page = pages; cur_page < last_page; ++cur_page)
--		mem->pages[mem->page_count++] = phys_to_gart(page_to_phys(*cur_page));
-+		mem->pages[mem->page_count++] = page_to_phys(*cur_page);
- 	agp_be->mem = mem;
- 	return 0;
- }
-Index: psb-kernel-source-4.42.0/drm_vm.c
-===================================================================
---- psb-kernel-source-4.42.0.orig/drm_vm.c
-+++ psb-kernel-source-4.42.0/drm_vm.c
-@@ -145,13 +145,13 @@ static int drm_do_vm_fault(struct vm_are
- 		 * Get the page, inc the use count, and return it
- 		 */
- 		offset = (baddr - agpmem->bound) >> PAGE_SHIFT;
--		page = virt_to_page(__va(agpmem->memory->memory[offset]));
-+		page = agpmem->memory->pages[offset];
- 		get_page(page);
- 		vmf->page = page;
- 
- 		DRM_DEBUG
- 		    ("baddr = 0x%lx page = 0x%p, offset = 0x%lx, count=%d\n",
--		     baddr, __va(agpmem->memory->memory[offset]), offset,
-+		     baddr, agpmem->memory->pages[offset], offset,
- 		     page_count(page));
- 		return 0;
- 	}
-Index: psb-kernel-source-4.42.0/psb_drv.h
-===================================================================
---- psb-kernel-source-4.42.0.orig/psb_drv.h
-+++ psb-kernel-source-4.42.0/psb_drv.h
-@@ -809,7 +809,7 @@ extern int drm_psb_detear;
- #define PSB_DEBUG(_flag, _fmt, _arg...)					\
- 	do {								\
- 	  if (unlikely((_flag) & drm_psb_debug))			\
--			printk(KERN_DEBUG				\
-+			printk(KERN_ERR				\
- 			       "[psb:0x%02x:%s] " _fmt , _flag,	\
- 			       __FUNCTION__ , ##_arg);			\
- 	} while (0)
diff --git a/meta-emenlow/recipes-graphics/psb-kernel-source/psb-kernel-source_4.42.0.bb b/meta-emenlow/recipes-graphics/psb-kernel-source/psb-kernel-source_4.42.0.bb
deleted file mode 100644
index 5c1a3e1..0000000
--- a/meta-emenlow/recipes-graphics/psb-kernel-source/psb-kernel-source_4.42.0.bb
+++ /dev/null
@@ -1,24 +0,0 @@
-DESCRIPTION = "Kernel module for the Poulsbo (psb) 2D X11 driver"
-LICENSE = "GPLv2"
-LIC_FILES_CHKSUM = "file://GPLv2_License.txt;md5=f5ca3155cfeaa64a6ea228b11ad6916d"
-PR = "r1"
-
-inherit module
-
-SRC_URI = "https://launchpad.net/~gma500/+archive/ppa/+files/psb-kernel-source_4.42.0-0ubuntu2~1004um2.tar.gz \
-	file://build.patch;patch=1"
-
-do_compile () {
-	oe_runmake LINUXDIR=${STAGING_KERNEL_DIR} DRM_MODULES="psb"
-}
-
-do_install () {
-        mkdir -p ${D}/lib/modules/${KERNEL_VERSION}/extra
-        cp ${WORKDIR}/${PN}-${PV}/*.ko ${D}/lib/modules/${KERNEL_VERSION}/extra
-}
-
-FILES_${PN} += "${base_libdir}/modules/${KERNEL_VERSION}/extra/*.ko"
-
-DEPENDS += "virtual/kernel"
-
-COMPATIBLE_MACHINE = "emenlow"
-- 
1.7.0.4


