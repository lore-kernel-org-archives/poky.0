Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web09.344.1660080293042328277
 for <poky@lists.yoctoproject.org>;
 Tue, 09 Aug 2022 14:24:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=u5sGi5bz;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.47, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f47.google.com with SMTP id a8so12886482pjg.5
        for <poky@lists.yoctoproject.org>; Tue, 09 Aug 2022 14:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=N9q+/5G46DtpKpIIUK5NR44T8TaQYATZAkmxAkEoO5M=;
        b=u5sGi5bzpmWv/1+In3X3WtgMvBzcLrdF5/uqZMzAjdAcnod5Y1e1f9jBHTnaiVvB3B
         QKiXQSt9yt3G1ctdFUfyw4kpWV9D2bRO+J1xc7H6GjPSyZ1aK3sDk+h9wLBJ+SjK+L6l
         2H8xI6YY2dkQkOf9eAJfPUW50za8AyiVqnm6EbI/vl6epvIfdZd8xAxAR+thHJ6CPYDX
         u4g6bla7QMmuyEvOfLsUliXrrDD8/KGWjSj3XO4nYK9sH486UzB0PkhaSGyUl9AeMyD3
         FPNrzdm3NTzMq7sCPPgkyTzXF8Z3OE1wgTjp4dSnb2W9hcZ77s4cvN36KHrZp2BFRBB3
         Xcng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=N9q+/5G46DtpKpIIUK5NR44T8TaQYATZAkmxAkEoO5M=;
        b=TksGZMr4mdxoxzj/EsMHnA0BWJ62fp9dy8rfJQYXmUhy6eXLW3SihFVWybuRjcglHe
         tEqlQwd/upqsowidvCUYSfZQMTloO7a1G8ZeNaDK8rPIjw+CNHTy55y+w5LwixdEYx17
         dHfxPY/CMJJbimZKY1xIlkb1lI/Keqn0Hy5/QmQti2BtlBvORVxWWEXz+0g+Z0whxBIB
         +an3/9HwLYO13HlEBBDrlGlp5b7stj5+UlF2En3PlPMzLcA7C4YtC99TW8IfVJ54d248
         k3hW+lzE0eSCW/mTvnxpvdikh7mNNjIUCLyPx2m9ejoPBvFtehbHH6VoI14YnEWJl/MT
         dOLw==
X-Gm-Message-State: ACgBeo0EMq2sO4aXi1nlou6SgAiJFtkQe9aZhZrYIjnY4Cy6aCWbnDlF
	aLYdsCSXfmdeV3gWYnE7Gal7eylyusPDqUFE
X-Google-Smtp-Source: AA6agR6kVltuWJrO14iZs8OxH43enxdDGEQ8iZjlTRI8fd0PuGjsPb/u2xsuQ1+5HQvTeEqQXldoBw==
X-Received: by 2002:a17:90a:6007:b0:1f3:3527:609e with SMTP id y7-20020a17090a600700b001f33527609emr431742pji.52.1660080291856;
        Tue, 09 Aug 2022 14:24:51 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id l12-20020a170903120c00b0017128185043sm1811214plh.191.2022.08.09.14.24.50
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 14:24:51 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 03/10] yocto-bsps: update to v5.15.52 and buildpaths fixes
Date: Tue,  9 Aug 2022 11:24:25 -1000
Message-Id: <fbeef2e80a11d91bfe6ce3b8b4d8af70f67b5341.1660080128.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1660080128.git.steve@sakoman.com>
References: <cover.1660080128.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Updating linux-yocto/5.15 to the latest korg -stable release that comprises
the following commits:

    545aecd22961 Linux 5.15.52
    ea512d540a55 io_uring: fix not locked access to fixed buf table
    5696f7983d5d net: mscc: ocelot: allow unregistered IP multicast flooding to CPU
    810962c79417 rtw88: rtw8821c: enable rfe 6 devices
    d52f1c588824 rtw88: 8821c: support RFE type4 wifi NIC
    e8d4878dcd00 fs: account for group membership
    dc85bc24fbf1 fs: fix acl translation
    38753e9173a5 fs: support mapped mounts of mapped filesystems
    968e66f8ff70 fs: add i_user_ns() helper
    21c6c720be75 fs: port higher-level mapping helpers
    7d0536a8fab7 fs: remove unused low-level mapping helpers
    f895d0ff47be fs: use low-level mapping helpers
    1c62e0186d94 docs: update mapping documentation
    b20dcf603b8d fs: account for filesystem mappings
    3374eb1b0afc fs: tweak fsuidgid_has_mapping()
    7bc23abcb414 fs: move mapping helpers
    b3679e8b5996 fs: add is_idmapped_mnt() helper
    ab0b6dc5e16b powerpc/ftrace: Remove ftrace init tramp once kernel init is complete
    ce6bfe55237e xfs: only bother with sync_filesystem during readonly remount
    3465b167831e xfs: prevent UAF in xfs_log_item_in_current_chkpt
    4f0c91ab4c7d xfs: check sb_meta_uuid for dabuf buffer recovery
    c4f376ba8be8 xfs: remove all COW fork extents when remounting readonly
    40de647b2bab xfs: Fix the free logic of state in xfs_attr_node_hasname
    0e84e17c16a3 xfs: punch out data fork delalloc blocks on COW writeback failure
    71a218ca4fde xfs: use kmem_cache_free() for kmem_cache objects
    1cdcd496b7ca bcache: memset on stack variables in bch_btree_check() and bch_sectors_dirty_init()
    edbaf6e5e93a x86, kvm: use proper ASM macros for kvm_vcpu_is_preempted
    f4a80ec8c51d tick/nohz: unexport __init-annotated tick_nohz_full_setup()
    37238449af78 Linux 5.15.51
    7fc188a9a9cc powerpc/pseries: wire up rng during setup_arch()
    17aa69b458fd kbuild: link vmlinux only once for CONFIG_TRIM_UNUSED_KSYMS (2nd attempt)
    cced9ce619ef dma-direct: use the correct size for dma_set_encrypted()
    a8bbb4c26460 perf build-id: Fix caching files with a wrong build ID
    46a78d141335 random: update comment from copy_to_user() -> copy_to_iter()
    7a3a4683562e ARM: dts: bcm2711-rpi-400: Fix GPIO line names
    bcf2087ce4de modpost: fix section mismatch check for exported init/exit sections
    da3ee7cd2f15 ARM: cns3xxx: Fix refcount leak in cns3xxx_init
    cde4480b5ab0 memory: samsung: exynos5422-dmc: Fix refcount leak in of_get_dram_timings
    4d9c60e868f7 ARM: Fix refcount leak in axxia_boot_secondary
    10ba9d499a9f soc: bcm: brcmstb: pm: pm-arm: Fix refcount leak in brcmstb_pm_probe
    d23f76018e17 ARM: exynos: Fix refcount leak in exynos_map_pmu
    5e00d3d4023c arm64: dts: ti: k3-am64-main: Remove support for HS400 speed mode
    4b5047643466 ARM: dts: imx6qdl: correct PU regulator ramp delay
    c845b98be950 ARM: dts: imx7: Move hsic_phy power domain to HSIC PHY node
    93f7d2a7fcf3 drm/msm/dp: Always clear mask bits to disable interrupts at dp_ctrl_reset_irq_ctrl()
    1ad385647bf3 powerpc/powernv: wire up rng during setup_arch
    c1cfae46c5dc powerpc/rtas: Allow ibm,platform-dump RTAS call with null buffer address
    fe643b5afde6 powerpc: Enable execve syscall exit tracepoint
    416d16b7dc0b powerpc/microwatt: wire up rng during setup_arch()
    6b28ca2cf344 parisc: Enable ARCH_HAS_STRICT_MODULE_RWX
    cb4d52085c8b parisc/stifb: Fix fb_is_primary_device() only available with CONFIG_FB_STI
    0dcc1dd8a5dd xtensa: Fix refcount leak bug in time.c
    016245172317 xtensa: xtfpga: Fix refcount leak bug in setup
    711591bf1dab iio: adc: ti-ads131e08: add missing fwnode_handle_put() in ads131e08_alloc_channels()
    ab7bf025cee8 iio: adc: adi-axi-adc: Fix refcount leak in adi_axi_adc_attach_client
    4358bf6b1aad iio: adc: rzg2l_adc: add missing fwnode_handle_put() in rzg2l_adc_parse_properties()
    bb6f853289fe iio: adc: axp288: Override TS pin bias current for some models
    4f89730288ee iio: adc: stm32: Fix IRQs on STM32F4 by removing custom spurious IRQs message
    d361b3cc1cf8 iio: adc: stm32: Fix ADCs iteration in irq handler
    148bab179f04 iio: afe: rescale: Fix boolean logic bug
    80e80577043f iio: imu: inv_icm42600: Fix broken icm42600 (chip id 0 value)
    2a2d448a74ab iio: adc: stm32: fix maximum clock rate for stm32mp15x
    4687c3f95524 iio: trigger: sysfs: fix use-after-free on remove
    f359c4751de1 iio: gyro: mpu3050: Fix the error handling in mpu3050_power_up()
    005cb02224a9 iio: accel: mma8452: ignore the return value of reset operation
    cb0d87f2519d iio:accel:mxc4005: rearrange iio trigger get and register
    3357fb9da21a iio:accel:bma180: rearrange iio trigger get and register
    240fb3913f18 iio:accel:kxcjk-1013: rearrange iio trigger get and register
    a1356318042e iio:chemical:ccs811: rearrange iio trigger get and register
    974e69beebb3 iio:humidity:hts221: rearrange iio trigger get and register
    f650029de357 f2fs: attach inline_data after setting compression
    d98b5032c9d0 btrfs: fix deadlock with fsync+fiemap+transaction commit
    1238f580cd81 btrfs: don't set lock_owner when locking extent buffer for reading
    46336a59a4a7 dt-bindings: usb: ehci: Increase the number of PHYs
    9a0b865d8b4c dt-bindings: usb: ohci: Increase the number of PHYs
    308df8d4e41b usb: chipidea: udc: check request status before setting device address
    07f1d9a6b75d USB: gadget: Fix double-free bug in raw_gadget driver
    61c3a21ba6f6 usb: gadget: Fix non-unique driver names in raw-gadget driver
    da57f113e817 xhci-pci: Allow host runtime PM as default for Intel Meteor Lake xHCI
    cfa16dd21be0 xhci-pci: Allow host runtime PM as default for Intel Raptor Lake xHCI
    c1c78d4d9b0a xhci: turn off port power in shutdown
    9509a175a560 usb: typec: wcove: Drop wrong dependency to INTEL_SOC_PMIC
    288f30e17513 iio: adc: vf610: fix conversion mode sysfs node name
    466e15f845d7 iio: magnetometer: yas530: Fix memchr_inv() misuse
    490dd2dd2a79 iio: mma8452: fix probe fail when device tree compatible is used.
    ff3e50ca9250 s390/cpumf: Handle events cycles and instructions identical
    09dd5630fea6 gpio: winbond: Fix error code in winbond_gpio_get()
    e3ea126c513c nvme: move the Samsung X5 quirk entry to the core quirks
    1057d42602cb nvme-pci: add NO APST quirk for Kioxia device
    72fa0f65b566 sock: redo the psock vs ULP protection check
    eb9399970565 Revert "net/tls: fix tls_sk_proto_close executed repeatedly"
    8d7fe9ad6fdd virtio_net: fix xdp_rxq_info bug after suspend/resume
    8eb0223631f8 igb: Make DMA faster when CPU is active on the PCIe link
    60fd29f1ff46 regmap-irq: Fix offset/index mismatch in read_sub_irq_data()
    b0581f93cf05 regmap-irq: Fix a bug in regmap_irq_enable() for type_in_mask chips
    20229bb99545 ice: ethtool: advertise 1000M speeds properly
    2b2bba96526f afs: Fix dynamic root getattr
    ab150a2bf6c5 MIPS: Remove repetitive increase irq_err_count
    3e2c9ee9c1e6 x86/xen: Remove undefined behavior in setup_features()
    ffa12a326415 xen-blkfront: Handle NULL gendisk
    0315bd8ad0dd selftests: netfilter: correct PKTGEN_SCRIPT_PATHS in nft_concat_range.sh
    5b45535865d6 udmabuf: add back sanity check
    be64f54a0db2 net/tls: fix tls_sk_proto_close executed repeatedly
    a3b2470399f6 erspan: do not assume transport header is always set
    26e70f8989cb perf arm-spe: Don't set data source if it's not a memory operation
    e24709e89b1b drm/msm/dp: force link training for display resolution change
    796d3acd7d9e drm/msm/dp: do not initialize phy until plugin interrupt received
    40e9efdc2ef9 drm/msm/dp: dp_link_parse_sink_count() return immediately if aux read failed
    2ecf5ff9aa14 drm/msm/dp: Drop now unused hpd_high member
    d0b4a61f8713 drm/msm/dp: check core_initialized before disable interrupts at dp_display_unbind()
    3c39a1719773 drm/msm/mdp4: Fix refcount leak in mdp4_modeset_init_intf
    45bd293bbcd8 net/sched: sch_netem: Fix arithmetic in netem_dump() for 32-bit platforms
    efb10d2a047d ethtool: Fix get module eeprom fallback
    6386fdde8df0 bonding: ARP monitor spams NETDEV_NOTIFY_PEERS notifiers
    2af944210dc2 igb: fix a use-after-free issue in igb_clean_tx_ring
    cd7789e659e8 tipc: fix use-after-free Read in tipc_named_reinit
    ad10d61c55aa net: fix data-race in dev_isalive()
    f617cef46552 net: Write lock dev_base_lock without disabling bottom halves.
    638be56ae9cc KVM: arm64: Prevent kmemleak from accessing pKVM memory
    d7fe6be43cfa phy: aquantia: Fix AN when higher speeds than 1G are not advertised
    8e74f5ceea52 scsi: storvsc: Correct reporting of Hyper-V I/O size limits
    b28e4e3fd34c bpf, x86: Fix tail call count offset calculation on bpf2bpf call
    0eef1dcb9774 drm/sun4i: Fix crash during suspend after component bind failure
    b03607437ea8 bpf: Fix request_sock leak in sk lookup helpers
    7154e4df56d4 drm/msm: use for_each_sgtable_sg to iterate over scatterlist
    64e6ba7f2d2f xsk: Fix generic transmit when completion queue reservation fails
    54abcc525269 scsi: iscsi: Exclude zero from the endpoint ID range
    0a7a5261705f drm/msm: Switch ordering of runpm put vs devfreq_idle
    7d5fe94333a9 scsi: scsi_debug: Fix zone transition to full condition
    d0906b0fffc9 netfilter: use get_random_u32 instead of prandom
    f7fa3263079c drm/msm: Fix double pm_runtime_disable() call
    c6f6c9668609 drm/msm: Ensure mmap offset is initialized
    45dc151ca0b9 USB: serial: option: add Quectel RM500K module support
    d5eb7d6baed5 USB: serial: option: add Quectel EM05-G modem
    b919ece13b6b USB: serial: option: add Telit LE910Cx 0x1250 composition
    e5b0f42edda2 USB: serial: pl2303: add support for more HXN (G) types
    0895a2235bae drm/i915: Implement w/a 22010492432 for adl-s
    bae4d6a2dd9e tracing/kprobes: Check whether get_kretprobe() returns NULL in kretprobe_dispatcher()
    c3f51b28a8bc dm mirror log: clear log bits up to BITS_PER_LONG boundary
    ac0a5f701f4d dm era: commit metadata in postsuspend after worker stops
    c477de4c7d43 ata: libata: add qc->flags in ata_qc_complete_template tracepoint
    0af674e7a764 mtd: rawnand: gpmi: Fix setting busy timeout setting
    0f6f66b4ef27 MAINTAINERS: Add new IOMMU development mailing list
    87a54feba68f xen/gntdev: Avoid blocking in unmap_grant_pages()
    fe9ba4f29320 mmc: mediatek: wait dma stop bit reset to 0
    7df8c497214b mmc: sdhci-pci-o2micro: Fix card detect by dealing with debouncing
    161ec2a0807d scsi: ibmvfc: Allocate/free queue resource only during probe/remove
    8540f66196ca scsi: ibmvfc: Store vhost pointer during subcrq allocation
    4a19c1cee0de btrfs: add error messages to all unrecognized mount options
    82e3769c0257 btrfs: prevent remounting to v1 space cache for subpage mount
    341d33128a94 btrfs: fix hang during unmount when block group reclaim task is running
    f0126bcaee81 9p: fix fid refcount leak in v9fs_vfs_get_link
    22832ac3eb5b 9p: fix fid refcount leak in v9fs_vfs_atomic_open_dotl
    10629c04b3a8 9p: Fix refcounting during full path walks for fid lookups
    cbf585269510 net: openvswitch: fix parsing of nw_proto for IPv6 fragments
    56c6f1fcd594 ALSA: hda/realtek: Add quirk for Clevo NS50PU
    48e3b93cda56 ALSA: hda/realtek: Add quirk for Clevo PD70PNT
    dffaf580c3c2 ALSA: hda/realtek: Apply fixup for Lenovo Yoga Duet 7 properly
    c478ceb4342b ALSA: hda/realtek - ALC897 headset MIC no sound
    82e29e99f2ab ALSA: hda/realtek: Add mute LED quirk for HP Omen laptop
    d12a5d1b5053 ALSA: hda/conexant: Fix missing beep setup
    535abf6207ef ALSA: hda/via: Fix missing beep setup
    eb4c99d089c0 random: quiet urandom warning ratelimit suppression message
    7a42647f7037 random: schedule mix_interrupt_randomness() less often

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 3dea60e5c423c2324085dfafd0954d4f4759724e)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 .../linux/linux-yocto_5.15.bbappend              | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
index 85d02a4..11e78e2 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
@@ -7,17 +7,17 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "ebfb1822e9f9726d8c587fc0f60cfed43fa0873e"
-SRCREV_machine:genericx86-64 ?= "ebfb1822e9f9726d8c587fc0f60cfed43fa0873e"
-SRCREV_machine:edgerouter ?= "b978686694c3e41968821d6cc2a2a371fd9c2fb0"
-SRCREV_machine:beaglebone-yocto ?= "4c875cf1376178dfab4913aa1350cab50bb093d3"
+SRCREV_machine:genericx86 ?= "2fca0fd719812ea2ff67630b01355aa80481623e"
+SRCREV_machine:genericx86-64 ?= "2fca0fd719812ea2ff67630b01355aa80481623e"
+SRCREV_machine:edgerouter ?= "26de0a7a59c56b63833a55dc33dbf70a7984d140"
+SRCREV_machine:beaglebone-yocto ?= "3ec00e9ee0e41e4c402396425337c42da58c4d6f"
 
 COMPATIBLE_MACHINE:genericx86 = "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.15.36"
-LINUX_VERSION:genericx86-64 = "5.15.36"
-LINUX_VERSION:edgerouter = "5.15.36"
-LINUX_VERSION:beaglebone-yocto = "5.15.36"
+LINUX_VERSION:genericx86 = "5.15.52"
+LINUX_VERSION:genericx86-64 = "5.15.52"
+LINUX_VERSION:edgerouter = "5.15.52"
+LINUX_VERSION:beaglebone-yocto = "5.15.52"
-- 
2.25.1

