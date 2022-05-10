Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web11.667.1652206264763113133
 for <poky@lists.yoctoproject.org>;
 Tue, 10 May 2022 11:11:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=hOjVyX0x;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.172, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f172.google.com with SMTP id bo5so15592239pfb.4
        for <poky@lists.yoctoproject.org>; Tue, 10 May 2022 11:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=oZAqMF38zdZclWJa/ks95IJlyO8dMi6tq2cOcIwOsRQ=;
        b=hOjVyX0xPdF2+4GJrvhLDkMtDP8r7t5WB+WKjKG4rn3SCOvnRPJvSzzSL2TU/ZE5T3
         eyGybbJWbqlXzDyZ/880kbaCVd+BvUXhhIQJhUI8dtB9yiJNvEz9VfLVwgRV63a+QzLE
         A/0oglK7y0ELG1OpLDofnfjhPb5bwmnVSajKfVcFzowQwi6VkrxA422740ttx830WrDl
         afffYIMKsasIi850K3hpQxg6LKN2H/v9VLJBlXE3jZj0wz6TEHEFgCqlzLnJE+wocsy+
         BSuU1M51NPH/2FRyJfvVPPLy1CBm8MnDs3gJhyomzVGMeDEl5MyJPqpFjoCw7kApbCch
         1AEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oZAqMF38zdZclWJa/ks95IJlyO8dMi6tq2cOcIwOsRQ=;
        b=2YUpImojjVeVk/miEHw47QWRwTJDM2B4Eq2Qh/O25bu2lJlXlQyzINk6KPRgflm9pk
         XVcW5QP5PQiD6kaB7xT0sPej7k1/HSdHB0EA0H7Tg6VZvnJoweRJztEja5bxpY35hMYd
         ci8vR3ssJDSgso74OxrPtdpGJ9DjwnSBQwh0vvNrzW1scF9gjkrC1BKS20gqKJWRu4AC
         0XYw+GFev2YYtxIWvgueLui/qNLF6X0I5SCANEPot99+5bHhShSjE47NWPHFes3zLBI2
         SpXPAldQ1AAM1UWfndX/j7nmkQnLBML0FPLYZPZd1iv3ScYravOud+iL7DEoFGrLznep
         mJMQ==
X-Gm-Message-State: AOAM5302ayhbex4694trIUaLPGJPimfkhHzTdoF2NHrAn72N4r4zgkXm
	uox1h9Riik/di2xq7FvPuak5FdhNE9CWutzz
X-Google-Smtp-Source: ABdhPJwnziHUUY9utFwAR1d5nhYQsni8LpOJ/zZ7Ascvjuo5eGnvBD1NvKN7BNxSsTn28uEC/SnU9A==
X-Received: by 2002:a63:e549:0:b0:3c6:d87:d3ef with SMTP id z9-20020a63e549000000b003c60d87d3efmr17965546pgj.111.1652206261080;
        Tue, 10 May 2022 11:11:01 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id g20-20020a170902869400b0015e8d4eb2c2sm2338508plo.268.2022.05.10.11.10.59
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 May 2022 11:11:00 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 1/2] yocto-bsps: update to v5.15.36
Date: Tue, 10 May 2022 08:10:43 -1000
Message-Id: <60909727a5fe0db1542b37dfc1c58f947f472a5d.1652206108.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1652206108.git.steve@sakoman.com>
References: <cover.1652206108.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Updating linux-yocto/5.15 to the latest korg -stable release that comprises
the following commits:

    45451e8015a9 Linux 5.15.36
    bb906d15a99e arm64: dts: qcom: add IPA qcom,qmp property
    1ea01e64632f block/compat_ioctl: fix range check in BLKGETSIZE
    6a3c609feb11 spi: atmel-quadspi: Fix the buswidth adjustment between spi-mem and controller
    b1b8f39c2475 jbd2: fix a potential race while discarding reserved buffers after an abort
    2e25c46c6eef netfilter: nft_ct: fix use after free when attaching zone template
    2b273d1fd18e ext4: force overhead calculation if the s_overhead_cluster makes no sense
    52ca84a3edd1 ext4: fix overhead calculation to account for the reserved gdt blocks
    6b952563934c ext4, doc: fix incorrect h_reserved size
    9b90003771e5 ext4: limit length to bitmap_maxbytes - blocksize in punch_hole
    e3912775b476 ext4: fix use-after-free in ext4_search_dir
    8bb5676b49d3 ext4: fix symlink file size not match to file content
    ba50ea456f49 ext4: fix fallocate to use file_modified to update permissions consistently
    67e4860eeed8 netfilter: conntrack: avoid useless indirection during conntrack destruction
    bcba40bd36d7 netfilter: conntrack: convert to refcount_t api
    4bbd693d9f0a KVM: SVM: Flush when freeing encrypted pages even on SME_COHERENT CPUs
    8b2da9690489 KVM: nVMX: Defer APICv updates while L2 is active until L1 is active
    a41b3243a6de KVM: x86: Pend KVM_REQ_APICV_UPDATE during vCPU creation to fix a race
    2b4417acd3c6 KVM: x86/pmu: Update AMD PMC sample period to fix guest NMI-watchdog
    87d95ff0ca27 arm_pmu: Validate single/group leader events
    4d98fbb26683 ARC: entry: fix syscall_trace_exit argument
    7b69c07beb23 e1000e: Fix possible overflow in LTR decoding
    73a0b4c5c0bd ASoC: soc-dapm: fix two incorrect uses of list iterator
    571a67b0d8a4 gpio: Request interrupts after IRQ is initialized
    e411af98013d openvswitch: fix OOB access in reserve_sfa_size()
    bac4cadeb718 xtensa: fix a7 clobbering in coprocessor context load/store
    91335ca9ebe7 xtensa: patch_text: Fixup last cpu should be master
    49952e31e50d perf report: Set PERF_SAMPLE_DATA_SRC bit for Arm SPE event
    04ecea282b42 perf script: Always allow field 'data_src' for auxtrace
    a92335b4b189 powerpc/perf: Fix power10 event alternatives
    7a56867c5ef3 powerpc/perf: Fix power9 event alternatives
    53c4a9ff225b drm/vc4: Use pm_runtime_resume_and_get to fix pm_runtime_get_sync() usage
    9dc46d2e3723 KVM: PPC: Fix TCE handling for VFIO
    76614b111867 drm/panel/raspberrypi-touchscreen: Initialise the bridge in prepare
    7981351a916e drm/panel/raspberrypi-touchscreen: Avoid NULL deref if not initialised
    56637084e8a5 perf/core: Fix perf_mmap fail when CONFIG_PERF_USE_VMALLOC enabled
    b1b929468229 sched/pelt: Fix attach_entity_load_avg() corner case
    914473a07088 scsi: sr: Do not leak information in ioctl
    f0cfae3e0d3a Input: omap4-keypad - fix pm_runtime_get_sync() error checking
    232541989a1a net: atlantic: invert deep par in pm functions, preventing null derefs
    6b8af9f96749 dmaengine: imx-sdma: fix init of uart scripts
    1a8d1665cff1 dma: at_xdmac: fix a missing check on list iterator
    d10a711d4db6 ata: pata_marvell: Check the 'bmdma_addr' beforing reading
    48b2ab1a960a mm/mmu_notifier.c: fix race in mmu_interval_notifier_remove()
    41ba681c6373 oom_kill.c: futex: delay the OOM reaper to allow time for proper futex cleanup
    9dcb65cdf312 mm, hugetlb: allow for "high" userspace addresses
    07bdd207774c memcg: sync flush only if periodic flush is delayed
    9c71b29d55d4 mm/memory-failure.c: skip huge_zero_page in memory_failure()
    b81291922f8b EDAC/synopsys: Read the error count from the correct register
    87dd813bd2c3 nvme-pci: disable namespace identifiers for Qemu controllers
    dab2f477e15a nvme-pci: disable namespace identifiers for the MAXIO MAP1002/1202
    25f37ed22a9e nvme: add a quirk to disable namespace identifiers
    4a9f9f1791f3 VFS: filename_create(): fix incorrect intent.
    773ca67ffc96 stat: fix inconsistency between struct stat and struct compat_stat
    80c713a894c3 scsi: qedi: Fix failed disconnect handling
    c7f4f3016fea scsi: iscsi: Fix NOP handling during conn recovery
    e4efe868aa14 scsi: iscsi: Merge suspend fields
    740411ee2f94 scsi: iscsi: Release endpoint ID when its freed
    123a52eb610d net: macb: Restart tx only if queue pointer is lagging
    bc663ff8cae3 drm/msm/mdp5: check the return of kzalloc()
    5fe864539caf dpaa_eth: Fix missing of_node_put in dpaa_get_ts_info()
    48e1db2c3d42 brcmfmac: sdio: Fix undefined behavior due to shift overflowing the constant
    e25b350e2521 mt76: Fix undefined behavior due to shift overflowing the constant
    a7a651d5a525 net: atlantic: Avoid out-of-bounds indexing
    213330bafd02 cifs: Check the IOCB_DIRECT flag, not O_DIRECT
    6085e24fd972 vxlan: fix error return code in vxlan_fdb_append
    32fe43df71c5 arm64: dts: imx: Fix imx8*-var-som touchscreen property sizes
    f0ba965e4783 drm/msm/disp: check the return value of kzalloc()
    b78d40339568 ALSA: usb-audio: Fix undefined behavior due to shift overflowing the constant
    9d441c2e2ad1 platform/x86: samsung-laptop: Fix an unsigned comparison which can never be negative
    4426116b2e02 reset: tegra-bpmp: Restore Handle errors in BPMP response
    a6ec9d95c205 reset: renesas: Check return value of reset_control_deassert()
    70fa727835f9 ARM: vexpress/spc: Avoid negative array index when !SMP
    d3acd3f9f80e arm64: mm: fix p?d_leaf()
    ec9cb700cbf7 selftests: mlxsw: vxlan_flooding: Prevent flooding of unwanted packets
    6b9a418d3850 dmaengine: idxd: skip clearing device context when device is read-only
    49047fa486b3 dmaengine: idxd: add RO check for wq max_transfer_size write
    6c30e099b978 dmaengine: idxd: add RO check for wq max_batch_size write
    e83acf93919b net: stmmac: Use readl_poll_timeout_atomic() in atomic state
    79957134ca1d drm/i915/display/psr: Unset enable_psr2_sel_fetch if other checks in intel_psr2_config_valid() fails
    f3552c37593a netlink: reset network and mac headers in netlink_dump()
    93581ae1f980 net: mscc: ocelot: fix broken IP multicast flooding
    6a5ca57d5acd net: dsa: hellcreek: Calculate checksums in tagger
    40ebaf7365b0 can: isotp: stop timeout monitoring when no first frame was sent
    652a5405396d ipv6: make ip6_rt_gc_expire an atomic_t
    d23fe66eb7b0 l3mdev: l3mdev_master_upper_ifindex_by_index_rcu should be using netdev_master_upper_dev_get_rcu
    58bdbd121a34 net/sched: cls_u32: fix possible leak in u32_init_knode()
    1b4fb109cc53 net: restore alpha order to Ethernet devices in config
    d5049ef1f671 ip6_gre: Fix skb_under_panic in __gre6_xmit()
    3cc2f6b71eb6 ip6_gre: Avoid updating tunnel->tun_hlen in __gre6_xmit()
    ab26f1136757 net/packet: fix packet_sock xmit return value checking
    b355ca6a915f net/smc: Fix sock leak when release after smc_shutdown()
    8fe1bf23c96b rxrpc: Restore removed timer deletion
    09da8cf94588 ALSA: hda/hdmi: fix warning about PCM count when used with SOF
    c7c71b3e4764 igc: Fix suspending when PTM is active
    da323d0d6aaa igc: Fix BUG: scheduling while atomic
    b3ce7d3a1742 igc: Fix infinite loop in release_swfw_sync
    8920a03a3a15 spi: cadence-quadspi: fix incorrect supports_op() return value
    a583f2f3c878 esp: limit skb_page_frag_refill use to a single page
    76900a136b1a spi: spi-mtk-nor: initialize spi controller after resume
    84e77e72367f dmaengine: dw-edma: Fix unaligned 64bit access
    d18fb19c1c8e dmaengine: mediatek:Fix PM usage reference leak of mtk_uart_apdma_alloc_chan_resources
    8932d9ee4b9f dmaengine: imx-sdma: Fix error checking in sdma_event_remap
    a8be4586352b dmaengine: idxd: fix device cleanup on disable
    6168532a08ef ASoC: codecs: wcd934x: do not switch off SIDO Buck when codec is in use
    053bd9604f05 ASoC: msm8916-wcd-digital: Check failure for devm_snd_soc_register_component
    9a4c63e7332c ASoC: rk817: Use devm_clk_get() in rk817_platform_probe
    bc15442cc99f ASoC: topology: Correct error handling in soc_tplg_dapm_widget_create()
    bc7d0133181e ASoC: atmel: Remove system clock tree configuration for at91sam9g20ek
    236785649ad2 ALSA: hda/realtek: Add quirk for Clevo NP70PNP
    aaa22e5b526d ALSA: usb-audio: Clear MIDI port active flag after draining
    ba9e9a794fd1 net/sched: cls_u32: fix netns refcount changes in u32_change()
    8dfec6e0a62d scsi: ufs: core: scsi_get_lba() error fix
    c2d0cdf8ad06 gfs2: assign rgrp glock before compute_bitstructs
    a52e73bef254 mm, kfence: support kmem_dump_obj() for KFENCE objects
    3876c574e4cc perf tools: Fix segfault accessing sample_id xyarray
    77a467983bff mm: page_alloc: fix building error on -Werror=array-compare
    3177d047e58a etherdevice: Adjust ether_addr* prototypes to silence -Wstringop-overead
    3f7b1a87ac75 arm64/mm: drop HAVE_ARCH_PFN_VALID
    c01430cf5b87 dma-mapping: remove bogus test for pfn_valid from dma_map_resource
    155ae0547cb8 xfs: return errors in xfs_fs_sync_fs
    935745abcf4c vfs: make sync_filesystem return errors from ->sync_fs
    6eb927ee189f block: simplify the block device syncing code
    7877e7a5a52e block: remove __sync_blockdev
    4b7617ae04de fs: remove __sync_filesystem
    81d8d30c35ed Linux 5.15.35
    85f25bb9a005 ax25: Fix UAF bugs in ax25 timers
    43c107021d91 ax25: Fix NULL pointer dereferences in ax25 timers
    da6509fba636 ax25: fix NPD bug in ax25_disconnect
    1bf8946d5826 ax25: fix UAF bug in ax25_send_control()
    452ae92b9906 ax25: Fix refcount leaks caused by ax25_cb_del()
    b982492ec3a1 ax25: fix UAF bugs of net_device caused by rebinding operation
    bc706d89199b ax25: fix reference count leaks of ax25_dev
    9af0fd5c4453 ax25: add refcount in ax25_dev to avoid UAF bugs
    de6a76eea645 cpufreq: intel_pstate: ITMT support for overclocked system
    74d23d422556 net: ipa: fix a build dependency
    1648c7b450d8 soc: qcom: aoss: Fix missing put_device call in qmp_get
    d712aea3cd81 cpu/hotplug: Remove the 'cpu' member of cpuhp_cpu_state
    14785927a1d4 drm/i915: Sunset igpu legacy mmap support based on GRAPHICS_VER_FULL
    4ef9951d0252 dma-direct: avoid redundant memory sync for swiotlb
    111becd63e37 timers: Fix warning condition in __run_timers()
    cbdd7a33c533 dt-bindings: net: snps: remove duplicate name
    83a4c1080e09 i2c: pasemi: Wait for write xfers to finish
    44981e4cde68 smp: Fix offline cpu check in flush_smp_call_function_queue()
    2f345bb14ad4 i2c: dev: check return value when calling dev_set_name()
    6b4bf97587ef dm integrity: fix memory corruption when tag_size is less than digest size
    0940795c6834 ARM: davinci: da850-evm: Avoid NULL pointer dereference
    68a38b07f125 tick/nohz: Use WARN_ON_ONCE() to prevent console saturation
    c11ef9ded22e genirq/affinity: Consider that CPUs on nodes can be unbalanced
    c61d929944c9 x86/tsx: Disable TSX development mode at boot
    aaf27fcaefc1 x86/tsx: Use MSR_TSX_CTRL to clear CPUID bits
    2dd7d2eddf8e drm/amdgpu: Enable gfxoff quirk on MacBook Pro
    804c096d640e drm/amd/display: don't ignore alpha property on pre-multiplied mode
    adee01bbf6cb ipv6: fix panic when forwarding a pkt with no in6 dev
    cab64cb82fe1 nl80211: correctly check NL80211_ATTR_REG_ALPHA2 size
    63038f6e96a7 ALSA: pcm: Test for "silence" field in struct "pcm_format_data"
    a53062c94b8c ALSA: hda/realtek: add quirk for Lenovo Thinkpad X12 speakers
    0349df521528 ALSA: hda/realtek: Add quirk for Clevo PD50PNT
    3680b48533ae btrfs: mark resumed async balance as writing
    252db93fd0bd btrfs: fix root ref counts in error handling in btrfs_get_root_ref
    9b81c2c147e1 ath9k: Fix usage of driver-private space in tx_info
    3386927f436e ath9k: Properly clear TX status area before reporting to mac80211
    7a509a9f2bb7 cifs: verify that tcon is valid before dereference in cifs_kill_sb
    bd17422b9b67 gcc-plugins: latent_entropy: use /dev/urandom
    05d1824a7fb4 memory: renesas-rpc-if: fix platform-device leak in error path
    f5e13d700a4d SUNRPC: Fix NFSD's request deferral on RDMA transports
    00715427ea77 KVM: x86/mmu: Resolve nx_huge_pages when kvm.ko is loaded
    70ea5e7b38c3 mm: kmemleak: take a full lowmem check in kmemleak_*_phys()
    12ba1d38115a mm: fix unexpected zeroed page mapping with zram swap
    bb7645c33869 mm, page_alloc: fix build_zonerefs_node()
    b6d17c67885a mm/secretmem: fix panic when growing a memfd_secret
    4cdf0e7a5be8 perf/imx_ddr: Fix undefined behavior due to shift overflowing the constant
    b8ed0f7531f3 io_uring: use nospec annotation for more indexes
    5218d5cc0283 io_uring: zero tag on rsrc removal
    efb020924a71 drivers: net: slip: fix NPD bug in sl_tx_timeout()
    e455d7510db7 scsi: megaraid_sas: Target with invalid LUN ID is deleted during scan
    f1933d9ee745 scsi: mvsas: Add PCI ID of RocketRaid 2640
    389f37e46bdd scsi: mpt3sas: Fail reset operation if config request timed out
    184b4fad0872 drbd: set QUEUE_FLAG_STABLE_WRITES
    6a03581ccffa drm/amd/display: Fix allocate_mst_payload assert on resume
    ac2eb310af05 drm/amd/display: Revert FEC check in validation
    eab8e585840f drm/amd/display: Enable power gating before init_pipes
    d8860f1f9e41 spi: cadence-quadspi: fix protocol setup for non-1-1-X operations
    6d48df738272 myri10ge: fix an incorrect free for skb in myri10ge_sw_tso
    b416898442f2 net: usb: aqc111: Fix out-of-bounds accesses in RX fixup
    c3f86aef97cf Drivers: hv: balloon: Disable balloon and hot-add accordingly
    1c9fdb9587e0 net: axienet: setup mdio unconditionally
    61dd8bef80c2 tlb: hugetlb: Add more sizes to tlb_remove_huge_tlb_entry
    ed2711c696ce arm64: alternatives: mark patch_alternative() as `noinstr`
    cfd24b14eb2d regulator: wm8994: Add an off-on delay for WM8994 variant
    86d1cdf56fc5 gpu: ipu-v3: Fix dev_dbg frequency output
    4583205048ae ata: libata-core: Disable READ LOG DMA EXT for Samsung 840 EVOs
    6eecc4811a47 net: micrel: fix KS8851_MLL Kconfig
    9e60a788a3f7 scsi: ibmvscsis: Increase INITIAL_SRP_LIMIT to 1024
    026083cb43a4 scsi: lpfc: Fix queue failures when recovering from PCI parity error
    b7f3b5d70c83 scsi: target: tcmu: Fix possible page UAF
    44f95a5aae99 Drivers: hv: vmbus: Prevent load re-ordering when reading ring buffer
    92a3499933c1 PCI: hv: Propagate coherence from VMbus device to PCI device
    1b576e81d31b Drivers: hv: vmbus: Deactivate sysctl_record_panic_msg by default in isolated guests
    f2658d5966bc drm/amdkfd: Check for potential null return of kmalloc_array()
    9f0fabf30b48 drm/amdgpu/vcn: improve vcn dpg stop procedure
    25efb191d86b drm/amdkfd: Fix Incorrect VMIDs passed to HWS
    7a3bc11a4034 drm/amd/display: Update VTEM Infopacket definition
    92951699a5f1 drm/amd/display: FEC check in timing validation
    b054e8183fbd drm/amd/display: fix audio format not updated after edid updated
    37bc29a44538 drm/amdgpu/gmc: use PCI BARs for APUs in passthrough
    5a3b56a4a1c7 drm/amdgpu: conduct a proper cleanup of PDB bo
    01dcda701fef btrfs: do not warn for free space inode in cow_file_range
    bb93369f93b5 btrfs: fix fallocate to use file_modified to update permissions consistently
    6dded62e5aa6 drm/amd: Add USBC connector ID
    3e67054c339c block: fix offset/size check in bio_trim()
    279018a01b08 net: bcmgenet: Revert "Use stronger register read/writes to assure ordering"
    b8c0f6d1b04c vfio/pci: Fix vf_token mechanism when device-specific VF drivers are used
    5fda973f0ece dm mpath: only use ktime_get_ns() in historical selector
    9901b07ba42b cifs: potential buffer overflow in handling symlinks
    9ded5ae40f4f nfc: nci: add flush_workqueue to prevent uaf
    331c99ee8dcb net: ftgmac100: access hardware register after clock ready
    8f79ce226ad2 macvlan: Fix leaking skb in source mode with nodst option
    8e86fba13479 perf tools: Fix misleading add event PMU debug message
    1665758b4bfd ALSA: usb-audio: Limit max buffer and period sizes per time
    6b38c5722610 ALSA: usb-audio: Increase max buffer size
    7399ed8e6a8d testing/selftests/mqueue: Fix mq_perf_tests to free the allocated cpu set
    9947548d9cef io_uring: verify pad field is 0 in io_get_ext_arg
    7a7c9f9de961 io_uring: verify that resv2 is 0 in io_uring_rsrc_update2
    22aa1597f462 io_uring: move io_uring_rsrc_update2 validation
    cb981d5c7511 ALSA: mtpav: Don't call card private_free at probe error path
    872e5fa0781f ALSA: ad1889: Fix the missing snd_card_free() call at probe error
    96aceacda8d2 netfilter: nf_tables: nft_parse_register can return a negative value
    90c153ca45da sctp: Initialize daddr on peeled off socket
    50d46b5ce004 scsi: iscsi: Fix unbound endpoint error handling
    578616ac3d87 scsi: iscsi: Fix conn cleanup and stop race during iscsid restart
    485780af7ef1 scsi: iscsi: Fix endpoint reuse regression
    cbd4f4e40944 scsi: iscsi: Fix offload conn cleanup when iscsid restarts
    cc0082d45de1 scsi: iscsi: Move iscsi_ep_disconnect()
    d6f6f945e850 scsi: pm80xx: Enable upper inbound, outbound queues
    b02c509ceef4 scsi: pm80xx: Mask and unmask upper interrupt vectors 32-63
    3a523807f014 net/smc: Fix NULL pointer dereference in smc_pnet_find_ib()
    66b3107a4a06 drm/msm/dp: add fail safe mode outside of event_mutex context
    815006c33391 drm/msm/dsi: Use connector directly in msm_dsi_manager_connector_init()
    a6549b364be4 drm/msm: Fix range size vs end confusion
    1c86b7ea63ff netfilter: nft_socket: make cgroup match work in input too
    5a52384a5134 cfg80211: hold bss_lock while updating nontrans_list
    d5be67ecbeff net/sched: taprio: Check if socket flags are valid
    62a48383ebe2 net: ethernet: stmmac: fix altr_tse_pcs function when using a fixed-link
    72f9c15854b0 net: dsa: felix: suppress -EPROBE_DEFER errors
    13faa76cf572 net/sched: fix initialization order when updating chain 0 head
    4c979e6fcec8 mlxsw: i2c: Fix initialization error flow
    152b813d8ba5 net: mdio: don't defer probe forever if PHY IRQ provider is missing
    675e7d3086d0 cifs: release cached dentries only if mount is complete
    d40cf3492277 gpiolib: acpi: use correct format characters
    93940fc4cb81 veth: Ensure eth header is in skb's linear part
    de8a332c86a7 net/sched: flower: fix parsing of ethertype following VLAN header
    726ae7300fcc SUNRPC: Fix the svc_deferred_event trace class
    ec2ab59b9e66 media: rockchip/rga: do proper error checking in probe
    b0d8a9eb3239 firmware: arm_scmi: Fix sorting of retrieved clock rates
    e2da8f9ce3ea Revert "ath11k: mesh: add support for 256 bitmap in blockack frames in 11ax"
    9f029cb2c92e memory: atmel-ebi: Fix missing of_node_put in atmel_ebi_probe
    e7b1992b0722 firmware: arm_scmi: Remove clear channel call on the TX channel
    77ffc38e577d drm/msm: Add missing put_task_struct() in debugfs path
    aa4845194b9d ALSA: nm256: Don't call card private_free at probe error path
    425c83e2898d ALSA: usb-audio: Cap upper limits of buffer/period bytes for implicit fb
    3bbd4850d957 ALSA: via82xx: Fix the missing snd_card_free() call at probe error
    56e44ff13d84 ALSA: sonicvibes: Fix the missing snd_card_free() call at probe error
    73229d7cb836 ALSA: sc6000: Fix the missing snd_card_free() call at probe error
    df03ce487e1b ALSA: rme96: Fix the missing snd_card_free() call at probe error
    ef4c35339414 ALSA: rme9652: Fix the missing snd_card_free() call at probe error
    4efa63663c36 ALSA: rme32: Fix the missing snd_card_free() call at probe error
    bb94f5d98511 ALSA: riptide: Fix the missing snd_card_free() call at probe error
    4ecd10217df6 ALSA: oxygen: Fix the missing snd_card_free() call at probe error
    30b86477daaa ALSA: maestro3: Fix the missing snd_card_free() call at probe error
    5fbb73cb1208 ALSA: lx6464es: Fix the missing snd_card_free() call at probe error
    0651442d22e2 ALSA: lola: Fix the missing snd_card_free() call at probe error
    0bec8b8a57de ALSA: korg1212: Fix the missing snd_card_free() call at probe error
    d9ac5256de1f ALSA: intel_hdmi: Fix the missing snd_card_free() call at probe error
    e87b8d0ba455 ALSA: intel8x0: Fix the missing snd_card_free() call at probe error
    547c9af67b4e ALSA: ice1724: Fix the missing snd_card_free() call at probe error
    141abcbf902a ALSA: hdspm: Fix the missing snd_card_free() call at probe error
    f006a4bcf8bb ALSA: hdsp: Fix the missing snd_card_free() call at probe error
    85515309293b ALSA: galaxy: Fix the missing snd_card_free() call at probe error
    841e8f8dd21f ALSA: fm801: Fix the missing snd_card_free() call at probe error
    3a738f1b3ffd ALSA: es1968: Fix the missing snd_card_free() call at probe error
    d3c6ac7a051c ALSA: es1938: Fix the missing snd_card_free() call at probe error
    20b35ba7aa2f ALSA: ens137x: Fix the missing snd_card_free() call at probe error
    0d52c09f0c17 ALSA: emu10k1x: Fix the missing snd_card_free() call at probe error
    2a2a75ebdbd4 ALSA: echoaudio: Fix the missing snd_card_free() call at probe error
    648e89e9de29 ALSA: cs5535audio: Fix the missing snd_card_free() call at probe error
    9decc5bfd173 ALSA: cs4281: Fix the missing snd_card_free() call at probe error
    2dde47610757 ALSA: cmipci: Fix the missing snd_card_free() call at probe error
    f98476228801 ALSA: ca0106: Fix the missing snd_card_free() call at probe error
    e5a54e236f70 ALSA: bt87x: Fix the missing snd_card_free() call at probe error
    935629ba096e ALSA: azt3328: Fix the missing snd_card_free() call at probe error
    3a943321c362 ALSA: aw2: Fix the missing snd_card_free() call at probe error
    811a92b866a0 ALSA: au88x0: Fix the missing snd_card_free() call at probe error
    ea61c1bd582b ALSA: atiixp: Fix the missing snd_card_free() call at probe error
    007a9b5554e1 ALSA: als4000: Fix the missing snd_card_free() call at probe error
    291d9e5e94d0 ALSA: als300: Fix the missing snd_card_free() call at probe error
    5bc156409025 ALSA: ali5451: Fix the missing snd_card_free() call at probe error
    cfa98d6c41e0 ALSA: sis7019: Fix the missing error handling
    1479bdea76dd ALSA: core: Add snd_card_free_on_error() helper
    07cacfd9d9dc btrfs: release correct delalloc amount in direct IO write path
    8ff8bdb8c92d net: ipa: request IPA register values be retained
    587ced6b8cf3 dt-bindings: net: qcom,ipa: add optional qcom,qmp property
    7883df73fd59 soc: qcom: aoss: Expose send for generic usecase
    ec13aa4e0085 btrfs: remove unused variable in btrfs_{start,write}_dirty_block_groups()
    ed0e951463ea btrfs: remove no longer used counter when reading data page
    6308ab54c8ec btrfs: remove unused parameter nr_pages in add_ra_bio_pages()
    ff810f85ed3f ACPI: processor: idle: fix lockup regression on 32-bit ThinkPad T40
    7cad1c40ef91 ACPI: processor idle: Allow playing dead in C3 state
    631473adaaef ACPI: processor idle: Check for architectural support for LPI
    5b13295ac584 cpuidle: PSCI: Move the `has_lpi` check to the beginning of the function
    9873fe0f3857 hamradio: remove needs_free_netdev to avoid UAF
    c799c18a287e hamradio: defer 6pack kfree after unregister_netdev
    8e663865f528 drm/amd/display: Fix p-state allow debug index on dcn31
    685a19fa6ae9 drm/amd/display: Add pstate verification and recovery for DCN31
    1b86fc15ba6d Linux 5.15.34
    c9ea4fb1f3f3 stacktrace: move filter_irq_stacks() to kernel/stacktrace.c
    fddb88bd266f powerpc: Fix virt_addr_valid() for 64-bit Book3E & 32-bit
    68cea1e243b8 static_call: Don't make __static_call_return0 static
    429f413ed83f mm/sparsemem: fix 'mem_section' will never be NULL gcc 12 warning
    8fe51495efff irqchip/gic, gic-v3: Prevent GSI to SGI translations
    69943af22a32 powerpc/64: Fix build failure with allyesconfig in book3s_64_entry.S
    7b5d60323f90 irqchip/gic-v4: Wait for GICR_VPENDBASER.Dirty to clear before descheduling
    f4f8b6d8490e x86,static_call: Fix __static_call_return0 for i386
    ff6505766565 sched: Teach the forced-newidle balancer about CPU affinity limitation.
    f399f38eda57 x86/bug: Prevent shadowing in __WARN_FLAGS
    469eed08becd Drivers: hv: vmbus: Replace smp_store_mb() with virt_store_mb()
    f5e59185b033 mm: don't skip swap entry even if zap_details specified
    4693fce5a5d4 selftests: cgroup: Test open-time cgroup namespace usage for migration checks
    47802775bc11 selftests: cgroup: Test open-time credential usage for migration checks
    e326f218de1f selftests: cgroup: Make cg_create() use 0755 for permission instead of 0644
    33db9912ff7c ubsan: remove CONFIG_UBSAN_OBJECT_SIZE
    f1607e13ed71 Revert "net/mlx5: Accept devlink user input after driver initialization complete"
    226b4327ef5c KVM: avoid NULL pointer dereference in kvm_dirty_ring_push
    104bfa23a001 dmaengine: Revert "dmaengine: shdma: Fix runtime PM imbalance on error"
    3c3a8e56553e tools build: Use $(shell ) instead of `` to get embedded libperl's ccopts
    fbe722d48b8e tools build: Filter out options and warnings not supported by clang
    9b2b01e36741 perf python: Fix probing for some clang command line options
    03044b841406 perf build: Don't use -ffat-lto-objects in the python feature test when building with clang-13
    3b14aa053181 Revert "nbd: fix possible overflow on 'first_minor' in nbd_dev_add()"
    5d69622eb036 SUNRPC: Don't call connect() more than once on a TCP socket
    22174e8ce8ac rtc: mc146818-lib: fix signedness bug in mc146818_get_time()
    9e46f7319549 selftests/bpf: Fix u8 narrow load checks for bpf_sk_lookup remote_port
    0c64645e6373 bpf: Make remote_port field in struct bpf_sk_lookup 16-bit wide
    e2ff1d653069 Revert "selftests: net: Add tls config dependency for tls selftests"
    7f48521172fb net/smc: send directly on setting TCP_NODELAY
    20633216ded0 KVM: SVM: Allow AVIC support on system w/ physical APIC ID > 255
    b536cf3eb6f9 drm/amdgpu: don't use BACO for reset in S3
    3c8902bbf2ab drm/amdkfd: Create file descriptor after client is added to smi_clients list
    588393cdae7f drm/nouveau/pmu: Add missing callbacks for Tegra devices
    6a5d209898a6 drm/amdgpu/vcn: Fix the register setting for vcn1
    155338be5d90 drm/amdgpu/smu10: fix SoC/fclk units in auto mode
    0115e4f2f6bc drm/amdgpu/display: change pipe policy for DCN 2.1
    28dc1503a9d3 drm/panel: ili9341: fix optional regulator handling
    b911702a0105 SUNRPC: Prevent immediate close+reconnect
    a551e6629247 amd/display: set backlight only if required
    2388f826cdc9 fbdev: Fix unregistering of framebuffers without device
    7218a789abb3 irqchip/gic-v3: Fix GICR_CTLR.RWP polling
    fcf9ccf9d26a perf/core: Inherit event_caps
    0309f053ce47 perf: qcom_l2_pmu: fix an incorrect NULL check on list iterator
    8a05a6952ecd ata: sata_dwc_460ex: Fix crash due to OOB write
    136c21ce8e01 perf/x86/intel: Don't extend the pseudo-encoding to GP counters
    983a759640bf x86/mm/tlb: Revert retpoline avoidance approach
    2f67341e5bce x86/msi: Fix msi message data shadow struct
    0912cf021fb5 gpio: Restrict usage of GPIO chip irq members before initialization
    9ca11bd8222a RDMA/hfi1: Fix use-after-free bug for mm struct
    fa7cc2df9505 arm64: patch_text: Fixup last cpu should be master
    90012c6748d3 spi: core: add dma_map_dev for __spi_unmap_msg()
    887366faf0c9 btrfs: prevent subvol with swapfile from being deleted
    4b98799e181b btrfs: fix qgroup reserve overflow the qgroup limit
    56c88810466b perf/x86/intel: Update the FRONTEND MSR mask on Sapphire Rapids
    fab4b79e869a x86/speculation: Restore speculation related MSRs during S3 resume
    fcf185f7e03e x86/pm: Save the MSR validity status at context setup
    ba7261af2b03 io_uring: fix race between timeout flush and removal
    fe223dd2f18b io_uring: implement compat handling for IORING_REGISTER_IOWQ_AFF
    ae6cba337cbf io_uring: defer splice/tee file validity check until command issue
    056e1e7c1713 io_uring: don't check req->file in io_fsync_prep()
    198932a14aeb mm/mempolicy: fix mpol_new leak in shared_policy_replace
    a04cb99c5d46 mmmremap.c: avoid pointless invalidate_range_start/end on mremap(old_size=0)
    c21d040de622 highmem: fix checks in __kmap_local_sched_{in,out}
    9fb8bc6cfc58 lz4: fix LZ4_decompress_safe_partial read out of bound
    75cae557bc44 mmc: core: Fixup support for writeback-cache for eMMC and SD
    5d2712b78056 mmc: renesas_sdhi: don't overwrite TAP settings when HS400 tuning is complete
    11497ecbda04 mmc: mmci: stm32: correctly check all elements of sg list
    1515d2a466bf mmc: block: Check for errors after write on SPI
    86b5d155fced Revert "mmc: sdhci-xenon: fix annoying 1.8V regulator warning"
    dc5e603c247d scsi: ufs: ufs-pci: Add support for Intel MTL
    25c1353dca74 scsi: mpt3sas: Fix use after free in _scsih_expander_node_remove()
    32dd8b63e633 arm64: Add part number for Arm Cortex-A78AE
    159c7db3ccbb perf session: Remap buf if there is no space for event
    58aece34fb7f perf tools: Fix perf's libperf_print callback
    e1f2750e7531 perf: arm-spe: Fix perf report --mem-mode
    47e239117bd9 iommu/omap: Fix regression in probe for NULL pointer dereference
    3fd9be3ec5c8 SUNRPC: svc_tcp_sendmsg() should handle errors from xdr_alloc_bvec()
    3b32dda29f99 SUNRPC: Handle low memory situations in call_status()
    03ac680dacf9 SUNRPC: Handle ENOMEM in call_transmit_status()
    285f5d724005 io_uring: don't touch scm_fp_list after queueing skb
    50c981bd7790 io_uring: nospec index for tags on files update
    685f42de443d scsi: ufs: ufshpb: Fix a NULL check on list iterator
    a972c7687233 drbd: Fix five use after free bugs in get_initial_state
    1816af613e56 bpf: Support dual-stack sockets in bpf_tcp_check_syncookie
    88a3bdcb462a spi: bcm-qspi: fix MSPI only access with bcm_qspi_exec_mem_op()
    c9bdce2359b5 qede: confirm skb is allocated before using
    fb45e80b2194 net: phy: mscc-miim: reject clause 45 register accesses
    8ba8e1398a66 net: sfc: fix using uninitialized xdp tx_queue
    571d8e1d154c rxrpc: fix a race in rxrpc_exit_net()
    837b96d81039 net: openvswitch: fix leak of nested actions
    42b2e418f9a2 net: ethernet: mv643xx: Fix over zealous checking of_get_mac_address()
    085d002432ac net: openvswitch: don't send internal clone attribute to the userspace.
    70cf0b820e55 ice: xsk: fix VSI state check in ice_xsk_wakeup()
    840cbbdc8bf1 ice: synchronize_rcu() when terminating rings
    070aa68f8fab ipv6: Fix stats accounting in ip6_pkt_drop
    1c0763475401 ice: Do not skip not enabled queues in ice_vc_dis_qs_msg
    5d3e9f71c310 ice: Set txq_teid to ICE_INVAL_TEID on ring creation
    599874bbc4ed dpaa2-ptp: Fix refcount leak in dpaa2_ptp_probe
    2cb2b3fb20a2 sctp: count singleton chunks in assoc user stats
    92f1947c0d26 IB/rdmavt: add lock to call to rvt_error_qp to prevent a race condition
    3b5fd693621b IB/cm: Cancel mad on the DREQ event when the state is MRA_REP_RCVD
    34b8ba1cb337 RDMA/mlx5: Add a missing update of cache->last_add
    5b88519b78e8 RDMA/mlx5: Don't remove cache MRs when a delay is needed
    d1c87d36a655 sfc: Do not free an empty page_ring
    917eeb220023 bnxt_en: Prevent XDP redirect from running when stopping TX queue
    154fc224e65e bnxt_en: reserve space inside receive page for skb_shared_info
    6108a8918fd7 bnxt_en: Synchronize tx when xdp redirects happen on same ring
    87f5d66daa5f arch/arm64: Fix topology initialization for core scheduling
    cb713eb793e6 regulator: atc260x: Fix missing active_discharge_on setting
    336942b1682f regulator: rtq2134: Fix missing active_discharge_on setting
    2560fe298e6e drm/imx: dw_hdmi-imx: Fix bailout in error cases of probe
    31e449302ed0 drm/imx: Fix memory leak in imx_pd_connector_get_modes
    c1e96348dbeb drm/imx: imx-ldb: Check for null pointer after calling kmemdup
    47fec6139b5e net: stmmac: Fix unset max_speed difference between DT and non-DT platforms
    907c97986d6f net: ipv4: fix route with nexthop object delete warning
    71d28e5073b8 mctp: Fix check for dev_hard_header() result
    40229b2977f1 ice: Clear default forwarding VSI during VSI release
    ba965e8605ae skbuff: fix coalescing for page_pool fragment recycling
    13bcc6f8efcd vrf: fix packet sniffing for traffic originating from ip tunnels
    6e2f1b033b17 net/tls: fix slab-out-of-bounds bug in decrypt_internal
    ed7a824fda87 net: sfc: add missing xdp queue reinitialization
    69ec350a417d vdpa: mlx5: prevent cvq work from hogging CPU
    893c70f8b8f3 vdpa/mlx5: Propagate link status from device to vdpa driver
    dc872b72d180 vdpa/mlx5: Rename control VQ workqueue to vdpa wq
    aefd755a9605 scsi: zorro7xx: Fix a resource leak in zorro7xx_remove_one()
    cd483e17eca2 scsi: core: Fix sbitmap depth in scsi_realloc_sdev_budget_map()
    0610371c768c scsi: sr: Fix typo in CDROM(CLOSETRAY|EJECT) handling
    6f52d4cda0bf NFSv4: fix open failure with O_ACCMODE flag
    9f0c217469e8 Revert "NFSv4: Handle the special Linux file open access mode"
    dcd6b1a624c0 Drivers: hv: vmbus: Fix potential crash on module unload
    5ba9d78a7294 drm/amdgpu: fix off by one in amdgpu_gfx_kiq_acquire()
    985d87e6a365 rtc: mc146818-lib: fix RTC presence check
    be6c3152d6f6 rtc: Check return value from mc146818_get_time()
    8c6921075222 rtc: mc146818-lib: change return values of mc146818_get_time()
    c9f50e06ca76 mm: fix race between MADV_FREE reclaim and blkdev direct IO read
    93a8347f72c0 parisc: Fix patch code locking and flushing
    f77f482ec31a parisc: Fix CPU affinity for Lasi, WAX and Dino chips
    30dd4af48a9e selftests: net: Add tls config dependency for tls selftests
    ea029e4ce760 NFS: Avoid writeback threads getting stuck in mempool_alloc()
    da747de68599 NFS: nfsiod should not block forever in mempool_alloc()
    e04ef859d6c6 SUNRPC: Fix socket waits for write buffer space
    d925b7e78b62 jfs: prevent NULL deref in diFree
    44c2d5fbe7b2 virtio_console: eliminate anonymous module_init & module_exit
    053bbff873a1 serial: samsung_tty: do not unlock port->lock for uart_write_wakeup()
    c393a9f4cb3b x86/Kconfig: Do not allow CONFIG_X86_X32_ABI=y with llvm-objcopy
    e3c961c56ad5 x86: Annotate call_on_stack()
    6bb2270223a8 NFS: swap-out must always use STABLE writes.
    24d28d9b0fd5 NFS: swap IO handling is slightly different for O_DIRECT IO
    a55386405094 SUNRPC: remove scheduling boost for "SWAPPER" tasks.
    20700aa01bc2 SUNRPC/xprt: async tasks mustn't block waiting for memory
    a19fd1d61797 SUNRPC/call_alloc: async tasks mustn't block waiting for memory
    b07387c476a3 clk: Enforce that disjoints limits are invalid
    15bfec9d8030 clk: ti: Preserve node in ti_dt_clocks_register()
    5c0750cad733 xen: delay xen_hvm_init_time_ops() if kdump is boot on vcpu>=32
    12e49aefda2e habanalabs: fix possible memory leak in MMU DR fini
    a34752aa2397 NFSv4: Protect the state recovery thread against direct reclaim
    b37f482ba9f0 NFSv4.2: fix reference count leaks in _nfs42_proc_copy_notify()
    24acdd5f9c91 w1: w1_therm: fixes w1_seq for ds28ea00 sensors
    86efcb524ae1 staging: wfx: fix an error handling in wfx_init_common()
    7295544bcf56 opp: Expose of-node's name in debugfs
    ea1f29584136 cpufreq: CPPC: Fix performance/frequency conversion
    26f0a9e3d04d clk: rockchip: drop CLK_SET_RATE_PARENT from dclk_vop* on rk3568
    caffa76ded5a phy: amlogic: meson8b-usb2: fix shared reset control use
    ab27675a0fcc phy: amlogic: meson8b-usb2: Use dev_err_probe()
    35df38c4be0c phy: amlogic: phy-meson-gxl-usb2: fix shared reset controller use
    42f2142a337e staging: vchiq_core: handle NULL result of find_service_by_handle
    176df12b38c7 staging: vchiq_arm: Avoid NULL ptr deref in vchiq_dump_platform_instances
    161863aec0e1 clk: si5341: fix reported clk_rate when output divider is 2
    31e027259ce4 minix: fix bug when opening a file with O_DIRECT
    4602b7a8ee0d init/main.c: return 1 from handled __setup() functions
    9d849449d28f lib/Kconfig.debug: add ARCH dependency for FUNCTION_ALIGN option
    2fe82d325402 ceph: fix memory leak in ceph_readdir when note_last_dentry returns error
    3ae7163598c6 ceph: fix inode reference leakage in ceph_get_snapdir()
    eb0e7173d9cb netlabel: fix out-of-bounds memory accesses
    58d52743ae85 netfilter: conntrack: revisit gc autotuning
    d404765dffdb Bluetooth: Fix use after free in hci_send_acl
    f249bbf3cb9a MIPS: ingenic: correct unit node address
    11ba1aa21280 xtensa: fix DTC warning unit_address_format
    13946d5a68ef mt76: fix monitor mode crash with sdio driver
    ac27808b82db usb: dwc3: omap: fix "unbalanced disables for smps10_out1" on omap5evm
    0616792164d3 net: sfp: add 2500base-X quirk for Lantech SFP module
    459e56859f7a net/mlx5e: Remove overzealous validations in netlink EEPROM query
    1c4561d9b5cb net: limit altnames to 64k total
    601f748029f3 net: account alternate interface name memory
    d804db3dafd1 riscv: Fixed misaligned memory access. Fixed pointer comparison.
    6ca71078a91e can: etas_es58x: es58x_fd_rx_event_msg(): initialize rx_event_msg before calling es58x_check_msg_len()
    db9a140a8585 can: isotp: set default value for N_As to 50 micro seconds
    f581df412bc4 scsi: libfc: Fix use after free in fc_exch_abts_resp()
    2a71e3ecd829 powerpc/secvar: fix refcount leak in format_show()
    5c80ff21c5db powerpc/64e: Tie PPC_BOOK3E_64 to PPC_FSL_BOOK3E
    9b85e31309c2 MIPS: fix fortify panic when copying asm exception handlers
    dc9d33b2d8d0 PCI: endpoint: Fix misused goto label
    b6d4b322da46 bnxt_en: Eliminate unintended link toggle during FW reset
    42b6a39f439b Bluetooth: use memset avoid memory leaks
    0000de40b9f3 Bluetooth: Fix not checking for valid hdev on bt_dev_{info,warn,err,dbg}
    bb78c3b11f4d tuntap: add sanity checks about msg_controllen in sendmsg
    e8d8f1d091e4 macvtap: advertise link netns via netlink
    5fb47ca34908 mips: ralink: fix a refcount leak in ill_acc_of_setup()
    58758110912d net/smc: correct settings of RMB window update limit
    dd111d335cab scsi: hisi_sas: Limit users changing debugfs BIST count value
    f05a0d8de2ea scsi: hisi_sas: Free irq vectors in order for v3 HW
    b8fa10d7c8fc scsi: aha152x: Fix aha152x_setup() __setup handler return value
    556ec5030e57 mt76: mt7615: Fix assigning negative values to unsigned variable
    c3543bac6efa powerpc/64s/hash: Make hash faults work in NMI context
    df467929a040 mt76: mt7915: fix injected MPDU transmission to not use HW A-MSDU
    e5ecdb01952f scsi: pm8001: Fix memory leak in pm8001_chip_fw_flash_update_req()
    43c617eefab7 scsi: pm8001: Fix tag leaks on error
    2290dcad6f65 scsi: pm8001: Fix task leak in pm8001_send_abort_all()
    ece79aaec8fc scsi: pm8001: Fix pm8001_mpi_task_abort_resp()
    5e4ac14baebb scsi: pm8001: Fix pm80xx_pci_mem_copy() interface
    5e96bb81eddf vfio/pci: Stub vfio_pci_vga_rw when !CONFIG_VFIO_PCI_VGA
    f325d3e1dcc8 drm/amdkfd: make CRAT table missing message informational only
    da52e8b9dad6 dm: requeue IO if mapping table not yet available
    02cc46f397eb dm ioctl: prevent potential spectre v1 gadget
    049072749a5e ipv4: Invalidate neighbour for broadcast address upon address addition
    e45d1d19a0bb drm/msm/dsi: Remove spurious IRQF_ONESHOT flag
    e1b5aae5b6b0 iwlwifi: mvm: move only to an enabled channel
    6f215801c302 iwlwifi: mvm: Correctly set fragmented EBS
    d353d3b27af4 usb: dwc3: pci: Set the swnode from inside dwc3_pci_quirks()
    c64f3707cdf9 net/mlx5e: Disable TX queues before registering the netdev
    83efc05c8579 power: supply: axp288-charger: Set Vhold to 4.4V
    6def4eaf0391 powerpc/set_memory: Avoid spinlock recursion in change_page_attr()
    5d76a88b8536 scsi: mpi3mr: Fix memory leaks
    248ead78f346 scsi: mpi3mr: Fix reporting of actual data transfer size
    53643a112dd6 PCI: pciehp: Add Qualcomm quirk for Command Completed erratum
    aa9c9fd0ef9d tcp: Don't acquire inet_listen_hashbucket::lock with disabled BH.
    bd21b9607bd7 PCI: endpoint: Fix alignment fault error in copy tests
    2aa10e2fa2ab usb: ehci: add pci device support for Aspeed platforms
    99073052f45b iommu/arm-smmu-v3: fix event handling soft lockup
    60eabd66d17f PCI: aardvark: Fix support for MSI interrupts
    330c4e1b4ec4 scsi: smartpqi: Fix kdump issue when controller is locked up
    0a922366d6d9 drm/amdgpu: Fix recursive locking warning
    06ee48a4fc25 powerpc: Set crashkernel offset to mid of RMA region
    9c1ace066f22 net: initialize init_net earlier
    4790998fdd0d ipv6: make mc_forwarding atomic
    e9da1df2c021 libbpf: Fix build issue with llvm-readelf
    19d067c10b71 cfg80211: don't add non transmitted BSS to 6GHz scanned channels
    55c93a89e31d mt76: dma: initialize skip_unmap in mt76_dma_rx_fill
    38fbe8066450 mt76: mt7921: fix crash when startup fails.
    793a37045893 power: supply: axp20x_battery: properly report current when discharging
    a0f8220ce934 drm/v3d: fix missing unlock
    0f8ec114029a scsi: bfa: Replace snprintf() with sysfs_emit()
    1378075fa5bc scsi: mvsas: Replace snprintf() with sysfs_emit()
    1c6ffdf4cc45 bpf: Make dst_port field in struct bpf_sock 16-bit wide
    ff13c90d7f7a drm/bridge: Add missing pm_runtime_put_sync
    35380262304f net/smc: Send directly when TCP_CORK is cleared
    20d01a11efde ath11k: mhi: use mhi_sync_power_up()
    fed4cef115ab ath11k: pci: fix crash on suspend if board file is not found
    c4b7653af62a ath11k: fix kernel panic during unload/load ath11k modules
    910ee99d47d3 powerpc: dts: t104xrdb: fix phy type for FMAN 4/5
    e84b0438010d drm/amdkfd: Don't take process mutex for svm ioctls
    1eb598045326 ptp: replace snprintf with sysfs_emit
    052fb1c9ddfb usb: cdnsp: fix cdnsp_decode_trb function to properly handle ret value
    c27576bbbe77 usb: gadget: tegra-xudc: Fix control endpoint's definitions
    111a63235001 usb: gadget: tegra-xudc: Do not program SPARAM
    6040c99cb1a1 drm/amd/display: Use PSR version selected during set_psr_caps
    7e10369c72db drm/amd/display: Fix memory leak
    3edd8646cb7c drm/amd/amdgpu/amdgpu_cs: fix refcount leak of a dma_fence obj
    c4b64a80554e drm/amd/display: Add signal type check when verify stream backends same
    be2f81024e79 ath5k: fix OOB in ath5k_eeprom_read_pcal_info_5111
    b3ca02c1ee93 drm: Add orientation quirk for GPD Win Max
    d5f6f44e04c3 KVM: x86/emulator: Emulate RDPID only if it is enabled in guest
    a997e0f5aa55 KVM: x86/pmu: Fix and isolate TSX-specific performance event logic
    e7bab9898249 KVM: x86/svm: Clear reserved bits written to PerfEvtSeln MSRs
    5483640f8efb KVM: SVM: Fix kvm_cache_regs.h inclusions for is_guest_mode()
    a82fe0ba1c52 KVM: x86/pmu: Use different raw event masks for AMD and Intel
    105b50d9bb82 kfence: limit currently covered allocations when pool nearly full
    44b44b64b4da kfence: move saving stack trace of allocations into __kfence_alloc()
    72d2d94a981d kfence: count unexpectedly skipped allocations
    5142720dbe51 nbd: fix possible overflow on 'first_minor' in nbd_dev_add()
    64742cf82dec nbd: Fix hungtask when nbd_config_put
    694b5a32c162 nbd: Fix incorrect error handle when first_minor is illegal in nbd_dev_add
    3e526e9ae0e4 nbd: add error handling support for add_disk()
    f8008f42d463 rtc: wm8350: Handle error for wm8350_register_irq
    b257272f5483 um: fix and optimize xor select template for CONFIG64 and timetravel mode
    2be1a7f09635 lib/logic_iomem: correct fallback config references
    06f50ca83ace Linux 5.15.33
    541b7456fc4d PCI: xgene: Revert "PCI: xgene: Use inbound resources for setup"
    39fd0cc079c9 coredump: Use the vma snapshot in fill_files_note
    cabd69640957 coredump/elf: Pass coredump_params into fill_note_info
    7ba958df6449 coredump: Remove the WARN_ON in dump_vma_snapshot
    f6ca862806df coredump: Snapshot the vmas in do_coredump
    57c04fac8023 iommu/dma: Account for min_align_mask w/swiotlb
    3e44e136560c swiotlb: Support aligned swiotlb buffers
    52d23f5f0915 iommu/dma: Check CONFIG_SWIOTLB more broadly
    bc05d84824c0 iommu/dma: Fold _swiotlb helpers into callers
    c3841d020b82 iommu/dma: Skip extra sync during unmap w/swiotlb
    8771d9673e0b KVM: x86/mmu: do compare-and-exchange of gPTE via the user address
    b0e8e828acb5 mmc: rtsx: Fix build errors/warnings for unused variable
    8af04b6aa02b mmc: rtsx: Let MMC core handle runtime PM
    a9bbdeef768f n64cart: convert bi_disk to bi_bdev->bd_disk fix build
    2a710a5c59e9 torture: Make torture.sh help message match reality
    acabfc943245 openvswitch: Fixed nd target mask field in the flow dump.
    3fc38521fc30 docs: sysctl/kernel: add missing bit to panic_print
    166abd13eab0 um: Fix uml_mconsole stop/go
    94a53804ec3a arm64: dts: ls1046a: Update i2c node dma properties
    32820c358d1b arm64: dts: ls1043a: Update i2c dma properties
    28a020859c00 ARM: dts: spear13xx: Update SPI dma properties
    7aa9bba18f80 ARM: dts: spear1340: Update serial node properties
    dd8772224c19 spi: mediatek: support tick_delay without enhance_timing
    2a6e0695ddd5 media: ov6650: Fix crop rectangle affected by set format
    3995d4cf529c media: ov6650: Add try support to selection API operations
    8f5e6110e108 perf vendor events: Update metrics for SkyLake Server
    b0e5c18317f7 ASoC: topology: Allow TLV control to be either read or write
    678b6901d00b ASoC: SOF: Intel: Fix build error without SND_SOC_SOF_PCI_DEV
    ba8260872dd5 ubi: fastmap: Return error code if memory allocation fails in add_aeb()
    666176d0f9bb dt-bindings: pinctrl: pinctrl-microchip-sgpio: Fix example
    e918b36600d6 dt-bindings: memory: mtk-smi: No need mediatek,larb-id for mt8167
    b2b85196a31a dt-bindings: spi: mxic: The interrupt property is not mandatory
    c19a9d307844 dt-bindings: mtd: nand-controller: Fix a comment in the examples
    716a77f8460d dt-bindings: mtd: nand-controller: Fix the reg property description
    8ec990990be3 mmc: rtsx: Use pm_runtime_{get,put}() to handle runtime PM
    50c906a6977f bpf: Fix comment for helper bpf_current_task_under_cgroup()
    398ac11f4425 bpf: Adjust BPF stack helper functions to accommodate skip > 0
    21b6b8d43d87 af_unix: Support POLLPRI for OOB.
    260daa256d30 mm/usercopy: return 1 from hardened_usercopy __setup() handler
    c9acbcd636ab mm/memcontrol: return 1 from cgroup.memory __setup() handler
    48ddbd8b4e42 ARM: 9187/1: JIVE: fix return value of __setup handler
    6795b20d4b2c mm/mmap: return 1 from stack_guard_gap __setup() handler
    23629b673b78 net: preserve skb_end_offset() in skb_unclone_keeptruesize()
    51e458fc0ca6 net: add skb_set_end_offset() helper
    14d552ab31ed tracing: Have type enum modifications copy the strings
    7007c894631c Reinstate some of "swiotlb: rework "fix info leak with DMA_FROM_DEVICE""
    63351e2e1362 ASoC: soc-compress: Change the check for codec_dai
    7ed3cce2fe68 arm64: mm: Drop 'const' from conditional arm64_dma_phys_limit definition
    5ab0f5e238b9 staging: mt7621-dts: fix pinctrl-0 items to be size-1 items on ethernet
    0e39097efcb5 scsi: qla2xxx: Add qla2x00_async_done() for async routines
    b9cf1208af36 drm/connector: Fix typo in documentation
    5b422da35c15 proc: bootconfig: Add null pointer check
    f78f56488cd3 can: isotp: restore accidentally removed MSG_PEEK feature
    3fc81968625a platform/chrome: cros_ec_typec: Check for EC device
    8c1c3c00dceb spi: Fix Tegra QSPI example
    7480cc0240eb vhost: handle error while adding split ranges to iotlb
    97b5593fd1b1 ACPI: CPPC: Avoid out of bounds access when parsing _CPC data
    dae252901378 riscv module: remove (NOLOAD)
    0853bd6885c2 io_uring: fix memory leak of uid in files registration
    5b9ac3727e4a block: Fix the maximum minor value is blk_alloc_ext_minor()
    21cfddd5e0f6 ARM: iop32x: offset IRQ numbers by 1
    1a3f1cf87054 ubi: Fix race condition between ctrl_cdev_ioctl and ubi_cdev_ioctl
    619709f0c608 ASoC: mediatek: mt6358: add missing EXPORT_SYMBOLs
    d509d41d89c5 pinctrl: nuvoton: npcm7xx: Use %zu printk format for ARRAY_SIZE()
    3e51c3023228 pinctrl: nuvoton: npcm7xx: Rename DS() macro to DSTR()
    b603cbe08b0b net: sparx5: uses, depends on BRIDGE or !BRIDGE
    84817c83c0e7 watchdog: rti-wdt: Add missing pm_runtime_disable() in probe function
    d02ca80ec735 pinctrl: pinconf-generic: Print arguments for bias-pull-*
    4913daecd04a watch_queue: Free the page array when watch_queue is dismantled
    210891d81b9c crypto: arm/aes-neonbs-cbc - Select generic cbc and aes
    c78d23ea7506 mailbox: imx: fix wakeup failure from freeze mode
    8cbf4ae7a283 rxrpc: Fix call timer start racing with call destruction
    432297011caf rxrpc: fix some null-ptr-deref bugs in server_key.c
    88570bda6e48 net: hns3: fix software vlan talbe of vlan 0 inconsistent with hardware
    a0817ad3f283 net: hns3: fix the concurrency between functions reading debugfs
    5c3c9bce1c99 gfs2: Make sure FITRIM minlen is rounded up to fs block size
    1d8195349742 gfs2: gfs2_setattr_size error path fix
    50ed32e67c5c rtc: check if __rtc_read_time was successful
    9f20ce95db3d modpost: restore the warning message for missing symbol versions
    7aae60df6782 XArray: Update the LRU list in xas_split()
    be8ebbabac94 can: mcp251xfd: mcp251xfd_register_get_dev_id(): fix return of error value
    fa9c1f14002d can: mcba_usb: properly check endpoint type
    37f07ad24866 can: mcba_usb: mcba_usb_start_xmit(): fix double dev_kfree_skb in error path
    7521a97b1929 XArray: Fix xas_create_range() when multi-order entry present
    9af42a4f6d81 wireguard: socket: ignore v6 endpoints when ipv6 is disabled
    402991a97715 wireguard: socket: free skb in send6 when ipv6 is disabled
    6a7245252fdc wireguard: queueing: use CFI-safe ptr_ring cleanup function
    c98f792a1468 nvme: fix the read-only state for zoned namespaces with unsupposed features
    7d18d6c71372 nvme: allow duplicate NSIDs for private namespaces
    578bf41d9443 ubifs: rename_whiteout: correct old_dir size computing
    4f75bab98565 ubifs: Fix to add refcount once page is set private
    a7054aaf1909 ubifs: Fix read out-of-bounds in ubifs_wbuf_write_nolock()
    56cf8b26b18e ubifs: setflags: Make dirtied_ino_d 8 bytes aligned
    489c3a2577b3 ubifs: Rectify space amount budget for mkdir/tmpfile operations
    a9662bec5a4d ubifs: Fix 'ui->dirty' race between do_tmpfile() and writeback work
    c67bc98d1f08 ubifs: Rename whiteout atomically
    ff846f2c5d1d ubifs: Add missing iput if do_tmpfile() failed in rename whiteout
    c58af8564a7b ubifs: Fix deadlock in concurrent rename whiteout and inode writeback
    2ad07009c459 ubifs: rename_whiteout: Fix double free for whiteout_ui->data
    3fa2d7479605 KVM: SVM: fix panic on out-of-bounds guest IRQ
    63961ac1359e KVM: x86: fix sending PV IPI
    43637ee17092 KVM: Prevent module exit until all VMs are freed
    ba6e8c2df520 KVM: x86: Forbid VMM to set SYNIC/STIMER MSRs when SynIC wasn't activated
    0e5dbc0540ba KVM: x86: Avoid theoretical NULL pointer dereference in kvm_irq_delivery_to_apic_fast()
    569a229142e9 KVM: x86: Check lapic_in_kernel() before attempting to set a SynIC irq
    81e5b16de862 platform: chrome: Split trace include file
    89dad346c241 scsi: qla2xxx: Use correct feature type field during RFF_ID processing
    f63fde0d16a4 scsi: qla2xxx: Reduce false trigger to login
    20909563bd50 scsi: qla2xxx: Fix stuck session of PRLI reject
    2b612191f9d3 scsi: qla2xxx: Fix N2N inconsistent PLOGI
    c9d6081a5f18 scsi: qla2xxx: Fix missed DMA unmap for NVMe ls requests
    d6f691a133f0 scsi: qla2xxx: Fix hang due to session stuck
    7ccd6063874d scsi: qla2xxx: Fix incorrect reporting of task management failure
    c0300beb313f scsi: qla2xxx: Fix disk failure to rediscover
    9c33d49ab9f3 scsi: qla2xxx: Suppress a kernel complaint in qla_create_qpair()
    d1b7d23cd462 scsi: qla2xxx: Check for firmware dump already collected
    812afc2b8ec0 scsi: qla2xxx: Add devids and conditionals for 28xx
    d70d86f7a6ea scsi: qla2xxx: Fix T10 PI tag escape and IP guard options for 28XX adapters
    2df59f3bb240 scsi: qla2xxx: edif: Fix clang warning
    fbc1aa41269a scsi: qla2xxx: Fix device reconnect in loop topology
    b6c95db6d2e8 scsi: qla2xxx: Fix warning for missing error code
    67b1be130861 scsi: qla2xxx: Fix wrong FDMI data for 64G adapter
    5ef6319f9882 scsi: qla2xxx: Fix premature hw access after PCI error
    826a9d4a00d1 scsi: qla2xxx: Fix scheduling while atomic
    7a3457777c4f scsi: qla2xxx: Fix warning message due to adisc being flushed
    5fb0a488028e scsi: qla2xxx: Fix stuck session in gpdb
    e17111dd2fda scsi: qla2xxx: Implement ref count for SRB
    24e86eae3f7b scsi: qla2xxx: Refactor asynchronous command initialization
    f5a0cf225f8d drm/i915: Reject unsupported TMDS rates on ICL+
    beeebae6ea82 drm/i915: Fix PSF GV point mask when SAGV is not possible
    102cba6d5ae2 drm/i915: Treat SAGV block time 0 as SAGV disabled
    e912d697400c drm/dp: Fix off-by-one in register cache size
    2d67222b2380 powerpc: Fix build errors with newer binutils
    f4b0b5a0f3c1 powerpc: Add set_memory_{p/np}() and remove set_memory_attr()
    a29341e48601 powerpc/lib/sstep: Fix build errors with newer binutils
    d25efd904271 powerpc/lib/sstep: Fix 'sthcx' instruction
    5a3d8f3192a4 powerpc/kasan: Fix early region not updated correctly
    cb188e07105f KVM: x86: hyper-v: HVCALL_SEND_IPI_EX is an XMM fast hypercall
    5c3d0dbe200f KVM: x86: hyper-v: Fix the maximum number of sparse banks for XMM fast TLB flush hypercalls
    72eae60bfe83 KVM: x86: hyper-v: Drop redundant 'ex' parameter from kvm_hv_flush_tlb()
    dbec906dbef6 KVM: x86: hyper-v: Drop redundant 'ex' parameter from kvm_hv_send_ipi()
    f4fd34eaa767 KVM: x86/mmu: Check for present SPTE when clearing dirty bit in TDP MMU
    af47248407c0 KVM: x86/mmu: Zap _all_ roots when unmapping gfn range in TDP MMU
    31a70b170e06 KVM: x86/mmu: Move "invalid" check out of kvm_tdp_mmu_get_root()
    48306afcac2a KVM: x86: Reinitialize context if host userspace toggles EFER.LME
    273ad0cf5684 ALSA: hda/realtek: Add alc256-samsung-headphone fixup
    fe440221ca0f media: atomisp: fix bad usage at error handling logic
    251a11699fe5 mmc: host: Return an error when ->enable_sdio_irq() ops is missing
    7c6bd60999f3 tracing: Have TRACE_DEFINE_ENUM affect trace event types as well
    ae2b93b0a6a7 ASoC: Intel: sof_sdw: fix quirks for 2022 HP Spectre x360 13"
    f90db7cca4d4 media: hdpvr: initialize dev->worker at hdpvr_register_videodev
    deb1f0453198 media: Revert "media: em28xx: add missing em28xx_close_extension"
    96a7522c72c4 media: i2c: ov5648: Fix lockdep error
    eae90015d10f video: fbdev: sm712fb: Fix crash in smtcfb_write()
    a07c7b64eadf ASoC: amd: vg: fix for pm resume callback sequence
    4ab0293c961b ARM: mmp: Fix failure to remove sram device
    f8ef3b979bfa ARM: tegra: tamonten: Fix I2C3 pad setting
    6a1c70de40b5 lib/test_lockup: fix kernel pointer check for separate address spaces
    8b2a6074b981 uaccess: fix type mismatch warnings from access_ok()
    cb5bd93ad218 media: cx88-mpeg: clear interrupt status register before streaming video
    02f9f97d54ff media: imx-jpeg: fix a bug of accessing array out of bounds
    0b620fce5eae ASoC: soc-core: skip zero num_dai component in searching dai name
    80e6bbe4e193 ARM: dts: bcm2711: Add the missing L1/L2 cache information
    2d5c47df8e21 video: fbdev: udlfb: replace snprintf in show functions with sysfs_emit
    e7f5b1c56921 video: fbdev: omapfb: panel-tpo-td043mtea1: Use sysfs_emit() instead of snprintf()
    509bc99aba95 video: fbdev: omapfb: panel-dsi-cm: Use sysfs_emit() instead of snprintf()
    79045b61875d arm64: defconfig: build imx-sdma as a module
    c7129c401f55 ARM: dts: imx7: Use audio_mclk_post_div instead audio_mclk_root_clk
    330de92eb10f ARM: ftrace: avoid redundant loads or clobbering IP
    3f887cb763a0 media: atomisp: fix dummy_ptr check to avoid duplicate active_bo
    8b6b38083a29 media: atomisp_gmin_platform: Add DMI quirk to not turn AXP ELDO2 regulator off on some boards
    1c17870f26d9 ASoC: madera: Add dependencies on MFD
    35a2aeb70fe6 ARM: dts: bcm2837: Add the missing L1/L2 cache information
    93b85b6e8358 ARM: dts: qcom: fix gic_irq_domain_translate warnings for msm8960
    521796018815 video: fbdev: omapfb: acx565akm: replace snprintf with sysfs_emit
    6fe23ff94e78 video: fbdev: cirrusfb: check pixclock to avoid divide by zero
    9522e11e8636 video: fbdev: w100fb: Reset global state
    9ff2f7294ab0 video: fbdev: nvidiafb: Use strscpy() to prevent buffer overflow
    77fbe028d5a3 media: iommu/mediatek: Add device_link between the consumer and the larb devices
    4dd3e2d1bd70 media: iommu/mediatek: Return ENODEV if the device is NULL
    1515d1414967 media: iommu/mediatek-v1: Free the existed fwspec if the master dev already has
    eff76b180751 media: imx-jpeg: Prevent decoding NV12M jpegs into single-planar buffers
    47b45e08e5ad ASoC: SOF: Intel: match sdw version on link_slaves_found
    205db54b159f ASoC: sh: rz-ssi: Make the data structures available before registering the handlers
    2011363c1968 media: ir_toy: free before error exiting
    0b2313042634 media: atmel: atmel-isc-base: report frame sizes as full supported range
    3681eb1fd45c media: staging: media: zoran: fix various V4L2 compliance errors
    7e76f3ed7ab2 media: staging: media: zoran: calculate the right buffer number for zoran_reap_stat_com
    ff3357bffd9f media: staging: media: zoran: move videodev alloc
    24ab2d4ef52c ntfs: add sanity check on allocation size
    9dd6bb11df64 Adjust cifssb maximum read size
    1a55c48bba81 f2fs: compress: fix to print raw data size in error path of lz4 decompression
    2eff60346e7a f2fs: use spin_lock to avoid hang
    c78bada18aa1 btrfs: make search_csum_tree return 0 if we get -EFBIG
    40d006dfedd6 btrfs: harden identification of a stale device
    58d3aa672d13 f2fs: don't get FREEZE lock in f2fs_evict_inode in frozen fs
    7260793c13e9 NFSD: Fix nfsd_breaker_owns_lease() return values
    f68caedf264a f2fs: fix to do sanity check on curseg->alloc_type
    a0856764dc12 ext4: don't BUG if someone dirty pages without asking ext4 first
    7cca463f1030 sched/tracing: Report TASK_RTLOCK_WAIT tasks as TASK_UNINTERRUPTIBLE
    6a6beb074186 ext4: fix ext4_mb_mark_bb() with flex_bg with fast_commit
    572d14e6cec4 ext4: correct cluster len and clusters changed accounting in ext4_mb_mark_bb
    1388c10b3257 locking/lockdep: Iterate lock_classes directly when reading lockdep files
    95bc0ba6bef8 atomics: Fix atomic64_{read_acquire,set_release} fallbacks
    75fe5dcb1653 spi: tegra20: Use of_device_get_match_data()
    ffe0c4916795 nvme-tcp: lockdep: annotate in-kernel sockets
    b3ea76bda7f7 parisc: Fix handling off probe non-access faults
    c29642ba72f8 PM: core: keep irq flags in device_pm_check_callbacks()
    c02f2d420a44 ACPI/APEI: Limit printable size of BERT table data
    65d8a737452e Revert "Revert "block, bfq: honor already-setup queue merges""
    5b8d69c8c107 lib/raid6/test/Makefile: Use $(pound) instead of \# for Make 4.3
    33ccf4f81785 ACPICA: Avoid walking the ACPI Namespace if it is not there
    080665e2c3cb bfq: fix use-after-free in bfq_dispatch_request
    e0943c456b60 fs/binfmt_elf: Fix AT_PHDR for unusual ELF files
    757322b5aba9 irqchip/nvic: Release nvic_base upon failure
    dabfc878ef6f irqchip/qcom-pdc: Fix broken locking
    05ba7d0c639f Fix incorrect type in assignment of ipv6 port for audit
    860d36424d1b loop: use sysfs_emit() in the sysfs xxx show()
    55d192691b4b selinux: allow FIOCLEX and FIONCLEX with policy capability
    e48c260b0b2a arm64: module: remove (NOLOAD) from linker script
    15bb7a467b2b selinux: use correct type for context length
    8f34dea99cd7 block, bfq: don't move oom_bfqq
    69d41c77aadf crypto: hisilicon/sec - not need to enable sm4 extra mode at HW V3
    f84b1633004d crypto: xts - Add softdep on ecb
    e11293de5cf6 block/bfq_wf2q: correct weight to ioprio
    e34806c6c29d rcu: Mark writes to the rcu_segcblist structure's ->flags field
    99780fcb5494 pinctrl: npcm: Fix broken references to chip->parent_device
    999ee266531b gcc-plugins/stackleak: Exactly match strings instead of prefixes
    ca97dfbda510 crypto: hisilicon/qm - cleanup warning in qm_vf_read_qos
    4941c21090c3 regulator: rpi-panel: Handle I2C errors/timing to the Atmel
    f3f93a1aaafc LSM: general protection fault in legacy_parse_param
    c331c9d1d2b7 fs: fix fd table size alignment properly
    611170142b42 lib/test: use after free in register_test_dev_kmod()
    136736abcd35 fs: fd tables have to be multiples of BITS_PER_LONG
    fd3f70b90772 net: dsa: bcm_sf2_cfp: fix an incorrect NULL check on list iterator
    a738ff8143d8 NFSv4/pNFS: Fix another issue with a list iterator pointing to the head
    bcbf4e5c3b5b net/sched: act_ct: fix ref leak when switching zones
    72dd9e61fa31 net: prefer nf_ct_put instead of nf_conntrack_put
    6b663fa23c7e octeontx2-af: initialize action variable
    b375ea083fa6 net: sparx5: switchdev: fix possible NULL pointer dereference
    409570a619c1 net/x25: Fix null-ptr-deref caused by x25_disconnect
    c416e9bb85a6 qlcnic: dcb: default to returning -EOPNOTSUPP
    e87c47df2193 net: sparx5: depends on PTP_1588_CLOCK_OPTIONAL
    34a5c64951c3 net: hns3: clean residual vf config after disable sriov
    c95578235888 NFS: Don't loop forever in nfs_do_recoalesce()
    667760fe01e9 selftests: test_vxlan_under_vrf: Fix broken test case
    2d05a007096e net: phy: broadcom: Fix brcm_fet_config_init()
    2dc73ba93202 net: hns3: refine the process when PF set VF VLAN
    ee7e9a9d73d9 net: hns3: format the output of the MAC address
    30f0ff7176ef net: hns3: add vlan list lock to protect vlan list
    02948e5782ce net: hns3: fix port base vlan add fail when concurrent with reset
    5e528c0e0618 net: hns3: fix bug when PF set the duplicate MAC address for VFs
    be6937a11b1c net: enetc: report software timestamping via SO_TIMESTAMPING
    af884b276b08 xen: fix is_xen_pmu()
    6c17fd7a6f5d clk: Initialize orphan req_rate
    8b320893461c vsock/virtio: enable VQs early on probe
    b64bf5464ad5 vsock/virtio: read the negotiated features before using VQs
    10c6cb867ffa vsock/virtio: initialize vdev->priv before using VQs
    c07a9d2a1d1d clk: qcom: gcc-msm8994: Fix gpll4 width
    e16b5f077980 perf stat: Fix forked applications enablement of counters
    c532caa7df8c kdb: Fix the putarea helper function
    0445609a7ace NFSv4.1: don't retry BIND_CONN_TO_SESSION on session error
    4ee7a4b67770 SUNRPC don't resend a task on an offlined transport
    6195af5ad801 netfilter: nf_conntrack_tcp: preserve liberal flag in tcp options
    6bbfe9a715ea jfs: fix divide error in dbNextAG
    104852921ff6 driver core: dd: fix return value of __setup handler
    20fab30930f3 firmware: google: Properly state IOMEM dependency
    af6e1b06d0ba kgdbts: fix return value of __setup handler
    1d5103d9bb7d virt: acrn: fix a memory leak in acrn_dev_ioctl()
    b9c43aa0b18d virt: acrn: obtain pa from VMA with PFNMAP flag
    16e323804732 serial: 8250: fix XOFF/XON sending when DMA is used
    a885e17cf5f2 kgdboc: fix return value of __setup handler
    e1338178f35e tty: hvc: fix return value of __setup handler
    e35a555b5a9d pinctrl/rockchip: Add missing of_node_put() in rockchip_pinctrl_probe
    c52703355766 pinctrl: nomadik: Add missing of_node_put() in nmk_pinctrl_probe
    84940deb8dd3 pinctrl: microchip-sgpio: lock RMW access
    c6f009fe90f1 pinctrl: microchip sgpio: use reset driver
    a843ba2e9c87 pinctrl: mediatek: paris: Skip custom extra pin config dump for virtual GPIOs
    070d46aee151 pinctrl: mediatek: paris: Fix pingroup pin config state readback
    1190c1a5828a pinctrl: mediatek: paris: Fix "argument" argument type for mtk_pinconf_get()
    a8d236a32934 pinctrl: mediatek: paris: Fix PIN_CONFIG_BIAS_* readback
    3ddbb9ba7579 pinctrl: mediatek: Fix missing of_node_put() in mtk_pctrl_init
    127a5d3e732d staging: mt7621-dts: fix GB-PC2 devicetree
    b24dfa54d6e8 staging: mt7621-dts: fix pinctrl properties for ethernet
    97d01fabee69 staging: mt7621-dts: fix formatting
    1293b7481d73 staging: mt7621-dts: fix LEDs and pinctrl on GB-PC1 devicetree
    75ee75cc360a NFS: remove unneeded check in decode_devicenotify_args()
    8bddc0227e78 mailbox: imx: fix crash in resume on i.mx8ulp
    613e1b253f6d clk: tegra: tegra124-emc: Fix missing put_device() call in emc_ensure_emc_driver
    4be3e4c05d8d clk: Fix clk_hw_get_clk() when dev is NULL
    071c958f8e1b clk: clps711x: Terminate clk_div_table with sentinel element
    0415dce6228c clk: hisilicon: Terminate clk_div_table with sentinel element
    f4aee7714a1c clk: loongson1: Terminate clk_div_table with sentinel element
    7608a654a294 clk: actions: Terminate clk_div_table with sentinel element
    be8ab90a3a77 nvdimm/region: Fix default alignment for small regions
    bd4771ba2cf9 remoteproc: qcom_q6v5_mss: Fix some leaks in q6v5_alloc_memory_region
    9c28309d6a5e remoteproc: qcom_wcnss: Add missing of_node_put() in wcnss_alloc_memory_region
    9a809b902e1d remoteproc: qcom: Fix missing of_node_put in adsp_alloc_memory_region
    95deff8996fb dmaengine: hisi_dma: fix MSI allocate fail when reload hisi_dma
    2a9b575627fc clk: qcom: clk-rcg2: Update the frac table for pixel clock
    34dca60982e9 clk: qcom: clk-rcg2: Update logic to calculate D value for RCG
    7a778371f9f2 clk: at91: sama7g5: fix parents of PDMCs' GCLK
    4b8a71f206c9 clk: imx: off by one in imx_lpcg_parse_clks_from_dt()
    4bd979ee9927 clk: imx7d: Remove audio_mclk_root_clk
    c39a750b61f7 dma-debug: fix return value of __setup handlers
    872a7b12af43 staging: r8188eu: fix endless loop in recv_func
    18dc19571210 NFS: Return valid errors from nfs2/3_decode_dirent()
    8a842f88d0e2 habanalabs: Add check for pci_enable_device
    82546d91d588 iio: adc: Add check for devm_request_threaded_irq
    3e843460fb42 serial: 8250: Fix race condition in RTS-after-send handling
    ba3a3390c9b1 NFS: Use of mapping_set_error() results in spurious errors
    b59173ff16fb serial: 8250_lpss: Balance reference count for PCI DMA device
    3a1131f7d2a8 serial: 8250_mid: Balance reference count for PCI DMA device
    675216a820ec phy: phy-brcm-usb: fixup BCM4908 support
    d9a3c2949d04 phy: dphy: Correct lpx parameter and its derivatives(ta_{get,go,sure})
    ca3d7cf53d8f clk: qcom: ipq8074: Use floor ops for SDCC1 clock
    8c54f6c900d1 pinctrl: renesas: checker: Fix miscalculation of number of states
    d19fb1d659ba pinctrl: renesas: r8a77470: Reduce size for narrow VIN1 channel
    157a22ca80c5 staging:iio:adc:ad7280a: Fix handing of device address bit reversing.
    d6c4fc0d903f serial: 8250_aspeed_vuart: add PORT_ASPEED_VUART port type
    011e841cd11b iio: mma8452: Fix probe failing when an i2c_device_id is used
    cad1a3b1f481 dmaengine: idxd: restore traffic class defaults after wq reset
    7bebc9519691 dmaengine: idxd: change bandwidth token to read buffers
    e509584b079a dmaengine: idxd: check GENCAP config support for gencfg register
    41e360fa73a4 clk: qcom: ipq8074: fix PCI-E clock oops
    9a5f4da1ea27 soundwire: intel: fix wrong register name in intel_shim_wake
    251aabcb0b09 cpufreq: qcom-cpufreq-nvmem: fix reading of PVS Valid fuse
    2d7a9c09be64 misc: alcor_pci: Fix an error handling path
    72c4f4200f98 fsi: Aspeed: Fix a potential double free
    8adfd166fb32 pps: clients: gpio: Propagate return value from pps_gpio_probe
    6f4f778f2747 pwm: lpc18xx-sct: Initialize driver data and hardware before pwmchip_add()
    28a886a308ed fsi: scom: Remove retries in indirect scoms
    9fdc543b0e2a fsi: scom: Fix error handling
    b125b08dbee3 mxser: fix xmit_buf leak in activate when LSR == 0xff
    7a68abde36e1 staging: r8188eu: release_firmware is not called if allocation fails
    1768384f61d1 staging: r8188eu: convert DBG_88E_LEVEL call in hal/rtl8188e_hal_init.c
    a9e88c2618d2 kernel/resource: fix kfree() of bootmem memory again
    585dc196a08f drivers: ethernet: cpsw: fix panic when interrupt coaleceing is set via ethtool
    eec20eea27a0 ice: don't allow to run ice_send_event_to_aux() in atomic ctx
    9b77c8cf69a4 ice: fix 'scheduling while atomic' on aux critical err interrupt
    c64223a8d188 mfd: asic3: Add missing iounmap() on error asic3_mfd_probe
    21a2b4ab48a4 tipc: fix the timer expires after interval 100ms
    95df5cd5a446 net: dsa: fix panic on shutdown if multi-chip tree failed to probe
    894347d4d29b openvswitch: always update flow key after nat
    862002402333 tcp: ensure PMTU updates are processed during fastopen
    06d836801cd8 net: bcmgenet: Use stronger register read/writes to assure ordering
    40092a8ac089 PCI: Avoid broken MSI on SB600 USB devices
    dd1043342e45 selftests/bpf/test_lirc_mode2.sh: Exit with proper code
    33d39efb61a8 powerpc/pseries: Fix use after free in remove_phb_dynamic()
    226ec1997de7 i2c: mux: demux-pinctrl: do not deactivate a master that is not active
    0ee072f91326 netfilter: conntrack: Add and use nf_ct_set_auto_assign_helper_warned()
    9b2bbf36b9cf i2c: meson: Fix wrong speed use from probe
    7409ff6393a6 af_netlink: Fix shift out of bounds in group mask calculation
    9151982547ee ipv4: Fix route lookups when handling ICMP redirects and PMTU updates
    770a97d3f34b Bluetooth: btmtksdio: Fix kernel oops in btmtksdio_interrupt
    60283d3ad395 Bluetooth: call hci_le_conn_failed with hdev lock in hci_le_conn_failed
    7235485433d2 Bluetooth: hci_uart: add missing NULL check in h5_enqueue
    292e8478ae0a selftests/bpf: Fix error reporting from sock_fields programs
    48e785075f9e af_unix: Fix some data-races around unix_sk(sk)->oob_skb.
    1bd58abf595b ibmvnic: fix race between xmit and reset
    3f798111077a bareudp: use ipv6_mod_enabled to check if IPv6 enabled
    b184a8fa7dd4 can: isotp: support MSG_TRUNC flag when reading from socket
    05e4e7d9bbb3 can: isotp: return -EADDRNOTAVAIL when reading from unbound socket
    f343dbe82314 can: isotp: sanitize CAN ID checks in isotp_bind()
    9265c09b2415 mt76: mt7921: fix mt7921_queues_acq implementation
    2a85c4cb3b15 netfilter: flowtable: Fix QinQ and pppoe support for inet table
    7ff346ee019b drm/i915/display: Fix HPD short pulse handling for eDP
    5d48ddbcafdf USB: storage: ums-realtek: fix error code in rts51x_read_mem()
    bc2c4dc5b566 samples/bpf, xdpsock: Fix race when running for fix duration of time
    cb6f141ae705 bpf, sockmap: Fix double uncharge the mem of sk_msg
    168ff181f5b6 bpf, sockmap: Fix more uncharged while msg has more_data
    de3a8d8fab07 bpf, sockmap: Fix memleak in tcp_bpf_sendmsg while sk msg is full
    ef9785f42979 bpf, sockmap: Fix memleak in sk_psock_queue_msg
    8dd392e352d3 RDMA/mlx5: Fix memory leak in error flow for subscribe event routine
    b089f7fc89f9 Revert "RDMA/core: Fix ib_qp_usecnt_dec() called when error"
    d52dab6e0355 RDMA/irdma: Prevent some integer underflows
    18e65ab351cf power: ab8500_chargalg: Use CLOCK_MONOTONIC
    fe0e2ce5c87e mtd: rawnand: atmel: fix refcount issue in atmel_nand_controller_init
    d29cda15cab0 MIPS: pgalloc: fix memory leak caused by pgd_free()
    d5e41310bd72 MIPS: RB532: fix return value of __setup handler
    69155dc2e047 mips: cdmm: Fix refcount leak in mips_cdmm_phys_base
    32939187f254 ath10k: Fix error handling in ath10k_setup_msa_resources
    9d04f4a15fe0 vxcan: enable local echo for sent CAN frames
    45962427aca2 powerpc: 8xx: fix a return value error in mpc8xx_pic_init
    88242bd033e2 scsi: mpt3sas: Fix incorrect 4GB boundary check
    ee773b7018d6 platform/x86: huawei-wmi: check the return value of device_create_file()
    fdee6b347cb8 selftests/bpf: Make test_lwt_ip_encap more stable and faster
    adc4a1ed139e libbpf: Unmap rings when umem deleted
    0a0c75ce5e26 mfd: mc13xxx: Add check for mc13xxx_irq_request
    4a852ff9b7be powerpc/64s: Don't use DSISR for SLB faults
    b55697c2a274 powerpc/sysdev: fix incorrect use to determine if list is empty
    804338913d27 MIPS: Sanitise Cavium switch cases in TLB handler synthesizers
    be48780b4dec mips: DEC: honor CONFIG_MIPS_FP_SUPPORT=n
    f23b4c9c6a5a drm/msm/a6xx: Fix missing ARRAY_SIZE() check
    62f44f554d1c net: axienet: fix RX ring refill allocation failure handling
    e37d269734ee PCI: Reduce warnings on possible RW1C corruption
    4c3c666ecc6a RDMA/core: Fix ib_qp_usecnt_dec() called when error
    c5505076073b IB/hfi1: Allow larger MTU without AIP
    4124966fbd95 power: supply: wm8350-power: Add missing free in free_charger_irq
    1318caf07507 power: supply: wm8350-power: Handle error for wm8350_register_irq
    8659aba5cab3 i2c: xiic: Make bus names unique
    383798d13aea hv_balloon: rate-limit "Unhandled message" warning
    5baa1283d698 KVM: x86/emulator: Defer not-present segment check in __load_segment_descriptor()
    468b136c2ca1 KVM: x86: Fix emulation in writing cr8
    29322cd03678 powerpc/Makefile: Don't pass -mcpu=powerpc64 when building 32-bit
    451472dc178f powerpc/mm/numa: skip NUMA_NO_NODE onlining in parse_numa_properties()
    6792c0b56252 libbpf: Skip forward declaration when counting duplicated type names
    c06577a80485 gpu: host1x: Fix a memory leak in 'host1x_remove()'
    2154f7cadd88 RDMA/irdma: Remove incorrect masking of PD
    a0051c05312e RDMA/irdma: Fix Passthrough mode in VM
    5e96bb45c936 RDMA/irdma: Fix netdev notifications for vlan's
    ad7219cd8751 xsk: Fix race at socket teardown
    c08f23081c9b bpf, arm64: Feed byte-offset into bpf line info
    c301772c219d bpf, arm64: Call build_prologue() first in first JIT pass
    ffe0526c2e17 drm/bridge: cdns-dsi: Make sure to to create proper aliases for dt
    849e6be7d66d scsi: hisi_sas: Change permission of parameter prot_mask
    1003a85d0a30 power: supply: bq24190_charger: Fix bq24190_vbus_is_enabled() wrong false return
    852c1f5f3119 drm/tegra: Fix reference leak in tegra_dsi_ganged_probe
    3813591bc046 ext2: correct max file size computing
    0c80fe5ea1b3 power: supply: sbs-charger: Don't cancel work that is not initialized
    c2554b47644f TOMOYO: fix __setup handlers return values
    bd443887ed2a drm/amd/display: Remove vupdate_int_entry definition
    847f8677e367 RDMA/mlx5: Fix the flow of a miss in the allocation of a cache ODP MR
    c8db786858d8 scsi: pm8001: Fix abort all task initialization
    c6c95cdd5138 scsi: pm8001: Fix NCQ NON DATA command completion handling
    e4fce9af88ec scsi: pm8001: Fix NCQ NON DATA command task initialization
    03865ae38771 scsi: pm8001: Fix le32 values handling in pm80xx_chip_sata_req()
    b453d71af756 scsi: pm8001: Fix le32 values handling in pm80xx_chip_ssp_io_req()
    d14d1f88d8c2 scsi: pm8001: Fix payload initialization in pm80xx_encrypt_update()
    fc1d7c820287 scsi: pm8001: Fix le32 values handling in pm80xx_set_sas_protocol_timer_config()
    e332a97c4358 scsi: pm8001: Fix payload initialization in pm80xx_set_thermal_config()
    3a9bb3afd0cb scsi: pm8001: Fix command initialization in pm8001_chip_ssp_tm_req()
    4e878e41e900 scsi: pm8001: Fix command initialization in pm80XX_send_read_log()
    08f0b58e2a5f scsi: fnic: Fix a tracing statement
    aed99c7648cb vfio/pci: wake-up devices around reset functions
    4319f17fb826 vfio/pci: fix memory leak during D3hot to D0 transition
    5f3856f3ba10 dm crypt: fix get_key_size compiler warning if !CONFIG_KEYS
    590bc324ac4e drm/msm/dpu: fix dp audio condition
    9b625cee90a9 drm/msm/dpu: add DSPP blocks teardown
    ea009273d0c2 drm/msm/dsi/phy: fix 7nm v4.0 settings for C-PHY mode
    04ed3cd92999 drm/msm/dsi: Use "ref" fw clock instead of global name for VCO parent
    47e2060f2366 drm/msm/dp: always add fail-safe mode into connector mode list
    740d2330760e drm/msm/dp: stop link training after link training 2 failed
    9525b8bcae8b drm/msm/dp: populate connector of struct dp_panel
    2c4de9b94227 mtd: rawnand: pl353: Set the nand chip node as the flash node
    a2095c3e0309 iwlwifi: mvm: Fix an error code in iwl_mvm_up()
    01e36bdb95e7 iwlwifi: Fix -EIO error code that is never returned
    a3bb5cda4fed iwlwifi: yoyo: remove DBGI_SRAM address reset writing
    06511eed8177 iwlwifi: mvm: align locking in D3 test debugfs
    ec9b77481aaf iwlwifi: mvm: don't iterate unadded vifs when handling FW SMPS req
    21053d707480 iwlwifi: mvm: Don't call iwl_mvm_sta_from_mac80211() with NULL sta
    2de35ae362f3 selftests: mptcp: add csum mib check for mptcp_connect
    e2951eaa9398 dax: make sure inodes are flushed before destroy cache
    c08208f2635c IB/cma: Allow XRC INI QPs to set their local ACK timeout
    d85baefc858f libbpf: Fix memleak in libbpf_netlink_recv()
    0f47edc22c2b drm/amd/display: Add affected crtcs to atomic state for dsc mst unplug
    ac98fdec1114 drm/amd/pm: enable pm sysfs write for one VF mode
    28093e78e0f2 bpftool: Fix the error when lookup in no-btf maps
    64c06df2428b drm/bridge: anx7625: Fix overflow issue on reading EDID
    d6c7f46b8f05 iommu/ipmmu-vmsa: Check for error num after setting mask
    b5b285818754 HID: i2c-hid: fix GET/SET_REPORT for unnumbered reports
    ffb8e92b4cef power: supply: ab8500: Fix memory leak in ab8500_fg_sysfs_init
    9dea119df0fa libbpf: Use dynamically allocated buffer when receiving netlink messages
    f2a19db2a941 drm/bridge: dw-hdmi: use safe format when first in bridge chain
    2f0949db6e2c libbpf: Fix compilation warning due to mismatched printf format
    0255e93dce7a net:enetc: allocate CBD ring data memory using DMA coherent methods
    721992163e0c cxl/regs: Fix size of CXL Capability Header Register
    0e348f94787f cxl/core: Fix cxl_probe_component_regs() error message
    855f1c64e21e libbpf: Fix signedness bug in btf_dump_array_data()
    cdb2150050c7 RDMA/rxe: Check the last packet by RXE_END_MASK
    ed750e22e443 PCI: aardvark: Fix reading PCI_EXP_RTSTA_PME bit on emulated bridge
    0fe94b84c43c PCI: aardvark: Fix reading MSI interrupt number
    1f0add37ac5c igb: refactor XDP registration
    ab8c107470d1 igc: avoid kernel warning when changing RX ring parameters
    ea6b04796c87 mtd: mchp48l640: Add SPI ID table
    21e78798b206 mtd: mchp23k256: Add SPI ID table
    0eec5e2748f1 i2c: bcm2835: Fix the error handling in 'bcm2835_i2c_probe()'
    0b01811fc193 i2c: bcm2835: Use platform_get_irq() to get the interrupt
    b96a7265f763 net: asix: add proper error handling of usb read errors
    b997cfdc3f98 livepatch: Fix build failure on 32 bits processors
    34bed8dae12a scripts/dtc: Call pkg-config POSIXly correct
    0aec294f2d2f mac80211: limit bandwidth in HE capabilities
    a41efae062bf mac80211: Remove a couple of obsolete TODO
    5ad6b337e4ac net: dsa: mv88e6xxx: Enable port policy support on 6097
    b2dea2a696d0 ptp: unregister virtual clocks when unregistering physical clock.
    a53c147ac496 mt76: mt7615: check sta_rates pointer in mt7615_sta_rate_tbl_update
    fd1fcad5c053 mt76: mt7603: check sta_rates pointer in mt7603_sta_rate_tbl_update
    443cb1bc8a96 mt76: mt7615: fix a leftover race in runtime-pm
    421cb64c91dd mt76: mt7921: fix a leftover race in runtime-pm
    0f3d76144b9c mt76: mt7915: use proper aid value in mt7915_mcu_sta_basic_tlv
    60d815fd4338 mt76: mt7915: use proper aid value in mt7915_mcu_wtbl_generic_tlv in sta mode
    203a1e1230cf mt76: connac: fix sta_rec_wtbl tag len
    94fd8a2a47c8 powerpc/perf: Don't use perf_hw_context for trace IMC PMU
    0dc750479a5f KVM: PPC: Book3S HV: Check return value of kvmppc_radix_init
    10686b028059 powerpc: dts: t1040rdb: fix ports names for Seville Ethernet switch
    9acf7c2f3145 ray_cs: Check ioremap return value
    3a4bcc4cb612 power: reset: gemini-poweroff: Fix IRQ check in gemini_poweroff_probe
    cb42b6cfc5b0 ixgbe: respect metadata on XSK Rx to skb
    8c072b8e3226 ixgbe: don't reserve excessive XDP_PACKET_HEADROOM on XSK Rx to skb
    6dc18226976c ixgbe: pass bi->xdp to ixgbe_construct_skb_zc() directly
    28e561f3660d igc: don't reserve excessive XDP_PACKET_HEADROOM on XSK Rx to skb
    0e2f6a7f59f1 i40e: respect metadata on XSK Rx to skb
    968c76e96afd i40e: don't reserve excessive XDP_PACKET_HEADROOM on XSK Rx to skb
    7ad4f7729f0e selftests/net: timestamping: Fix bind_phc check
    5bedd66a59e5 KVM: PPC: Fix vmx/vsx mixup in mmio emulation
    72c179f650f6 RDMA/core: Set MR type in ib_reg_user_mr
    0b700f7d0649 ath9k_htc: fix uninit value bugs
    c41832e7dadd selftests/bpf/test_xdp_redirect_multi: use temp netns for testing
    a5c1c0920cf6 selftests/bpf: Normalize XDP section names in selftests
    f00346b30a7c net: phy: at803x: move page selection fix to config_init
    b175bc586410 drm/amd/pm: return -ENOTSUPP if there is no get_dpm_ultimate_freq function
    bdc7429708a0 drm/amd/display: Fix a NULL pointer dereference in amdgpu_dm_connector_add_common_modes()
    408ab78ca138 drm/nouveau/acr: Fix undefined behavior in nvkm_acr_hsfw_load_bl()
    2e05de23052d ionic: Don't send reset commands if FW isn't running
    4f69a923a388 ionic: start watchdog after all is setup
    76624b5a61c7 ionic: fix type complaint in ionic_dev_cmd_clean()
    da491fc54e4e drm/edid: Split deep color modes between RGB and YUV444
    19da408ab41c drm/edid: Don't clear formats if using deep color
    8480efe815e5 mtd: rawnand: gpmi: fix controller timings setting
    5b1f32593955 mtd: onenand: Check for error irq
    041e5b8a62e6 Bluetooth: hci_serdev: call init_rwsem() before p->open()
    9d42e744685c Bluetooth: btintel: Fix WBS setting for Intel legacy ROM products
    0b96610a7b74 selftests: bpf: Fix bind on used port
    0728ccb66468 drm/selftests/test-drm_dp_mst_helper: Fix memory leak in sideband_msg_req_encode_decode
    51b82141fffa bpf: Fix UAF due to race between btf_try_get_module and load_module
    811b667cefbe udmabuf: validate ubuf->pagecount
    e5f642c55f4c bpftool: Only set obj->skeleton on complete success
    b385ebe91ae9 libbpf: Fix possible NULL pointer dereference when destroying skeleton
    34d0a99fa09a drm/panfrost: Check for error num after setting mask
    2ff993b3daa4 drm/v3d/v3d_drv: Check for error num after setting mask
    982d824a9b27 ath10k: fix memory overwrite of the WoWLAN wakeup packet pattern
    66b805b63527 drm: bridge: adv7511: Fix ADV7535 HPD enablement
    c43b4106cfc5 drm/bridge: nwl-dsi: Fix PM disable depth imbalance in nwl_dsi_probe
    4db8e14ce478 drm/bridge: Add missing pm_runtime_disable() in __dw_mipi_dsi_probe
    f20a990784ee drm/bridge: Fix free wrong object in sii8620_init_rcp_input_dev
    461656a5e9be drm/meson: Fix error handling when afbcd.ops->init fails
    1c5439a71612 drm/meson: split out encoder from meson_dw_hdmi
    ffcfa1669316 drm/meson: Make use of the helper function devm_platform_ioremap_resourcexxx()
    d2a0678dff46 drm/meson: osd_afbcd: Add an exit callback to struct meson_afbcd_ops
    d81d72b912dc ARM: configs: multi_v5_defconfig: re-enable DRM_PANEL and FB_xxx
    c4d2a100f104 ARM: configs: multi_v5_defconfig: re-enable CONFIG_V4L_PLATFORM_DRIVERS
    c2e5f5d23718 ASoC: amd: Fix reference to PCM buffer address
    2f44eca78cc6 ASoC: codecs: wcd934x: Add missing of_node_put() in wcd934x_codec_parse_data
    e2aeafc6509c ASoC: msm8916-wcd-analog: Fix error handling in pm8916_wcd_analog_spmi_probe
    f589063b585a ASoC: atmel: Fix error handling in sam9x5_wm8731_driver_probe
    f2b0fc2a46a6 mmc: davinci_mmc: Handle error for clk_enable
    9668c6bca12a ASoC: msm8916-wcd-digital: Fix missing clk_disable_unprepare() in msm8916_wcd_digital_probe
    42735eae94ee ASoC: SOF: Intel: enable DMI L1 for playback streams
    b23b524b8bbd ASoC: imx-es8328: Fix error return code in imx_es8328_probe()
    06e6f4ba2534 ASoC: fsl_spdif: Disable TX clock when stop
    44acdaf7acb6 ASoC: mxs: Fix error handling in mxs_sgtl5000_probe
    1ecf9dcf2868 ASoC: dmaengine: do not use a NULL prepare_slave_config() callback
    39c2894dfc08 ASoC: rk817: Fix missing clk_disable_unprepare() in rk817_platform_probe
    87e04a89c31e ASoC: mediatek: mt8192-mt6359: Fix error handling in mt8192_mt6359_dev_probe
    56e0f1696a96 ASoC: mediatek: use of_device_get_match_data()
    5441ab46dd43 ASoC: SOF: Add missing of_node_put() in imx8m_probe
    6724217bfbfd ASoC: rockchip: i2s: Fix missing clk_disable_unprepare() in rockchip_i2s_probe
    f32ac9bf5e3f ASoC: atmel: Fix error handling in snd_proto_probe
    1e77cab218e4 ivtv: fix incorrect device_caps for ivtvfb
    a8523efdc946 media: saa7134: fix incorrect use to determine if list is empty
    a41fc6d02d82 video: fbdev: omapfb: Add missing of_node_put() in dvic_probe_of
    c19312809931 ASoC: fsi: Add check for clk_enable
    0bdb861b7d1b ASoC: wm8350: Handle error for wm8350_register_irq
    a0bc36b247dc ASoC: atmel: Add missing of_node_put() in at91sam9g20ek_audio_probe
    9dd2fd7a1f84 media: vidtv: Check for null return of vzalloc
    a09e9882800f media: stk1160: If start stream fails, return buffers with VB2_BUF_STATE_QUEUED
    ea2258664ffc m68k: coldfire/device.c: only build for MCF_EDMA when h/w macros are defined
    178b32112be1 arm64: dts: rockchip: Fix SDIO regulator supply properties on rk3399-firefly
    eab74c416120 ALSA: firewire-lib: fix uninitialized flag for AV/C deferred transaction
    2883fb9838fc memory: emif: check the pointer temp in get_device_details()
    50d934cea574 memory: emif: Add check for setup_interrupts
    fc237b8d624f ASoC: soc-compress: prevent the potentially use of null pointer
    d70d4a3ff5f2 ASoC: dwc-i2s: Handle errors for clk_enable
    58b64ee38637 ASoC: atmel_ssc_dai: Handle errors for clk_enable
    152d62d80960 ASoC: mxs-saif: Handle errors for clk_enable
    f64c5b235b47 printk: fix return value of printk.devkmsg __setup handler
    0fbd610e68c2 arm64: dts: broadcom: Fix sata nodename
    de64846df9fe arm64: dts: ns2: Fix spi-cpol and spi-cpha property
    b98940965daf ALSA: spi: Add check for clk_enable()
    89676d9e8c84 ASoC: ti: davinci-i2s: Add check for clk_enable()
    0a96bff46a5e mmc: sdhci_am654: Fix the driver data of AM64 SoC
    7c31acd9ca79 soc: mediatek: pm-domains: Add wakeup capacity support in power domain
    9db742370304 ASoC: rt5663: check the return value of devm_kzalloc() in rt5663_parse_dp()
    3fa8114be4a2 uaccess: fix nios2 and microblaze get_user_8()
    469277ff5ac8 vsprintf: Fix %pK with kptr_restrict == 0
    8611161ea715 lib: uninline simple_strntoull() as well
    34dd193d2329 selftests/lkdtm: Add UBSAN config
    f58159509b62 media: ov5640: Fix set format, v4l2_mbus_pixelcode not updated
    b1b91b31627d media: v4l2-core: Initialize h264 scaling matrix
    7399b9b62277 ASoC: codecs: wcd934x: fix return value of wcd934x_rx_hph_mode_put
    c42e96af49ef ASoC: codecs: wcd934x: fix kcontrol max values
    363490abe0be ASoC: codecs: wcd938x: fix kcontrol max values
    adafea71b49e ASoC: codecs: wc938x: fix accessing array out of bounds for enum type
    966408e37d84 ASoC: codecs: va-macro: fix accessing array out of bounds for enum type
    eb15c6ea692f ASoC: codecs: rx-macro: fix accessing array out of bounds for enum type
    9208ecc703b5 ASoC: codecs: rx-macro: fix accessing compander for aux
    56dcb5480687 media: cedrus: h264: Fix neighbour info buffer size
    dd6454742581 media: cedrus: H265: Fix neighbour info buffer size
    895364fa97e6 media: usb: go7007: s2250-board: fix leak in probe()
    332d45fe51d7 media: em28xx: initialize refcount before kref_get
    aa613ac27029 media: ti-vpe: cal: Fix a NULL pointer dereference in cal_ctx_v4l2_init_formats()
    12cb301cc5cb media: video/hdmi: handle short reads of hdmi info frame.
    0d05a58ea3b9 media: mexon-ge2d: fixup frames size in registers
    498ab2d70a9d ARM: dts: imx: Add missing LVDS decoder on M53Menlo
    2305e3460b42 vsprintf: Fix potential unaligned access
    b4c8675a710a ARM: dts: sun8i: v3s: Move the csi1 block to follow address order
    49db8d166d7b soc: ti: wkup_m3_ipc: Fix IRQ check in wkup_m3_ipc_probe
    42dab81e9309 firmware: ti_sci: Fix compilation failure when CONFIG_TI_SCI_PROTOCOL is not defined
    19e4c3b037ff arm64: dts: qcom: sm8350: Correct TCS configuration for apps rsc
    8026415d7f54 arm64: dts: qcom: sm8150: Correct TCS configuration for apps rsc
    17790ef9ad1f arm64: dts: broadcom: bcm4908: use proper TWD binding
    cc3a67e4147e arm64: dts: qcom: sm8250: fix PCIe bindings to follow schema
    4514dc92a353 arm64: dts: qcom: sdm845: fix microphone bias properties and values
    15565049d729 soc: qcom: aoss: remove spurious IRQF_ONESHOT flags
    1874365f3c17 soc: qcom: ocmem: Fix missing put_device() call in of_get_ocmem
    724376c30af5 soc: qcom: rpmpd: Check for null return of devm_kcalloc
    d761d62022bb ARM: dts: qcom: ipq4019: fix sleep clock
    b14f6a7d3608 firmware: qcom: scm: Remove reassignment to desc following initializer
    6c4cc4d36966 ARM: dts: Fix OpenBMC flash layout label addresses
    c3364cbc3762 video: fbdev: fbcvt.c: fix printing in fb_cvt_print_name()
    f3ef254c840d video: fbdev: atmel_lcdfb: fix an error code in atmel_lcdfb_probe()
    c420b540db4b video: fbdev: smscufx: Fix null-ptr-deref in ufx_usb_probe()
    24cfeb466146 video: fbdev: controlfb: Fix COMPILE_TEST build
    02684dd83332 video: fbdev: matroxfb: set maxvram of vbG200eW to the same as vbG200 to avoid black screen
    96eb48f017cd media: aspeed: Correct value for h-total-pixels
    4a3051977327 media: ov5648: Don't pack controls struct
    26b1865f1fd4 media: v4l: Avoid unaligned access warnings when printing 4cc modifiers
    ef35afc268c5 media: ov6650: Fix set format try processing path
    4ea548312052 media: hantro: Fix overfill bottom register field name
    b0b890dd8df3 media: meson: vdec: potential dereference of null pointer
    c3590ec1161d media: coda: Fix missing put_device() call in coda_get_vdoa_data
    f0344f0aee4d ASoC: simple-card-utils: Set sysclk on all components
    bb0a0e23dd00 ASoC: xilinx: xlnx_formatter_pcm: Handle sysclk setting
    1179081ba5fa ASoC: codecs: Check for error pointer after calling devm_regmap_init_mmio
    e48b189799d3 ASoC: sh: rz-ssi: Drop calling rz_ssi_pio_recv() recursively
    f7d07ad8bc03 media: atmel: atmel-sama7g5-isc: fix ispck leftover
    25b925f94a36 media: bttv: fix WARNING regression on tunerless devices
    e1854a6c3a68 media: imx: imx8mq-mipi_csi2: fix system resume
    72d79cd3c3ad media: imx: imx8mq-mipi-csi2: remove wrong irq config write operation
    0022dc8cafa5 media: mtk-vcodec: potential dereference of null pointer
    48d00e24822e media: v4l2-mem2mem: Apply DST_QUEUE_OFF_BASE on MMAP buffers across ioctls
    1fbc023f8173 media: staging: media: imx: imx7-mipi-csis: Make subdev name unique
    74cbe85fa044 media: camss: vfe-170: fix "VFE halt timeout" error
    9af4e473668a media: camss: csid-170: set the right HALT_CMD when disabled
    a3b104487f74 media: camss: csid-170: don't enable unused irqs
    20d5934825b9 media: camss: csid-170: fix non-10bit formats
    0ac903a7bde9 media: staging: media: zoran: fix usage of vb2_dma_contig_set_max_seg_size
    b84343a9d676 pinctrl: samsung: Remove EINT handler for Exynos850 ALIVE and CMGP gpios
    9a24d035c5eb kunit: make kunit_test_timeout compatible with comment
    9ca7b59e7877 drivers/base/memory: add memory block to memory group after registration succeeded
    5bed6c2c1ffe selftests, x86: fix how check_cc.sh is being invoked
    0f42a02e4773 f2fs: fix compressed file start atomic write may cause data corruption
    1a97987f76b4 btrfs: fix unexpected error path when reflinking an inline extent
    2911ad0249c5 f2fs: fix to avoid potential deadlock
    1e0e63ad6243 sched/rt: Plug rt_mutex_setprio() vs push_rt_task() race
    b7aec0843e28 sched/cpuacct: Fix charge percpu cpuusage
    cc91880f0417 nfsd: more robust allocation failure handling in nfsd_file_cache_init
    d1eaaf6caded f2fs: fix missing free nid in f2fs_handle_failed_inode
    ec5884cbbfd3 sched/fair: Improve consistency of allowed NUMA balance calculations
    df5e0a0b3a4e perf/x86/intel/pt: Fix address filter config for 32-bit kernel
    929d8a87f709 perf/core: Fix address filter parser for multiple filters
    3bb11f3f6872 rseq: Remove broken uapi field layout on 32-bit little endian
    d2c741290f7e sched/uclamp: Fix iowait boost escaping uclamp restriction
    6c7276622393 sched/core: Export pelt_thermal_tp
    8bc68c44d97f sched/debug: Remove mpol_get/put and task_lock/unlock from sched_show_numa
    d8c8dd97bb8c f2fs: fix to enable ATGC correctly via gc_idle sysfs interface
    f69aecb49968 watch_queue: Actually free the watch
    695c47cea02b watch_queue: Fix NULL dereference in error cleanup
    109dda451021 io_uring: terminate manual loop iterator loop correctly for non-vecs
    1323976e9448 io_uring: don't check unrelated req->open.how in accept request
    657edec8987a clocksource: acpi_pm: fix return value of __setup handler
    9b181ad309c6 hwmon: (pmbus) Add Vin unit off handling
    41887c82e76f hwrng: nomadik - Change clk_disable to clk_disable_unprepare
    335bf1fc74f7 crypto: ccree - Fix use after free in cc_cipher_exit()
    20550eb187e8 crypto: ccp - ccp_dmaengine_unregister release dma channels
    166b2478152c ACPI: APEI: fix return value of __setup handlers
    bfa4a733aeaa KEYS: trusted: Avoid calling null function trusted_key_exit
    b0efbe7e88c7 KEYS: trusted: Fix trusted key backends when building as module
    d362998e8df9 arm64: prevent instrumentation of bp hardening callbacks
    df04ef63347f clocksource/drivers/timer-of: Check return value of of_iomap in timer_of_base_init()
    abc6b2a12a3e clocksource/drivers/timer-microchip-pit64b: Use notrace
    a81de4315ecf clocksource/drivers/exynos_mct: Handle DTS with higher number of interrupts
    e34ba9ff04ee clocksource/drivers/exynos_mct: Refactor resources allocation
    97e3aaace46e clocksource/drivers/timer-ti-dm: Fix regression from errata i940 fix
    58c9d407ce82 crypto: vmx - add missing dependencies
    f9474039df09 crypto: gemini - call finalize with bh disabled
    6ce48276d736 crypto: amlogic - call finalize with bh disabled
    67bc6890b981 crypto: sun8i-ce - call finalize with bh disabled
    05e13c5e4f8e crypto: sun8i-ss - call finalize with bh disabled
    2684f459f919 hwrng: atmel - disable trng on failure path
    f8a1392c099b spi: spi-zynqmp-gqspi: Handle error for dma_set_mask
    7e45fc93dde2 PM: suspend: fix return value of __setup handler
    d0cd9da501f6 PM: hibernate: fix __setup handler error handling
    efaa0e969261 block: don't delete queue kobject before its children
    b9070c866aa3 nvme: fix the check for duplicate unique identifiers
    2340a15d3914 nvme: cleanup __nvme_check_ids
    a015dd1b8a54 hwmon: (sch56xx-common) Replace WDOG_ACTIVE with WDOG_HW_RUNNING
    3a70165fc788 hwmon: (pmbus) Add mutex to regulator ops
    f2757af27bf3 spi: pxa2xx-pci: Balance reference count for PCI DMA device
    40dba7c26e89 crypto: hisilicon/sec - fix the aead software fallback for engine
    c71e4d45dcc4 crypto: ccree - don't attempt 0 len DMA mappings
    0c366ade8606 EVM: fix the evm= __setup handler return value
    3a10df731516 audit: log AUDIT_TIME_* records only from rules
    8e8724b87afe crypto: rockchip - ECB does not need IV
    4d6e00474872 selftests/sgx: Treat CC as one argument
    d9172393f0f6 selftests/x86: Add validity check and allow field splitting
    e129fb065106 blk-cgroup: set blkg iostat after percpu stat aggregation
    c17eb1586c94 arm64/mm: avoid fixmap race condition when create pud mapping
    8550c9b846c5 stack: Constrain and fix stack offset randomization with Clang builds
    8effc4dc79a5 spi: tegra210-quad: Fix missin IRQ check in tegra_qspi_probe
    906315cb82d6 spi: tegra114: Add missing IRQ check in tegra_spi_probe
    e6374086f249 crypto: octeontx2 - remove CONFIG_DM_CRYPT check
    9ada174f47b3 thermal: int340x: Check for NULL after calling kmemdup()
    486d4c18f207 selinux: Fix selinux_sb_mnt_opts_compat()
    c111b3c1a257 crypto: mxs-dcp - Fix scatterlist processing
    af3c34eb9410 crypto: authenc - Fix sleep in atomic context in decrypt_tail
    8f10a38c9212 crypto: sun8i-ss - really disable hash on A80
    046f1499aef8 hwrng: cavium - HW_RANDOM_CAVIUM should depend on ARCH_THUNDER
    7919dfd84b35 hwrng: cavium - Check health status while reading random data
    0e67b3e1f93a crypto: ccp - Ensure psp_ret is always init'd in __sev_platform_init_locked()
    01d508417055 selinux: check return value of sel_make_avc_files
    aeeb944e7f91 selinux: access superblock_security_struct in LSM blob way
    ae2ff8d991b6 regulator: qcom_smd: fix for_each_child.cocci warnings
    9bbe88d1023f PCI: xgene: Revert "PCI: xgene: Fix IB window setup"
    920facf23305 PCI: pciehp: Clear cmd_busy bit in polling mode
    86ca87591870 PCI: imx6: Allow to probe when dw_pcie_wait_for_link() fails
    312d3d4f49e1 drm/i915/gem: add missing boundary check in vm_access
    d8b8bd1d03ee drm/i915/opregion: check port number bounds for SWSCI display power state
    2b08e0189b02 brcmfmac: pcie: Fix crashes due to early IRQs
    a7ea6de3bdd5 brcmfmac: pcie: Replace brcmf_pcie_copy_mem_todev with memcpy_toio
    b6957a10747c brcmfmac: pcie: Declare missing firmware files in pcie.c
    a88337a06966 brcmfmac: pcie: Release firmwares in the brcmf_pcie_setup error path
    6e2dfa829026 brcmfmac: firmware: Allocate space for default boardrev in nvram
    51f0af904fb6 drm/fb-helper: Mark screen buffers in system memory with FBINFO_VIRTFB
    713f1fefb6c6 drm/nouveau/backlight: Just set all backlight types as RAW
    80de94c4ab4e drm/nouveau/backlight: Fix LVDS backlight detection on some laptops
    7585d0f56f29 drm/syncobj: flatten dma_fence_chains on transfer
    85814e6461b8 xtensa: fix xtensa_wsr always writing 0
    821907e8f516 xtensa: fix stop_machine_cpuslocked call in patch_text
    e28bace5e7dc xtensa: define update_mmu_tlb function
    00c6bb4cea62 btrfs: verify the tranisd of the to-be-written dirty extent buffer
    f85ee0c845fd btrfs: extend locking to all space_info members accesses
    68a8120e1647 btrfs: zoned: mark relocation as writing
    2bd666b0fd28 media: davinci: vpif: fix unbalanced runtime PM enable
    12159871e1b4 media: davinci: vpif: fix unbalanced runtime PM get
    992af22dab9c media: venus: venc: Fix h264 8x8 transform control
    d5fcfc4af806 media: venus: hfi_cmds: List HDR10 property as unsupported for v1 and v3
    0a45148635f8 media: gpio-ir-tx: fix transmit with long spaces on Orange Pi PC
    3e3c8d88e0ca DEC: Limit PMAX memory probing to R3k systems
    2039163c30f8 PM: domains: Fix sleep-in-atomic bug caused by genpd_debug_remove()
    74e2d61e4faa bcache: fixup multiple threads crash
    2221a0f6c90c crypto: rsa-pkcs1pad - fix buffer overread in pkcs1pad_verify_complete()
    dc7cacd209c8 crypto: rsa-pkcs1pad - restore signature length check
    5013dbd89101 crypto: rsa-pkcs1pad - correctly get hash from source scatterlist
    9c8d8f87c213 crypto: rsa-pkcs1pad - only allow with rsa
    1290eb4412aa exec: Force single empty string when argv is empty
    d342786a0e94 lib/raid6/test: fix multiple definition linking error
    137c66d5f915 thermal: int340x: Increase bitmap size
    bc5f440e1c5c pstore: Don't use semaphores in always-atomic-context code
    10a15d91bcba carl9170: fix missing bit-wise or operator for tx_params
    1d89cb2c72d6 mgag200 fix memmapsl configuration in GCTL6 register
    bd0cc79722df ARM: dts: exynos: add missing HDMI supplies on SMDK5420
    661016b895e6 ARM: dts: exynos: add missing HDMI supplies on SMDK5250
    d4577ac55725 ARM: dts: exynos: fix UART3 pins configuration in Exynos5250
    cc7c9d207fce ARM: dts: at91: sama5d2: Fix PMERRLOC resource size
    64b3bc9050d8 ARM: dts: at91: sama7g5: Remove unused properties in i2c nodes
    cdcaec46a6b2 rfkill: make new event layout opt-in
    677a5f6c81b5 video: fbdev: atari: Atari 2 bpp (STe) palette bugfix
    46cdbff26c88 video: fbdev: sm712fb: Fix crash in smtcfb_read()
    c894ac44786c fbdev: Hot-unplug firmware fb devices on forced removal
    6e72980d588e drm/edid: check basic audio support on CEA extension block
    2e76c69c85f9 block: don't merge across cgroup boundaries if blkcg is enabled
    6a11b52b498d block: limit request dispatch loop duration
    f1dd8c1186be mailbox: tegra-hsp: Flush whole channel
    3d4b396a616d landlock: Use square brackets around "landlock-ruleset"
    20fbf100f84b samples/landlock: Fix path_list memory leak
    3eb18f8a1d02 drivers: hamradio: 6pack: fix UAF bug caused by mod_timer()
    3c65b7309d2e ext4: make mb_optimize_scan performance mount option work with extents
    597393cde841 ext4: fix fs corruption when tring to remove a non-empty directory with IO error
    73fa1798233c ext4: fix ext4_fc_stats trace point
    6cdb84dd0c8d coredump: Also dump first pages of non-executable ELF libraries
    8a7f9d9c3f6a ACPI: properties: Consistently return -ENOENT if there are no more references
    2e2eb55823df Revert "ACPI: Pass the same capabilities to the _OSC regardless of the query flag"
    b6094744e261 ASoC: SOF: Intel: Fix NULL ptr dereference when ENOMEM
    5e3bd996d2c8 arm64: dts: ti: k3-am64: Fix gic-v3 compatible regs
    96181539a521 arm64: dts: ti: k3-j7200: Fix gic-v3 compatible regs
    e931b8494a51 arm64: dts: ti: k3-j721e: Fix gic-v3 compatible regs
    146ad3e0177d arm64: dts: ti: k3-am65: Fix gic-v3 compatible regs
    393a8a0f971e arm64: dts: qcom: sm8250: Fix MSI IRQ for PCIe1 and PCIe2
    a01e1eaf5407 arm64: Do not defer reserve_crashkernel() for platforms with no DMA memory zones
    556e8e0a27c8 arm64: signal: nofpsimd: Do not allocate fp/simd context when not available
    e04a1de51cf6 PCI: fu740: Force 2.5GT/s for initial device probe
    ec5ebfd1ce35 powerpc/kvm: Fix kvm_use_magic_page
    024c2a0db53a drbd: fix potential silent data corruption
    39483fd3b2d2 tracing: Have trace event string test handle zero length strings
    12ea1f73690b dm integrity: set journal entry unused when shrinking device
    737d5e25e28d dm: fix double accounting of flush with data
    dc77afd7491e dm: interlock pending dm_io and dm_wait_for_bios_completion
    0987f00a76a1 dm: fix use-after-free in dm_cleanup_zoned_dev()
    d3444138ff0d dm stats: fix too short end duration_ns when using precise_timestamps
    7d3bd683e084 mm/kmemleak: reset tag when compare object pointer
    7d04d6d5c114 mm,hwpoison: unmap poisoned page before invalidation
    d4835551fd9f Revert "mm: madvise: skip unmapped vma holes passed to process_madvise"
    a07a4b75cccb mm: madvise: return correct bytes advised with process_madvise
    27d96f11b0a2 mm: madvise: skip unmapped vma holes passed to process_madvise
    476df5994878 drm/simpledrm: Add "panel orientation" property on non-upright mounted LCD panels
    7c5312fdb1dc ocfs2: fix crash when mount with quota enabled
    cd2722e411e8 rtc: pl031: fix rtc features null pointer dereference
    8e167fdd4f62 rtc: mc146818-lib: fix locking in mc146818_set_time
    0cc320929ac6 ALSA: hda/realtek: Fix audio regression on Mi Notebook Pro 2020
    7777744e92a0 ALSA: pcm: Fix potential AB/BA lock with buffer_mutex and mmap_lock
    f9f37a956de1 ALSA: hda: Avoid unsol event during RPM suspending
    cf4cd2a5d0ae ALSA: cs4236: fix an incorrect NULL check on list iterator
    39a4bf7d1a23 cifs: fix NULL ptr dereference in smb2_ioctl_query_info()
    f143f8334fb9 cifs: prevent bad output lengths in smb2_ioctl_query_info()
    665cf5507470 Revert "Input: clear BTN_RIGHT/MIDDLE on buttonpads"
    305a5303d1da riscv: Increase stack size under KASAN
    ee29fe27818e riscv: Fix fill_callchain return value
    3c4a1c81900c riscv: dts: canaan: Fix SPI3 bus width
    876a9bdfd9af qed: validate and restrict untrusted VFs vlan promisc mode
    4d8323922ea9 qed: display VF trust config
    59a4bc52f111 scsi: libsas: Fix sas_ata_qc_issue() handling of NCQ NON DATA commands
    cbf4e2f4f700 scsi: scsi_transport_fc: Fix FPIN Link Integrity statistics counters
    64b0fe4808bd scsi: ufs: Fix runtime PM messages never-ending cycle
    6ade94e6afc6 scsi: core: sd: Add silence_suspend flag to suppress some PM messages
    5e217aa2c825 mempolicy: mbind_range() set_policy() after vma_merge()
    3bae72c2db69 mm: invalidate hwpoison page cache page in fault path
    a74bb0eeabcd mm/pages_alloc.c: don't create ZONE_MOVABLE beyond the end of a node
    ab657a29c3e9 mm: fs: fix lru_cache_disabled race in bh_lru
    52ba0ab4f0a6 jffs2: fix memory leak in jffs2_scan_medium
    4392e8aeebc5 jffs2: fix memory leak in jffs2_do_mount_fs
    7a75740206af jffs2: fix use-after-free in jffs2_clear_xattr_subsystem
    f2ce5238904f can: usb_8dev: usb_8dev_start_xmit(): fix double dev_kfree_skb() in error path
    f43e64076ff1 can: m_can: m_can_tx_handler(): fix use after free of skb
    459b19f42fd5 can: ems_usb: ems_usb_start_xmit(): fix double dev_kfree_skb() in error path
    31d7d7f35045 mtd: rawnand: protect access to rawnand devices while in suspend
    7d94d25c7972 spi: mxic: Fix the transmit path
    48254561bd04 net: bnxt_ptp: fix compilation error
    89d369454267 pinctrl: samsung: drop pin banks references on error paths
    1db1639d955b pinctrl: ingenic: Fix regmap on X series SoCs
    025a7ccfb7a5 mm/mlock: fix two bugs in user_shm_lock()
    34afac3c75fa remoteproc: Fix count check in rproc_coredump_write()
    b065f398c860 f2fs: fix to do sanity check on .cp_pack_total_block_count
    f9156db0987f f2fs: quota: fix loop condition at f2fs_quota_sync()
    e98ae961b334 f2fs: fix to unlock page correctly in error path of is_alive()
    303cd6173dce NFSD: prevent integer overflow on 32 bit systems
    614a61e15920 NFSD: prevent underflow in nfssvc_decode_writeargs()
    253a9533941e NFS: NFSv2/v3 clients should never be setting NFS_CAP_XATTR
    518a7d6be1ed SUNRPC: avoid race between mod_timer() and del_timer_sync()
    19c82681db26 HID: intel-ish-hid: Use dma_alloc_coherent for firmware update
    b3e38f939ab4 firmware: sysfb: fix platform-device leak in error path
    0dff5664b867 firmware: stratix10-svc: add missing callback parameter on RSU
    72403d1c04bb Documentation: update stable tree link
    8259235ab46e Documentation: add link to stable release candidate tree
    a1e55db51a88 KEYS: asymmetric: properly validate hash_algo and encoding
    255921f63a9e KEYS: asymmetric: enforce that sig algo matches key algo
    fe8df4489240 KEYS: fix length validation in keyctl_pkey_params_get_2()
    512bde642087 cifs: we do not need a spinlock around the tree access during umount
    2fafbc198613 cifs: fix handlecache and multiuser
    b6d75218ff65 ptrace: Check PTRACE_O_SUSPEND_SECCOMP permission on PTRACE_SEIZE
    42606add50f9 clk: uniphier: Fix fixed-rate initialization
    5aa6d84a0b07 clk: rockchip: re-add rational best approximation algorithm to the fractional divider
    ab67122003b1 greybus: svc: fix an error handling bug in gb_svc_hello()
    9e97f6641c87 iio: inkern: make a best effort on offset calculation
    b378d3f585e3 iio: inkern: apply consumer scale when no channel scale is available
    e38582362101 iio: inkern: apply consumer scale on IIO_VAL_INT cases
    1cb35faea3c3 iio: afe: rescale: use s64 for temporary scale calculations
    c61e2fc87f24 coresight: syscfg: Fix memleak on registration failure in cscfg_create_device
    ba81399402b7 coresight: Fix TRCCONFIGR.QE sysfs interface
    f1d936537155 docs: sphinx/requirements: Limit jinja2<3.1
    c1013a5ba4c9 bus: mhi: Fix MHI DMA structure endianness
    fe66a11af28c bus: mhi: pci_generic: Add mru_default for Quectel EM1xx series
    84bb0ac6c86f mei: avoid iterator usage outside of list_for_each_entry
    6d2ec095176c mei: me: add Alder Lake N device id.
    7c2422748463 mei: me: disable driver on the ign firmware
    f6121a746fae xhci: fix uninitialized string returned by xhci_decode_ctrl_ctx()
    7c2a317703c6 xhci: make xhci_handshake timeout for xhci_reset() adjustable
    4f2ab7e93b37 xhci: fix runtime PM imbalance in USB2 resume
    75bbc2b9748b xhci: fix garbage USBSTS being logged in some cases
    f5dc00496f76 USB: usb-storage: Fix use of bitfields for hardware data in ene_ub6250.c
    c94138ae4000 usb: typec: tipd: Forward plug orientation to typec subsystem
    662893b4f6bd tpm: fix reference counting for struct tpm_chip
    5a0735b0bcf9 virtio-blk: Use blk_validate_block_size() to validate block size
    8a4521456b54 iommu/iova: Improve 32-bit free space estimate
    fe953e0f77e5 drm/amdgpu: only check for _PR3 on dGPUs
    0884abb259f1 drm/amdgpu: move PX checking into amdgpu_device_ip_early_init
    03f836fcb655 locking/lockdep: Avoid potential access of invalid memory in lock_class
    9f93d46a63d5 selftests: vm: fix clang build error multiple output files
    2ea395dc1327 net: dsa: microchip: add spi_device_id tables
    d06ee4572fd9 af_key: add __GFP_ZERO flag for compose_sadb_supported in function pfkey_register
    f868ffd1ead3 Input: zinitix - do not report shadow fingers
    8745973cdfc6 spi: Fix erroneous sgs value with min_t()
    20f46b12162c Revert "gpio: Revert regression in sysfs-gpio (gpiolib.c)"
    13b570f365b8 net:mcf8390: Use platform_get_irq() to get the interrupt
    526a46a5f479 spi: Fix invalid sgs value
    a28571fcc422 gpio: Revert regression in sysfs-gpio (gpiolib.c)
    cd3121310e33 ethernet: sun: Free the coherent when failing in probing
    afffb79a2dd5 tools/virtio: fix virtio_test execution
    f8f8e96048ad vdpa/mlx5: should verify CTRL_VQ feature exists for MQ
    32aef620e650 virtio_console: break out of buf poll on remove
    3d39860bea5e ARM: mstar: Select HAVE_ARM_ARCH_TIMER
    189bdde30b55 xfrm: fix tunnel model fragmentation behavior
    3a2914bc3e62 HID: Add support for open wheel and no attachment to T300
    a3248ecf0724 HID: logitech-dj: add new lightspeed receiver id
    d5aad7d63b1b hv: utils: add PTP_1588_CLOCK to Kconfig to fix build
    dd84d71bcbcb mm: kfence: fix missing objcg housekeeping for SLAB
    3d7df3f83f67 USB: serial: simple: add Nokia phone driver
    33325a62249e USB: serial: pl2303: fix GS type detection
    1dd64317e785 dt-bindings: usb: hcd: correct usb-device path
    2241e42f6c71 USB: serial: pl2303: add IBM device IDs
    890f78e54b74 Revert "swiotlb: rework "fix info leak with DMA_FROM_DEVICE""
    e29be6724adb Linux 5.15.32
    60981bb5ce18 llc: only change llc->dev when bind() succeeds
    22ac37c53065 nds32: fix access_ok() checks in get/put_user
    110dea31d48f m68k: fix access_ok for coldfire
    cdb96445297b wcn36xx: Differentiate wcn3660 from wcn3620
    476ddd23f818 tpm: use try_get_ops() in tpm-space.c
    12e407a8ef17 mac80211: fix potential double free on mesh join
    e65d28d4e9bf uaccess: fix integer overflow on access_ok()
    058d62a03e7d rcu: Don't deboost before reporting expedited quiescent state
    b094fece3810 drm/virtio: Ensure that objs is not NULL in virtio_gpu_array_put_free()
    5023652cc6e4 Revert "ath: add support for special 0x0 regulatory domain"
    4b6a48f87d03 Bluetooth: btusb: Add one more Bluetooth part for the Realtek RTL8852AE
    cb807cb52a8e crypto: qat - disable registration of algorithms
    57a2b3f8bf1c ACPI: video: Force backlight native for Clevo NL5xRU and NL5xNU
    a01ac2411489 ACPI: battery: Add device HID and quirk for Microsoft Surface Go 3
    8942aac69016 ACPI / x86: Work around broken XSDT on Advantech DAC-BJ01 board
    1bd57dea4561 netfilter: nf_tables: validate registers coming from userspace.
    fafb904156fb netfilter: nf_tables: initialize registers in nft_do_chain()
    3e27eafac659 drivers: net: xgene: Fix regression in CRC stripping
    c2052ad0c74f ALSA: pci: fix reading of swapped values from pcmreg in AC97 codec
    9abaacd6491e ALSA: cmipci: Restore aux vol on suspend/resume
    099a1cc21b16 ALSA: usb-audio: Add mute TLV for playback volumes on RODE NT-USB
    f4827c62b649 ALSA: pcm: Add stream lock during PCM reset ioctl operations
    51fce708ab89 ALSA: pcm: Fix races among concurrent prealloc proc writes
    cb6a39c5ebd0 ALSA: pcm: Fix races among concurrent prepare and hw_params/hw_free calls
    47711ff10c7e ALSA: pcm: Fix races among concurrent read/write and buffer changes
    33061d0fba51 ALSA: pcm: Fix races among concurrent hw_params and hw_free calls
    3b1bacd00ac3 ALSA: hda/realtek: Add quirk for ASUS GA402
    0e7cdc8059a0 ALSA: hda/realtek - Fix headset mic problem for a HP machine with alc671
    8e6ea2176222 ALSA: hda/realtek: Add quirk for Clevo NP50PNJ
    85060f4868db ALSA: hda/realtek: Add quirk for Clevo NP70PNJ
    10cdffd4854a ALSA: usb-audio: add mapping for new Corsair Virtuoso SE
    7a40cbf3579a ALSA: oss: Fix PCM OSS buffer allocation overflow
    5e431799c35b ASoC: sti: Fix deadlock via snd_pcm_stop_xrun() call
    e90729961083 llc: fix netdevice reference leaks in llc_ui_bind()
    5b2ca3b8213a Bluetooth: btusb: Add another Realtek 8761BU
    42b9f6d19faa tpm: Fix error handling in async work
    2317fd3b126c net: ipv6: fix skb_over_panic in __ip6_append_data
    a34c47b1ab07 nfc: st21nfca: Fix potential buffer overflows in EVT_TRANSACTION
    96e48ac9a685 Linux 5.15.31
    4c5d94990fa2 btrfs: skip reserved bytes warning on unmount after log cleanup failure
    23775775b9a6 perf symbols: Fix symbol size calculation condition
    e762f57ff255 Input: aiptek - properly check endpoint type
    0cd2dd4bcf4a scsi: mpt3sas: Page fault in reply q processing
    c69aef9db878 usb: usbtmc: Fix bug in pipe direction for control transfers
    2015c23610cd usb: gadget: Fix use-after-free bug by not setting udc->dev.driver
    56b38e3ca406 usb: gadget: rndis: prevent integer overflow in rndis_set_response()
    222f5e2d7f20 arm64: fix clang warning about TRAMP_VALIAS
    80974bb73027 iavf: Fix hang during reboot/shutdown
    800a17adb531 net: mscc: ocelot: fix backwards compatibility with single-chain tc-flower offload
    2d7cff7e1fee net: bcmgenet: skip invalid partial checksums
    6840fdeab423 bnx2x: fix built-in kernel driver load failure
    f07e0b020f7a net: phy: mscc: Add MODULE_FIRMWARE macros
    e396fda10ddf net: dsa: Add missing of_node_put() in dsa_port_parse_of
    11dab4a800a4 drm: Don't make DRM_PANEL_BRIDGE dependent on DRM_KMS_HELPERS
    a1adf00e1728 net: handle ARPHRD_PIMREG in dev_is_mac_header_xmit()
    8ee52c302191 drm/panel: simple: Fix Innolux G070Y2-L01 BPP settings
    43dcd410809e drm/imx: parallel-display: Remove bus flags check in imx_pd_bridge_atomic_check()
    ab0ab1761831 hv_netvsc: Add check for kvmalloc_array
    735f918cc2c8 iavf: Fix double free in iavf_reset_task
    b2bc45327e8c atm: eni: Add check for dma_map_single
    a055f5f2841f net/packet: fix slab-out-of-bounds access in packet_recvmsg()
    a296f3ae8009 net: phy: marvell: Fix invalid comparison in the resume and suspend functions
    b9820bf09f59 esp6: fix check on ipv6_skip_exthdr's return value
    093f11b49609 vsock: each transport cycles only on its own sockets
    1dcc1b888223 alx: acquire mutex for alx_reinit in alx_change_mtu
    4b49ba22a253 efi: fix return value of __setup handlers
    16ac5dca1e13 drm/mgag200: Fix PLL setup for g200wb and g200ew
    d4ad8736ac98 block: release rq qos structures for queue without disk
    6829aa17ca55 mm: swap: get rid of livelock in swapin readahead
    b786b64dcb31 ocfs2: fix crash when initialize filecheck kobj fails
    ab9337c7cb6f crypto: qcom-rng - ensure buffer for generate is completely filled
    0464ab17184b Linux 5.15.30
    a9bbacc53d1f ice: Fix race condition during interface enslave
    df3817ab226f x86/module: Fix the paravirt vs alternative order
    ff2e93a03f8d kselftest/vm: fix tests build with old libc
    d99db3b935b7 bnx2: Fix an error message
    ff7dfcd47a7e sfc: extend the locking on mcdi->seqno
    ff17119dceef tcp: make tcp_read_sock() more robust
    f5a425f5d5fc nl80211: Update bss channel on channel switch for P2P_CLIENT
    3534c5c005ef drm/vrr: Set VRR capable prop only if it is attached to connector
    46c02c5051aa iwlwifi: don't advertise TWT support
    4051516d4b79 atm: firestream: check the return value of ioremap() in fs_init()
    76e0b8e12c64 can: rcar_canfd: rcar_canfd_channel_probe(): register the CAN device when fully ready
    3679ccc09d88 Bluetooth: hci_core: Fix leaking sent_cmd skb
    c2924e9143c2 ARM: 9178/1: fix unmet dependency on BITREVERSE for HAVE_ARCH_BITREVERSE
    be538b764a46 MIPS: smp: fill in sibling and core maps earlier
    c98afa0db3a3 mac80211: refuse aggregations sessions before authorized
    84ecddbc9888 ARM: dts: rockchip: fix a typo on rk3288 crypto-controller
    8ad1b44f2d2e ARM: dts: rockchip: reorder rk322x hmdi clocks
    4744e1df7268 arm64: dts: agilex: use the compatible "intel,socfpga-agilex-hsotg"
    f5743453365b arm64: dts: rockchip: reorder rk3399 hdmi clocks
    f9a510bb024d arm64: dts: rockchip: align pl330 node name with dtschema
    e90da30175cb arm64: dts: rockchip: fix rk3399-puma eMMC HS400 signal integrity
    0f06f953aac5 xfrm: Fix xfrm migrate issues when address family changes
    e6d7e51e1092 xfrm: Check if_id in xfrm_migrate
    8918ae97417a arm64: dts: rockchip: fix rk3399-puma-haikou USB OTG mode
    e901c9212457 Revert "xfrm: state and policy should fail if XFRMA_IF_ID 0"
    b9a0208cb3e3 Linux 5.15.29
    f83c85ee73df vhost: allow batching hint without size
    caf18e4da9bf Revert "net: dsa: mv88e6xxx: flush switchdev FDB workqueue before removing VLAN"
    69b80587f650 block: drop unused includes in <linux/genhd.h>
    cd072bf2dcbd riscv: dts: k210: fix broken IRQs on hart1
    074c88751dc1 drm/i915: Workaround broken BIOS DBUF configuration on TGL/RKL
    a1ce40f8aeb1 btrfs: make send work with concurrent block group relocation
    342783ba9c3c drm/panel: Select DRM_DP_HELPER for DRM_PANEL_EDP
    1fbafa9a5b42 x86/traps: Mark do_int3() NOKPROBE_SYMBOL
    ce91f0f023ad x86/sgx: Free backing memory after faulting the enclave page
    e946556d3665 x86/boot: Add setup_indirect support in early_memremap_is_setup_data()
    19503d381aab x86/boot: Fix memremap of setup_indirect structures
    ffb8fd39c84c watch_queue: Make comment about setting ->defunct more accurate
    eb38c2e9fc74 watch_queue: Fix lack of barrier/sync/lock between post and read
    82ff8a2243f7 watch_queue: Free the alloc bitmap when the watch_queue is torn down
    d453d0e5a15d watch_queue: Fix the alloc bitmap size to reflect notes allocated
    b022b6a0586f watch_queue: Fix to always request a pow-of-2 pipe ring size
    ccd03c30f103 watch_queue: Fix to release page in ->release()
    8275b6699c6d watch_queue, pipe: Free watchqueue state after clearing pipe ring
    1b09f28f70a5 watch_queue: Fix filter limit check
    52445030f135 ARM: fix Thumb2 regression with Spectre BHB
    4a8e7f9dae4a net/mlx5: Fix offloading with ESWITCH_IPV4_TTL_MODIFY_ENABLE
    cbb726e6c652 virtio: acknowledge all features before access
    22823b1a0dc9 virtio: unexport virtio_finalize_features
    a633bc013333 KVM: x86/mmu: kvm_faultin_pfn has to return false if pfh is returned
    2c1f97af38be swiotlb: rework "fix info leak with DMA_FROM_DEVICE"
    0349c79c5508 arm64: kasan: fix include error in MTE functions
    61d32defc00f arm64: Ensure execute-only permissions are not allowed without EPAN
    72ea28d88d30 arm64: dts: marvell: armada-37xx: Remap IO space to bus address 0x0
    42aaf726c9e9 tracing/osnoise: Force quiescent states while tracing
    eae073d854c5 riscv: Fix auipc+jalr relocation range checks
    b515552d41ee mmc: meson: Fix usage of meson_mmc_post_req()
    9b3cdf5e8ad9 riscv: alternative only works on !XIP_KERNEL
    b5e792187f50 net: macb: Fix lost RX packet wakeup race in NAPI receive
    1fb9dd378749 staging: gdm724x: fix use after free in gdm_lte_rx()
    441bc1e3d7e0 staging: rtl8723bs: Fix access-point mode deadlock
    ca62747b38f5 fuse: fix pipe buffer lifetime for direct_io
    d60d34b4d6d1 fuse: fix fileattr op failure
    64147ce85e2f ARM: Spectre-BHB: provide empty stub for non-config
    5c237251421d selftests/memfd: clean up mapping in mfd_fail_write
    e22807ee679f selftest/vm: fix map_fixed_noreplace test failure
    9d95b7e239a1 tracing/osnoise: Make osnoise_main to sleep for microseconds
    4d2889691570 tracing: Ensure trace buffer is at least 4096 bytes large
    041616a22c40 ipv6: prevent a possible race condition with lifetimes
    2708ceb4e5cc Revert "xen-netback: Check for hotplug-status existence before watching"
    fe39ab30dcc2 Revert "xen-netback: remove 'hotplug-status' once it has served its purpose"
    fcd1d79aa943 drm/amdgpu: bypass tiling flag check in virtual display case (v2)
    5cf4dd01efe0 gpio: Return EPROBE_DEFER if gc->to_irq is NULL
    94b568a9d2a5 PCI: Mark all AMD Navi10 and Navi14 GPU ATS as broken
    bb9795b6da22 hwmon: (pmbus) Clear pmbus fault/warning bits after read
    8d5e69d8fbf3 net-sysfs: add check for netdevice being present to speed_show
    1280c8ae9745 x86/kvm: Don't use pv tlb/ipi/sched_yield if on 1 vCPU
    ee22082c3e2f drm/vc4: hdmi: Unregister codec device on unbind
    5bef4e5089d3 spi: rockchip: terminate dma transmission when slave abort
    1f04bbd2935c spi: rockchip: Fix error in getting num-cs property
    bcd4279b989f kvm: x86: Disable KVM_HC_CLOCK_PAIRING if tsc is in always catchup mode
    e160ee96d03f KVM: Fix lockdep false negative during host resume
    302ce2946160 pinctrl: tigerlake: Revert "Add Alder Lake-M ACPI ID"
    839ddf786772 usb: dwc3: pci: add support for the Intel Raptor Lake-S
    7403f4118ab9 swiotlb: fix info leak with DMA_FROM_DEVICE
    b0028e1cc1fa selftests/bpf: Add test for bpf_timer overwriting crash
    732c7172b79c net: phy: meson-gxl: improve link-up behavior
    6c0d2f348be2 net: bcmgenet: Don't claim WOL when its not available
    1502f15b9f29 sctp: fix kernel-infoleak for SCTP sockets
    9ca50a73c98c net: phy: DP83822: clear MISR2 register to disable interrupts
    f49f646f9ec2 gianfar: ethtool: Fix refcount leak in gfar_get_ts_info
    c7f6accc6795 gpio: ts4900: Do not set DAT and OE together
    c614aad2ee9e selftests: pmtu.sh: Kill nettest processes launched in subshell.
    d4dfc94c4052 selftests: pmtu.sh: Kill tcpdump processes launched by subshell.
    0e721b8f2ee5 NFC: port100: fix use-after-free in port100_send_complete
    a2355333cf18 net/mlx5e: Lag, Only handle events from highest priority multipath entry
    7c519f769f55 net/mlx5: Fix a race on command flush flow
    b3d4a7dcb9ca net/mlx5: Fix size field in bufferx_reg struct
    46ad629e58ce ax25: Fix NULL pointer dereference in ax25_kill_by_device
    b7c2fd1d1263 net: marvell: prestera: Add missing of_node_put() in prestera_switch_set_base_mac_addr
    6e294d389023 net: ethernet: lpc_eth: Handle error for clk_enable
    c746fa0f54c9 net: ethernet: ti: cpts: Handle error for clk_enable
    5548c81e97ab tipc: fix incorrect order of state message data sanity check
    5e7c402892e1 ethernet: Fix error handling in xemaclite_of_probe
    06a97a7afa05 ice: Fix curr_link_speed advertised speed
    fd0ca20f1846 ice: Don't use GFP_KERNEL in atomic context
    15d1271d89b8 ice: Fix error with handling of bonding MTU
    9bda6a09e7ef ice: stop disabling VFs due to PF error responses
    49839cb40d6c i40e: stop disabling VFs due to PF error responses
    35f11aba74e2 iavf: Fix handling of vlan strip virtual channel messages
    0716607ad241 ARM: dts: aspeed: Fix AST2600 quad spi group
    9c0686caa822 net: dsa: mt7530: fix incorrect test in mt753x_phylink_validate()
    f9ec15fc3c48 drm/sun4i: mixer: Fix P010 and P210 format numbers
    c5883d38a470 gpiolib: acpi: Convert ACPI value of debounce to microseconds
    c014efbd1c28 smsc95xx: Ignore -ENODEV errors when device is unplugged
    3acc8788febf qed: return status of qed_iov_get_link
    e5d078d21fa0 esp: Fix BEET mode inter address family tunneling on GSO
    4aaabbffc3b0 esp: Fix possible buffer overflow in ESP transformation
    4dfa7d3508bf net: qlogic: check the return value of dma_alloc_coherent() in qed_vf_hw_prepare()
    92d97017c67c isdn: hfcpci: check the return value of dma_set_mask() in setup_hw()
    4b1743bc715a vdpa: fix use-after-free on vp_vdpa_remove
    8848b0fa9bf1 virtio-blk: Don't use MAX_DISCARD_SEGMENTS if max_discard_seg is zero
    f8d88e86e90e vhost: fix hung thread due to erroneous iotlb entries
    7777b1f795af mISDN: Fix memory leak in dsp_pipeline_build()
    20145e05e497 net: phy: meson-gxl: fix interrupt handling in forced mode
    90a2f4fc5b23 vduse: Fix returning wrong type in vduse_domain_alloc_iova()
    e7e118416465 vdpa/mlx5: add validation for VIRTIO_NET_CTRL_MQ_VQ_PAIRS_SET command
    f96dc3adb9a9 tipc: fix kernel panic when enabling bearer
    0a99594d2058 arm64: dts: armada-3720-turris-mox: Add missing ethernet0 alias
    e52ecbca254b HID: vivaldi: fix sysfs attributes leak
    ea45b38caf2b clk: qcom: dispcc: Update the transition delay for MDSS GDSC
    ba24eb3cc95c clk: qcom: gdsc: Add support to update GDSC transition delay
    b6c624d07bf2 ARM: boot: dts: bcm2711: Fix HVS register range
    3ffbe85cda7f HID: hid-thrustmaster: fix OOB read in thrustmaster_interrupts
    a5334502f91f HID: elo: Revert USB reference counting
    af4fcf85c88d arm64: dts: qcom: sm8350: Correct UFS symbol clocks
    8fa52df84c58 arm64: dts: qcom: sm8350: Describe GCC dependency clocks
    aa79753319d8 Linux 5.15.28
    39d332de8edb Revert "ACPI: PM: s2idle: Cancel wakeup before dispatching EC GPE"
    dea18aef2021 xen/netfront: react properly to failing gnttab_end_foreign_access_ref()
    27dc69aa5568 xen/gnttab: fix gnttab_end_foreign_access() without page specified
    5bff1721c8f9 xen/pvcalls: use alloc/free_pages_exact()
    a019d26830e8 xen/9p: use alloc/free_pages_exact()
    90c5f198b923 xen: remove gnttab_query_foreign_access()
    f06e3edaeac1 xen/gntalloc: don't use gnttab_query_foreign_access()
    f1c85942314d xen/scsifront: don't use gnttab_query_foreign_access() for mapped status
    5d5fa1d53a31 xen/netfront: don't use gnttab_query_foreign_access() for mapped status
    f9ade968df79 xen/blkfront: don't use gnttab_query_foreign_access() for mapped status
    1dd5b4b230f6 xen/grant-table: add gnttab_try_end_foreign_access()
    66cb2bbb522b xen/xenbus: don't let xenbus_grant_ring() remove grants in error case
    2b2d2a8ba2e9 ARM: fix build warning in proc-v7-bugs.c
    8836a046ef41 arm64: Do not include __READ_ONCE() block in assembly files
    431b92c3c25e ARM: Do not use NOCROSSREFS directive with ld.lld
    57a65667fbdc ARM: fix co-processor register typo
    49062ec32e79 ARM: fix build error when BPF_SYSCALL is disabled
    3317d21b84e9 arm64: proton-pack: Include unprivileged eBPF status in Spectre v2 mitigation reporting
    8979720ac64c arm64: Use the clearbhb instruction in mitigations
    fb2bb2ec137c KVM: arm64: Allow SMCCC_ARCH_WORKAROUND_3 to be discovered and migrated
    4bbfd0c28025 arm64: Mitigate spectre style branch history side channels
    8e55b9b0e765 arm64: proton-pack: Report Spectre-BHB vulnerabilities as part of Spectre-v2
    d7066114dcd6 arm64: Add percpu vectors for EL1
    cfd0c38125aa arm64: entry: Add macro for reading symbol addresses from the trampoline
    50e700a11766 arm64: entry: Add vectors that have the bhb mitigation sequences
    ffb8a34c0fd8 arm64: entry: Add non-kpti __bp_harden_el1_vectors for mitigations
    517f988ee050 arm64: entry: Allow the trampoline text to occupy multiple pages
    6895584a92ee arm64: entry: Make the kpti trampoline's kpti sequence optional
    a40472d463f9 arm64: entry: Move trampoline macros out of ifdef'd section
    be9c5526aad6 arm64: entry: Don't assume tramp_vectors is the start of the vectors
    2e09754a03a7 arm64: entry: Allow tramp_alias to access symbols after the 4K boundary
    e25a9dced2bd arm64: entry: Move the trampoline data page before the text page
    4a691bbf56a1 arm64: entry: Free up another register on kpti's tramp_exit path
    479c9bb741bf arm64: entry: Make the trampoline cleanup optional
    368a1fd8c4a6 KVM: arm64: Allow indirect vectors to be used without SPECTRE_V3A
    44adac5908ff arm64: spectre: Rename spectre_v4_patch_fw_mitigation_conduit
    b7beeab84f02 arm64: entry.S: Add ventry overflow sanity checks
    e38b3c0d245b arm64: cpufeature: add HWCAP for FEAT_RPRES
    a4c234f60269 arm64: cpufeature: add HWCAP for FEAT_AFP
    912961e188dc arm64: add ID_AA64ISAR2_EL1 sys register
    ac7bc62b78de arm64: Add Cortex-X2 CPU part definition
    f0c559c38e98 arm64: Add HWCAP for self-synchronising virtual counter
    d82f489cbbdb arm64: Add Neoverse-N2, Cortex-A710 CPU part definition
    842f2d498ee1 ARM: include unprivileged BPF status in Spectre V2 reporting
    576548846f1e ARM: Spectre-BHB workaround
    2dca61693e6c ARM: use LOADADDR() to get load address of sections
    878ad97f745e ARM: early traps initialisation
    f02cab2bed1a ARM: report Spectre v2 status through sysfs
    bf048d1921b6 x86/speculation: Warn about eIBRS + LFENCE + Unprivileged eBPF + SMT
    074d72604639 x86/speculation: Warn about Spectre v2 LFENCE mitigation
    36fbbd78471c x86/speculation: Update link to AMD speculation whitepaper
    a56566d7a957 x86/speculation: Use generic retpoline by default on AMD
    316e4a16524a x86/speculation: Include unprivileged eBPF status in Spectre v2 mitigation reporting
    eb4596417756 Documentation/hw-vuln: Update spectre doc
    d7771f380c90 x86/speculation: Add eIBRS + Retpoline options
    f150b6fccf7f x86/speculation: Rename RETPOLINE_AMD to RETPOLINE_LFENCE
    e94d490a1ad6 x86,bugs: Unconditionally allow spectre_v2=retpoline,amd
    668c821321b4 slip: fix macro redefine warning
    efe3167e52a5 Linux 5.15.27
    ea2bc310250d hamradio: fix macro redefine warning
    8998aa676205 KVM: x86/mmu: Passing up the error state of mmu_alloc_shadow_roots()
    416e3a0e4276 proc: fix documentation and description of pagemap
    8b893496892e Revert "xfrm: xfrm_state_mtu should return at least 1280 for ipv6"
    6599d5e8bd75 btrfs: do not start relocation until in progress drops are done
    4aef4c900597 btrfs: add missing run of delayed items after unlink during log replay
    34146bbadcdd btrfs: qgroup: fix deadlock between rescan worker and remove qgroup
    e00077aa439f btrfs: do not WARN_ON() if we have PageError set
    725a6ac389b1 btrfs: fix relocation crash due to premature return from btrfs_commit_transaction()
    5342e9f3dac0 btrfs: fix lost prealloc extents beyond eof after full fsync
    80660a726d47 tracing: Fix return value of __setup handlers
    452f64ee0940 tracing/histogram: Fix sorting on old "cpu" value
    aa6d3eef28f3 HID: add mapping for KEY_ALL_APPLICATIONS
    b355d6a14ba7 HID: add mapping for KEY_DICTATE
    74e9545d9e25 Input: samsung-keypad - properly state IOMEM dependency
    cb19f03e5f65 Input: elan_i2c - fix regulator enable count imbalance after suspend/resume
    f74fc94691f0 Input: elan_i2c - move regulator_[en|dis]able() out of elan_[en|dis]able_power()
    7a1ee9934b14 MAINTAINERS: adjust file entry for of_net.c after movement
    7626ab3a3897 iavf: missing unlocks in iavf_watchdog_task()
    d784113217f9 iavf: do not override the adapter state in the watchdog task (again)
    d61f3737c559 net: stmmac: perserve TX and RX coalesce value during XDP setup
    d666d3363845 selftests: mlxsw: resource_scale: Fix return value
    6fe3127d3af1 net: dcb: disable softirqs in dcbnl_flush_dev()
    46eed3a37dee drm/amdgpu: fix suspend/resume hang regression
    a1e603e5f3b2 nl80211: Handle nla_memdup failures in handle_nan_filter
    a30496660634 MIPS: ralink: mt7621: use bitwise NOT instead of logical
    68c4fe2ef0bf e1000e: Fix possible HW unit hang after an s0ix exit
    9dfe6abc6c13 drm/bridge: ti-sn65dsi86: Properly undo autosuspend
    d675c05b792e drm/i915/guc/slpc: Correct the param count for unset param
    6f62bc0fc12b iavf: Fix __IAVF_RESETTING state usage
    598bc8955916 iavf: Fix race in init state
    ddc5db0bcfa2 iavf: Fix locking for VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS
    8c0e4da63385 iavf: Fix init state closure on remove
    85aa76066fef iavf: Add waiting so the port is initialized in remove
    e734c794dea3 iavf: Fix kernel BUG in free_msi_irqs
    200366d1a583 iavf: Add helper function to go from pci_dev to adapter
    23901462c301 iavf: Rework mutexes for better synchronisation
    9fedc4f86ee3 iavf: Add trace while removing device
    b4e0e00a361d iavf: Combine init and watchdog state machines
    57d2f0db2e63 iavf: Add __IAVF_INIT_FAILED state
    7e2d102501e1 iavf: Refactor iavf state machine tracking
    f8ce435f2c81 net: sparx5: Fix add vlan when invalid operation
    50948cea504c net: chelsio: cxgb3: check the return value of pci_find_capability()
    ea3d3c36a4fa ibmvnic: complete init_done on transport events
    13e3b51ffaf8 ibmvnic: define flush_reset_queue helper
    046d933c1b74 ibmvnic: initialize rc before completing wait
    bb20939bc8d1 net: stmmac: only enable DMA interrupts when ready
    e753b639363d net: stmmac: enhance XDP ZC driver level switching performance
    8cdac518eac7 can: etas_es58x: change opened_channel_cnt's type from atomic_t to u8
    04746dbd9593 ARM: tegra: Move panels to AUX bus
    9920d99cc89a netfilter: nf_tables: prefer kfree_rcu(ptr, rcu) variant
    4ed52fbeb967 soc: fsl: qe: Check of ioremap return value
    c2266d20251c soc: fsl: guts: Add a missing memory allocation failure check
    20ff0ff315cd soc: fsl: guts: Revert commit 3c0d64e867ed
    40d763efa5bf ARM: dts: Use 32KiHz oscillator on devkit8000
    50bce7f03e8c ARM: dts: switch timer config to common devkit8000 devicetree
    af143626eb85 MIPS: ralink: mt7621: do memory detection on KSEG1
    378e2fe1eb58 iommu/amd: Fix I/O page table memory leak
    f6cabb721c5b arm64: dts: juno: Remove GICv2m dma-range
    3411613611a5 sched: Fix yet more sched_fork() races
    3d76a995f646 s390/extable: fix exception table sorting
    b7c35587be23 memfd: fix F_SEAL_WRITE after shmem huge page allocated
    39738a2346b2 ibmvnic: free reset-work-item when flushing
    d4706de93cf7 igc: igc_write_phy_reg_gpy: drop premature return
    896d1b8a3612 pinctrl: sunxi: Use unique lockdep classes for IRQs
    09423ff81601 selftests: mlxsw: tc_police_scale: Make test more robust
    0c3f34beb459 mptcp: Correctly set DATA_FIN timeout when number of retransmits is large
    d7a4b54f4fc5 ARM: 9182/1: mmu: fix returns from early_param() and __setup() functions
    a664bd7a0084 mips: setup: fix setnocoherentio() boolean setting
    f14a0244b1ba ARM: Fix kgdb breakpoint for Thumb2
    c9cfcdd111d7 igc: igc_read_phy_reg_gpy: drop premature return
    7c1db4a30e29 arm64: dts: rockchip: Switch RK3399-Gru DP to SPDIF output
    6be5b626bec1 iommu/tegra-smmu: Fix missing put_device() call in tegra_smmu_find
    2b04bb51a9c1 can: gs_usb: change active_channels's type from atomic_t to u8
    b6149efc57bf auxdisplay: lcd2s: Use proper API to free the instance of charlcd object
    5d53cd33f425 auxdisplay: lcd2s: Fix memory leak in ->remove()
    6d6c139d1e2d ASoC: cs4265: Fix the duplicated control name
    d442f20e6daf firmware: arm_scmi: Remove space in MODULE_ALIAS name
    f9c3aa939c41 auxdisplay: lcd2s: Fix lcd2s_redefine_char() feature
    4efa386ef9e1 efivars: Respect "block" flag in efivar_entry_set_safe()
    61a303971c3c iavf: Fix deadlock in iavf_reset_task
    366f785bbba4 ixgbe: xsk: change !netif_carrier_ok() handling in ixgbe_xmit_zc()
    ea372aab5490 net: arcnet: com20020: Fix null-ptr-deref in com20020pci_probe()
    1c09774e5ea1 ibmvnic: register netdev after init of adapter
    f58ead21dd6a net: sxgbe: fix return value of __setup handler
    23a6be260d56 iavf: Fix missing check for running netdev
    a83ebad95542 mac80211: treat some SAE auth steps as final
    b85dd0d7a503 net: stmmac: fix return value of __setup handler
    828f75c24ab8 mac80211: fix forwarded mesh frames AC & queue selection
    5afd80c393f4 btrfs: fix ENOSPC failure when attempting direct IO write into NOCOW range
    15cbeeaada70 net/smc: fix unexpected SMC_CLC_DECL_ERR_REGRMB error cause by server
    21922d9cde88 net/smc: fix unexpected SMC_CLC_DECL_ERR_REGRMB error generated by client
    80895b6f9154 net/smc: fix connection leak
    a559e0598ce6 net: ipa: add an interconnect dependency
    4daaf8816d60 net: dcb: flush lingering app table entries for unregistered devices
    b11781515208 net: ipv6: ensure we call ipv6_mc_down() at most once
    24e49e17cbfc batman-adv: Don't expect inter-netns unique iflink indices
    94355d99ad70 batman-adv: Request iflink once in batadv_get_real_netdevice
    58ea33965a6f batman-adv: Request iflink once in batadv-on-batadv check
    216f3cb587e0 netfilter: nf_queue: handle socket prefetch
    dd648bd1b33a netfilter: nf_queue: fix possible use-after-free
    63291e95e8ae netfilter: nf_queue: don't assume sk is full socket
    3a65b82b1ef2 net: fix up skbs delta_truesize in UDP GRO frag_list
    a47e7ac8851c e1000e: Correct NVM checksum verification flow
    4020d2e14f13 xfrm: enforce validity of offload input flags
    ce0d6bf33c35 xfrm: fix the if_id check in changelink
    00c74b587197 bpf, sockmap: Do not ignore orig_len parameter
    bd61f192a339 netfilter: fix use-after-free in __nf_register_net_hook()
    75cbedd33343 xfrm: fix MTU regression
    261eff11ade9 mm: Consider __GFP_NOWARN flag for oversized kvmalloc() calls
    5d7c23d39660 ntb: intel: fix port config status offset for SPR
    78acc7dbd84a blktrace: fix use after free for struct blk_trace
    5f298bf7f337 mac80211: fix EAPoL rekey fail in 802.3 rx path
    3dafbf915c05 thermal: core: Fix TZ_GET_TRIP NULL pointer dereference
    a63eb1e4a2e1 xen/netfront: destroy queues before real_num_tx_queues is zeroed
    dab06be16184 drm/amd/display: Reduce dmesg error to a debug print
    7508ac360d1e drm/i915: s/JSP2/ICP2/ PCH
    a8a86631f4ce iommu/amd: Recover from event log overflow
    2aaa085bd012 iommu/vt-d: Fix double list_add when enabling VMD in scalable mode
    050b1821f27c ASoC: ops: Shift tested values in snd_soc_put_volsw() by +min
    7de1ed755e1a iwlwifi: mvm: check debugfs_dir ptr before use
    728fb555882b riscv: Fix config KASAN && DEBUG_VIRTUAL
    08b22e3f150e riscv: Fix config KASAN && SPARSEMEM && !SPARSE_VMEMMAP
    e64d6a689ec5 riscv/efi_stub: Fix get_boot_hartid_from_fdt() return value
    6c3d4da8e7a9 ucounts: Fix systemd LimitNPROC with private users regression
    3eb418122d12 ALSA: intel_hdmi: Fix reference to PCM buffer address
    9285523b4174 net: of: fix stub of_net helpers for CONFIG_NET=n
    dc75d7968901 PCI: mvebu: Fix device enumeration regression
    35afd8ae1184 drm/amd/display: For vblank_disable_immediate, check PSR is really used
    5f283e64a850 bnxt_en: Fix occasional ethtool -t loopback test failures
    10dd26349edf drm/amd/display: Fix stream->link_enc unassigned during stream removal
    aa280c04da1b cifs: fix confusing unneeded warning message on smb2.1 and earlier
    3d74c2c917e4 cifs: protect session channel fields with chan_lock
    2594dba1cd79 drm/mediatek: mtk_dsi: Reset the dsi0 hardware
    f510d6463949 net: ethernet: litex: Add the dependency on HAS_IOMEM
    3a3aa0881aeb of: net: move of_net under net/
    960dfaf3b578 ibmvnic: don't release napi in __ibmvnic_open()
    1d13e7221035 net: dsa: seville: register the mdiobus under devres
    8bfa27186e29 net: dsa: ocelot: seville: utilize of_mdiobus_register
    68c8e6d16f57 gve: Recording rx queue before sending to napi
    5c66161cceaa drm/i915: Disable DRRS on IVB/HSW port != A
    e2b3d1bf6ec3 drm/i915/display: Move DRRS code its own file
    23eb29281f1e drm/i915/display: split out dpt out of intel_display.c
    fbf6d5f8eef7 riscv/mm: Add XIP_FIXUP for phys_ram_base
    86a337bb8030 drm: mxsfb: Fix NULL pointer dereference
    9bbeba67bbbd drm: mxsfb: Set fallback bus format when the bridge doesn't provide one
    ed4488d8307f drm/amd/display: Update watermark values for DCN301
    07058fb18df8 bpf: Fix possible race in inc_misses_counter
    aa5040691cb7 bpf: Use u64_stats_t in struct bpf_prog_stats
    82a82ad92746 net/mlx5e: IPsec: Fix crypto offload for non TCP/UDP encapsulated traffic
    748438b4e62c net/mlx5e: IPsec: Refactor checksum code in tx data path
    f1c0163bb824 octeontx2-af: Add KPU changes to parse NGIO as separate layer
    63138001c961 octeontx2-af: Adjust LA pointer for cpt parse header
    ab3380a844aa octeontx2-af: cn10k: Use appropriate register for LMAC enable
    fe3eafea3907 octeontx2-af: cn10k: RPM hardware timestamp configuration
    ef33ae74bb9c octeontx2-af: Reset PTP config in FLR handler
    75279de4e392 octeontx2-af: Optimize KPU1 processing for variable-length headers
    462c5e6cb241 ethtool: Fix link extended state for big endian
    27e01f10d183 drm/amd/display: move FPU associated DSC code to DML folder
    691c0030be65 drm/amd/display: Use adjusted DCN301 watermarks
    2157e509e5b2 drm/amdgpu: filter out radeon secondary ids as well
    f724a438d986 drm/amdgpu: filter out radeon PCI device IDs
    48cf33ee6b04 drm/amdgpu/display: Only set vblank_disable_immediate when PSR is not enabled
    3f20cf3cd43f hugetlbfs: fix off-by-one error in hugetlb_vmdelete_list()
    e9737301f0df selftests/vm: make charge_reserved_hugetlb.sh work with existing cgroup setting
    1123c2fb9dc3 kasan: fix quarantine conflicting with init_on_free
    f1675103e0f3 mm: defer kmemleak object creation of module_alloc()
    013c2af6c15c tracing/probes: check the return value of kstrndup() for pbuf
    8a20fed48eb4 tracing/uprobes: Check the return value of kstrdup() for tu->filename
    1a62246c2c60 dma-buf: cma_heap: Fix mutex locking section
    8654464086a1 i3c: master: dw: check return of dw_i3c_master_get_free_pos()
    a80b13642a10 drm/amdgpu: use spin_lock_irqsave to avoid deadlock by local interrupt
    5609b7803947 drm/amdkfd: Check for null pointer after calling kmemdup
    950d17f190a4 ntb_hw_switchtec: Fix bug with more than 32 partitions
    377cbdc92716 ntb_hw_switchtec: Fix pff ioread to read into mmio_part_cfg_all
    cd07b19fbf37 drm/atomic: Check new_crtc_state->active to determine if CRTC needs disable in self refresh mode
    1796d5350cb4 drm/sun4i: dw-hdmi: Fix missing put_device() call in sun8i_hdmi_phy_get
    e209742c13d2 SUNRPC: Fix sockaddr handling in svcsock_accept_class trace points
    bdaa8c7b7189 SUNRPC: Fix sockaddr handling in the svc_xprt_create_error trace point
    d3f67ceaeb3f drm/i915: don't call free_mmap_offset when purging
    e47679c06afc x86/hyperv: Properly deal with empty cpumasks in hyperv_flush_tlb_multi()
    4425ca3677a6 nfsd: fix crash on COPY_NOTIFY with special stateid
    0f84cfb465af Revert "nfsd: skip some unnecessary stats in the v4 case"
    3abe2a70f5b4 NFSD: Fix verifier returned in stable WRITEs
    e7c433270307 PCI: mvebu: Fix support for DEVCAP2, DEVCTL2 and LNKCTL2 registers on emulated bridge
    a24745673304 PCI: mvebu: Fix support for PCI_EXP_RTSTA on emulated bridge
    1d4200e28436 PCI: mvebu: Fix support for PCI_EXP_DEVCTL on emulated bridge
    1ea3f69784ed PCI: mvebu: Fix support for PCI_BRIDGE_CTL_BUS_RESET on emulated bridge
    9c91c755005b PCI: mvebu: Setup PCIe controller to Root Complex mode
    3d394fa375f4 PCI: mvebu: Fix configuring secondary bus of PCIe Root Port via emulated bridge
    4396c507a8f8 PCI: mvebu: Fix support for bus mastering and PCI_COMMAND on emulated bridge
    bc988b126134 PCI: mvebu: Do not modify PCI IO type bits in conf_write
    c1a027629c36 PCI: mvebu: Check for errors from pci_bridge_emul_init() call
    7c93c809e00a Input: ti_am335x_tsc - fix STEPCONFIG setup for Z2
    16ff93557d1e Input: ti_am335x_tsc - set ADCREFM for X configuration
    628761fe0588 tracing: Do not let synth_events block other dyn_event systems during create
    f35bacbb795a i3c/master/mipi-i3c-hci: Fix a potentially infinite loop in 'hci_dat_v1_get_index()'
    e5264d44f732 i3c: fix incorrect address slot lookup on 64-bit
    1adfbfaeb20d KVM: x86: Exit to userspace if emulation prepared a completion callback
    3d8468045e39 KVM: x86: Handle 32-bit wrap of EIP for EMULTYPE_SKIP with flat code seg
    00542cbacf22 KVM: X86: Ensure that dirty PDPTRs are loaded
    723053e16d55 KVM: VMX: Read Posted Interrupt "control" exactly once per loop iteration
    32b758d12c24 KVM: s390: Ensure kvm_arch_no_poll() is read once when blocking vCPU
    b63190d0203f KVM: VMX: Don't unblock vCPU w/ Posted IRQ if IRQs are disabled in guest
    f303196899f1 PCI: aardvark: Fix checking for MEM resource type
    a2f5e9a6f2a0 PCI: dwc: Do not remap invalid res
    d9fc43aab60d PCI: rcar: Check if device is runtime suspended instead of __clk_is_enabled()
    aa805236ed97 PCI: mediatek-gen3: Disable DVFSRC voltage request
    7f361266e981 signal: In get_signal test for signal_group_exit every time through the loop
    f98371d2ac83 MIPS: fix local_{add,sub}_return on MIPS64
    64b487be33b7 mtd: spi-nor: Fix mtd size for s3an flashes
    83ef63535a8a tools/resolve_btf_ids: Close ELF file on error
    1bd12b7aaee0 io_uring: fix no lock protection for ctx->cq_extra
    384d1b11382b NFSD: Fix zero-length NFSv3 WRITEs
    2de88544b3db NFSD: Have legacy NFSD WRITE decoders use xdr_stream_subsegment()
    771aca9bc707 ipv6: fix skb drops in igmp6_event_query() and igmp6_event_report()
    33e22b6c53d0 tracing: Add ustring operation to filtering string pointers
    a9c6e02d223e drm/amdgpu: check vm ready by amdgpu_vm->evicting flag
    b2a3068d5f15 ata: pata_hpt37x: fix PCI clock detection
    e0bcd6b57793 sched/fair: Fix fault in reweight_entity
    6f6ffc717b85 ext4: fast commit may miss file actions
    97abcfedc87c ext4: fast commit may not fallback for ineligible commit
    647b3f1533f4 ext4: simplify updating of fast commit stats
    5abb1d84b6db ext4: drop ineligible txn start stop APIs
    82a99bc85c0e serial: stm32: prevent TDR register overwrite when sending x_char
    1921d1fd0e60 arm64: Mark start_backtrace() notrace and NOKPROBE_SYMBOL
    60e6d58ef921 tracing: Add test for user space strings when filtering on string pointers
    c9f727219f3e exfat: fix i_blocks for files truncated over 4 GiB
    1ffc130388c5 exfat: reuse exfat_inode_info variable instead of calling EXFAT_I()
    ab3656acb7b4 usb: gadget: clear related members when goto fail
    07de9a494b5a usb: gadget: don't release an existing dev->buf
    a1ba98731518 block-map: add __GFP_ZERO flag for alloc_page in function bio_copy_kern
    1148adac7781 net: usb: cdc_mbim: avoid altsetting toggling for Telit FN990
    f6fbf18d156c i2c: qup: allow COMPILE_TEST
    d65d187b51b6 i2c: imx: allow COMPILE_TEST
    d2327116861c i2c: cadence: allow COMPILE_TEST
    7b22f63b933f dmaengine: shdma: Fix runtime PM imbalance on error
    7d0214c38dca selftests/ftrace: Do not trace do_softirq because of PREEMPT_RT
    4543426cd7b8 drm/amd/pm: correct UMD pstate clocks for Dimgrey Cavefish and Beige Goby
    b628fffce58a selftests/seccomp: Fix seccomp failure by adding missing headers
    54e7951a1988 cifs: modefromsids must add an ACE for authenticated users
    18a9d6b18c2b HID: amd_sfh: Add interrupt handler to process interrupts
    852b6b0411e6 HID: amd_sfh: Add functionality to clear interrupts
    8ba9a2e72584 HID: amd_sfh: Handle amd_sfh work buffer in PM ops
    546d60859ecf cifs: fix double free race when mount fails in cifs_get_root()
    ccf46cb68859 cifs: do not use uninitialized data in the owner/group sid
    5340a0924ea9 tipc: fix a bit overflow in tipc_crypto_key_rcv()
    1ccc12f2240a block: loop:use kstatfs.f_bsize of backing file to set discard granularity
    8694330db9b0 KVM: arm64: vgic: Read HW interrupt pending state from the HW
    850a77c999b8 btrfs: get rid of warning on transaction commit when using flushoncommit
    6279c5263ded Input: clear BTN_RIGHT/MIDDLE on buttonpads
    700485846e12 regulator: core: fix false positive in regulator_late_cleanup()
    fd64f8bc0644 ASoC: rt5682: do not block workqueue if card is unbound
    4235a04ad401 ASoC: rt5668: do not block workqueue if card is unbound
    2ed390555dbc i2c: bcm2835: Avoid clock stretching timeouts
    e03ad1915ccc mac80211_hwsim: initialize ieee80211_tx_info at hw_scan_work
    2d27a2bd381f mac80211_hwsim: report NOACK frames in tx_status
    8993e6067f26 Linux 5.15.26
    3c805fce07c9 ice: fix concurrent reset and removal of VFs
    26bc7197f9d3 ice: Fix race conditions between virtchnl handling and VF ndo ops
    fd21a0b6da94 memblock: use kfree() to release kmalloced memblock regions
    83f331d1debb gpio: tegra186: Fix chip_data type confusion
    a15769155440 pinctrl: k210: Fix bias-pull-up
    e3a751ee48f9 pinctrl: fix loop in k210_pinconf_get_drive()
    92cab57ea6d7 tty: n_gsm: fix deadlock in gsmtty_open()
    06bce5327b76 tty: n_gsm: fix wrong modem processing in convergence layer type 2
    1bc6f3b19bc6 tty: n_gsm: fix wrong tty control line for flow control
    50cacb783bb3 tty: n_gsm: fix NULL pointer access due to DLCI release
    519d0b389c10 tty: n_gsm: fix proper link termination after failed open
    4f0ab1c8a5a6 tty: n_gsm: fix encoding of control signal octet bit DV
    1851b9a46706 riscv: fix oops caused by irqsoff latency tracer
    e0ff4dffded5 riscv: fix nommu_k210_sdcard_defconfig
    72aa720acacf IB/qib: Fix duplicate sysfs directory name
    7a7e1b3aeef7 tps6598x: clear int mask on probe failure
    bde6a6b111b9 staging: fbtft: fb_st7789v: reset display before initialization
    ba9efbbf6745 thermal: int340x: fix memory leak in int3400_notify()
    00265efbd3e5 RDMA/cma: Do not change route.addr.src_addr outside state checks
    8df508b7a44c btrfs: prevent copying too big compressed lzo segment
    d2bef2cbd3b1 driver core: Free DMA range map when device is released
    453a82127f17 mtd: core: Fix a conflict between MTD and NVMEM on wp-gpios property
    fcd3f5906d64 nvmem: core: Fix a conflict between MTD and NVMEM on wp-gpios property
    ce94606060d7 xhci: Prevent futile URB re-submissions due to incorrect return value.
    c8b38e557414 xhci: re-initialize the HC during resume if HCE was set
    88f69c64443f usb: dwc3: gadget: Let the interrupt handler disable bottom halves.
    83e0190fb77c usb: dwc3: pci: Fix Bay Trail phy GPIO mappings
    e62f41a6528f usb: dwc3: pci: Add "snps,dis_u2_susphy_quirk" for Intel Bay Trail
    943a914d3dab usb: dwc2: drd: fix soft connect when gadget is unconfigured
    85171fbf714c USB: serial: option: add Telit LE910R1 compositions
    c331aa7e7064 USB: serial: option: add support for DW5829e
    6db927ce66ac tracefs: Set the group ownership in apply_options() not parse_options()
    2c775ad1fd5e USB: gadget: validate endpoint index for xilinx udc
    da514063440b usb: gadget: rndis: add spinlock for rndis response list
    f7c9fd0dff99 Revert "USB: serial: ch341: add new Product ID for CH341A"
    27089f04fac6 ata: pata_hpt37x: disable primary channel on HPT371
    4e508c593573 sc16is7xx: Fix for incorrect data being transmitted
    72b0fba2dd4d iio: Fix error handling for PM
    1f05c7568445 iio: imu: st_lsm6dsx: wait for settling time in st_lsm6dsx_read_oneshot
    c77f4ae7bd43 iio: accel: fxls8962af: add padding to regmap for SPI
    ca9d1799be68 iio: adc: ad7124: fix mask used for setting AIN_BUFP & AIN_BUFM bits
    0cb9b2f73c18 iio: adc: tsc2046: fix memory corruption by preventing array overflow
    fe7347780298 iio: adc: men_z188_adc: Fix a resource leak in an error handling path
    7bdf7d5f0cbd iio:imu:adis16480: fix buffering for devices with no burst mode
    9000406481a5 tracing: Have traceon and traceoff trigger honor the instance
    7e35b31e2cee tracing: Dump stacktrace trigger to the corresponding instance
    c8b56e51aa91 RDMA/ib_srp: Fix a deadlock
    e7a66dd26877 configfs: fix a race in configfs_{,un}register_subsystem()
    a94879d41917 bnxt_en: Increase firmware message response DMA wait time
    27440589551f RDMA/rtrs-clt: Move free_permit from free_clt to rtrs_clt_close
    bf2cfad0c6e4 RDMA/rtrs-clt: Fix possible double free in error case
    ff999198ec21 net-timestamp: convert sk->sk_tskey to atomic_t
    d99dcdabc52a regmap-irq: Update interrupt clear register for proper reset
    43221f446c02 gpio: rockchip: Reset int_bothedge when changing trigger
    3c32405d6474 spi: spi-zynq-qspi: Fix a NULL pointer dereference in zynq_qspi_exec_mem_op()
    2378f94c8d9b net/mlx5: Update log_max_qp value to be 17 at most
    6e94d2863384 net/mlx5e: kTLS, Use CHECKSUM_UNNECESSARY for device-offloaded packets
    95c1867704d0 net/mlx5e: MPLSoUDP decap, fix check for unsupported matches
    d4d188487ddc net/mlx5: DR, Fix the threshold that defines when pool sync is initiated
    9703a9e2f968 net/mlx5: Fix wrong limitation of metadata match on ecpf
    f63548dd05ab net/mlx5: Fix possible deadlock on rule deletion
    837b0d2e69e8 net/mlx5: DR, Don't allow match on IP w/o matching on full ethertype/ip_version
    954997aeb8f2 ibmvnic: schedule failover only if vioctl fails
    117a5a7f019e net/mlx5: DR, Cache STE shadow memory
    6b6094db77e6 udp_tunnel: Fix end of loop test in udp_tunnel_nic_unregister()
    4039254acbd4 surface: surface3_power: Fix battery readings on batteries without a serial number
    062772d5cc8c net/smc: Use a mutex for locking "struct smc_pnettable"
    e96e204ee6fa netfilter: nf_tables: fix memory leak during stateful obj update
    7d258451d345 net: mdio-ipq4019: add delay after clock enable
    9d8097caa732 nfp: flower: Fix a potential leak in nfp_tunnel_add_shared_mac()
    8ffb8ac34488 netfilter: nf_tables: unregister flowtable hooks on netns exit
    2e15fa8091de net: Force inlining of checksum functions in net/checksum.h
    be2d38247657 net: ll_temac: check the return value of devm_kmalloc()
    a95ea90deb30 net/sched: act_ct: Fix flow table lookup after ct clear or switching zones
    d064d0c39405 drm/i915/dg2: Print PHY name properly on calibration error
    eae86ab32069 drm/vc4: crtc: Fix runtime_pm reference counting
    163e50b00530 net/mlx5e: Fix wrong return value on ioctl EEPROM query failure
    143dafa60aa7 drm/edid: Always set RGB444
    f941104aa116 openvswitch: Fix setting ipv6 fields causing hw csum failure
    62ca33976ddc net: mv643xx_eth: process retval from of_get_mac_address
    899e56a1ad43 gso: do not skip outer ip header in case of ipip and net_failover
    0a9bc4179c30 tipc: Fix end of loop tests for list_for_each_entry()
    8270e92a0e42 nvme: also mark passthrough-only namespaces ready in nvme_update_ns_info
    6f2e0ae12aa8 net: __pskb_pull_tail() & pskb_carve_frag_list() drop_monitor friends
    c718ea4e7382 io_uring: add a schedule point in io_add_buffers()
    8628f489b749 bpf: Add schedule points in batch ops
    976406c5cc00 bpf: Fix a bpf_timer initialization issue
    755d4b744056 selftests: bpf: Check bpf_msg_push_data return value
    5d75e374eb77 bpf: Do not try bpf_msg_push_data with len 0
    719d1c2524c8 bpf: Fix crash due to incorrect copy_map_value
    de49b0e1cf62 net/mlx5: Update the list of the PCI supported devices
    9594d817b5eb ice: initialize local variable 'tlv'
    b3615ea66b91 ice: check the return of ice_ptp_gettimex64
    7e8da9964437 net/mlx5: Fix tc max supported prio for nic mode
    7efe8499cb90 hwmon: Handle failure to register sensor with thermal zone correctly
    86da2e4a1284 bnxt_en: Fix incorrect multicast rx mask setting when not requested
    24931b4d199e bnxt_en: Fix offline ethtool selftest with RDMA enabled
    f84bbb9893bd bnxt_en: Fix active FEC reporting to ethtool
    1243861bc002 bnx2x: fix driver load from initrd
    7c844c7af784 selftests: mptcp: be more conservative with cookie MPJ limits
    f76977643339 selftests: mptcp: fix diag instability
    f25ae162f4b3 mptcp: add mibs counter for ignored incoming options
    150d1e06c4f1 mptcp: fix race in incoming ADD_ADDR option processing
    40bbab9d4ed7 perf data: Fix double free in perf_session__delete()
    05ef4f56173e perf evlist: Fix failed to use cpu list for uncore events
    0b92b5f4c50b gpu: host1x: Always return syncpoint value when waiting
    734d80b4365a Revert "i40e: Fix reset bw limit when DCB enabled with 1 TC"
    1cfb33b338fb ping: remove pr_err from ping_lookup
    2922aff43397 optee: use driver internal tee_context for some rpc
    0efdc0360395 tee: export teedev_open() and teedev_close_context()
    6c5d780469d6 netfilter: nf_tables_offload: incorrect flow offload action array size
    144f3008524c netfilter: xt_socket: missing ifdef CONFIG_IP6_NF_IPTABLES dependency
    cb2313b216be netfilter: xt_socket: fix a typo in socket_mt_destroy()
    49909c9f8458 CDC-NCM: avoid overflow in sanity checking
    4b77aab7ada7 USB: zaurus: support another broken Zaurus
    9f2d61477990 sr9700: sanity check for packet length
    0726fca0b6cc drm/i915: Fix bw atomic check when switching between SAGV vs. no SAGV
    1b4445e09df8 drm/i915: Correctly populate use_sagv_wm for all pipes
    7782e3c4e539 drm/i915: Widen the QGV point mask
    8840d963e566 drm/amdgpu: do not enable asic reset for raven2
    70b2413ac30c drm/amdgpu: disable MMHUB PG for Picasso
    ea44fcee7e3d drm/amd: Check if ASPM is enabled from PCIe subsystem
    c00e4c01f470 drm/amd/pm: fix some OEM SKU specific stability issues
    211b67fb5a49 drm/amd/display: Protect update_bw_bounding_box FPU code.
    4c3644b6c96c KVM: x86/mmu: make apf token non-zero to fix bug
    759e5dc6554d parisc/unaligned: Fix ldw() and stw() unalignment handlers
    bf0b3d61e002 parisc/unaligned: Fix fldd and fstd unaligned handlers on 32-bit kernel
    960d474e451b vhost/vsock: don't check owner in vhost_vsock_stop() while releasing
    af091cc27e37 selinux: fix misuse of mutex_is_locked()
    0d773aaf5a90 io_uring: disallow modification of rsrc_data during quiesce
    7c83437fb3ae io_uring: don't convert to jiffies for waiting on timeouts
    6d20ff677349 clk: jz4725b: fix mmc0 clock gating
    b80fbc20f334 btrfs: tree-checker: check item_size for dev_item
    7e80846a9927 btrfs: tree-checker: check item_size for inode_item
    a6d9692cadb9 x86/ptrace: Fix xfpregs_set()'s incorrect xmm clearing
    ebeb7b73571e cgroup-v1: Correct privileges check in release_agent writes
    ffed0bf6a63d cgroup/cpuset: Fix a race between cpuset_attach() and cpu hotplug
    f89903ae99bd mm/filemap: Fix handling of THPs in generic_file_buffered_read()
    1e7beca28299 Linux 5.15.25
    5dcc36569734 lockdep: Correct lock_classes index mapping
    c2df4c62a189 i2c: brcmstb: fix support for DSL and CM variants
    ec7d87b64e78 ice: enable parsing IPSEC SPI headers for RSS
    0b4ea5b72b17 scsi: qedi: Fix ABBA deadlock in qedi_process_tmf_resp() and qedi_process_cmd_cleanup_resp()
    795feafb7234 copy_process(): Move fd_install() out of sighand->siglock critical section
    3e41445287af dmaengine: ptdma: Fix the error handling path in pt_core_init()
    8641ceb41f30 i2c: qcom-cci: don't put a device tree node before i2c_add_adapter()
    7512f91bc313 i2c: qcom-cci: don't delete an unregistered adapter
    052707279e70 tests: fix idmapped mount_setattr test
    6b186a23af0d dmaengine: sh: rcar-dmac: Check for error num after dma_set_max_seg_size
    4f3a0737992c dmaengine: stm32-dmamux: Fix PM disable depth imbalance in stm32_dmamux_probe
    62e228e3e169 dmaengine: sh: rcar-dmac: Check for error num after setting mask
    f4a821b098c5 net: sched: limit TC_ACT_REPEAT loops
    2b2be95b6013 ucounts: Move RLIMIT_NPROC handling after set_user
    b5f949d9a9c3 rlimit: Fix RLIMIT_NPROC enforcement failure caused by capability calls in set_user
    114e9f141822 lib/iov_iter: initialize "flags" in new pipe_buffer
    2d2d92cfcd3b ucounts: Enforce RLIMIT_NPROC not RLIMIT_NPROC+1
    efc853d8ffd5 ucounts: Base set_cred_ucounts changes on the real user
    f418bfabea43 ucounts: In set_cred_ucounts assume new->ucounts is non-NULL
    d464492eb391 ucounts: Handle wrapping in is_ucounts_overlimit
    e1e26697d032 EDAC: Fix calculation of returned address and next offset in edac_align_ptr()
    e6da726eb67d scsi: lpfc: Fix pt2pt NVMe PRLI reject LOGO loop
    3f2bc7f028f6 kconfig: fix failing to generate auto.conf
    88289d56cb28 net: macb: Align the dma and coherent dma masks
    b501b0f4e113 net: usb: qmi_wwan: Add support for Dell DW5829e
    1ddab2ee8829 drm/amd/display: fix yellow carp wm clamping
    929b2eddebc2 drm/amd/display: Cap pflip irqs per max otg number
    3fd92f5be6c4 display/amd: decrease message verbosity about watermarks table failure
    eb61dbb192b1 tracing: Fix tp_printk option related with tp_printk_stop_on_boot
    893297940084 drm/rockchip: dw_hdmi: Do not leave clock enabled in error case
    9921c866dc36 xprtrdma: fix pointer derefs in error cases of rpcrdma_ep_create
    b5caba5efbab soc: aspeed: lpc-ctrl: Block error printing on probe defer cases
    71720cae1cad ata: libata-core: Disable TRIM on M88V29
    62542c5f18a1 kconfig: let 'shell' return enough output for deep path names
    004458327695 ACPI: PM: Revert "Only mark EC GPE for wakeup on Intel systems"
    246dfbc12539 mm: io_uring: allow oom-killer from io_uring_setup
    54d69f072d5e selftests: fixup build warnings in pidfd / clone3 tests
    fc6d187f2986 pidfd: fix test failure due to stack overflow on some arches
    9659711c3248 arm64: dts: meson-g12: drop BL32 region from SEI510/SEI610
    42b3092ccfb1 arm64: dts: meson-g12: add ATF BL32 reserved-memory region
    de3b10b7ccc6 arm64: dts: meson-gx: add ATF BL32 reserved-memory region
    5644bf688e4a ksmbd: don't align last entry offset in smb2 query directory
    03dd71e0b9d8 ksmbd: fix same UniqueId for dot and dotdot entries
    7afed8b3608e netfilter: conntrack: don't refresh sctp entries in closed state
    f7b95b396700 x86/bug: Merge annotate_reachable() into _BUG_FLAGS() asm
    c4315bffe5d0 irqchip/sifive-plic: Add missing thead,c900-plic match string
    459b97c958c1 phy: phy-mtk-tphy: Fix duplicated argument in phy-mtk-tphy
    993db6da4aec staging: vc04_services: Fix RCU dereference check
    6a469cf7f372 phy: usb: Leave some clocks running during suspend
    9492e1e53e7d ARM: OMAP2+: adjust the location of put_device() call in omapdss_init_of
    1587d6b1e0b9 ARM: OMAP2+: hwmod: Add of_node_put() before break
    5f45f96f4189 KVM: x86/pmu: Use AMD64_RAW_EVENT_MASK for PERF_TYPE_RAW
    0d3b91d4d9f5 KVM: x86/pmu: Don't truncate the PerfEvtSeln MSR when creating a perf event
    d8110cb2cf19 KVM: x86/pmu: Refactoring find_arch_event() to pmc_perf_hw_id()
    c377e2ba78d3 Drivers: hv: vmbus: Fix memory leak in vmbus_add_channel_kobj
    6936f02d14ed mtd: rawnand: ingenic: Fix missing put_device in ingenic_ecc_get
    de0d102d0c8c HID: elo: fix memory leak in elo_probe
    ffe36e3a991e mtd: rawnand: brcmnand: Fixed incorrect sub-page ECC status
    9fd00a568663 mtd: phram: Prevent divide by zero bug in phram_setup()
    3eb5185896a6 mtd: parsers: qcom: Fix missing free for pparts in cleanup
    eb03cb6e03ff mtd: parsers: qcom: Fix kernel panic on skipped partition
    502f86f5168a mtd: rawnand: qcom: Fix clock sequencing in qcom_nandc_probe()
    e65450a12cf4 block: fix surprise removal for drivers calling blk_set_queue_dying
    e1dce8e127fd tty: n_tty: do not look ahead for EOL character past the end of the buffer
    21165833efa6 NFS: Do not report writeback errors in nfs_getattr()
    f1322f10f60c NFS: LOOKUP_DIRECTORY is also ok with symlinks
    f2238b4e83b6 NFS: Remove an incorrect revalidation in nfs4_update_changeattr_locked()
    4b9c861a589e block/wbt: fix negative inflight counter when remove scsi device
    a22b213139e0 ASoC: qcom: Actually clear DMA interrupt register for HDMI
    ce3e1f82da73 ASoC: tas2770: Insert post reset delay
    493c9e850677 scsi: ufs: Fix a deadlock in the error handler
    2af0fdfbfb37 scsi: ufs: Remove dead code
    84c109620fef tipc: fix wrong notification node addresses
    727dd33561d5 smb3: fix snapshot mount option
    4a7ec50298b1 mtd: rawnand: gpmi: don't leak PM reference in error path
    45948a4b1fd0 powerpc/lib/sstep: fix 'ptesync' build error
    0e0b5705640c powerpc/603: Fix boot failure with DEBUG_PAGEALLOC and KFENCE
    68b8924f6038 cifs: fix set of group SID via NTSD xattrs
    b4b8e7ae1346 ASoC: ops: Fix stereo change notifications in snd_soc_put_xr_sx()
    312d8074bc99 ASoC: ops: Fix stereo change notifications in snd_soc_put_volsw_sx()
    ed1e33f121ea ASoC: ops: Fix stereo change notifications in snd_soc_put_volsw_range()
    edb43ae4ca8d ASoC: ops: Fix stereo change notifications in snd_soc_put_volsw()
    900d37d7d8ef ALSA: hda: Fix missing codec probe on Shenker Dock 15
    f9d9574a8ba8 ALSA: hda: Fix regression on forced probe mask option
    3b6134e35a60 ALSA: hda/realtek: Fix deadlock by COEF mutex
    a562de3b700a ALSA: hda/realtek: Add quirk for Legion Y9000X 2019
    2c9a7e11127e ALSA: usb-audio: revert to IMPLICIT_FB_FIXED_DEV for M-Audio FastTrack Ultra
    7285daaca3cd arm64: Correct wrong label in macro __init_el2_gicv3
    b04dcc00ae33 selftests/exec: Add non-regular to TEST_GEN_PROGS
    bf4161eb7e3b perf bpf: Defer freeing string after possible strlen() on it
    e8ba5b039eea net: bridge: multicast: notify switchdev driver whenever MC processing gets disabled
    6b1c9f99c2e6 dpaa2-eth: Initialize mutex used in one step timestamping path
    d3c9dd36ec24 dpaa2-switch: fix default return of dpaa2_switch_flower_parse_mirror_key
    1a16f047946b tipc: fix wrong publisher node address in link publications
    868366d627e4 atl1c: fix tx timeout after link flap on Mikrotik 10/25G NIC
    0e6727589aea net: phy: mediatek: remove PHY mode check on MT7531
    7de7ba7a8bd4 net/smc: Avoid overwriting the copies of clcsock callback functions
    f8ba235c4927 libsubcmd: Fix use-after-free for realloc(..., 0)
    4c9f207810b7 bonding: fix data-races around agg_select_timer
    9bb363ba014f net_sched: add __rcu annotation to netdev->qdisc
    3077976a752a drop_monitor: fix data-race in dropmon_net_event / trace_napi_poll_hit
    bdb6df9bedb3 bonding: force carrier update when releasing slave
    b9ff5667e116 ping: fix the dif and sdif check in ping_lookup
    392c42424ae0 net: ieee802154: ca8210: Fix lifs/sifs periods
    4b27446b538d net: dsa: lan9303: add VLAN IDs to master device
    860c5c275ed2 net: dsa: lan9303: handle hwaccel VLAN tags
    df2495f329b0 net: dsa: lantiq_gswip: fix use after free in gswip_remove()
    2566a89b9e16 net: dsa: mv88e6xxx: flush switchdev FDB workqueue before removing VLAN
    d8905a499af4 net: dsa: lan9303: fix reset on probe
    241e633cb379 cfg80211: fix race in netlink owner interface destruction
    c4caf72a42d3 brcmfmac: firmware: Fix crash in brcm_alt_fw_path
    00fb850c8a1a mac80211: mlme: check for null after calling kmemdup
    61e8fc49a9f8 Revert "net: ethernet: bgmac: Use devm_platform_ioremap_resource_byname"
    d51cd648dbca ipv6: per-netns exclusive flowlabel checks
    3e11ef1903cf ipv6: mcast: use rcu-safe version of ipv6_get_lladdr()
    9ed25183e6d4 ipv6: fix data-race in fib6_info_hw_flags_set / fib6_purge_rt
    db333693b052 ipv4: fix data races in fib_alias_hw_flags_set
    5dc653ef0785 selftests: netfilter: disable rp_filter on router
    2035d13eb12e netfilter: nft_synproxy: unregister hooks on init error path
    a1d9e1f14207 selftests: netfilter: fix exit value for nft_concat_range
    b10f4b00e10a iwlwifi: mvm: don't send SAR GEO command for 3160 devices
    c448b0541abf iwlwifi: pcie: gen2: fix locking when "HW not ready"
    78cd5c0acfed iwlwifi: pcie: fix locking when "HW not ready"
    79bdf56cc55d drm/i915/ttm: tweak priority hint selection
    e4778408c04d drm/i915/gvt: Make DRM_I915_GVT depend on X86
    02f7d38533ba drm/cma-helper: Set VM_DONTEXPAND for mmap
    787468ee7a43 vsock: remove vsock from connected table when connect is interrupted by a signal
    fe802b3fe763 drm/i915: Fix mbus join config lookup
    34f5556ddf2b drm/i915: Fix dbuf slice config lookup
    d006f2fe7d62 drm/i915/opregion: check port number bounds for SWSCI display power state
    960c8a55016b drm/amdgpu: skipping SDMA hw_init and hw_fini for S0ix.
    3851046599c1 drm/amd/pm: correct the sequence of sending gpu reset msg
    a1596e0277ed drm/atomic: Don't pollute crtc_state->mode_blob with error pointers
    68f3a4252e97 drm/radeon: Fix backlight control on iMac 12,1
    ddd46059f7d9 iwlwifi: fix use-after-free
    8209fede7d58 KVM: x86: nSVM: mark vmcb01 as dirty when restoring SMM saved state
    74b426bea4f7 KVM: x86: nSVM: fix potential NULL derefernce on nested migration
    417b87cb2311 KVM: x86: SVM: don't passthrough SMAP/SMEP/PKE bits in !NPT && !gCR0.PG case
    cd14c7342df5 KVM: x86: nSVM/nVMX: set nested_run_pending on VM entry which is a result of RSM
    b5c86e750388 KVM: x86/xen: Fix runstate updates to be atomic when preempting vCPU
    b16817a6de31 random: wake up /dev/random writers after zap
    effdcc250584 gcc-plugins/stackleak: Use noinstr in favor of notrace
    0a01326fddf6 Revert "module, async: async_synchronize_full() on module init iff async is used"
    769a6b33ec9f x86/Xen: streamline (and fix) PV CPU enumeration
    0fec53c5dca8 drm/amdgpu: fix logic inversion in check
    38108fd273ac drm/amd: Only run s3 or s0ix if system is configured properly
    72808bb42c87 drm/amd: add support to check whether the system is set to s3
    0ceba4d64fee net: sparx5: do not refer to skb after passing it on
    646952b2210f nvme-rdma: fix possible use-after-free in transport error_recovery work
    5e42fca37ccc nvme-tcp: fix possible use-after-free in transport error_recovery work
    e043fb5a0336 nvme: fix a possible use-after-free in controller reset during load
    64519c9e32ac drm/amd: Warn users about potential s0ix problems
    d9d93f32534a scsi: pm8001: Fix use-after-free for aborted SSP/STP sas_task
    3c334cdfd949 scsi: pm8001: Fix use-after-free for aborted TMF sas_task
    f2c58667ffcd scsi: core: Reallocate device's budget map on queue depth change
    46756cc81099 kselftest: Fix vdso_test_abi return status
    3801775a07b5 scsi: pm80xx: Fix double completion for SATA devices
    64d6f76958c5 quota: make dquot_quota_sync return errors from ->sync_fs
    38f22c730c38 vfs: make freeze_super abort when sync_filesystem returns error
    5d3e1af11e07 pinctrl: bcm63xx: fix unmet dependency on REGMAP for GPIO_REGMAP
    4c958f0c5714 ax25: improve the incomplete fix to avoid UAF and NPD bugs
    bced176da6e0 selftests: skip mincore.check_file_mmap when fs lacks needed support
    7d10b671a052 selftests: openat2: Skip testcases that fail with EOPNOTSUPP
    04542fd44dd7 selftests: openat2: Add missing dependency in Makefile
    a613105e07b9 selftests: openat2: Print also errno in failure messages
    16d28de2f361 selftests/zram: Adapt the situation that /dev/zram0 is being used
    9172557bdf13 selftests/zram01.sh: Fix compression ratio calculation
    586ec7c0992a selftests/zram: Skip max_comp_streams interface on newer kernel
    23b2a2538240 net: ieee802154: at86rf230: Stop leaking skb's
    c99068d6839c kselftest: signal all child processes
    eb3b35385558 selftests: rtc: Increase test timeout so that all tests run
    ec1d9bb08850 kunit: tool: Import missing importlib.abc
    fdad28ff1d1d platform/x86: ISST: Fix possible circular locking dependency detected
    54688a550924 platform/x86: touchscreen_dmi: Add info for the RWC NANOTE P8 AY07J 2-in-1
    7e234c47fd2f btrfs: send: in case of IO error log it
    94e76b372817 parisc: Add ioread64_lo_hi() and iowrite64_lo_hi()
    c7a4b1d155d3 PCI: hv: Fix NUMA node assignment when kernel boots with custom NUMA topology
    7da6ba116cdc HID: amd_sfh: Correct the structure field name
    6b75f5c18f38 HID: amd_sfh: Increase sensor command timeout
    bdbc65eb77ee HID: i2c-hid: goodix: Fix a lockdep splat
    6451058f2720 HID: amd_sfh: Add illuminance mask to limit ALS max value
    b3dc4b9d3ca6 mm: don't try to NUMA-migrate COW pages that have other uses
    f3ff5f75d8f6 mmc: block: fix read single on recovery logic
    5b6e29b9306c parisc: Fix sglist access in ccio-dma.c
    8c8e949ae81e parisc: Fix data TLB miss in sba_unmap_sg
    9413b2e2bdb7 parisc: Drop __init from map_pages declaration
    35c955b5a45e serial: parisc: GSC: fix build when IOSAPIC is not set
    7a25d8249971 parisc: Show error if wrong 32/64-bit compiler is being used
    9750d45760c8 Revert "svm: Add warning message for AVIC IPI invalid target"
    65ad2f6191a6 HID:Add support for UGTABLET WP5540
    06bd0f157e70 scsi: lpfc: Fix mailbox command failure during driver initialization
    ae6ca6343929 btrfs: zoned: cache reported zone during mount
    a8dd0cfa3779 fs/proc: task_mmu.c: don't read mapcount for migration entry
    f0a60c7c4ede drm/nouveau/pmu/gm200-: use alternate falcon reset sequence
    a0ebea480bb3 Linux 5.15.24
    65ab30f6a695 iommu: Fix potential use-after-free during probe
    7969fe91c983 perf: Fix list corruption in perf_cgroup_switch()
    8ebcd2c680e1 arm64: dts: imx8mq: fix lcdif port node
    48f54966f7f7 MIPS: octeon: Fix missed PTR->PTR_WD conversion
    cd4494f8685c scsi: lpfc: Reduce log messages seen after firmware download
    6737f9a95a42 scsi: lpfc: Remove NVMe support if kernel has NVME_FC disabled
    c8e9c2b52c4c Makefile.extrawarn: Move -Wunaligned-access to W=1
    24645c47880b x86/sgx: Silence softlockup detection when releasing large enclaves
    30de73bebf2b hwmon: (dell-smm) Speed up setting of fan speed
    16cde074b00c bus: mhi: pci_generic: Add mru_default for Cinterion MV31-W
    2c1d20e34669 bus: mhi: pci_generic: Add mru_default for Foxconn SDX55
    fe990b7bf6ac s390/cio: verify the driver availability for path_event call
    56ca18dd5483 signal: HANDLER_EXIT should clear SIGNAL_UNKILLABLE
    f7a56fcca2e4 seccomp: Invalidate seccomp mode to catch death failures
    956cf21cd1ae mm: memcg: synchronize objcg lists with a dedicated spinlock
    b7f54894aa75 iio: buffer: Fix file related error handling in IIO_BUFFER_GET_FD_IOCTL
    7a360e546ad9 phy: ti: Fix missing sentinel for clk_div_table
    12431425c466 speakup-dectlk: Restore pitch setting
    9ae3dad535a9 USB: serial: cp210x: add CPI Bulk Coin Recycler id
    7e5108a22f19 USB: serial: cp210x: add NCR Retail IO box id
    8d226d39d052 USB: serial: ch341: add support for GW Instek USB2.0-Serial devices
    2ea4f4612cb9 USB: serial: option: add ZTE MF286D modem
    24311a9fc426 USB: serial: ftdi_sio: add support for Brainboxes US-159/235/320
    2330b2ba6465 usb: raw-gadget: fix handling of dual-direction-capable endpoints
    33d2a0c1ec20 usb: gadget: f_uac2: Define specific wTerminalType
    2da3b0ab54fb usb: gadget: rndis: check size of RNDIS_MSG_SET command
    3e33e5c67cb9 USB: gadget: validate interface OS descriptor requests
    d3d5bfb3a279 usb: gadget: udc: renesas_usb3: Fix host to USB_ROLE_NONE transition
    8d2b04dad380 usb: dwc3: gadget: Prevent core from processing stale TRBs
    93feb2bdf6d4 usb: ulpi: Call of_node_put correctly
    fc50f42e4616 usb: ulpi: Move of_node_put to ulpi_dev_release
    ffd0393adcdc net: usb: ax88179_178a: Fix out-of-bounds accesses in RX fixup
    f4e72ad027b0 Revert "usb: dwc2: drd: fix soft connect when gadget is unconfigured"
    a6ef1bda0efd usb: dwc2: drd: fix soft connect when gadget is unconfigured
    9a5f471ae380 eeprom: ee1004: limit i2c reads to I2C_SMBUS_BLOCK_MAX
    decb36e9a9f0 n_tty: wake up poll(POLLRDNORM) on receiving data
    573321db328b vt_ioctl: add array_index_nospec to VT_ACTIVATE
    ffe54289b02e vt_ioctl: fix array_index_nospec in vt_setactivate
    f916181692cb net: dsa: mv88e6xxx: fix use-after-free in mv88e6xxx_mdios_unregister
    d98ba26a4ba9 net: mscc: ocelot: fix mutex lock error during ethtool stats read
    41a8c548d47b ice: Avoid RTNL lock when re-creating auxiliary device
    f9daedc3ab8f ice: Fix KASAN error in LAG NETDEV_UNREGISTER handler
    52eb5c86ede4 ice: fix IPIP and SIT TSO offload
    efd399e12c1b ice: fix an error code in ice_cfg_phy_fec()
    12e067a4d98f dpaa2-eth: unregister the netdev before disconnecting from the PHY
    29b25d5f8f30 mptcp: netlink: process IPv6 addrs in creating listening sockets
    dcd1c4663469 drm/amd/pm: fix hwmon node of power1_label create issue
    4b24ef1d03cf net: amd-xgbe: disable interrupts during pci removal
    489d9fa78e59 tipc: rate limit warning for received illegal binding update
    bb04b5527aff net: mdio: aspeed: Add missing MODULE_DEVICE_TABLE
    b8ac37e57044 veth: fix races around rq->rx_notify_masked
    fdcb263fa5cd net: fix a memleak when uncloning an skb dst and its metadata
    f1ab1ba32d36 net: do not keep the dst cache when uncloning an skb dst and its metadata
    6cbe14cc0eb6 nfp: flower: fix ida_idx not being released
    3cab045c99db ipmr,ip6mr: acquire RTNL before calling ip[6]mr_free_table() on failure path
    b5652bc50dde net: dsa: lantiq_gswip: don't use devres for mdiobus
    46b747232329 net: dsa: mt7530: fix kernel bug in mdiobus_free() when unbinding
    8cda7577a0b4 net: dsa: felix: don't use devres for mdiobus
    caabb5f64f5c net: dsa: bcm_sf2: don't use devres for mdiobus
    aae1c6a1d3d6 net: dsa: ar9331: register the mdiobus under devres
    8b626d45127d net: dsa: mv88e6xxx: don't use devres for mdiobus
    147540cae264 bonding: pair enable_port with slave_arr_updates
    3523167d6658 fbcon: Avoid 'cap' set but not used warning
    ef2cb1fc0365 gpio: sifive: use the correct register to read output values
    d9daa2b76dde gpiolib: Never return internal error codes to user space
    e799974e7cbb ACPI: PM: s2idle: Cancel wakeup before dispatching EC GPE
    ab142ea5d502 drm/panel: simple: Assign data from panel_dpi_probe() correctly
    9e3dd49145f3 ixgbevf: Require large buffers for build_skb on 82599VF
    51eece9f8a1d arm64: dts: meson-sm1-odroid: fix boot loop after reboot
    57154c07ed62 arm64: dts: meson-sm1-bananapi-m5: fix wrong GPIO domain for GPIOE_2
    162f8057192c arm64: dts: meson-sm1-odroid: use correct enable-gpio pin for tf-io regulator
    006dc5815bb3 arm64: dts: meson-g12b-odroid-n2: fix typo 'dio2133'
    c5ee4cbd0f1b netfilter: ctnetlink: disable helper autoassign
    7f486bed5ec0 net: sparx5: Fix get_stat64 crash in tcpdump
    e4382d0a39f9 misc: fastrpc: avoid double fput() on failed usercopy
    f5e8733d93cf drm/vc4: hdmi: Allow DBLCLK modes even if horz timing is odd.
    3d2bc21a6768 NFS: Don't skip directory entries when doing uncached readdir
    557302faea9c NFS: Don't overfill uncached readdir pages
    00181d6c9665 gpio: aggregator: Fix calling into sleeping GPIO controllers
    ddcb149ce10a phy: dphy: Correct clk_pre parameter
    72a8aee863af usb: f_fs: Fix use-after-free for epfile
    0ed2f9a97a92 arm64: dts: imx8mq: fix mipi_csi bidirectional port numbers
    af6a1d60a13c ARM: dts: imx7ulp: Fix 'assigned-clocks-parents' typo
    94b16ca86ab6 phy: stm32: fix a refcount leak in stm32_usbphyc_pll_enable()
    541ec7bfeed3 phy: xilinx: zynqmp: Fix bus width setting for SGMII
    58c42f415b81 ARM: dts: imx6qdl-udoo: Properly describe the SD card detect
    025c6eef1490 staging: fbtft: Fix error path in fbtft_driver_module_init()
    c0ad2c2cac1b phy: broadcom: Kconfig: Fix PHY_BRCM_USB config option
    86cdc3060d41 ARM: dts: meson8b: Fix the UART device-tree schema validation
    5253b083f0a8 ARM: dts: meson8: Fix the UART device-tree schema validation
    00d135070efa ARM: dts: meson: Fix the UART compatible strings
    c22bddf61db0 ARM: dts: Fix timer regression for beagleboard revision c
    ac14a51c3169 drm/i915: Populate pipe dbuf slices more accurately during readout
    8d6a31b83cdd drm/i915: Allow !join_mbus cases for adlp+ dbuf configuration
    05ffa30c99f7 drm/rockchip: vop: Correct RK3399 VOP register fields
    c1af59449d80 drm/amdgpu/display: change pipe policy for DCN 2.0
    0e546bb1324e PM: s2idle: ACPI: Fix wakeup interrupts handling
    65aabd296665 ACPI/IORT: Check node revision for PMCG resources
    64c37c05f7ad nvme-tcp: fix bogus request completion when failing to send AER
    7740eb27c38e ARM: socfpga: fix missing RESET_CONTROLLER
    ccdd7956cd28 ARM: dts: Fix boot regression on Skomer
    14917a884f70 ARM: dts: imx23-evk: Remove MX23_PAD_SSP1_DETECT from hog group
    4134396f99d2 gfs2: Fix gfs2_release for non-writers regression
    71f46f3d1bf2 riscv: eliminate unreliable __builtin_frame_address(1)
    efe220337181 riscv: cpu-hotplug: clear cpu from numa map when teardown
    7486227fa47a riscv: fix build with binutils 2.38
    67398d2c7b8c KVM: x86: Report deprecated x87 features in supported CPUID
    c09a83ae3b2e KVM: VMX: Set vmcs.PENDING_DBG.BS on #DB in STI/MOVSS blocking shadow
    f7da3276e087 KVM: SVM: Don't kill SEV guest if SMAP erratum triggers in usermode
    11f9427d01a3 KVM: nVMX: Also filter MSR_IA32_VMX_TRUE_PINBASED_CTLS when eVMCS
    a3c43649600b KVM: nVMX: eVMCS: Filter out VM_EXIT_SAVE_VMX_PREEMPTION_TIMER
    d44af3ad2a21 KVM: eventfd: Fix false positive RCU usage warning
    a85f3ea1407f net: stmmac: dwmac-sun8i: use return val of readl_poll_timeout()
    a3ba49c129ed MIPS: Fix build error due to PTR used in more places
    96f91a877a5c nvme-pci: add the IGNORE_DEV_SUBNQN quirk for Intel P4500/P4600 SSDs
    a3486ef99a3b perf: Always wake the parent event
    8981a8fd900e usb: dwc2: gadget: don't try to disable ep0 in dwc2_hsotg_suspend
    a277422a8d97 drm/amd/display: Correct MPC split policy for DCN301
    dc5769c7b063 PM: hibernate: Remove register_nosave_region_late()
    50fe79589c14 net: stmmac: reduce unnecessary wakeups from eee sw timer
    6207f35c213f scsi: myrs: Fix crash in error case
    0c8d27c2aae5 scsi: ufs: Treat link loss as fatal error
    f0a91d892310 scsi: ufs: Use generic error code in ufshcd_set_dev_pwr_mode()
    cb26e94204d7 scsi: pm8001: Fix bogus FW crash for maxcpus=1
    1c22df15cf40 scsi: qedf: Change context reset messages to ratelimited
    6be8eaad75ca scsi: qedf: Fix refcount issue when LOGO is received during TMF
    1f53bbf27a87 scsi: qedf: Add stag_work to all the vports
    83f31dab46b2 scsi: ufs: ufshcd-pltfrm: Check the return value of devm_kstrdup()
    4f786e8f18c3 scsi: target: iscsi: Make sure the np under each tpg is unique
    43ae0ccc4d27 powerpc/fixmap: Fix VM debug warning on unmap
    fa693cfd8fe4 net: sched: Clarify error message when qdisc kind is unknown
    9696125fb3ca drm: panel-orientation-quirks: Add quirk for the 1Netbook OneXPlayer
    770d1ba9a820 drm/vc4: Fix deadlock on DSI device attach error
    85008bde411d sched: Avoid double preemption in __cond_resched_*lock*()
    ec903b6daa58 x86/perf: Avoid warning for Arch LBR without XSAVE
    ef5685971abd perf/x86/rapl: fix AMD event handling
    3f4e05eb46ae irqchip/realtek-rtl: Service all pending interrupts
    4403233b8775 sunrpc: Fix potential race conditions in rpc_sysfs_xprt_state_change()
    4b22aa42bd4d net/sunrpc: fix reference count leaks in rpc_sysfs_xprt_state_change
    5ca123c91a64 SUNRPC allow for unspecified transport time in rpc_clnt_add_xprt
    c5ae18fa8d71 NFSv4 handle port presence in fs_location server string
    be67be6a1a8f NFSv4 expose nfs_parse_server_name function
    6f2836341d8a NFSv4.1 query for fs_location attr on a new file system
    2df6a47a131a NFSv4 store server support for fs_location attribute
    0c5d3bfb2967 NFSv4 remove zero number of fs_locations entries error check
    3cb5b317901e NFSv4.1: Fix uninitialised variable in devicenotify
    58967a232ab3 nfs: nfs4clinet: check the return value of kstrdup()
    bbf647ecebc0 NFSv4 only print the label when its queried
    38ae938701e7 NFS: change nfs_access_get_cached to only report the mask
    78c28fdf1685 tracing: Propagate is_signed to expression
    8fdaa9a6ace2 thermal/drivers/int340x: Fix RFIM mailbox write commands
    5abd95ff5d6a thermal: int340x: Limit Kconfig to 64-bit
    786293f61b4b thermal/drivers/int340x: processor_thermal: Suppot 64 bit RFIM responses
    e9b0301939d1 thermal/drivers/int340x: Improve the tcc offset saving for suspend/resume
    c6eff5c42771 NFSD: Fix the behavior of READ near OFFSET_MAX
    c9a8571dd893 NFSD: Fix offset type in I/O trace points
    01c3ae81eef4 NFSD: Clamp WRITE offsets
    8e0ecaf7a7e5 NFSD: Fix ia_size underflow
    37f2d2cd8ead NFSD: Fix NFSv3 SETATTR/CREATE's handling of large file sizes
    535e301ea677 NFS: Fix initialisation of nfs_client cl_flags field
    6b42352bea56 net: phy: marvell: Fix MDI-x polarity setting in 88e1118-compatible PHYs
    9338c17e2c63 net: phy: marvell: Fix RGMII Tx/Rx delays setting in 88e1121-compatible PHYs
    540dff311c9a can: isotp: fix error path in isotp_sendmsg() to unlock wait queue
    f90cc68f9f4b can: isotp: fix potential CAN frame reception race in isotp_rcv()
    dbe7bf9b6fc8 mmc: core: Wait for command setting 'Power Off Notification' bit to complete
    222c071fadd6 mmc: sdhci-of-esdhc: Check for error num after setting mask
    cf4570ca8ed6 ima: Do not print policy rule with inactive LSM labels
    5389ea64af1e ima: Allow template selection with ima_template[_fmt]= after ima_hash=
    20805cdf95af ima: Remove ima_policy file before directory
    0838d6d68182 ima: fix reference leak in asymmetric_verify()
    739b7bb886b5 integrity: check the return value of audit_log_start()
    c1d3ac0c115f Linux 5.15.23
    1f1788616157 tipc: improve size validations for received domain records
    40eb05e5e72b crypto: api - Move cryptomgr soft dependency into algapi
    ab32ea3ad0d5 ksmbd: fix SMB 3.11 posix extension mount failure
    14f880ea779e KVM: s390: Return error on SIDA memop on normal guest
    c28ee73fea29 arm64: Add Cortex-A510 CPU part definition
    af0e6c49438b moxart: fix potential use-after-free on remove path
    0bf5b7cc9848 Linux 5.15.22
    3853c4e27149 selftests: netfilter: check stateless nat udp checksum fixup
    b84753200e79 selftests: nft_concat_range: add test for reload with no element add/del
    7c0ee51fe998 gpio: mpc8xxx: Fix an ignored error return from platform_get_irq()
    3d631a1af0d7 gpio: idt3243x: Fix an ignored error return from platform_get_irq()
    ff43b75eea32 tools include UAPI: Sync sound/asound.h copy with the kernel sources
    f5afdefe188e cgroup/cpuset: Fix "suspicious RCU usage" lockdep warning
    e4a7e1418ab7 net: dsa: mt7530: make NET_DSA_MT7530 select MEDIATEK_GE_PHY
    f187daed64e1 ext4: fix incorrect type issue during replay_del_range
    1b6762ecdf3c ext4: fix error handling in ext4_fc_record_modified_inode()
    ce38bb98cec7 ext4: fix error handling in ext4_restore_inline_data()
    869cb287d893 ext4: modify the logic of ext4_mb_new_blocks_simple
    0cb4480bc4f4 ext4: prevent used blocks from being allocated during fast commit replay
    d583cb17ee50 EDAC/xgene: Fix deferred probing
    c6c04bb32b73 EDAC/altera: Fix deferred probing
    587dadb43c9a x86/perf: Default set FREEZE_ON_SMI for all
    e83d941fd344 perf/x86/intel/pt: Fix crash with stop filters in single-range mode
    0f4dcaeaf6ae perf stat: Fix display of grouped aliased events
    64e133ce280b perf: Copy perf_event_attr::sig_data on modification
    9a60e92b76d6 kvm/arm64: rework guest entry logic
    83071e2dad68 kvm: add guest_state_{enter,exit}_irqoff()
    aba976f96bbc rtc: cmos: Evaluate century appropriate
    3b5fcdfab628 e1000e: Separate ADP board type from TGP
    b3a4d501e91c tools/resolve_btfids: Do not print any commands when building silently
    7620887a7779 selftests: futex: Use variable MAKE instead of make
    c5610494fd45 selftests/exec: Remove pipe from TEST_GEN_FILES
    5e457aeab52a bpf: Use VM_MAP instead of VM_ALLOC for ringbuf
    62ab929a8f6b gve: fix the wrong AdminQ buffer queue index check
    3611f4f91e11 nfsd: nfsd4_setclientid_confirm mistakenly expires confirmed client.
    2f5a1ac68bdf scsi: bnx2fc: Make bnx2fc_recv_frame() mp safe
    0bb4c6b9ecff pinctrl: bcm2835: Fix a few error paths
    3cdcfa3c526e pinctrl: intel: fix unexpected interrupt
    ca63438dc5c4 pinctrl: intel: Fix a glitch when updating IRQ flags on a preconfigured line
    d4036172ca3b pinctrl: sunxi: Fix H616 I2S3 pin data
    f00012885e70 ASoC: codecs: wcd938x: fix return value of mixer put function
    b54ff87a1567 ASoC: codecs: lpass-rx-macro: fix sidetone register offsets
    aa7152f9f117 ASoC: codecs: wcd938x: fix incorrect used of portid
    baead410e5db ASoC: max9759: fix underflow in speaker_gain_control_put()
    263b947aa4c1 ASoC: cpcap: Check for NULL pointer after calling of_get_child_by_name
    841e6a6b831b ASoC: simple-card: fix probe failure on platform component
    c6cf5b5078db ASoC: xilinx: xlnx_formatter_pcm: Make buffer bytes multiple of period bytes
    9d44f73df070 ASoC: fsl: Add missing error handling in pcm030_fabric_probe
    8a15ac1786c9 drm/amd: avoid suspend on dGPUs w/ s2idle support when runtime PM enabled
    5cba71707f0a drm/i915/overlay: Prevent divide by zero bugs in scaling
    b2c91bee7970 drm/kmb: Fix for build errors with Warray-bounds
    a84854bc230a net: stmmac: ensure PTP time register reads are consistent
    27ea34ead54a net: stmmac: dump gmac4 DMA registers correctly
    0ced878998f2 net: macsec: Verify that send_sci is on when setting Tx sci explicitly
    e7a0b3a0806d net: macsec: Fix offload support for NETDEV_UNREGISTER event
    2967b08119d5 net: stmmac: properly handle with runtime pm in stmmac_dvr_remove()
    6358e093547c net: stmmac: dwmac-visconti: No change to ETHER_CLOCK_SEL for unexpected speed request.
    0ef6049f6649 net/smc: Forward wakeup to smc socket waitqueue after fallback
    ea8ecd2d65b4 net: ieee802154: Return meaningful error codes from the netlink helpers
    566bf0e1c761 netfilter: nft_reject_bridge: Fix for missing reply from prerouting
    94cd597e20ed net: ieee802154: ca8210: Stop leaking skb's
    6c6b19a99131 net: ieee802154: mcr20a: Fix lifs/sifs periods
    29e60b77a449 net: ieee802154: hwsim: Ensure proper channel selection at probe time
    bb7a226780e2 IB/cm: Release previously acquired reference counter in the cm_id_priv
    40e20ba90390 IB/hfi1: Fix tstats alloc and dealloc
    dd00b4f8f768 spi: uniphier: fix reference count leak in uniphier_spi_probe()
    66606d329d61 spi: meson-spicc: add IRQ check in meson_spicc_probe
    7352f2c26482 spi: mediatek: Avoid NULL pointer crash in interrupt
    101a1cf8af55 spi: bcm-qspi: check for valid cs before applying chip select
    ca1f48c30e5b iommu/amd: Fix loop timeout issue in iommu_ga_log_enable()
    336d096b62bd iommu/vt-d: Fix potential memory leak in intel_setup_irq_remapping()
    e4b74b89862c ALSA: hda: Skip codec shutdown in case the codec is not registered
    0c5c64335657 ALSA: hda: Fix signedness of sscanf() arguments
    c2a91f1ef38a ALSA: usb-audio: initialize variables that could ignore errors
    63c69c93d978 RDMA/mlx4: Don't continue event handler after memory allocation failure
    035ea99c537d RDMA/siw: Fix broken RDMA Read Fence/Resume logic.
    7d9ad6f9f38f IB/rdmavt: Validate remote_addr during loopback atomic tests
    2989ba9532ba RDMA/siw: Fix refcounting leak in siw_create_qp()
    2923948ffe08 RDMA/ucma: Protect mc during concurrent multicast leaves
    7715682f357d RDMA/cma: Use correct address when leaving multicast group
    0452c3dc851b KVM: arm64: Stop handle_exit() from handling HVC twice when an SError occurs
    e1e852746997 KVM: arm64: Avoid consuming a stale esr value when SError occur
    aff6657f5243 Revert "ASoC: mediatek: Check for error clk pointer"
    9908c759a17e mptcp: fix msk traversal in mptcp_nl_cmd_set_flags()
    778283dc2840 fbcon: Add option to enable legacy hardware acceleration
    2a2629db4248 Revert "fbcon: Disable accelerated scrolling"
    a3dd4d2682f2 IB/hfi1: Fix AIP early init panic
    24f8e12d965b dma-buf: heaps: Fix potential spectre v1 gadget
    f576721152fd block: bio-integrity: Advance seed correctly for larger interval sizes
    a5389c80992f mm/kmemleak: avoid scanning potential huge holes
    65a4863a4ed5 mm/pgtable: define pte_index so that preprocessor could recognize it
    120973e64db9 mm/debug_vm_pgtable: remove pte entry from the page table
    90391ac6888e nvme-fabrics: fix state check in nvmf_ctlr_matches_baseopts()
    2093ecf557e7 drm/amd/display: Force link_rate as LINK_RATE_RBR2 for 2018 15" Apple Retina panels
    7ff0ed88e4eb drm/amd/display: watermark latencies is not enough on DCN31
    4f4c77ad5a13 drm/amd/pm: correct the MGpuFanBoost support for Beige Goby
    39ac3945d966 drm/i915/adlp: Fix TypeC PHY-ready status readout
    d877e814a62b drm/nouveau: fix off by one in BIOS boundary checking
    b9e9f848c82b Revert "fs/9p: search open fids first"
    a7b717fa1516 btrfs: fix use-after-free after failure to create a snapshot
    89d4cca583fc btrfs: fix deadlock between quota disable and qgroup rescan worker
    f4b2736eeb62 btrfs: don't start transaction for scrub if the fs is mounted read-only
    7ccf5849bef7 ALSA: hda/realtek: Fix silent output on Gigabyte X570 Aorus Xtreme after reboot from Windows
    9fc509f806a5 ALSA: hda/realtek: Fix silent output on Gigabyte X570S Aorus Master (newer chipset)
    b3625b0017a4 ALSA: hda/realtek: Add missing fixup-model entry for Gigabyte X570 ALC1220 quirks
    730f823e3c68 ALSA: hda/realtek: Add quirk for ASUS GU603
    586d71ddee6c ALSA: hda: realtek: Fix race at concurrent COEF updates
    0e629052f013 ALSA: hda: Fix UAF of leds class devs at unbinding
    303e89f94b66 ALSA: usb-audio: Correct quirk for VF0770
    b0a7836ecf13 ASoC: ops: Reject out of bounds values in snd_soc_put_xr_sx()
    e8e07c5e25a2 ASoC: ops: Reject out of bounds values in snd_soc_put_volsw_sx()
    9e8895f1b3d4 ASoC: ops: Reject out of bounds values in snd_soc_put_volsw()
    10007bd96b6c ASoC: hdmi-codec: Fix OOB memory accesses
    0b8b02903173 spi: stm32-qspi: Update spi registering
    45ba0a5fa0a6 ipc/sem: do not sleep with a spin lock held
    b8d9e0aec158 audit: improve audit queue handling when "audit=1" on cmdline
    70caa32e6d81 selinux: fix double free of cond_list on error paths
    d63d077fc446 drm/i915: Disable DSB usage for now
    f01ed5defb04 Linux 5.15.21
    2b2f53331b3a Revert "drm/vc4: hdmi: Make sure the device is powered with CEC" again
    a03d2f9f82bd Revert "drm/vc4: hdmi: Make sure the device is powered with CEC"

(From meta-yocto rev: b608714c3fc60c43cb3dc6d1b1c04ffc5a6c106c)

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 9abfc74ab404ada55fc058e8bc685e56fa132f0c)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 .../linux/linux-yocto_5.15.bbappend              | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
index ff85e2e..85d02a4 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
@@ -7,17 +7,17 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "7f685244afb3acd13e94968312580b63d7296705"
-SRCREV_machine:genericx86-64 ?= "7f685244afb3acd13e94968312580b63d7296705"
-SRCREV_machine:edgerouter ?= "5a8ec126c297dd9e410eb23685003f670f8f3d57"
-SRCREV_machine:beaglebone-yocto ?= "5a8ec126c297dd9e410eb23685003f670f8f3d57"
+SRCREV_machine:genericx86 ?= "ebfb1822e9f9726d8c587fc0f60cfed43fa0873e"
+SRCREV_machine:genericx86-64 ?= "ebfb1822e9f9726d8c587fc0f60cfed43fa0873e"
+SRCREV_machine:edgerouter ?= "b978686694c3e41968821d6cc2a2a371fd9c2fb0"
+SRCREV_machine:beaglebone-yocto ?= "4c875cf1376178dfab4913aa1350cab50bb093d3"
 
 COMPATIBLE_MACHINE:genericx86 = "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.15.22"
-LINUX_VERSION:genericx86-64 = "5.15.22"
-LINUX_VERSION:edgerouter = "5.15.1"
-LINUX_VERSION:beaglebone-yocto = "5.15.1"
+LINUX_VERSION:genericx86 = "5.15.36"
+LINUX_VERSION:genericx86-64 = "5.15.36"
+LINUX_VERSION:edgerouter = "5.15.36"
+LINUX_VERSION:beaglebone-yocto = "5.15.36"
-- 
2.25.1

