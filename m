Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 017BD4C811AB
	for <poky@yoctoproject.org>; Sun, 23 Jan 2011 22:23:52 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 23 Jan 2011 20:23:52 -0800
Message-Id: <b7da2f$q7fjoi@fmsmga001.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,368,1291622400"; d="scan'208";a="880267029"
Received: from unknown (HELO localhost) ([10.255.14.50])
	by fmsmga001.fm.intel.com with ESMTP; 23 Jan 2011 20:23:51 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
Old-Date: Thu, 20 Jan 2011 23:38:43 -0600
Date: Sun, 23 Jan 2011 22:23:45 -0600
To: poky@yoctoproject.org,bruce.ashfield@windriver.com
Subject: [PATCH 1/6] drm: add the base source of the Poulsbo (psb) 2D X11 driver
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
X-List-Received-Date: Mon, 24 Jan 2011 04:23:53 -0000

The complete source of the base (unpatched) psb-kernel-source Poky
package, moved into the kernel tree so it can be build as a
first-class citizen instead of as an external module.  Subsequent
patches will remove the unnecessary parts.

The code here is all the code contained in this tarball:

https://launchpad.net/~gma500/+archive/ppa/+files/psb-kernel-source_4.42.0-0

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/drm-psb/Config.in                      |   17 +
 drivers/gpu/drm-psb/Doxyfile                       | 1161 +++
 drivers/gpu/drm-psb/GPLv2_License.txt              |  341 +
 drivers/gpu/drm-psb/Kconfig                        |  103 +
 drivers/gpu/drm-psb/Makefile                       |  367 +
 drivers/gpu/drm-psb/Makefile.kernel                |   76 +
 drivers/gpu/drm-psb/Module.symvers                 |  339 +
 drivers/gpu/drm-psb/README.drm                     |   25 +
 drivers/gpu/drm-psb/ati_pcigart.c                  |  411 +
 drivers/gpu/drm-psb/create_linux_pci_lists.sh      |   40 +
 drivers/gpu/drm-psb/debian/changelog               |   36 +
 drivers/gpu/drm-psb/debian/compat                  |    1 +
 drivers/gpu/drm-psb/debian/control                 |   16 +
 drivers/gpu/drm-psb/debian/copyright               |   53 +
 drivers/gpu/drm-psb/debian/dirs                    |    1 +
 drivers/gpu/drm-psb/debian/dkms.conf.in            |   10 +
 drivers/gpu/drm-psb/debian/patches/00list          |   11 +
 .../gpu/drm-psb/debian/patches/01_2.6.32.dpatch    |   43 +
 .../drm-psb/debian/patches/02_agp_memory.dpatch    |   40 +
 drivers/gpu/drm-psb/debian/patches/03_devt.dpatch  |   20 +
 .../gpu/drm-psb/debian/patches/04_drmpsb.dpatch    |   38 +
 .../drm-psb/debian/patches/05_edid-crash.dpatch    |   19 +
 .../drm-psb/debian/patches/06_i2c-intelfb.dpatch   |   20 +
 .../drm-psb/debian/patches/07_current_euid.dpatch  |   20 +
 .../gpu/drm-psb/debian/patches/08_irqreturn.dpatch |   23 +
 .../drm-psb/debian/patches/10_change_prefix.dpatch |10351 ++++++++++++++++++++
 drivers/gpu/drm-psb/debian/patches/2.6.34.dpatch   |   26 +
 drivers/gpu/drm-psb/debian/patches/use_udev.dpatch |   36 +
 drivers/gpu/drm-psb/debian/postinst                |   73 +
 drivers/gpu/drm-psb/debian/postrm                  |   27 +
 drivers/gpu/drm-psb/debian/prerm                   |   28 +
 drivers/gpu/drm-psb/debian/psb-kernel-headers.dirs |    1 +
 .../gpu/drm-psb/debian/psb-kernel-headers.install  |    1 +
 .../gpu/drm-psb/debian/psb-kernel-headers.postrm   |   15 +
 .../gpu/drm-psb/debian/psb-kernel-headers.preinst  |   18 +
 drivers/gpu/drm-psb/debian/rules                   |   39 +
 drivers/gpu/drm-psb/drm.h                          | 1192 +++
 drivers/gpu/drm-psb/drmP.h                         | 1332 +++
 drivers/gpu/drm-psb/drm_agpsupport.c               |  652 ++
 drivers/gpu/drm-psb/drm_auth.c                     |  189 +
 drivers/gpu/drm-psb/drm_bo.c                       | 2668 +++++
 drivers/gpu/drm-psb/drm_bo_lock.c                  |  189 +
 drivers/gpu/drm-psb/drm_bo_move.c                  |  597 ++
 drivers/gpu/drm-psb/drm_bufs.c                     | 1609 +++
 drivers/gpu/drm-psb/drm_compat.c                   |  778 ++
 drivers/gpu/drm-psb/drm_compat.h                   |  383 +
 drivers/gpu/drm-psb/drm_context.c                  |  472 +
 drivers/gpu/drm-psb/drm_core.h                     |   35 +
 drivers/gpu/drm-psb/drm_crtc.c                     | 2169 ++++
 drivers/gpu/drm-psb/drm_crtc.h                     |  592 ++
 drivers/gpu/drm-psb/drm_dma.c                      |  179 +
 drivers/gpu/drm-psb/drm_drawable.c                 |  192 +
 drivers/gpu/drm-psb/drm_drv.c                      |  695 ++
 drivers/gpu/drm-psb/drm_edid.c                     |  519 +
 drivers/gpu/drm-psb/drm_edid.h                     |  179 +
 drivers/gpu/drm-psb/drm_fb.c                       |  436 +
 drivers/gpu/drm-psb/drm_fence.c                    |  832 ++
 drivers/gpu/drm-psb/drm_fops.c                     |  532 +
 drivers/gpu/drm-psb/drm_hashtab.c                  |  202 +
 drivers/gpu/drm-psb/drm_hashtab.h                  |   67 +
 drivers/gpu/drm-psb/drm_internal.h                 |   40 +
 drivers/gpu/drm-psb/drm_ioc32.c                    | 1073 ++
 drivers/gpu/drm-psb/drm_ioctl.c                    |  347 +
 drivers/gpu/drm-psb/drm_irq.c                      |  463 +
 drivers/gpu/drm-psb/drm_lock.c                     |  393 +
 drivers/gpu/drm-psb/drm_memory.c                   |  343 +
 drivers/gpu/drm-psb/drm_memory.h                   |   61 +
 drivers/gpu/drm-psb/drm_memory_debug.c             |  403 +
 drivers/gpu/drm-psb/drm_memory_debug.h             |  379 +
 drivers/gpu/drm-psb/drm_mm.c                       |  296 +
 drivers/gpu/drm-psb/drm_modes.c                    |  560 ++
 drivers/gpu/drm-psb/drm_object.c                   |  294 +
 drivers/gpu/drm-psb/drm_objects.h                  |  721 ++
 drivers/gpu/drm-psb/drm_os_linux.h                 |  146 +
 drivers/gpu/drm-psb/drm_pci.c                      |  177 +
 drivers/gpu/drm-psb/drm_pciids.h                   |  511 +
 drivers/gpu/drm-psb/drm_pciids.txt                 |  490 +
 drivers/gpu/drm-psb/drm_proc.c                     |  646 ++
 drivers/gpu/drm-psb/drm_regman.c                   |  200 +
 drivers/gpu/drm-psb/drm_sarea.h                    |   84 +
 drivers/gpu/drm-psb/drm_scatter.c                  |  219 +
 drivers/gpu/drm-psb/drm_sman.c                     |  353 +
 drivers/gpu/drm-psb/drm_sman.h                     |  176 +
 drivers/gpu/drm-psb/drm_stub.c                     |  325 +
 drivers/gpu/drm-psb/drm_sysfs.c                    |  211 +
 drivers/gpu/drm-psb/drm_ttm.c                      |  430 +
 drivers/gpu/drm-psb/drm_vm.c                       | 1143 +++
 drivers/gpu/drm-psb/drm_vm_nopage_compat.c         |  279 +
 drivers/gpu/drm-psb/i915_buffer.c                  |  286 +
 drivers/gpu/drm-psb/i915_compat.c                  |  204 +
 drivers/gpu/drm-psb/i915_dma.c                     | 1324 +++
 drivers/gpu/drm-psb/i915_drm.h                     |  366 +
 drivers/gpu/drm-psb/i915_drv.c                     |  607 ++
 drivers/gpu/drm-psb/i915_drv.h                     |  795 ++
 drivers/gpu/drm-psb/i915_fence.c                   |  293 +
 drivers/gpu/drm-psb/i915_init.c                    |  329 +
 drivers/gpu/drm-psb/i915_ioc32.c                   |  223 +
 drivers/gpu/drm-psb/i915_irq.c                     |  781 ++
 drivers/gpu/drm-psb/i915_mem.c                     |  386 +
 drivers/gpu/drm-psb/i915_reg.h                     |  487 +
 drivers/gpu/drm-psb/intel_crt.c                    |  242 +
 drivers/gpu/drm-psb/intel_display.c                | 1472 +++
 drivers/gpu/drm-psb/intel_drv.h                    |   91 +
 drivers/gpu/drm-psb/intel_fb.c                     |  653 ++
 drivers/gpu/drm-psb/intel_i2c.c                    |  190 +
 drivers/gpu/drm-psb/intel_lvds.c                   |  941 ++
 drivers/gpu/drm-psb/intel_lvds.h                   |  174 +
 drivers/gpu/drm-psb/intel_modes.c                  |   60 +
 drivers/gpu/drm-psb/intel_sdvo.c                   | 4043 ++++++++
 drivers/gpu/drm-psb/intel_sdvo_regs.h              |  580 ++
 drivers/gpu/drm-psb/intel_setup.c                  |   18 +
 drivers/gpu/drm-psb/psb_buffer.c                   |  425 +
 drivers/gpu/drm-psb/psb_detear.c                   |   39 +
 drivers/gpu/drm-psb/psb_detear.h                   |   47 +
 drivers/gpu/drm-psb/psb_drm.h                      |  395 +
 drivers/gpu/drm-psb/psb_drv.c                      | 1030 ++
 drivers/gpu/drm-psb/psb_drv.h                      |  819 ++
 drivers/gpu/drm-psb/psb_fb.c                       | 1351 +++
 drivers/gpu/drm-psb/psb_fence.c                    |  285 +
 drivers/gpu/drm-psb/psb_gtt.c                      |  234 +
 drivers/gpu/drm-psb/psb_i2c.c                      |  181 +
 drivers/gpu/drm-psb/psb_irq.c                      |  435 +
 drivers/gpu/drm-psb/psb_mmu.c                      | 1034 ++
 drivers/gpu/drm-psb/psb_msvdx.c                    |  681 ++
 drivers/gpu/drm-psb/psb_msvdx.h                    |  564 ++
 drivers/gpu/drm-psb/psb_msvdxinit.c                |  625 ++
 drivers/gpu/drm-psb/psb_reg.h                      |  562 ++
 drivers/gpu/drm-psb/psb_regman.c                   |  175 +
 drivers/gpu/drm-psb/psb_reset.c                    |  374 +
 drivers/gpu/drm-psb/psb_scene.c                    |  531 +
 drivers/gpu/drm-psb/psb_scene.h                    |  112 +
 drivers/gpu/drm-psb/psb_schedule.c                 | 1465 +++
 drivers/gpu/drm-psb/psb_schedule.h                 |  177 +
 drivers/gpu/drm-psb/psb_setup.c                    |   17 +
 drivers/gpu/drm-psb/psb_sgx.c                      | 1454 +++
 drivers/gpu/drm-psb/psb_xhw.c                      |  629 ++
 136 files changed, 69485 insertions(+), 0 deletions(-)
 create mode 100644 drivers/gpu/drm-psb/Config.in
 create mode 100644 drivers/gpu/drm-psb/Doxyfile
 create mode 100644 drivers/gpu/drm-psb/GPLv2_License.txt
 create mode 100644 drivers/gpu/drm-psb/Kconfig
 create mode 100644 drivers/gpu/drm-psb/Makefile
 create mode 100644 drivers/gpu/drm-psb/Makefile.kernel
 create mode 100644 drivers/gpu/drm-psb/Module.markers
 create mode 100644 drivers/gpu/drm-psb/Module.symvers
 create mode 100644 drivers/gpu/drm-psb/README.drm
 create mode 100644 drivers/gpu/drm-psb/ati_pcigart.c
 create mode 100644 drivers/gpu/drm-psb/create_linux_pci_lists.sh
 create mode 100644 drivers/gpu/drm-psb/debian/changelog
 create mode 100644 drivers/gpu/drm-psb/debian/compat
 create mode 100644 drivers/gpu/drm-psb/debian/control
 create mode 100644 drivers/gpu/drm-psb/debian/copyright
 create mode 100644 drivers/gpu/drm-psb/debian/dirs
 create mode 100644 drivers/gpu/drm-psb/debian/dkms.conf.in
 create mode 100644 drivers/gpu/drm-psb/debian/patches/00list
 create mode 100755 drivers/gpu/drm-psb/debian/patches/01_2.6.32.dpatch
 create mode 100755 drivers/gpu/drm-psb/debian/patches/02_agp_memory.dpatch
 create mode 100755 drivers/gpu/drm-psb/debian/patches/03_devt.dpatch
 create mode 100755 drivers/gpu/drm-psb/debian/patches/04_drmpsb.dpatch
 create mode 100755 drivers/gpu/drm-psb/debian/patches/05_edid-crash.dpatch
 create mode 100755 drivers/gpu/drm-psb/debian/patches/06_i2c-intelfb.dpatch
 create mode 100755 drivers/gpu/drm-psb/debian/patches/07_current_euid.dpatch
 create mode 100755 drivers/gpu/drm-psb/debian/patches/08_irqreturn.dpatch
 create mode 100755 drivers/gpu/drm-psb/debian/patches/10_change_prefix.dpatch
 create mode 100755 drivers/gpu/drm-psb/debian/patches/2.6.34.dpatch
 create mode 100755 drivers/gpu/drm-psb/debian/patches/use_udev.dpatch
 create mode 100644 drivers/gpu/drm-psb/debian/postinst
 create mode 100644 drivers/gpu/drm-psb/debian/postrm
 create mode 100644 drivers/gpu/drm-psb/debian/prerm
 create mode 100644 drivers/gpu/drm-psb/debian/psb-kernel-headers.dirs
 create mode 100644 drivers/gpu/drm-psb/debian/psb-kernel-headers.install
 create mode 100644 drivers/gpu/drm-psb/debian/psb-kernel-headers.postrm
 create mode 100644 drivers/gpu/drm-psb/debian/psb-kernel-headers.preinst
 create mode 100755 drivers/gpu/drm-psb/debian/rules
 create mode 100644 drivers/gpu/drm-psb/drm.h
 create mode 100644 drivers/gpu/drm-psb/drmP.h
 create mode 100644 drivers/gpu/drm-psb/drm_agpsupport.c
 create mode 100644 drivers/gpu/drm-psb/drm_auth.c
 create mode 100644 drivers/gpu/drm-psb/drm_bo.c
 create mode 100644 drivers/gpu/drm-psb/drm_bo_lock.c
 create mode 100644 drivers/gpu/drm-psb/drm_bo_move.c
 create mode 100644 drivers/gpu/drm-psb/drm_bufs.c
 create mode 100644 drivers/gpu/drm-psb/drm_compat.c
 create mode 100644 drivers/gpu/drm-psb/drm_compat.h
 create mode 100644 drivers/gpu/drm-psb/drm_context.c
 create mode 100644 drivers/gpu/drm-psb/drm_core.h
 create mode 100644 drivers/gpu/drm-psb/drm_crtc.c
 create mode 100644 drivers/gpu/drm-psb/drm_crtc.h
 create mode 100644 drivers/gpu/drm-psb/drm_dma.c
 create mode 100644 drivers/gpu/drm-psb/drm_drawable.c
 create mode 100644 drivers/gpu/drm-psb/drm_drv.c
 create mode 100644 drivers/gpu/drm-psb/drm_edid.c
 create mode 100644 drivers/gpu/drm-psb/drm_edid.h
 create mode 100644 drivers/gpu/drm-psb/drm_fb.c
 create mode 100644 drivers/gpu/drm-psb/drm_fence.c
 create mode 100644 drivers/gpu/drm-psb/drm_fops.c
 create mode 100644 drivers/gpu/drm-psb/drm_hashtab.c
 create mode 100644 drivers/gpu/drm-psb/drm_hashtab.h
 create mode 100644 drivers/gpu/drm-psb/drm_internal.h
 create mode 100644 drivers/gpu/drm-psb/drm_ioc32.c
 create mode 100644 drivers/gpu/drm-psb/drm_ioctl.c
 create mode 100644 drivers/gpu/drm-psb/drm_irq.c
 create mode 100644 drivers/gpu/drm-psb/drm_lock.c
 create mode 100644 drivers/gpu/drm-psb/drm_memory.c
 create mode 100644 drivers/gpu/drm-psb/drm_memory.h
 create mode 100644 drivers/gpu/drm-psb/drm_memory_debug.c
 create mode 100644 drivers/gpu/drm-psb/drm_memory_debug.h
 create mode 100644 drivers/gpu/drm-psb/drm_mm.c
 create mode 100644 drivers/gpu/drm-psb/drm_modes.c
 create mode 100644 drivers/gpu/drm-psb/drm_object.c
 create mode 100644 drivers/gpu/drm-psb/drm_objects.h
 create mode 100644 drivers/gpu/drm-psb/drm_os_linux.h
 create mode 100644 drivers/gpu/drm-psb/drm_pci.c
 create mode 100644 drivers/gpu/drm-psb/drm_pciids.h
 create mode 100644 drivers/gpu/drm-psb/drm_pciids.txt
 create mode 100644 drivers/gpu/drm-psb/drm_proc.c
 create mode 100644 drivers/gpu/drm-psb/drm_regman.c
 create mode 100644 drivers/gpu/drm-psb/drm_sarea.h
 create mode 100644 drivers/gpu/drm-psb/drm_scatter.c
 create mode 100644 drivers/gpu/drm-psb/drm_sman.c
 create mode 100644 drivers/gpu/drm-psb/drm_sman.h
 create mode 100644 drivers/gpu/drm-psb/drm_stub.c
 create mode 100644 drivers/gpu/drm-psb/drm_sysfs.c
 create mode 100644 drivers/gpu/drm-psb/drm_ttm.c
 create mode 100644 drivers/gpu/drm-psb/drm_vm.c
 create mode 100644 drivers/gpu/drm-psb/drm_vm_nopage_compat.c
 create mode 100644 drivers/gpu/drm-psb/i915_buffer.c
 create mode 100644 drivers/gpu/drm-psb/i915_compat.c
 create mode 100644 drivers/gpu/drm-psb/i915_dma.c
 create mode 100644 drivers/gpu/drm-psb/i915_drm.h
 create mode 100644 drivers/gpu/drm-psb/i915_drv.c
 create mode 100644 drivers/gpu/drm-psb/i915_drv.h
 create mode 100644 drivers/gpu/drm-psb/i915_fence.c
 create mode 100644 drivers/gpu/drm-psb/i915_init.c
 create mode 100644 drivers/gpu/drm-psb/i915_ioc32.c
 create mode 100644 drivers/gpu/drm-psb/i915_irq.c
 create mode 100644 drivers/gpu/drm-psb/i915_mem.c
 create mode 100644 drivers/gpu/drm-psb/i915_reg.h
 create mode 100644 drivers/gpu/drm-psb/intel_crt.c
 create mode 100644 drivers/gpu/drm-psb/intel_display.c
 create mode 100644 drivers/gpu/drm-psb/intel_drv.h
 create mode 100644 drivers/gpu/drm-psb/intel_fb.c
 create mode 100644 drivers/gpu/drm-psb/intel_i2c.c
 create mode 100644 drivers/gpu/drm-psb/intel_lvds.c
 create mode 100644 drivers/gpu/drm-psb/intel_lvds.h
 create mode 100644 drivers/gpu/drm-psb/intel_modes.c
 create mode 100644 drivers/gpu/drm-psb/intel_sdvo.c
 create mode 100644 drivers/gpu/drm-psb/intel_sdvo_regs.h
 create mode 100644 drivers/gpu/drm-psb/intel_setup.c
 create mode 100644 drivers/gpu/drm-psb/psb_buffer.c
 create mode 100644 drivers/gpu/drm-psb/psb_detear.c
 create mode 100644 drivers/gpu/drm-psb/psb_detear.h
 create mode 100644 drivers/gpu/drm-psb/psb_drm.h
 create mode 100644 drivers/gpu/drm-psb/psb_drv.c
 create mode 100644 drivers/gpu/drm-psb/psb_drv.h
 create mode 100644 drivers/gpu/drm-psb/psb_fb.c
 create mode 100644 drivers/gpu/drm-psb/psb_fence.c
 create mode 100644 drivers/gpu/drm-psb/psb_gtt.c
 create mode 100644 drivers/gpu/drm-psb/psb_i2c.c
 create mode 100644 drivers/gpu/drm-psb/psb_irq.c
 create mode 100644 drivers/gpu/drm-psb/psb_mmu.c
 create mode 100644 drivers/gpu/drm-psb/psb_msvdx.c
 create mode 100644 drivers/gpu/drm-psb/psb_msvdx.h
 create mode 100644 drivers/gpu/drm-psb/psb_msvdxinit.c
 create mode 100644 drivers/gpu/drm-psb/psb_reg.h
 create mode 100644 drivers/gpu/drm-psb/psb_regman.c
 create mode 100644 drivers/gpu/drm-psb/psb_reset.c
 create mode 100644 drivers/gpu/drm-psb/psb_scene.c
 create mode 100644 drivers/gpu/drm-psb/psb_scene.h
 create mode 100644 drivers/gpu/drm-psb/psb_schedule.c
 create mode 100644 drivers/gpu/drm-psb/psb_schedule.h
 create mode 100644 drivers/gpu/drm-psb/psb_setup.c
 create mode 100644 drivers/gpu/drm-psb/psb_sgx.c
 create mode 100644 drivers/gpu/drm-psb/psb_xhw.c

The patch is too big to post here - please see the git repo...


