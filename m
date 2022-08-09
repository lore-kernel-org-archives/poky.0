Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web10.356.1660080291088162595
 for <poky@lists.yoctoproject.org>;
 Tue, 09 Aug 2022 14:24:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=FtBcd1H8;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.182, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f182.google.com with SMTP id bh13so12525777pgb.4
        for <poky@lists.yoctoproject.org>; Tue, 09 Aug 2022 14:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=jvErRWWKwxnPhNxcry7RoS8rjF+/y1jC2zbE6PpvHLY=;
        b=FtBcd1H8vt2ffjACSlc8m42hPqjFOCg3hDhT3rYXSMy4UBkdjy64v75UXsBHtvkodN
         cJms23FxGb1/AhA1AD/UCw6eBSLcIrRixpQjSEdJ+7uL2Yy/7rSqxL0YUDK2l5MCvRKm
         T/9zd8mNPt8V86CMoCbvEcQ+rOpl/PwVo10BZbMOAsxPH3zKtoLhewOesvUsiXwQ4sKS
         oUmPX0vvq6sjJgqMIJaAygAB8UY++e3sLJQrGwEeNV5GemAuDiMfiwj2vsrFa3NwbbEd
         OMXtsj/MkE/RZbsR3uRy+hu58pQD3WbsQrIK1vRgOqzf+jM9ovWt+kIBFdSPbdVQuqf3
         pYBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jvErRWWKwxnPhNxcry7RoS8rjF+/y1jC2zbE6PpvHLY=;
        b=nMTRWlbokfMAyHwlKVfpdzlgvUpssxdutAV5K98EHEyYQFm326VK9kj5hDhBPAsPRI
         H+EnSefhAS0+HN8bp1bufmx5HYWyT8oStNdveJDt9FG3i7djgaVM46VUHre5qMegkQjn
         qpmkXSDORhRL9gWMKhUELquz+GQUg8pu9TKLB6/CVsVWME0AVETWpRD9z1U7+XxHBbuo
         w4pXzfG+Bar8ngAIibSYVU2XiZ+SjDLP+xcLqcNuayHZb/bkiN4P8Iyj+y16d/c/pUYq
         4w7NktK3SDzVTJ4Quqak95WCc7ndLaitY9cxTOmGVewkME/93IzN5t7BVN5ocBYh46fO
         aMzg==
X-Gm-Message-State: ACgBeo0fHsaaRBj8TutNrX1/wjwMJwLaJpKFVOwtQOZFVY9155XgSl38
	YhjlW4jIaokKiyTZbdLeb73AsBkNRkhgjNjO
X-Google-Smtp-Source: AA6agR6a2BBTfUWpX0VK+Mk6iq0reZx5SHIPO5wH7Eins145KFooC7UpUsnqK5QqXe95wGxD7SltMw==
X-Received: by 2002:a63:1e5f:0:b0:419:d6bf:b9d7 with SMTP id p31-20020a631e5f000000b00419d6bfb9d7mr21125720pgm.593.1660080289712;
        Tue, 09 Aug 2022 14:24:49 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id l12-20020a170903120c00b0017128185043sm1811214plh.191.2022.08.09.14.24.48
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 14:24:49 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 02/10] yocto-bsps: update to v5.10.128 and buildpaths fixes
Date: Tue,  9 Aug 2022 11:24:24 -1000
Message-Id: <fbe59222b592b6bb50675ad1f87906b7a7b14797.1660080128.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1660080128.git.steve@sakoman.com>
References: <cover.1660080128.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Updating linux-yocto/5.10 to the latest korg -stable release that comprises
the following commits:

    ea86c1430c83 Linux 5.10.128
    2d10984d99ac net: mscc: ocelot: allow unregistered IP multicast flooding
    6a656280e775 powerpc/ftrace: Remove ftrace init tramp once kernel init is complete
    6b734f7b7071 xfs: check sb_meta_uuid for dabuf buffer recovery
    071e750ffb3d xfs: remove all COW fork extents when remounting readonly
    1e76bd4c6722 xfs: Fix the free logic of state in xfs_attr_node_hasname
    0cdccc05da76 xfs: punch out data fork delalloc blocks on COW writeback failure
    db3f8110c3b0 xfs: use kmem_cache_free() for kmem_cache objects
    09c9902cd80a bcache: memset on stack variables in bch_btree_check() and bch_sectors_dirty_init()
    c4ff3ffe0138 tick/nohz: unexport __init-annotated tick_nohz_full_setup()
    069fff50d400 drm: remove drm_fb_helper_modinit
    52dc7f3f6fa1 MAINTAINERS: add Amir as xfs maintainer for 5.10.y
    deb587b1a48d Linux 5.10.127
    1cca46c20541 powerpc/pseries: wire up rng during setup_arch()
    95d73d510b8a kbuild: link vmlinux only once for CONFIG_TRIM_UNUSED_KSYMS (2nd attempt)
    feb5ab798698 random: update comment from copy_to_user() -> copy_to_iter()
    959bbaf5b7a9 modpost: fix section mismatch check for exported init/exit sections
    c980392af147 ARM: cns3xxx: Fix refcount leak in cns3xxx_init
    889aad2203e0 memory: samsung: exynos5422-dmc: Fix refcount leak in of_get_dram_timings
    44a5b3a073e5 ARM: Fix refcount leak in axxia_boot_secondary
    30bbfeb480ae soc: bcm: brcmstb: pm: pm-arm: Fix refcount leak in brcmstb_pm_probe
    68f28d52e6cb ARM: exynos: Fix refcount leak in exynos_map_pmu
    59fdf108144c ARM: dts: imx6qdl: correct PU regulator ramp delay
    fb70bd86751a ARM: dts: imx7: Move hsic_phy power domain to HSIC PHY node
    f78acc4288ed powerpc/powernv: wire up rng during setup_arch
    7db1ba660b07 powerpc/rtas: Allow ibm,platform-dump RTAS call with null buffer address
    1f5a9205a3be powerpc: Enable execve syscall exit tracepoint
    ca144919afd4 parisc: Enable ARCH_HAS_STRICT_MODULE_RWX
    a1c902349ad5 parisc/stifb: Fix fb_is_primary_device() only available with CONFIG_FB_STI
    af0ff2da0152 xtensa: Fix refcount leak bug in time.c
    6c0839cf1b9e xtensa: xtfpga: Fix refcount leak bug in setup
    501652a2ad54 iio: adc: adi-axi-adc: Fix refcount leak in adi_axi_adc_attach_client
    d40514d4403a iio: adc: axp288: Override TS pin bias current for some models
    d579c893dd6c iio: adc: stm32: Fix IRQs on STM32F4 by removing custom spurious IRQs message
    62284d45e26d iio: adc: stm32: Fix ADCs iteration in irq handler
    e3ebb9d16ce1 iio: imu: inv_icm42600: Fix broken icm42600 (chip id 0 value)
    3e0af68b99b8 iio: adc: stm32: fix maximum clock rate for stm32mp15x
    b07a30a774b3 iio: trigger: sysfs: fix use-after-free on remove
    399788e819a1 iio: gyro: mpu3050: Fix the error handling in mpu3050_power_up()
    c1ec7d52a218 iio: accel: mma8452: ignore the return value of reset operation
    42caf44906d6 iio:accel:mxc4005: rearrange iio trigger get and register
    e26dcf627971 iio:accel:bma180: rearrange iio trigger get and register
    f26379e19958 iio:chemical:ccs811: rearrange iio trigger get and register
    4b6cdcff7cb8 f2fs: attach inline_data after setting compression
    2d7bdb6a5a37 usb: chipidea: udc: check request status before setting device address
    656eca37aae1 USB: gadget: Fix double-free bug in raw_gadget driver
    54604108be64 usb: gadget: Fix non-unique driver names in raw-gadget driver
    d87dec22fdf5 xhci-pci: Allow host runtime PM as default for Intel Meteor Lake xHCI
    114080d04ae4 xhci-pci: Allow host runtime PM as default for Intel Raptor Lake xHCI
    b8142a84657e xhci: turn off port power in shutdown
    116c3e81b053 usb: typec: wcove: Drop wrong dependency to INTEL_SOC_PMIC
    a547662534ca iio: adc: vf610: fix conversion mode sysfs node name
    58c3a27e9c23 iio: mma8452: fix probe fail when device tree compatible is used.
    5ee016f6120a s390/cpumf: Handle events cycles and instructions identical
    abe487a88a5d gpio: winbond: Fix error code in winbond_gpio_get()
    30531e0d7b5d nvme: move the Samsung X5 quirk entry to the core quirks
    169f7d770552 nvme-pci: add NO APST quirk for Kioxia device
    938f594266a6 nvme-pci: allocate nvme_command within driver pdu
    ba388d4e9a68 nvme: don't check nvme_req flags for new req
    e7ccaa1abacf nvme: mark nvme_setup_passsthru() inline
    3ee62a1f0701 nvme: split nvme_alloc_request()
    fe06c692cd7e nvme: centralize setting the timeout in nvme_alloc_request
    afbc954e7896 Revert "net/tls: fix tls_sk_proto_close executed repeatedly"
    340fbdc8011f virtio_net: fix xdp_rxq_info bug after suspend/resume
    3bccf82169c5 igb: Make DMA faster when CPU is active on the PCIe link
    7d7450363fdf regmap-irq: Fix a bug in regmap_irq_enable() for type_in_mask chips
    40b3815b2c90 ice: ethtool: advertise 1000M speeds properly
    7b564e3254b7 afs: Fix dynamic root getattr
    3c22192db06e MIPS: Remove repetitive increase irq_err_count
    cc649a78654a x86/xen: Remove undefined behavior in setup_features()
    b60c375ad140 selftests: netfilter: correct PKTGEN_SCRIPT_PATHS in nft_concat_range.sh
    20119c1e0fff udmabuf: add back sanity check
    e82376b63247 net/tls: fix tls_sk_proto_close executed repeatedly
    cec9867ee554 erspan: do not assume transport header is always set
    acf76125bb2b drm/msm/dp: fix connect/disconnect handled at irq_hpd
    61f8f4034c04 drm/msm/dp: promote irq_hpd handle to handle link training correctly
    d11cb082151f drm/msm/dp: deinitialize mainlink if link training failed
    3d67cb00cbbb drm/msm/dp: fixes wrong connection state caused by failure of link train
    efb2b6916050 drm/msm/dp: check core_initialized before disable interrupts at dp_display_unbind()
    d16a4339825e drm/msm/mdp4: Fix refcount leak in mdp4_modeset_init_intf
    363fd6e34618 net/sched: sch_netem: Fix arithmetic in netem_dump() for 32-bit platforms
    2e3216b929bb bonding: ARP monitor spams NETDEV_NOTIFY_PEERS notifiers
    c12a2c9b1b46 igb: fix a use-after-free issue in igb_clean_tx_ring
    361c5521c1e4 tipc: fix use-after-free Read in tipc_named_reinit
    f299d3fbe431 tipc: simplify the finalize work queue
    ab7f565ac705 phy: aquantia: Fix AN when higher speeds than 1G are not advertised
    a51c199e4d2b bpf, x86: Fix tail call count offset calculation on bpf2bpf call
    4ae116428e81 drm/sun4i: Fix crash during suspend after component bind failure
    516760f1d297 bpf: Fix request_sock leak in sk lookup helpers
    505a375eea11 drm/msm: use for_each_sgtable_sg to iterate over scatterlist
    10eb239e2935 scsi: scsi_debug: Fix zone transition to full condition
    15cc30ac2a8d netfilter: use get_random_u32 instead of prandom
    95f80c88436f netfilter: nftables: add nft_parse_register_store() and use it
    ec9b0a8d307e netfilter: nftables: add nft_parse_register_load() and use it
    8adedb4711dc drm/msm: Fix double pm_runtime_disable() call
    8682335375bd USB: serial: option: add Quectel RM500K module support
    9e6e063e548b USB: serial: option: add Quectel EM05-G modem
    0b3006a862fb USB: serial: option: add Telit LE910Cx 0x1250 composition
    f6a266e0dc6f dm mirror log: clear log bits up to BITS_PER_LONG boundary
    03d1874b8295 dm era: commit metadata in postsuspend after worker stops
    273106c2df43 ata: libata: add qc->flags in ata_qc_complete_template tracepoint
    156427b3123c mtd: rawnand: gpmi: Fix setting busy timeout setting
    07e56884cd95 mmc: sdhci-pci-o2micro: Fix card detect by dealing with debouncing
    0ae82e1ccb66 btrfs: add error messages to all unrecognized mount options
    49e3e449bc4e net: openvswitch: fix parsing of nw_proto for IPv6 fragments
    1508658aec4e ALSA: hda/realtek: Add quirk for Clevo NS50PU
    6e8e5031592d ALSA: hda/realtek: Add quirk for Clevo PD70PNT
    80307458a1ee ALSA: hda/realtek: Apply fixup for Lenovo Yoga Duet 7 properly
    7fcbc89d4722 ALSA: hda/realtek - ALC897 headset MIC no sound
    f5ea433d56d4 ALSA: hda/realtek: Add mute LED quirk for HP Omen laptop
    64373290601f ALSA: hda/conexant: Fix missing beep setup
    12a6be5d11d0 ALSA: hda/via: Fix missing beep setup
    5e80f923b8dd random: quiet urandom warning ratelimit suppression message
    310ebbd9f5cd random: schedule mix_interrupt_randomness() less often
    3acb7dc242ca vt: drop old FONT ioctls
    9cae50bdfafa Linux 5.10.126
    fb2fbb3c10d7 io_uring: use separate list entry for iopoll requests

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 793cf819f19b7d66cf48139e839fed7582cb7bb1)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 .../linux/linux-yocto_5.10.bbappend              | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index 94192af..975d6c6 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,17 +7,17 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "a8b4c628f382412e5e7df5750f2be711df95fa06"
-SRCREV_machine:genericx86-64 ?= "a8b4c628f382412e5e7df5750f2be711df95fa06"
-SRCREV_machine:edgerouter ?= "43577894d2295a92fce760dc403b97527fb55835"
-SRCREV_machine:beaglebone-yocto ?= "8038166b729c192d06f1eb37ab6868a5769f8bc5"
+SRCREV_machine:genericx86 ?= "4d201ec392f149ecce321186ea5494a6e25e28f4"
+SRCREV_machine:genericx86-64 ?= "4d201ec392f149ecce321186ea5494a6e25e28f4"
+SRCREV_machine:edgerouter ?= "58eb61187e8c78dc0241b2b85cb7d2c958f0e1fd"
+SRCREV_machine:beaglebone-yocto ?= "aab4d3436476d643c68ac2efccb887a4386a35bb"
 
 COMPATIBLE_MACHINE:genericx86 = "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.10.113"
-LINUX_VERSION:genericx86-64 = "5.10.113"
-LINUX_VERSION:edgerouter = "5.10.113"
-LINUX_VERSION:beaglebone-yocto = "5.10.113"
+LINUX_VERSION:genericx86 = "5.10.128"
+LINUX_VERSION:genericx86-64 = "5.10.128"
+LINUX_VERSION:edgerouter = "5.10.128"
+LINUX_VERSION:beaglebone-yocto = "5.10.128"
-- 
2.25.1

