Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by mx.groups.io with SMTP id smtpd.web10.2550.1654049565961091048
 for <poky@lists.yoctoproject.org>;
 Tue, 31 May 2022 19:12:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=FPFQrZMI;
 spf=pass (domain: intel.com, ip: 192.55.52.151, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1654049566; x=1685585566;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=QsCRoj8T/C+mcTETcio6wvXjPzJfevdZv0u+OTXPVmQ=;
  b=FPFQrZMIqUfwEcgwoaCrkYWkwL/2/q/K13tUKAp8vcF+usSJCnUadVnO
   Iy4B1HXjKO7eQg4dlHiQMw4J/jdyWoVI6bmYK59CGM3tEhS6wbRYQ8qTC
   3ZUD0hMmcC9pGJxe8TjNtGxtwrJQB2vpKUDh+AXg7ydGdR/hJLs2xIxiZ
   070WAHL4ayvKcO9aAgHO2oHnKtPnPACOwFQ8wybKkhh6cH5cF+0p82fes
   DoxmUroUhD7HIPEWJ7YNGqUSBUMoUbfoEqKchBmcPxnK+nHsHVsOTQfW2
   9xwdAAT2L3QWm7eheDAgFm24K1xMoxfxuYwOBLkSa9ijLAioSE3qoDgGC
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="255922357"
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; 
   d="scan'208";a="255922357"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 May 2022 19:12:45 -0700
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; 
   d="scan'208";a="667197912"
Received: from rpuvenes-mobl1.gar.corp.intel.com (HELO anmitta2-mobl3.intel.com) ([10.215.250.27])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 May 2022 19:12:44 -0700
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [honister][meta-yocto][PATCH] yocto-bsps: update to v5.10.113
Date: Wed,  1 Jun 2022 10:12:38 +0800
Message-Id: <20220601021238.12742-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Updating linux-yocto/5.10 to the latest korg -stable release that comprises
the following commits:

    54af9dd2b958 Linux 5.10.113
    7992fdb045fb Revert "net: micrel: fix KS8851_MLL Kconfig"
    8bedbc8f7f35 block/compat_ioctl: fix range check in BLKGETSIZE
    fea24b07edfc staging: ion: Prevent incorrect reference counting behavour
    dccee748af17 spi: atmel-quadspi: Fix the buswidth adjustment between spi-mem and controller
    572761645b88 jbd2: fix a potential race while discarding reserved buffers after an abort
    50aac4427360 can: isotp: stop timeout monitoring when no first frame was sent
    e1e96e372721 ext4: force overhead calculation if the s_overhead_cluster makes no sense
    4789149b9ea2 ext4: fix overhead calculation to account for the reserved gdt blocks
    0c54b093766b ext4, doc: fix incorrect h_reserved size
    22c450d39f89 ext4: limit length to bitmap_maxbytes - blocksize in punch_hole
    75ac724684b7 ext4: fix use-after-free in ext4_search_dir
    a46b3d849864 ext4: fix symlink file size not match to file content
    f6038d43b25b ext4: fix fallocate to use file_modified to update permissions consistently
    19590bbc691d perf report: Set PERF_SAMPLE_DATA_SRC bit for Arm SPE event
    e012f9d1af54 powerpc/perf: Fix power9 event alternatives
    0a2cef65b329 drm/vc4: Use pm_runtime_resume_and_get to fix pm_runtime_get_sync() usage
    f8f8b3124b89 KVM: PPC: Fix TCE handling for VFIO
    405d98427416 drm/panel/raspberrypi-touchscreen: Initialise the bridge in prepare
    231381f52116 drm/panel/raspberrypi-touchscreen: Avoid NULL deref if not initialised
    51d9cbbb0f5a perf/core: Fix perf_mmap fail when CONFIG_PERF_USE_VMALLOC enabled
    88fcfd6ee6c5 sched/pelt: Fix attach_entity_load_avg() corner case
    c55327bc3712 arm_pmu: Validate single/group leader events
    5580b974a84b ARC: entry: fix syscall_trace_exit argument
    7082650eb826 e1000e: Fix possible overflow in LTR decoding
    43a2a3734aa3 ASoC: soc-dapm: fix two incorrect uses of list iterator
    54e6180c8c2d gpio: Request interrupts after IRQ is initialized
    0837ff17d052 openvswitch: fix OOB access in reserve_sfa_size()
    19f6dcb1f0f0 xtensa: fix a7 clobbering in coprocessor context load/store
    f399ab11dd6c xtensa: patch_text: Fixup last cpu should be master
    ba2716da2336 net: atlantic: invert deep par in pm functions, preventing null derefs
    358a3846f6a9 dma: at_xdmac: fix a missing check on list iterator
    cf23a960c5c6 ata: pata_marvell: Check the 'bmdma_addr' beforing reading
    9ca66d791439 mm/mmu_notifier.c: fix race in mmu_interval_notifier_remove()
    ed5d4efb4df1 oom_kill.c: futex: delay the OOM reaper to allow time for proper futex cleanup
    6b932920b96f mm, hugetlb: allow for "high" userspace addresses
    50cbc583fa83 EDAC/synopsys: Read the error count from the correct register
    7ec6e06ee405 nvme-pci: disable namespace identifiers for Qemu controllers
    316bd86c2261 nvme: add a quirk to disable namespace identifiers
    76101c8e0c31 stat: fix inconsistency between struct stat and struct compat_stat
    bf28bba30410 scsi: qedi: Fix failed disconnect handling
    a284cca3d81a net: macb: Restart tx only if queue pointer is lagging
    9581e07b549b drm/msm/mdp5: check the return of kzalloc()
    8d71edabb0ab dpaa_eth: Fix missing of_node_put in dpaa_get_ts_info()
    b3afe5a7fd75 brcmfmac: sdio: Fix undefined behavior due to shift overflowing the constant
    202748f44148 mt76: Fix undefined behavior due to shift overflowing the constant
    0de9c104d04a net: atlantic: Avoid out-of-bounds indexing
    5bef9fc38ffa cifs: Check the IOCB_DIRECT flag, not O_DIRECT
    e129c55153c8 vxlan: fix error return code in vxlan_fdb_append
    8e7ea1136475 arm64: dts: imx: Fix imx8*-var-som touchscreen property sizes
    cd227ac03f2a ALSA: usb-audio: Fix undefined behavior due to shift overflowing the constant
    490815f0b50e platform/x86: samsung-laptop: Fix an unsigned comparison which can never be negative
    cb17b56a9b4d reset: tegra-bpmp: Restore Handle errors in BPMP response
    d513ea9b7ef8 ARM: vexpress/spc: Avoid negative array index when !SMP
    052e4a661f90 arm64: mm: fix p?d_leaf()
    18ff7a2efa4e arm64/mm: Remove [PUD|PMD]_TABLE_BIT from [pud|pmd]_bad()
    3bf8ca350170 selftests: mlxsw: vxlan_flooding: Prevent flooding of unwanted packets
    520aab8b723c dmaengine: idxd: add RO check for wq max_transfer_size write
    9a3c026dc3a5 dmaengine: idxd: add RO check for wq max_batch_size write
    f593f49fcd17 net: stmmac: Use readl_poll_timeout_atomic() in atomic state
    3d55b195747c netlink: reset network and mac headers in netlink_dump()
    49516e6ed914 ipv6: make ip6_rt_gc_expire an atomic_t
    078d839f11ac l3mdev: l3mdev_master_upper_ifindex_by_index_rcu should be using netdev_master_upper_dev_get_rcu
    0ac8f83d8f64 net/sched: cls_u32: fix possible leak in u32_init_knode()
    93366275be72 ip6_gre: Fix skb_under_panic in __gre6_xmit()
    200f96ebb389 ip6_gre: Avoid updating tunnel->tun_hlen in __gre6_xmit()
    8fb76adb89f0 net/packet: fix packet_sock xmit return value checking
    a499cb5f3ef9 net/smc: Fix sock leak when release after smc_shutdown()
    60592f16a456 rxrpc: Restore removed timer deletion
    fc7116a79a86 igc: Fix BUG: scheduling while atomic
    46b0e4f998ce igc: Fix infinite loop in release_swfw_sync
    c075c3ea0317 esp: limit skb_page_frag_refill use to a single page
    3f7914dbeacd spi: spi-mtk-nor: initialize spi controller after resume
    f714abf28f81 dmaengine: mediatek:Fix PM usage reference leak of mtk_uart_apdma_alloc_chan_resources
    9bc949a181ba dmaengine: imx-sdma: Fix error checking in sdma_event_remap
    12aa8021c7a7 ASoC: codecs: wcd934x: do not switch off SIDO Buck when codec is in use
    b6f474cd3097 ASoC: msm8916-wcd-digital: Check failure for devm_snd_soc_register_component
    608fc58858bf ASoC: atmel: Remove system clock tree configuration for at91sam9g20ek
    d29c78d3f9c5 dm: fix mempool NULL pointer race when completing IO
    cf9b19546494 ALSA: hda/realtek: Add quirk for Clevo NP70PNP
    8ce3820fc9d4 ALSA: usb-audio: Clear MIDI port active flag after draining
    43ce33a68e2b net/sched: cls_u32: fix netns refcount changes in u32_change()
    04dd45d9776e gfs2: assign rgrp glock before compute_bitstructs
    378061c9b886 perf tools: Fix segfault accessing sample_id xyarray
    5e8446e3820c tracing: Dump stacktrace trigger to the corresponding instance
    69848f9488bc mm: page_alloc: fix building error on -Werror=array-compare
    08ad7a770efa etherdevice: Adjust ether_addr* prototypes to silence -Wstringop-overead
    1052f9bce629 Linux 5.10.112
    5c62d3bf1410 ax25: Fix UAF bugs in ax25 timers
    f934fa478dd1 ax25: Fix NULL pointer dereferences in ax25 timers
    145ea8d213e8 ax25: fix NPD bug in ax25_disconnect
    a4942c6fea87 ax25: fix UAF bug in ax25_send_control()
    b20a5ab0f5fb ax25: Fix refcount leaks caused by ax25_cb_del()
    57cc15f5fd55 ax25: fix UAF bugs of net_device caused by rebinding operation
    5ddae8d06441 ax25: fix reference count leaks of ax25_dev
    5ea00fc60676 ax25: add refcount in ax25_dev to avoid UAF bugs
    361288633bfa scsi: iscsi: Fix unbound endpoint error handling
    129db30599bc scsi: iscsi: Fix endpoint reuse regression
    26f827e095ab dma-direct: avoid redundant memory sync for swiotlb
    9a5a4d23e24d timers: Fix warning condition in __run_timers()
    84837f43e56f i2c: pasemi: Wait for write xfers to finish
    89496d80bf84 smp: Fix offline cpu check in flush_smp_call_function_queue()
    cd02b2687d66 dm integrity: fix memory corruption when tag_size is less than digest size
    0a312ec66a03 ARM: davinci: da850-evm: Avoid NULL pointer dereference
    0806f1930562 tick/nohz: Use WARN_ON_ONCE() to prevent console saturation
    0275c75955d1 genirq/affinity: Consider that CPUs on nodes can be unbalanced
    1fcfe37d170a drm/amdgpu: Enable gfxoff quirk on MacBook Pro
    68ae52efa132 drm/amd/display: don't ignore alpha property on pre-multiplied mode
    a263712ba8c9 ipv6: fix panic when forwarding a pkt with no in6 dev
    659214603bf2 nl80211: correctly check NL80211_ATTR_REG_ALPHA2 size
    912797e54c99 ALSA: pcm: Test for "silence" field in struct "pcm_format_data"
    48d070ca5e7e ALSA: hda/realtek: add quirk for Lenovo Thinkpad X12 speakers
    163e16247130 ALSA: hda/realtek: Add quirk for Clevo PD50PNT
    5e4dd1799883 btrfs: mark resumed async balance as writing
    1d2eda18f6ff btrfs: fix root ref counts in error handling in btrfs_get_root_ref
    9b7ec35253c9 ath9k: Fix usage of driver-private space in tx_info
    0f65cedae500 ath9k: Properly clear TX status area before reporting to mac80211
    cc21ae932656 gcc-plugins: latent_entropy: use /dev/urandom
    c089ffc846c8 memory: renesas-rpc-if: fix platform-device leak in error path
    342454231ee5 KVM: x86/mmu: Resolve nx_huge_pages when kvm.ko is loaded
    06c348fde545 mm: kmemleak: take a full lowmem check in kmemleak_*_phys()
    20ed94f8181a mm: fix unexpected zeroed page mapping with zram swap
    192e507ef894 mm, page_alloc: fix build_zonerefs_node()
    000b3921b4d5 perf/imx_ddr: Fix undefined behavior due to shift overflowing the constant
    ca24c5e8f0ac drivers: net: slip: fix NPD bug in sl_tx_timeout()
    e8cf1e4d953d scsi: megaraid_sas: Target with invalid LUN ID is deleted during scan
    5b7ce74b6bc8 scsi: mvsas: Add PCI ID of RocketRaid 2640
    4b44cd584057 drm/amd/display: Fix allocate_mst_payload assert on resume
    34ea097fb63d drm/amd/display: Revert FEC check in validation
    fa5ee7c4232c myri10ge: fix an incorrect free for skb in myri10ge_sw_tso
    d90df6da50c5 net: usb: aqc111: Fix out-of-bounds accesses in RX fixup
    9c12fcf1d864 net: axienet: setup mdio unconditionally
    b643807a735e tlb: hugetlb: Add more sizes to tlb_remove_huge_tlb_entry
    98973d2bdd4a arm64: alternatives: mark patch_alternative() as `noinstr`
    2462faffbfa5 regulator: wm8994: Add an off-on delay for WM8994 variant
    aa8cdedaf760 gpu: ipu-v3: Fix dev_dbg frequency output
    150fe861c57c ata: libata-core: Disable READ LOG DMA EXT for Samsung 840 EVOs
    1ff5359afa5e net: micrel: fix KS8851_MLL Kconfig
    d3478709edf2 scsi: ibmvscsis: Increase INITIAL_SRP_LIMIT to 1024
    b9a110fa755b scsi: lpfc: Fix queue failures when recovering from PCI parity error
    aec36b98a1bb scsi: target: tcmu: Fix possible page UAF
    43666798059c Drivers: hv: vmbus: Prevent load re-ordering when reading ring buffer
    1d7a5aae884c drm/amdkfd: Check for potential null return of kmalloc_array()
    e5afacc826a8 drm/amdgpu/vcn: improve vcn dpg stop procedure
    d2e0931e6d84 drm/amdkfd: Fix Incorrect VMIDs passed to HWS
    7fc0610ad818 drm/amd/display: Update VTEM Infopacket definition
    6906e05cf3ad drm/amd/display: FEC check in timing validation
    756c61c1680f drm/amd/display: fix audio format not updated after edid updated
    76e086ce7b2d btrfs: do not warn for free space inode in cow_file_range
    217190dc66ef btrfs: fix fallocate to use file_modified to update permissions consistently
    9b5d1b3413d7 drm/amd: Add USBC connector ID
    6f9c06501d28 net: bcmgenet: Revert "Use stronger register read/writes to assure ordering"
    504c15f07f54 dm mpath: only use ktime_get_ns() in historical selector
    4e166a41180b cifs: potential buffer overflow in handling symlinks
    67677050cecb nfc: nci: add flush_workqueue to prevent uaf
    bfba9722cf2e perf tools: Fix misleading add event PMU debug message
    280f721edc54 testing/selftests/mqueue: Fix mq_perf_tests to free the allocated cpu set
    eb8873b324d9 sctp: Initialize daddr on peeled off socket
    45226fac4d31 scsi: iscsi: Fix conn cleanup and stop race during iscsid restart
    73805795c99f scsi: iscsi: Fix offload conn cleanup when iscsid restarts
    699bd835c36e scsi: iscsi: Move iscsi_ep_disconnect()
    46f37a34a53d scsi: iscsi: Fix in-kernel conn failure handling
    812573896711 scsi: iscsi: Rel ref after iscsi_lookup_endpoint()
    22608545b834 scsi: iscsi: Use system_unbound_wq for destroy_work
    4029a1e992fc scsi: iscsi: Force immediate failure during shutdown
    17d14456f626 scsi: iscsi: Stop queueing during ep_disconnect
    da9cf24aa739 scsi: pm80xx: Enable upper inbound, outbound queues
    e08d26971237 scsi: pm80xx: Mask and unmask upper interrupt vectors 32-63
    35b91e49bc80 net/smc: Fix NULL pointer dereference in smc_pnet_find_ib()
    98a7f6c4ada4 drm/msm/dsi: Use connector directly in msm_dsi_manager_connector_init()
    5f78ad93837c drm/msm: Fix range size vs end confusion
    5513f9a0b068 cfg80211: hold bss_lock while updating nontrans_list
    a44938950e5e net/sched: taprio: Check if socket flags are valid
    08d5e3e95453 net: ethernet: stmmac: fix altr_tse_pcs function when using a fixed-link
    2ad9d890d850 net: dsa: felix: suppress -EPROBE_DEFER errors
    f2cc341fcc42 net/sched: fix initialization order when updating chain 0 head
    7a7cf8414841 mlxsw: i2c: Fix initialization error flow
    43e58e119a2b net: mdio: Alphabetically sort header inclusion
    9709c8b5cdc8 gpiolib: acpi: use correct format characters
    d67c900f1947 veth: Ensure eth header is in skb's linear part
    845f44ce3d9f net/sched: flower: fix parsing of ethertype following VLAN header
    85ee17ca21cf SUNRPC: Fix the svc_deferred_event trace class
    af12dd71235c media: rockchip/rga: do proper error checking in probe
    563712971202 firmware: arm_scmi: Fix sorting of retrieved clock rates
    16c628b0c6fa memory: atmel-ebi: Fix missing of_node_put in atmel_ebi_probe
    cb66641f8106 drm/msm: Add missing put_task_struct() in debugfs path
    921fdc45a084 btrfs: remove unused variable in btrfs_{start,write}_dirty_block_groups()
    5d131318bb87 ACPI: processor idle: Check for architectural support for LPI
    503934df3108 cpuidle: PSCI: Move the `has_lpi` check to the beginning of the function
    cfa98ffc42f1 hamradio: remove needs_free_netdev to avoid UAF
    80a4df14643f hamradio: defer 6pack kfree after unregister_netdev
    f0c31f192f38 drm/amdkfd: Use drm_priv to pass VM from KFD to amdgpu
    6c8e5cb264df Linux 5.10.111
    d36febbcd537 powerpc: Fix virt_addr_valid() for 64-bit Book3E & 32-bit
    5c672073bcca mm/sparsemem: fix 'mem_section' will never be NULL gcc 12 warning
    5973f7507a73 irqchip/gic, gic-v3: Prevent GSI to SGI translations
    000e09462f85 Drivers: hv: vmbus: Replace smp_store_mb() with virt_store_mb()
    e1f540b752cb arm64: module: remove (NOLOAD) from linker script
    919823bd6738 selftests: cgroup: Test open-time cgroup namespace usage for migration checks
    637eca44b8f7 selftests: cgroup: Test open-time credential usage for migration checks
    9dd39d2c6572 selftests: cgroup: Make cg_create() use 0755 for permission instead of 0644
    e74da71e6614 selftests/cgroup: Fix build on older distros
    4665722d36ad cgroup: Use open-time credentials for process migraton perm checks
    f089471d1b75 mm: don't skip swap entry even if zap_details specified
    58823a9b097c ubsan: remove CONFIG_UBSAN_OBJECT_SIZE
    03b39bbbec8b dmaengine: Revert "dmaengine: shdma: Fix runtime PM imbalance on error"
    40e00885a61f tools build: Use $(shell ) instead of `` to get embedded libperl's ccopts
    75c8558d410f tools build: Filter out options and warnings not supported by clang
    6374faf49e89 perf python: Fix probing for some clang command line options
    79abc219bafd perf build: Don't use -ffat-lto-objects in the python feature test when building with clang-13
    82e43950143c drm/amdkfd: Create file descriptor after client is added to smi_clients list
    326b408e7ec7 drm/nouveau/pmu: Add missing callbacks for Tegra devices
    786ae8de3a5e drm/amdgpu/smu10: fix SoC/fclk units in auto mode
    ff24114bb08d irqchip/gic-v3: Fix GICR_CTLR.RWP polling
    451214b266e9 perf: qcom_l2_pmu: fix an incorrect NULL check on list iterator
    fc629224aa62 ata: sata_dwc_460ex: Fix crash due to OOB write
    7e88a50704b0 gpio: Restrict usage of GPIO chip irq members before initialization
    5f54364ff6cf RDMA/hfi1: Fix use-after-free bug for mm struct
    8bb41682911f arm64: patch_text: Fixup last cpu should be master
    a044bca8ef31 btrfs: prevent subvol with swapfile from being deleted
    82ae73ac963c btrfs: fix qgroup reserve overflow the qgroup limit
    fc4bdaed4d4e x86/speculation: Restore speculation related MSRs during S3 resume
    8c9e26c890ba x86/pm: Save the MSR validity status at context setup
    2827328e646d io_uring: fix race between timeout flush and removal
    f7e183b0a713 mm/mempolicy: fix mpol_new leak in shared_policy_replace
    7d659cb1763f mmmremap.c: avoid pointless invalidate_range_start/end on mremap(old_size=0)
    6adc01a7aa37 lz4: fix LZ4_decompress_safe_partial read out of bound
    8b6f04b4c9d9 mmc: renesas_sdhi: don't overwrite TAP settings when HS400 tuning is complete
    029b4170737f mmc: mmci: stm32: correctly check all elements of sg list
    41a519c05bee Revert "mmc: sdhci-xenon: fix annoying 1.8V regulator warning"
    9de98470db6e arm64: Add part number for Arm Cortex-A78AE
    4604b5738d5b perf session: Remap buf if there is no space for event
    362ced37690d perf tools: Fix perf's libperf_print callback
    65210fac639e perf: arm-spe: Fix perf report --mem-mode
    bd905fed87ce iommu/omap: Fix regression in probe for NULL pointer dereference
    b3c00be2ff8b SUNRPC: svc_tcp_sendmsg() should handle errors from xdr_alloc_bvec()
    9a45e08636bb SUNRPC: Handle low memory situations in call_status()
    132cbe2f182a SUNRPC: Handle ENOMEM in call_transmit_status()
    aed30a205406 io_uring: don't touch scm_fp_list after queueing skb
    594205b49367 drbd: Fix five use after free bugs in get_initial_state
    970a6bb72912 bpf: Support dual-stack sockets in bpf_tcp_check_syncookie
    6c17f4ef3c4f spi: bcm-qspi: fix MSPI only access with bcm_qspi_exec_mem_op()
    8928239e5e2e qede: confirm skb is allocated before using
    b7893388bb88 net: phy: mscc-miim: reject clause 45 register accesses
    08ff0e74fab5 rxrpc: fix a race in rxrpc_exit_net()
    5ae05b5eb587 net: openvswitch: fix leak of nested actions
    42ab401d22de net: openvswitch: don't send internal clone attribute to the userspace.
    e54ea8fc51ca ice: synchronize_rcu() when terminating rings
    e3dd1202ab2e ipv6: Fix stats accounting in ip6_pkt_drop
    ffce126c952e ice: Do not skip not enabled queues in ice_vc_dis_qs_msg
    b003fc4913ea ice: Set txq_teid to ICE_INVAL_TEID on ring creation
    ebd1e3458dbf dpaa2-ptp: Fix refcount leak in dpaa2_ptp_probe
    43c2d7890eca IB/rdmavt: add lock to call to rvt_error_qp to prevent a race condition
    3a57babfb6e9 RDMA/mlx5: Don't remove cache MRs when a delay is needed
    d8992b393f97 sfc: Do not free an empty page_ring
    0ac74169ebc3 bnxt_en: reserve space inside receive page for skb_shared_info
    f8b0ef0a5889 drm/imx: Fix memory leak in imx_pd_connector_get_modes
    25bc9fd4c8d1 drm/imx: imx-ldb: Check for null pointer after calling kmemdup
    02ab4abe5bbf net: stmmac: Fix unset max_speed difference between DT and non-DT platforms
    63ea57478aaa net: ipv4: fix route with nexthop object delete warning
    4be6ed03107b ice: Clear default forwarding VSI during VSI release
    589154d0f189 net/tls: fix slab-out-of-bounds bug in decrypt_internal
    c5f77b595379 scsi: zorro7xx: Fix a resource leak in zorro7xx_remove_one()
    45b9932b4daa NFSv4: fix open failure with O_ACCMODE flag
    c688705a3978 Revert "NFSv4: Handle the special Linux file open access mode"
    cf580d2e3884 Drivers: hv: vmbus: Fix potential crash on module unload
    0c122eb3a109 drm/amdgpu: fix off by one in amdgpu_gfx_kiq_acquire()
    84e5dfc05f37 Revert "hv: utils: add PTP_1588_CLOCK to Kconfig to fix build"
    3c3fbfa6dddb mm: fix race between MADV_FREE reclaim and blkdev direct IO read
    1753a49e266d parisc: Fix patch code locking and flushing
    f7c35220305f parisc: Fix CPU affinity for Lasi, WAX and Dino chips
    c74e2f6ecc51 NFS: Avoid writeback threads getting stuck in mempool_alloc()
    34681aeddcfc NFS: nfsiod should not block forever in mempool_alloc()
    7a506fabcfe1 SUNRPC: Fix socket waits for write buffer space
    b9c5ac0a15f2 jfs: prevent NULL deref in diFree
    c69b442125bf virtio_console: eliminate anonymous module_init & module_exit
    3309b3221711 serial: samsung_tty: do not unlock port->lock for uart_write_wakeup()
    9cb90f9ad597 x86/Kconfig: Do not allow CONFIG_X86_X32_ABI=y with llvm-objcopy
    b3882e78aa0a NFS: swap-out must always use STABLE writes.
    d4170a28217a NFS: swap IO handling is slightly different for O_DIRECT IO
    4b6f122bdfdc SUNRPC: remove scheduling boost for "SWAPPER" tasks.
    f4fc47e71e32 SUNRPC/xprt: async tasks mustn't block waiting for memory
    f9244d31e05a SUNRPC/call_alloc: async tasks mustn't block waiting for memory
    e2b2542f7452 clk: Enforce that disjoints limits are invalid
    1e9b5538cf16 clk: ti: Preserve node in ti_dt_clocks_register()
    a2a0e04f6478 xen: delay xen_hvm_init_time_ops() if kdump is boot on vcpu>=32
    4a2544ce244b NFSv4: Protect the state recovery thread against direct reclaim
    9b9feec97c1f NFSv4.2: fix reference count leaks in _nfs42_proc_copy_notify()
    2e16895d06e6 w1: w1_therm: fixes w1_seq for ds28ea00 sensors
    93498c6e775a staging: wfx: fix an error handling in wfx_init_common()
    8f1d24f85ffd phy: amlogic: meson8b-usb2: Use dev_err_probe()
    aa0b72967853 staging: vchiq_core: handle NULL result of find_service_by_handle
    be4ecca95819 clk: si5341: fix reported clk_rate when output divider is 2
    c9cf6baabf78 minix: fix bug when opening a file with O_DIRECT
    8d9efd4434e3 init/main.c: return 1 from handled __setup() functions
    f44297861296 ceph: fix memory leak in ceph_readdir when note_last_dentry returns error
    d745512d54fd netlabel: fix out-of-bounds memory accesses
    2cc803804ec9 Bluetooth: Fix use after free in hci_send_acl
    789621df1963 MIPS: ingenic: correct unit node address
    61e25021e67a xtensa: fix DTC warning unit_address_format
    f6b9550f5367 usb: dwc3: omap: fix "unbalanced disables for smps10_out1" on omap5evm
    a4dd3e9e5ae8 net: sfp: add 2500base-X quirk for Lantech SFP module
    278b652f0ad9 net: limit altnames to 64k total
    423e7107f61f net: account alternate interface name memory
    74c4d5025551 can: isotp: set default value for N_As to 50 micro seconds
    1d7effe5fff9 scsi: libfc: Fix use after free in fc_exch_abts_resp()
    02222bf4f0a2 powerpc/secvar: fix refcount leak in format_show()
    fd416c3f5a4c MIPS: fix fortify panic when copying asm exception handlers
    7c657c0694ff PCI: endpoint: Fix misused goto label
    79cfc0052f39 bnxt_en: Eliminate unintended link toggle during FW reset
    9567d54e70ff Bluetooth: use memset avoid memory leaks
    f9b183f1332a Bluetooth: Fix not checking for valid hdev on bt_dev_{info,warn,err,dbg}
    647b35aaf454 tuntap: add sanity checks about msg_controllen in sendmsg
    797b4ea9515e macvtap: advertise link netns via netlink
    142ae7d4f215 mips: ralink: fix a refcount leak in ill_acc_of_setup()
    f2565cb40e9b net/smc: correct settings of RMB window update limit
    224903cc60d0 scsi: hisi_sas: Free irq vectors in order for v3 HW
    f49ffaa85d2c scsi: aha152x: Fix aha152x_setup() __setup handler return value
    91ee8a14efb6 mt76: mt7615: Fix assigning negative values to unsigned variable
    d83574666bac scsi: pm8001: Fix memory leak in pm8001_chip_fw_flash_update_req()
    a0bb65eadbf9 scsi: pm8001: Fix tag leaks on error
    2051044d7901 scsi: pm8001: Fix task leak in pm8001_send_abort_all()
    3bd9a28798ca scsi: pm8001: Fix pm8001_mpi_task_abort_resp()
    ef969095c442 scsi: pm8001: Fix pm80xx_pci_mem_copy() interface
    fe4b6d5a0dd7 drm/amdkfd: make CRAT table missing message informational only
    2f2f017ea873 dm: requeue IO if mapping table not yet available
    71c8df33fd77 dm ioctl: prevent potential spectre v1 gadget
    f655b724b440 ipv4: Invalidate neighbour for broadcast address upon address addition
    bae03957e8ca iwlwifi: mvm: Correctly set fragmented EBS
    9538563d31a2 power: supply: axp288-charger: Set Vhold to 4.4V
    c66cc0404367 PCI: pciehp: Add Qualcomm quirk for Command Completed erratum
    b1b27b0e8d48 tcp: Don't acquire inet_listen_hashbucket::lock with disabled BH.
    b02a1a65023f PCI: endpoint: Fix alignment fault error in copy tests
    4820847e8bc2 usb: ehci: add pci device support for Aspeed platforms
    0b9cf0b59925 iommu/arm-smmu-v3: fix event handling soft lockup
    e07e420a0056 PCI: aardvark: Fix support for MSI interrupts
    6694b8643bde drm/amdgpu: Fix recursive locking warning
    ea21eaea7f5f powerpc: Set crashkernel offset to mid of RMA region
    fb5ac62fbe16 ipv6: make mc_forwarding atomic
    5baf92a2c46c libbpf: Fix build issue with llvm-readelf
    26a1e4739e44 cfg80211: don't add non transmitted BSS to 6GHz scanned channels
    9a56e2b271bc mt76: dma: initialize skip_unmap in mt76_dma_rx_fill
    b42b6d0ec358 power: supply: axp20x_battery: properly report current when discharging
    de9505936c47 scsi: bfa: Replace snprintf() with sysfs_emit()
    ed7db959203e scsi: mvsas: Replace snprintf() with sysfs_emit()
    995f51788868 bpf: Make dst_port field in struct bpf_sock 16-bit wide
    339bd0b55ecd ath11k: mhi: use mhi_sync_power_up()
    c6a815f5abdf ath11k: fix kernel panic during unload/load ath11k modules
    e4d2d7201356 powerpc: dts: t104xrdb: fix phy type for FMAN 4/5
    02e2ee861984 ptp: replace snprintf with sysfs_emit
    9ea17b9f1dd0 usb: gadget: tegra-xudc: Fix control endpoint's definitions
    07971b818e18 usb: gadget: tegra-xudc: Do not program SPARAM
    927beb05aaa4 drm/amd/amdgpu/amdgpu_cs: fix refcount leak of a dma_fence obj
    85313d9bc7bd drm/amd/display: Add signal type check when verify stream backends same
    9d7d83d0399e ath5k: fix OOB in ath5k_eeprom_read_pcal_info_5111
    850c4351e895 drm: Add orientation quirk for GPD Win Max
    a24479c5e9f4 KVM: x86/emulator: Emulate RDPID only if it is enabled in guest
    66b0fa6b2218 KVM: x86/svm: Clear reserved bits written to PerfEvtSeln MSRs
    2e52a294700b rtc: wm8350: Handle error for wm8350_register_irq
    0777fe98a44c gfs2: gfs2_setattr_size error path fix
    f349d7f9ee6d gfs2: Fix gfs2_release for non-writers regression
    3f53715fd55c gfs2: Check for active reservation in gfs2_release
    2dc49f58a29c ubifs: Rectify space amount budget for mkdir/tmpfile operations

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 184595145167adebf167368639d0258c13c064cc)
Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 .../linux/linux-yocto_5.10.bbappend              | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index 4f4ec0f..94192af 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,17 +7,17 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "c0b313d988a16b25c1ee730bfe7393c462ee8a5c"
-SRCREV_machine:genericx86-64 ?= "c0b313d988a16b25c1ee730bfe7393c462ee8a5c"
-SRCREV_machine:edgerouter ?= "4ab94e777d8b41ee1ee4c279259e9733bc8049b1"
-SRCREV_machine:beaglebone-yocto ?= "941cc9c3849f96f7eaf109b1e35e05ba366aca56"
+SRCREV_machine:genericx86 ?= "a8b4c628f382412e5e7df5750f2be711df95fa06"
+SRCREV_machine:genericx86-64 ?= "a8b4c628f382412e5e7df5750f2be711df95fa06"
+SRCREV_machine:edgerouter ?= "43577894d2295a92fce760dc403b97527fb55835"
+SRCREV_machine:beaglebone-yocto ?= "8038166b729c192d06f1eb37ab6868a5769f8bc5"
 
 COMPATIBLE_MACHINE:genericx86 = "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.10.99"
-LINUX_VERSION:genericx86-64 = "5.10.99"
-LINUX_VERSION:edgerouter = "5.10.63"
-LINUX_VERSION:beaglebone-yocto = "5.10.63"
+LINUX_VERSION:genericx86 = "5.10.113"
+LINUX_VERSION:genericx86-64 = "5.10.113"
+LINUX_VERSION:edgerouter = "5.10.113"
+LINUX_VERSION:beaglebone-yocto = "5.10.113"
-- 
2.35.3

