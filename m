Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id AD3964C8109B;
	Mon,  3 Jan 2011 00:10:24 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0369Ccp005233;
	Sun, 2 Jan 2011 22:09:13 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon,  3 Jan 2011 01:11:14 -0500
Message-Id: <89f51bbd57fccfc8525d9bf0904fc6fc820b6e2e.1294034587.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1294034587.git.bruce.ashfield@windriver.com>
References: <cover.1294034587.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1294034587.git.bruce.ashfield@windriver.com>
References: <cover.1294034587.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] linux-yocto/stable: update SRCREVs for 2.6.34.x -stable update
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
X-List-Received-Date: Mon, 03 Jan 2011 06:10:25 -0000

Paul Gortmaker maintains the upstream 2.6.34.x -longerm tree. The
yocto stable kernel tracks this tree and incorporates those nominated
changes.

This commit updates the BSP SRCREVs to the latest 2.6.34.x
merge and picks up 260 -stable commits for each BSP.

The combined diffstat between 2.6.34.7 and this update follows:

 arch/alpha/kernel/err_marvel.c              |    6 +-
 arch/arm/kernel/entry-common.S              |    2 +
 arch/arm/mach-at91/at91sam9g45_devices.c    |    2 +-
 arch/ia64/include/asm/compat.h              |    2 +-
 arch/ia64/kernel/fsys.S                     |   30 ++-
 arch/ia64/kernel/msi_ia64.c                 |    2 +-
 arch/ia64/sn/kernel/msi_sn.c                |    2 +-
 arch/mips/include/asm/atomic.h              |   24 +-
 arch/mips/include/asm/compat.h              |    2 +-
 arch/mips/mti-malta/malta-pci.c             |    2 +
 arch/mips/nxp/pnx8550/common/pci.c          |    1 +
 arch/mips/nxp/pnx8550/common/setup.c        |    2 +-
 arch/mips/pci/ops-pmcmsp.c                  |    1 +
 arch/mips/pci/pci-yosemite.c                |    1 +
 arch/parisc/include/asm/compat.h            |    2 +-
 arch/powerpc/include/asm/compat.h           |    2 +-
 arch/powerpc/kernel/head_64.S               |   18 +-
 arch/powerpc/kernel/ppc970-pmu.c            |    2 +
 arch/s390/include/asm/compat.h              |    2 +-
 arch/sparc/include/asm/compat.h             |    2 +-
 arch/sparc/include/asm/oplib_64.h           |   27 +--
 arch/sparc/prom/cif.S                       |   16 +-
 arch/sparc/prom/console_64.c                |   48 +++-
 arch/sparc/prom/devops_64.c                 |   36 +++-
 arch/sparc/prom/misc_64.c                   |  314 +++++++++++++++++++--------
 arch/sparc/prom/p1275.c                     |  102 +---------
 arch/sparc/prom/tree_64.c                   |  210 +++++++++++++-----
 arch/um/drivers/ubd_kern.c                  |    9 +-
 arch/x86/ia32/ia32entry.S                   |   22 ++-
 arch/x86/include/asm/amd_iommu_proto.h      |    6 +
 arch/x86/include/asm/amd_iommu_types.h      |   12 +
 arch/x86/include/asm/compat.h               |    2 +-
 arch/x86/include/asm/cpufeature.h           |    2 +-
 arch/x86/include/asm/io.h                   |    1 +
 arch/x86/include/asm/kvm_host.h             |   24 --
 arch/x86/include/asm/smp.h                  |    9 +-
 arch/x86/include/asm/tsc.h                  |    2 +
 arch/x86/kernel/Makefile                    |    2 +
 arch/x86/kernel/amd_iommu.c                 |    4 +-
 arch/x86/kernel/amd_iommu_init.c            |   67 ++++--
 arch/x86/kernel/apic/io_apic.c              |   15 +-
 arch/x86/kernel/cpu/common.c                |    4 +-
 arch/x86/kernel/cpu/cpu.h                   |    1 +
 arch/x86/kernel/cpu/intel.c                 |    1 +
 arch/x86/kernel/cpu/mcheck/mce_amd.c        |    9 +-
 arch/x86/kernel/cpu/mtrr/cleanup.c          |    2 +-
 arch/x86/kernel/crash_dump_64.c             |    3 +-
 arch/x86/kernel/hpet.c                      |    2 +-
 arch/x86/kernel/olpc.c                      |    5 +-
 arch/x86/kernel/reboot.c                    |    2 +-
 arch/x86/kernel/smp.c                       |   15 +-
 arch/x86/kernel/tsc.c                       |   38 ++++
 arch/x86/kvm/paging_tmpl.h                  |   30 +++-
 arch/x86/kvm/svm.c                          |   17 +-
 arch/x86/kvm/vmx.c                          |   28 +--
 arch/x86/kvm/x86.c                          |    2 +-
 arch/x86/oprofile/nmi_int.c                 |   27 ++-
 arch/x86/power/cpu.c                        |    2 +
 arch/x86/xen/enlighten.c                    |    2 +-
 arch/x86/xen/smp.c                          |    6 +-
 block/bsg.c                                 |    2 +-
 drivers/acpi/acpica/aclocal.h               |    1 +
 drivers/acpi/blacklist.c                    |   16 ++
 drivers/acpi/processor_core.c               |    6 -
 drivers/ata/libata-core.c                   |   14 +-
 drivers/ata/libata-eh.c                     |    4 +
 drivers/ata/sata_mv.c                       |   44 +++-
 drivers/bluetooth/hci_ldisc.c               |    7 +
 drivers/char/agp/sis-agp.c                  |    8 -
 drivers/char/mem.c                          |    3 +-
 drivers/char/pcmcia/synclink_cs.c           |    2 +
 drivers/dma/mv_xor.c                        |    2 +-
 drivers/gpu/drm/drm_crtc_helper.c           |    4 +-
 drivers/gpu/drm/i915/i915_dma.c             |   12 +-
 drivers/gpu/drm/i915/i915_gem.c             |    1 +
 drivers/gpu/drm/i915/intel_display.c        |    5 +-
 drivers/hwmon/f75375s.c                     |    6 +-
 drivers/hwmon/k8temp.c                      |   35 +++-
 drivers/i2c/busses/i2c-pca-isa.c            |   12 +-
 drivers/i2c/busses/i2c-pca-platform.c       |   11 +-
 drivers/infiniband/hw/cxgb3/iwch_cm.c       |    6 +-
 drivers/input/joydev.c                      |    3 +
 drivers/input/serio/i8042.c                 |    2 +-
 drivers/media/video/cx231xx/cx231xx-cards.c |   14 +-
 drivers/media/video/v4l2-compat-ioctl32.c   |   32 ++-
 drivers/message/fusion/mptscsih.c           |    2 +
 drivers/misc/sgi-xp/xpc_uv.c                |   17 ++
 drivers/mmc/host/sdhci-s3c.c                |    6 +-
 drivers/mmc/host/tmio_mmc.c                 |    7 +-
 drivers/mmc/host/tmio_mmc.h                 |   13 +-
 drivers/net/atlx/atl1.c                     |    5 +-
 drivers/net/b44.c                           |    4 +-
 drivers/net/bonding/bond_3ad.c              |    3 +
 drivers/net/bonding/bond_alb.c              |    3 +
 drivers/net/cxgb3/cxgb3_main.c              |    2 +
 drivers/net/eql.c                           |    2 +
 drivers/net/netxen/netxen_nic_init.c        |    3 -
 drivers/net/r8169.c                         |   12 +-
 drivers/net/skge.c                          |   18 ++-
 drivers/net/tun.c                           |    3 +-
 drivers/net/usb/hso.c                       |    2 +
 drivers/net/wireless/ath/ath5k/base.c       |   11 +-
 drivers/net/wireless/ath/ath9k/eeprom.h     |    2 +-
 drivers/net/wireless/ath/regd.h             |    1 -
 drivers/net/wireless/hostap/hostap_pci.c    |    1 +
 drivers/net/wireless/p54/eeprom.c           |    4 +-
 drivers/net/wireless/p54/p54usb.c           |   15 ++-
 drivers/net/wireless/p54/txrx.c             |    2 +-
 drivers/oprofile/buffer_sync.c              |   27 ++-
 drivers/oprofile/cpu_buffer.c               |    2 -
 drivers/pci/intel-iommu.c                   |   90 ++++----
 drivers/pci/msi.c                           |   27 +++-
 drivers/pci/quirks.c                        |   20 ++
 drivers/power/apm_power.c                   |    1 +
 drivers/scsi/gdth.c                         |    8 +
 drivers/scsi/libsas/sas_ata.c               |    1 +
 drivers/scsi/scsi_lib.c                     |    3 +-
 drivers/scsi/scsi_sysfs.c                   |    3 +-
 drivers/scsi/sd.c                           |   15 +-
 drivers/staging/hv/RingBuffer.c             |    3 +-
 drivers/staging/hv/StorVscApi.h             |    4 +-
 drivers/staging/hv/netvsc_drv.c             |    3 +
 drivers/staging/hv/storvsc_drv.c            |    9 +-
 drivers/staging/usbip/usbip_event.c         |   16 +-
 drivers/staging/usbip/vhci_hcd.c            |    2 +
 drivers/staging/vt6655/wpactl.c             |   11 +-
 drivers/usb/class/cdc-acm.c                 |   24 ++-
 drivers/usb/core/file.c                     |   35 ++--
 drivers/usb/core/hub.c                      |    9 +-
 drivers/usb/core/message.c                  |   15 +-
 drivers/usb/gadget/atmel_usba_udc.c         |    3 +
 drivers/usb/gadget/rndis.c                  |   10 +-
 drivers/usb/host/ehci-ppc-of.c              |   12 +-
 drivers/usb/musb/blackfin.c                 |    4 +-
 drivers/usb/musb/musb_gadget.c              |   22 ++-
 drivers/usb/musb/musb_gadget.h              |    2 +
 drivers/usb/musb/musb_gadget_ep0.c          |    9 +
 drivers/usb/serial/cp210x.c                 |   12 +-
 drivers/usb/serial/ftdi_sio.c               |   43 ++++-
 drivers/usb/serial/ftdi_sio_ids.h           |   51 +++++-
 drivers/usb/serial/mos7720.c                |    3 +
 drivers/usb/serial/mos7840.c                |   35 ++-
 drivers/usb/serial/opticon.c                |    6 +-
 drivers/usb/serial/option.c                 |   23 ++-
 drivers/video/sis/sis_main.c                |    3 +
 drivers/video/via/ioctl.c                   |    2 +
 drivers/xen/events.c                        |   21 ++-
 fs/aio.c                                    |    3 +
 fs/binfmt_misc.c                            |    2 +-
 fs/char_dev.c                               |    4 +-
 fs/cifs/dns_resolve.c                       |    2 +-
 fs/cifs/dns_resolve.h                       |    2 +-
 fs/exec.c                                   |   14 ++
 fs/ext4/dir.c                               |    4 +-
 fs/ext4/ext4.h                              |  129 ++++++++++--
 fs/ext4/ext4_jbd2.h                         |    8 +-
 fs/ext4/extents.c                           |  140 +++++++++----
 fs/ext4/file.c                              |    2 +-
 fs/ext4/fsync.c                             |   33 +++-
 fs/ext4/ialloc.c                            |   89 ++++----
 fs/ext4/inode.c                             |   88 +++++---
 fs/ext4/ioctl.c                             |   25 ++-
 fs/ext4/mballoc.c                           |  108 +++++++---
 fs/ext4/migrate.c                           |    2 +-
 fs/ext4/move_extent.c                       |    4 +-
 fs/ext4/namei.c                             |   12 +-
 fs/ext4/super.c                             |   65 +++---
 fs/ext4/xattr.c                             |    4 +-
 fs/fuse/dev.c                               |   16 +-
 fs/nfs/client.c                             |    2 +-
 fs/notify/inotify/inotify_fsnotify.c        |    3 +
 fs/notify/inotify/inotify_user.c            |    7 +-
 fs/ocfs2/inode.c                            |    6 +-
 fs/ocfs2/symlink.c                          |    2 +-
 fs/partitions/ibm.c                         |   13 +-
 fs/pipe.c                                   |    2 +-
 fs/proc/task_mmu.c                          |    3 +-
 fs/sysfs/file.c                             |    2 +-
 fs/xfs/linux-2.6/xfs_ioctl.c                |    2 +
 include/drm/drm_pciids.h                    |    2 +-
 include/linux/compat.h                      |    3 +
 include/linux/cpuset.h                      |   16 +-
 include/linux/libata.h                      |    1 +
 include/linux/mm.h                          |   14 +-
 include/linux/mmzone.h                      |   13 +
 include/linux/msi.h                         |    2 +
 include/linux/pci_ids.h                     |    3 +
 include/linux/sched.h                       |    5 +-
 include/linux/socket.h                      |    2 +-
 include/linux/vmstat.h                      |   22 ++
 include/net/tcp.h                           |   36 +++-
 kernel/compat.c                             |   21 ++
 kernel/cpu.c                                |   18 +-
 kernel/cpuset.c                             |   67 ++++--
 kernel/exit.c                               |    5 +-
 kernel/futex.c                              |   31 ++--
 kernel/gcov/fs.c                            |  244 +++++++++++++++------
 kernel/groups.c                             |    5 +-
 kernel/hrtimer.c                            |   13 +-
 kernel/sched.c                              |  180 +++++++---------
 kernel/sched_fair.c                         |  106 +++++----
 kernel/sched_idletask.c                     |    3 +-
 kernel/sched_rt.c                           |    5 +-
 kernel/sys.c                                |    2 +
 kernel/trace/ftrace.c                       |   19 ++-
 kernel/trace/ring_buffer.c                  |    2 +-
 mm/bounce.c                                 |    2 +-
 mm/memory.c                                 |   15 +-
 mm/memory_hotplug.c                         |   16 +-
 mm/mlock.c                                  |    6 -
 mm/mmap.c                                   |    3 -
 mm/mmzone.c                                 |   21 ++
 mm/page_alloc.c                             |   33 ++-
 mm/percpu.c                                 |    2 +-
 mm/vmalloc.c                                |    9 +
 mm/vmstat.c                                 |   15 ++-
 net/bridge/br_netfilter.c                   |    9 +-
 net/core/ethtool.c                          |    4 +-
 net/core/iovec.c                            |    5 +-
 net/core/skbuff.c                           |    6 +-
 net/core/stream.c                           |    8 +-
 net/ipv4/ip_output.c                        |   19 +-
 net/ipv4/route.c                            |    7 +-
 net/ipv4/tcp.c                              |   41 ++--
 net/ipv4/tcp_input.c                        |    2 +
 net/ipv4/tcp_timer.c                        |    8 +-
 net/ipv4/xfrm4_policy.c                     |    2 +-
 net/ipv6/ip6_output.c                       |   18 +-
 net/ipv6/route.c                            |   28 ++-
 net/irda/af_irda.c                          |    4 +-
 net/irda/irlan/irlan_common.c               |    2 +-
 net/llc/af_llc.c                            |    3 +-
 net/phonet/pep.c                            |    3 +-
 net/rds/page.c                              |   27 +--
 net/rds/recv.c                              |    2 +-
 net/rose/af_rose.c                          |    4 +-
 net/sctp/output.c                           |    1 -
 net/sctp/sm_make_chunk.c                    |    4 +-
 net/sunrpc/auth_gss/auth_gss.c              |    9 +-
 net/sunrpc/rpc_pipe.c                       |    6 +-
 net/unix/af_unix.c                          |   15 +-
 net/wireless/wext-compat.c                  |    3 +
 net/wireless/wext-core.c                    |   16 ++
 net/wireless/wext-priv.c                    |    2 +-
 security/keys/keyctl.c                      |    6 +-
 security/keys/process_keys.c                |    6 +-
 sound/core/control.c                        |    5 +
 sound/core/rawmidi.c                        |    4 +-
 sound/core/seq/oss/seq_oss_init.c           |    9 +-
 sound/pci/hda/patch_analog.c                |    1 +
 sound/pci/hda/patch_realtek.c               |    8 +-
 sound/pci/oxygen/oxygen.c                   |    4 +
 sound/pci/rme9652/hdsp.c                    |    1 +
 sound/pci/rme9652/hdspm.c                   |    1 +
 tools/perf/util/callchain.h                 |    1 +
 255 files changed, 2861 insertions(+), 1415 deletions(-)

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |   20 ++++++++++----------
 1 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 586e2d7..04bb516 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -84,16 +84,16 @@ SRCREV_pn-linux-omap-zoomsync ??= "015cbaf1035cd9a61d33a27de2a22902555db3c5"
 SRCREV_pn-linux-omap2 ??= "d3b3ae0fe6c71641da19c8de466ec366d39847e3"
 SRCREV_pn-linux-omap3 ??= "de1121fdb899f762b9e717f44eaf3fae7c00cd3e"
 SRCREV_pn-linux-omap3-pm ??= "totallybroken"
-SRCREV_machine_pn-linux-yocto-stable_qemuarm ?= "4f4177b4bea5b8858acc1eeb788d80b7af0df962"
-SRCREV_machine_pn-linux-yocto-stable_qemumips ?= "81f3cd467b9d51fa1dfa2d5939337cc756ae8061"
-SRCREV_machine_pn-linux-yocto-stable_qemuppc ?= "9ac0daee43dd19d8bea828cf79450c9748ae0daa"
-SRCREV_machine_pn-linux-yocto-stable_qemux86 ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
-SRCREV_machine_pn-linux-yocto-stable_qemux86-64 ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
-SRCREV_machine_pn-linux-yocto-stable_atom-pc ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
-SRCREV_machine_pn-linux-yocto-stable_routerstationpro ?= "2ec2edaf256dd8500ee3d4763fee6ca3ecd6da4b"
-SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?= "986e6eb66c26007cee7916d5d12f4756e6b5436f"
-SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
-SRCREV_meta_pn-linux-yocto-stable ?= "50ccd2b3213b6a1bacb3f898c035119802dac420"
+SRCREV_machine_pn-linux-yocto-stable_qemuarm ?= "8cc1674d61d0e0e1bf006164074cffd1071a3a52"
+SRCREV_machine_pn-linux-yocto-stable_qemumips ?= "4f4d1cecd1705dc2b065eb42a9623778bb269930"
+SRCREV_machine_pn-linux-yocto-stable_qemuppc ?= "ee9510116f63aabb852708747bd0e3c32eeaf5bf"
+SRCREV_machine_pn-linux-yocto-stable_qemux86 ?= "35521a5a70316785a67aca1de1d39a7b84c49ccf"
+SRCREV_machine_pn-linux-yocto-stable_qemux86-64 ?= "35521a5a70316785a67aca1de1d39a7b84c49ccf"
+SRCREV_machine_pn-linux-yocto-stable_atom-pc ?= "35521a5a70316785a67aca1de1d39a7b84c49ccf"
+SRCREV_machine_pn-linux-yocto-stable_routerstationpro ?= "b323ab98f055df012277f09d444951619fda24e3"
+SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?= "0d19c4ab6185b2e093beb5f366ccff4746197166"
+SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "35521a5a70316785a67aca1de1d39a7b84c49ccf"
+SRCREV_meta_pn-linux-yocto-stable ?= "582a28e4bc966ea367cbc2dc1f0de89dd4e7c3d8"
 # development SRCREVs
 SRCREV_machine_pn-linux-yocto_qemuarm = "605b1b1e0c68e9f78a7fb33aa219327153a4a890"
 SRCREV_machine_pn-linux-yocto_qemumips = "0f05ab306ac79684a3352f28db91dfb903c67410"
-- 
1.7.0.4


