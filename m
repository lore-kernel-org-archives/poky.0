Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 603CE4C80B71
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 17:51:44 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Dec 2010 15:51:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,357,1288594800"; d="scan'208";a="687988252"
Received: from doubt.jf.intel.com (HELO [10.7.199.146]) ([10.7.199.146])
	by orsmga001.jf.intel.com with ESMTP; 16 Dec 2010 15:51:43 -0800
Message-ID: <4D0AA615.7050505@linux.intel.com>
Date: Thu, 16 Dec 2010 15:51:49 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: kernel SRCREV and meta series woes re new preempt_rt recipe
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
X-List-Received-Date: Thu, 16 Dec 2010 23:51:45 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hey Bruce,

(lots of logs, explanation all through to the end)

I'm running into a couple issues I haven't been able to explain.
I'm building from poky-contrib dvhart/rt which I rebased against
zedd/kernel today (646be7efc3c2a966607526439e3ad812cb4ae3f8). My
local.conf has 'MACHINE?=qemux86-64'.

You can see the linux-yocto-rt recipe in my contrib branch mentioned
above, but for quick reference, here's the diff from linux-yocto-stable:

	$ diff linux-yocto-stable_git.bb linux-yocto-rt_stablegit.bb
	14a15
	> LINUX_KERNEL_TYPE = "preempt_rt"
	21c22
	< COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|atom-pc|routerstationpro|mpc8315e-rdb|beagleboard)"
	---
	> COMPATIBLE_MACHINE = "(qemux86-64)"
	32a34
	>     print "LINUX_KERNEL_TYPE_EXTENSION: ", bb.data.getVar("LINUX_KERNEL_TYPE_EXTENSION", d)
	37a40,41
	> #SRCREV_machine_pn-linux-yocto-rt_qemux86-64 = "f49444f06875894389e640bcda6c3f6ceb1f0c3e"
	> #SRCREV = "f49444f06875894389e640bcda6c3f6ceb1f0c3e"
	
I determined the SRCREV from:
	$ git log --pretty=oneline origin/common_pc_64-preempt_rt -1
	f49444f06875894389e640bcda6c3f6ceb1f0c3e Merge branch 'standard' into common_pc_


First, bitbake is complaining about SRCREV while parsing
linux-yocto-rt_stablegit.bb:

	$ bitbake linux-yocto-rt
	NOTE: Handling BitBake files: | (0236/0803) [29 %]
	LINUX_KERNEL_TYPE_EXTENSION:  preempt-rt # dvhart debug
	NOTE: <class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid value while evaluating:
	${@bb.fetch.get_srcrev(d)}
	NOTE: <class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid value while evaluating:
	${LINUX_VERSION}+git${SRCPV}
	NOTE: <class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid value while evaluating:
	${PN}-${EXTENDPE}${PV}-${PR}
	NOTE: <class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid value while evaluating:
	${TMPDIR}/work/${MULTIMACH_TARGET_SYS}/${PF}
	NOTE: <class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid value while evaluating:
	${WORKDIR}/linux
	NOTE: <class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV to a valid value while evaluating:
	        cd ${S}
	        if [ -f ${WORKDIR}/defconfig ]; then
	            defconfig=${WORKDIR}/defconfig
	        fi
	
	        kbranch=${KBRANCH}
	
	        # simply ensures that a branch of the right name has been created
	        createme ${ARCH} ${kbranch} ${defconfig}
	        if [ $? -ne 0 ]; then
	                echo "ERROR. Could not create ${kbranch}"
	                exit 1
	        fi
	
	        # updates or generates the target description
	        if [ -n "${KERNEL_FEATURES}" ]; then
	               addon_features="--features ${KERNEL_FEATURES}"
	        fi
	        updateme ${addon_features} ${ARCH} ${WORKDIR}
	        if [ $? -ne 0 ]; then
	                echo "ERROR. Could not update ${kbranch}"
	                exit 1
	        fi
	
	        # executes and modifies the source tree as required
	        patchme ${kbranch}
	        if [ $? -ne 0 ]; then
	                echo "ERROR. Could not modify ${kbranch}"
	                exit 1
	        fi
	
	NOTE: Error expanding variable do_patch
	ERROR: Please set SRCREV to a valid value while parsing /home/dvhart/data/poky.git/meta/recipes-kernel/linux/linux-yocto-rt_stablegit.bb
	NOTE: Handling BitBake files: - (0802/0803) [99 %]Command execution failed: Traceback (most recent call last):
	  File "/vol/1/dvhart/poky.git/scripts/..//bitbake/lib/bb/command.py", line 85, in runAsyncCommand
	    self.cooker.updateCache()
	  File "/vol/1/dvhart/poky.git/scripts/..//bitbake/lib/bb/cooker.py", line 804, in updateCache
	    if not self.parser.parse_next():
	  File "/vol/1/dvhart/poky.git/scripts/..//bitbake/lib/bb/cooker.py", line 1036, in parse_next
	    raise ParsingErrorsFound
	ParsingErrorsFound


I have added a SRC_REV in poky-default-revisions:
	+# preempt_rt SRCREVs
	+SRCREV_machine_pn-linux-yocto-rt_qemux86-64 ?= "f49444f06875894389e640bcda6c3f6ceb1f0c3e"


If I add the following to linux-yocto-rt_stablegit.bb:
	SRCREV = "f49444f06875894389e640bcda6c3f6ceb1f0c3e"


I get passed the parse error, but do_patch fails:

	Unstaged changes after reset:
	M	.gitignore
	M	Documentation/DocBook/kgdb.tmpl
	M	Documentation/filesystems/00-INDEX
	M	Documentation/filesystems/Locking
	M	Documentation/filesystems/xip.txt
	M	Documentation/hwmon/ltc4245
	M	Documentation/ioctl/ioctl-number.txt
	M	Documentation/kernel-parameters.txt
	M	Documentation/networking/l2tp.txt
	M	Documentation/trace/tracepoints.txt
	M	MAINTAINERS
	M	Makefile
	M	arch/Kconfig
	M	arch/alpha/include/asm/rwsem.h
	M	arch/alpha/include/asm/thread_info.h
	M	arch/alpha/kernel/time.c
	M	arch/arm/Kconfig
	M	arch/arm/Kconfig.debug
	M	arch/arm/Makefile
	M	arch/arm/boot/Makefile
	M	arch/arm/common/sa1111.c
	M	arch/arm/configs/n8x0_defconfig
	M	arch/arm/include/asm/atomic.h
	M	arch/arm/include/asm/dma.h
	M	arch/arm/include/asm/elf.h
	M	arch/arm/include/asm/kgdb.h
	M	arch/arm/include/asm/kmap_types.h
	M	arch/arm/include/asm/processor.h
	M	arch/arm/include/asm/ptrace.h
	M	arch/arm/include/asm/system.h
	M	arch/arm/include/asm/thread_info.h
	M	arch/arm/include/asm/tlb.h
	M	arch/arm/include/asm/tlbflush.h
	M	arch/arm/include/asm/unistd.h
	M	arch/arm/kernel/dma.c
	M	arch/arm/kernel/entry-common.S
	M	arch/arm/kernel/head.S
	M	arch/arm/kernel/kgdb.c
	M	arch/arm/kernel/kprobes-decode.c
	M	arch/arm/kernel/module.c
	M	arch/arm/kernel/perf_event.c
	M	arch/arm/kernel/pmu.c
	M	arch/arm/kernel/process.c
	M	arch/arm/kernel/ptrace.c
	M	arch/arm/kernel/signal.c
	M	arch/arm/kernel/smp.c
	M	arch/arm/kernel/time.c
	M	arch/arm/kernel/traps.c
	M	arch/arm/kernel/vmlinux.lds.S
	M	arch/arm/mach-at91/at91rm9200_time.c
	M	arch/arm/mach-at91/at91sam926x_time.c
	M	arch/arm/mach-at91/gpio.c
	M	arch/arm/mach-bcmring/dma.c
	M	arch/arm/mach-footbridge/include/mach/hardware.h
	M	arch/arm/mach-footbridge/netwinder-hw.c
	M	arch/arm/mach-footbridge/netwinder-leds.c
	M	arch/arm/mach-integrator/core.c
	M	arch/arm/mach-integrator/pci_v3.c
	M	arch/arm/mach-ixp2000/core.c
	M	arch/arm/mach-ixp4xx/common-pci.c
	M	arch/arm/mach-ixp4xx/ixdp425-setup.c
	M	arch/arm/mach-msm/proc_comm.c
	M	arch/arm/mach-mx2/devices.c
	M	arch/arm/mach-mx3/mach-qong.c
	M	arch/arm/mach-omap1/board-nokia770.c
	M	arch/arm/mach-omap2/Makefile
	M	arch/arm/mach-omap2/board-n8x0.c
	M	arch/arm/mach-omap2/board-omap3evm.c
	M	arch/arm/mach-omap2/board-rx51-peripherals.c
	M	arch/arm/mach-omap2/clkt34xx_dpll3m2.c
	M	arch/arm/mach-omap2/clock34xx.c
	M	arch/arm/mach-omap2/clock3xxx_data.c
	M	arch/arm/mach-omap2/gpmc-nand.c
	M	arch/arm/mach-omap2/pm34xx.c
	M	arch/arm/mach-orion5x/ts78xx-setup.c
	M	arch/arm/mach-pxa/cm-x300.c
	M	arch/arm/mach-realview/Kconfig
	M	arch/arm/mach-sa1100/badge4.c
	M	arch/arm/mach-shark/leds.c
	M	arch/arm/mm/Kconfig
	M	arch/arm/mm/cache-l2x0.c
	M	arch/arm/mm/cache-v6.S
	M	arch/arm/mm/cache-v7.S
	M	arch/arm/mm/context.c
	M	arch/arm/mm/copypage-feroceon.c
	M	arch/arm/mm/copypage-v4mc.c
	M	arch/arm/mm/copypage-v4wb.c
	M	arch/arm/mm/copypage-v4wt.c
	M	arch/arm/mm/copypage-v6.c
	M	arch/arm/mm/copypage-xsc3.c
	M	arch/arm/mm/copypage-xscale.c
	M	arch/arm/mm/dma-mapping.c
	M	arch/arm/mm/fault.c
	M	arch/arm/mm/init.c
	M	arch/arm/mm/mmu.c
	M	arch/arm/oprofile/common.c
	M	arch/arm/plat-mxc/gpio.c
	M	arch/arm/plat-mxc/include/mach/gpio.h
	M	arch/arm/plat-omap/Kconfig
	M	arch/arm/plat-omap/clock.c
	M	arch/arm/plat-omap/common.c
	M	arch/arm/plat-omap/gpio.c
	M	arch/arm/plat-omap/include/plat/clock.h
	M	arch/arm/plat-omap/include/plat/control.h
	M	arch/arm/plat-omap/include/plat/gpio.h
	M	arch/arm/plat-omap/include/plat/omap34xx.h
	M	arch/arm/vfp/vfphw.S
	M	arch/avr32/include/asm/thread_info.h
	M	arch/blackfin/include/asm/cache.h
	M	arch/blackfin/include/asm/thread_info.h
	M	arch/blackfin/kernel/kgdb.c
	M	arch/blackfin/kernel/time.c
	M	arch/blackfin/mach-bf537/boards/stamp.c
	M	arch/blackfin/mach-bf561/boards/acvilon.c
	M	arch/cris/include/asm/thread_info.h
	M	arch/frv/include/asm/cache.h
	M	arch/frv/include/asm/highmem.h
	M	arch/frv/include/asm/thread_info.h
	M	arch/frv/kernel/time.c
	M	arch/h8300/include/asm/thread_info.h
	M	arch/h8300/kernel/time.c
	M	arch/ia64/include/asm/compat.h
	M	arch/ia64/include/asm/thread_info.h
	M	arch/ia64/kernel/entry.S
	M	arch/ia64/mm/tlb.c
	M	arch/m32r/include/asm/thread_info.h
	M	arch/m32r/kernel/time.c
	M	arch/m68k/include/asm/cache.h
	M	arch/m68k/include/asm/thread_info_mm.h
	M	arch/m68k/include/asm/thread_info_no.h
	M	arch/m68knommu/kernel/time.c
	M	arch/mips/Kconfig
	M	arch/mips/Makefile
	M	arch/mips/alchemy/mtx-1/board_setup.c
	M	arch/mips/ar7/irq.c
	M	arch/mips/bcm63xx/irq.c
	M	arch/mips/cavium-octeon/csrc-octeon.c
	M	arch/mips/cobalt/irq.c
	M	arch/mips/dec/setup.c
	M	arch/mips/emma/markeins/irq.c
	M	arch/mips/include/asm/barrier.h
	M	arch/mips/include/asm/bootinfo.h
	M	arch/mips/include/asm/compat.h
	M	arch/mips/include/asm/i8253.h
	M	arch/mips/include/asm/kexec.h
	M	arch/mips/include/asm/kgdb.h
	M	arch/mips/include/asm/mach-loongson/loongson.h
	M	arch/mips/include/asm/mipsregs.h
	M	arch/mips/include/asm/ptrace.h
	M	arch/mips/include/asm/thread_info.h
	M	arch/mips/include/asm/time.h
	M	arch/mips/include/asm/timex.h
	M	arch/mips/kernel/Makefile
	M	arch/mips/kernel/cpu-probe.c
	M	arch/mips/kernel/cpufreq/Kconfig
	M	arch/mips/kernel/csrc-r4k.c
	M	arch/mips/kernel/entry.S
	M	arch/mips/kernel/ftrace.c
	M	arch/mips/kernel/i8253.c
	M	arch/mips/kernel/i8259.c
	M	arch/mips/kernel/kgdb.c
	M	arch/mips/kernel/machine_kexec.c
	M	arch/mips/kernel/mcount.S
	M	arch/mips/kernel/proc.c
	M	arch/mips/kernel/process.c
	M	arch/mips/kernel/ptrace.c
	M	arch/mips/kernel/relocate_kernel.S
	M	arch/mips/kernel/scall32-o32.S
	M	arch/mips/kernel/scall64-64.S
	M	arch/mips/kernel/scall64-n32.S
	M	arch/mips/kernel/scall64-o32.S
	M	arch/mips/kernel/setup.c
	M	arch/mips/kernel/signal.c
	M	arch/mips/kernel/smp.c
	M	arch/mips/kernel/smtc.c
	M	arch/mips/kernel/syscall.c
	M	arch/mips/kernel/time.c
	M	arch/mips/kernel/traps.c
	M	arch/mips/kernel/unaligned.c
	M	arch/mips/lasat/interrupt.c
	M	arch/mips/loongson/Kconfig
	M	arch/mips/loongson/common/irq.c
	M	arch/mips/loongson/fuloong-2e/irq.c
	M	arch/mips/loongson/lemote-2f/irq.c
	M	arch/mips/loongson/lemote-2f/reset.c
	M	arch/mips/mm/c-r4k.c
	M	arch/mips/mm/fault.c
	M	arch/mips/mm/highmem.c
	M	arch/mips/mm/tlbex.c
	M	arch/mips/mti-malta/malta-int.c
	M	arch/mips/nxp/pnx8550/common/int.c
	M	arch/mips/oprofile/Makefile
	M	arch/mips/oprofile/common.c
	M	arch/mips/oprofile/op_model_mipsxx.c
	M	arch/mips/pmc-sierra/msp71xx/msp_irq.c
	M	arch/mips/sgi-ip22/ip22-int.c
	M	arch/mips/sni/rm200.c
	M	arch/mips/vr41xx/common/irq.c
	M	arch/mn10300/include/asm/cache.h
	M	arch/mn10300/kernel/time.c
	M	arch/parisc/include/asm/compat.h
	M	arch/parisc/include/asm/thread_info.h
	M	arch/parisc/kernel/firmware.c
	M	arch/parisc/math-emu/decode_exc.c
	M	arch/powerpc/Kconfig
	M	arch/powerpc/Makefile
	M	arch/powerpc/include/asm/cacheflush.h
	M	arch/powerpc/include/asm/compat.h
	M	arch/powerpc/include/asm/cpm.h
	M	arch/powerpc/include/asm/kexec.h
	M	arch/powerpc/include/asm/kmap_types.h
	M	arch/powerpc/include/asm/machdep.h
	M	arch/powerpc/include/asm/pgalloc.h
	M	arch/powerpc/include/asm/pgtable-ppc32.h
	M	arch/powerpc/include/asm/pgtable-ppc64.h
	M	arch/powerpc/include/asm/ptrace.h
	M	arch/powerpc/include/asm/reg_booke.h
	M	arch/powerpc/include/asm/rwsem.h
	M	arch/powerpc/include/asm/syscalls.h
	M	arch/powerpc/include/asm/thread_info.h
	M	arch/powerpc/include/asm/timex.h
	M	arch/powerpc/include/asm/tlb.h
	M	arch/powerpc/include/asm/tlbflush.h
	M	arch/powerpc/include/asm/trace.h
	M	arch/powerpc/kernel/Makefile
	M	arch/powerpc/kernel/asm-offsets.c
	M	arch/powerpc/kernel/crash.c
	M	arch/powerpc/kernel/crash_dump.c
	M	arch/powerpc/kernel/head_32.S
	M	arch/powerpc/kernel/head_booke.h
	M	arch/powerpc/kernel/head_fsl_booke.S
	M	arch/powerpc/kernel/idle.c
	M	arch/powerpc/kernel/irq.c
	M	arch/powerpc/kernel/kgdb.c
	M	arch/powerpc/kernel/kprobes.c
	M	arch/powerpc/kernel/machine_kexec_32.c
	M	arch/powerpc/kernel/misc_32.S
	M	arch/powerpc/kernel/misc_64.S
	M	arch/powerpc/kernel/ppc_ksyms.c
	M	arch/powerpc/kernel/process.c
	M	arch/powerpc/kernel/ptrace.c
	M	arch/powerpc/kernel/rtasd.c
	M	arch/powerpc/kernel/syscalls.c
	M	arch/powerpc/kernel/time.c
	M	arch/powerpc/kernel/traps.c
	M	arch/powerpc/kernel/vdso32/sigtramp.S
	M	arch/powerpc/kvm/book3s.c
	M	arch/powerpc/kvm/booke.c
	M	arch/powerpc/kvm/powerpc.c
	M	arch/powerpc/lib/locks.c
	M	arch/powerpc/lib/string.S
	M	arch/powerpc/mm/fault.c
	M	arch/powerpc/mm/fsl_booke_mmu.c
	M	arch/powerpc/mm/highmem.c
	M	arch/powerpc/mm/mmu_decl.h
	M	arch/powerpc/mm/pgtable.c
	M	arch/powerpc/mm/pgtable_32.c
	M	arch/powerpc/mm/pgtable_64.c
	M	arch/powerpc/mm/slb.c
	M	arch/powerpc/mm/tlb_hash32.c
	M	arch/powerpc/mm/tlb_hash64.c
	M	arch/powerpc/mm/tlb_nohash.c
	M	arch/powerpc/mm/tlb_nohash_low.S
	M	arch/powerpc/oprofile/backtrace.c
	M	arch/powerpc/oprofile/common.c
	M	arch/powerpc/oprofile/op_model_cell.c
	M	arch/powerpc/platforms/cell/spufs/file.c
	M	arch/powerpc/platforms/cell/spufs/inode.c
	M	arch/powerpc/platforms/cell/spufs/sched.c
	M	arch/powerpc/platforms/chrp/time.c
	M	arch/powerpc/platforms/pseries/hotplug-cpu.c
	M	arch/powerpc/platforms/pseries/iommu.c
	M	arch/powerpc/platforms/pseries/plpar_wrappers.h
	M	arch/powerpc/platforms/pseries/smp.c
	M	arch/powerpc/sysdev/micropatch.c
	M	arch/powerpc/sysdev/uic.c
	M	arch/powerpc/xmon/xmon.c
	M	arch/s390/include/asm/compat.h
	M	arch/s390/include/asm/rwsem.h
	M	arch/s390/include/asm/thread_info.h
	M	arch/s390/kernel/entry.S
	M	arch/s390/kernel/entry64.S
	M	arch/s390/kernel/ptrace.c
	M	arch/s390/kernel/sys_s390.c
	M	arch/s390/kernel/traps.c
	M	arch/s390/kvm/kvm-s390.c
	M	arch/s390/mm/fault.c
	M	arch/sh/Kconfig
	M	arch/sh/include/asm/thread_info.h
	M	arch/sh/include/asm/timex.h
	M	arch/sh/kernel/Makefile
	M	arch/sh/kernel/kgdb.c
	M	arch/sparc/Kconfig
	M	arch/sparc/Makefile
	M	arch/sparc/include/asm/asm.h
	M	arch/sparc/include/asm/atomic_64.h
	M	arch/sparc/include/asm/compat.h
	M	arch/sparc/include/asm/parport.h
	M	arch/sparc/include/asm/rwsem-const.h
	M	arch/sparc/include/asm/thread_info_32.h
	M	arch/sparc/include/asm/thread_info_64.h
	M	arch/sparc/include/asm/timex_64.h
	M	arch/sparc/kernel/Makefile
	M	arch/sparc/kernel/entry.S
	M	arch/sparc/kernel/kgdb_32.c
	M	arch/sparc/kernel/kgdb_64.c
	M	arch/sparc/kernel/process_32.c
	M	arch/sparc/kernel/sys_sparc_32.c
	M	arch/sparc/kernel/time_64.c
	M	arch/um/include/asm/thread_info.h
	M	arch/um/os-Linux/mem.c
	M	arch/x86/Kconfig
	M	arch/x86/Kconfig.debug
	M	arch/x86/Makefile
	M	arch/x86/ia32/ia32entry.S
	M	arch/x86/ia32/ipc32.c
	M	arch/x86/include/asm/acpi.h
	M	arch/x86/include/asm/alternative.h
	M	arch/x86/include/asm/cmpxchg_32.h
	M	arch/x86/include/asm/cmpxchg_64.h
	M	arch/x86/include/asm/compat.h
	M	arch/x86/include/asm/highmem.h
	M	arch/x86/include/asm/i8253.h
	M	arch/x86/include/asm/idle.h
	M	arch/x86/include/asm/irqflags.h
	M	arch/x86/include/asm/kgdb.h
	M	arch/x86/include/asm/kvm_host.h
	M	arch/x86/include/asm/msr-index.h
	M	arch/x86/include/asm/page_64_types.h
	M	arch/x86/include/asm/paravirt.h
	M	arch/x86/include/asm/paravirt_types.h
	M	arch/x86/include/asm/pci_x86.h
	M	arch/x86/include/asm/pgtable-3level.h
	M	arch/x86/include/asm/pgtable_32.h
	M	arch/x86/include/asm/pgtable_64.h
	M	arch/x86/include/asm/processor.h
	M	arch/x86/include/asm/proto.h
	M	arch/x86/include/asm/ptrace-abi.h
	M	arch/x86/include/asm/rwsem.h
	M	arch/x86/include/asm/stacktrace.h
	M	arch/x86/include/asm/suspend_32.h
	M	arch/x86/include/asm/suspend_64.h
	M	arch/x86/include/asm/system.h
	M	arch/x86/include/asm/thread_info.h
	M	arch/x86/include/asm/timer.h
	M	arch/x86/include/asm/tlbflush.h
	M	arch/x86/include/asm/tsc.h
	M	arch/x86/include/asm/vgtod.h
	M	arch/x86/include/asm/xor_32.h
	M	arch/x86/kernel/Makefile
	M	arch/x86/kernel/acpi/cstate.c
	M	arch/x86/kernel/acpi/sleep.c
	M	arch/x86/kernel/alternative.c
	M	arch/x86/kernel/amd_iommu.c
	M	arch/x86/kernel/amd_iommu_init.c
	M	arch/x86/kernel/apic/apic.c
	M	arch/x86/kernel/apic/io_apic.c
	M	arch/x86/kernel/apic/ipi.c
	M	arch/x86/kernel/apic/nmi.c
	M	arch/x86/kernel/apm_32.c
	M	arch/x86/kernel/asm-offsets_32.c
	M	arch/x86/kernel/asm-offsets_64.c
	M	arch/x86/kernel/cpu/common.c
	M	arch/x86/kernel/cpu/mcheck/therm_throt.c
	M	arch/x86/kernel/cpu/perf_event.c
	M	arch/x86/kernel/cpu/perf_event_amd.c
	M	arch/x86/kernel/cpu/perf_event_intel.c
	M	arch/x86/kernel/cpu/vmware.c
	M	arch/x86/kernel/dumpstack.c
	M	arch/x86/kernel/dumpstack_32.c
	M	arch/x86/kernel/dumpstack_64.c
	M	arch/x86/kernel/early_printk.c
	M	arch/x86/kernel/entry_32.S
	M	arch/x86/kernel/entry_64.S
	M	arch/x86/kernel/head64.c
	M	arch/x86/kernel/head_32.S
	M	arch/x86/kernel/hpet.c
	M	arch/x86/kernel/i8253.c
	M	arch/x86/kernel/i8259.c
	M	arch/x86/kernel/irqinit.c
	M	arch/x86/kernel/kgdb.c
	M	arch/x86/kernel/kprobes.c
	M	arch/x86/kernel/paravirt.c
	M	arch/x86/kernel/paravirt_patch_32.c
	M	arch/x86/kernel/paravirt_patch_64.c
	M	arch/x86/kernel/pci-calgary_64.c
	M	arch/x86/kernel/process.c
	M	arch/x86/kernel/process_32.c
	M	arch/x86/kernel/process_64.c
	M	arch/x86/kernel/ptrace.c
	M	arch/x86/kernel/pvclock.c
	M	arch/x86/kernel/setup.c
	M	arch/x86/kernel/signal.c
	M	arch/x86/kernel/smp.c
	M	arch/x86/kernel/smpboot.c
	M	arch/x86/kernel/sys_i386_32.c
	M	arch/x86/kernel/syscall_64.c
	M	arch/x86/kernel/tboot.c
	M	arch/x86/kernel/traps.c
	M	arch/x86/kernel/tsc_sync.c
	M	arch/x86/kernel/visws_quirks.c
	M	arch/x86/kernel/vm86_32.c
	M	arch/x86/kernel/vmi_32.c
	M	arch/x86/kernel/vsyscall_64.c
	M	arch/x86/kvm/Makefile
	M	arch/x86/kvm/i8259.c
	M	arch/x86/kvm/irq.h
	M	arch/x86/kvm/mmu.c
	M	arch/x86/kvm/svm.c
	M	arch/x86/kvm/vmx.c
	M	arch/x86/kvm/x86.c
	M	arch/x86/lguest/boot.c
	M	arch/x86/mm/fault.c
	M	arch/x86/mm/gup.c
	M	arch/x86/mm/highmem_32.c
	M	arch/x86/mm/init.c
	M	arch/x86/mm/iomap_32.c
	M	arch/x86/mm/kmmio.c
	M	arch/x86/mm/pageattr.c
	M	arch/x86/mm/pgtable.c
	M	arch/x86/mm/testmmiotrace.c
	M	arch/x86/mm/tlb.c
	M	arch/x86/oprofile/backtrace.c
	M	arch/x86/oprofile/nmi_int.c
	M	arch/x86/pci/acpi.c
	M	arch/x86/pci/common.c
	M	arch/x86/pci/direct.c
	M	arch/x86/pci/mmconfig_32.c
	M	arch/x86/pci/mrst.c
	M	arch/x86/pci/numaq_32.c
	M	arch/x86/pci/pcbios.c
	M	arch/x86/power/cpu.c
	M	arch/x86/vdso/vclock_gettime.c
	M	arch/x86/xen/enlighten.c
	M	arch/x86/xen/mmu.c
	M	arch/x86/xen/suspend.c
	M	arch/x86/xen/time.c
	M	arch/xtensa/include/asm/cache.h
	M	arch/xtensa/include/asm/rwsem.h
	M	arch/xtensa/include/asm/thread_info.h
	M	arch/xtensa/kernel/time.c
	M	block/blk-core.c
	M	block/cfq-iosched.c
	M	block/genhd.c
	M	crypto/Kconfig
	M	crypto/Makefile
	M	drivers/Makefile
	M	drivers/acpi/acpica/acevents.h
	M	drivers/acpi/acpica/acglobal.h
	M	drivers/acpi/acpica/achware.h
	M	drivers/acpi/acpica/evgpe.c
	M	drivers/acpi/acpica/evgpeblk.c
	M	drivers/acpi/acpica/evxfevnt.c
	M	drivers/acpi/acpica/hwgpe.c
	M	drivers/acpi/acpica/hwregs.c
	M	drivers/acpi/acpica/hwxface.c
	M	drivers/acpi/acpica/utmutex.c
	M	drivers/acpi/button.c
	M	drivers/acpi/fan.c
	M	drivers/acpi/processor_core.c
	M	drivers/acpi/processor_idle.c
	M	drivers/acpi/sleep.c
	M	drivers/acpi/system.c
	M	drivers/acpi/video_detect.c
	M	drivers/acpi/wakeup.c
	M	drivers/ata/ahci.c
	M	drivers/ata/ata_generic.c
	M	drivers/ata/ata_piix.c
	M	drivers/ata/libata-core.c
	M	drivers/ata/libata-scsi.c
	M	drivers/ata/libata-sff.c
	M	drivers/ata/sata_nv.c
	M	drivers/ata/sata_via.c
	M	drivers/atm/solos-pci.c
	M	drivers/base/core.c
	M	drivers/base/cpu.c
	M	drivers/base/firmware_class.c
	M	drivers/block/hd.c
	M	drivers/block/paride/pseudo.h
	M	drivers/bluetooth/btusb.c
	M	drivers/char/agp/amd64-agp.c
	M	drivers/char/bfin_jtag_comm.c
	M	drivers/char/ipmi/ipmi_si_intf.c
	M	drivers/char/keyboard.c
	M	drivers/char/nozomi.c
	M	drivers/char/pty.c
	M	drivers/char/random.c
	M	drivers/char/rtc.c
	M	drivers/char/selection.c
	M	drivers/char/sysrq.c
	M	drivers/char/tpm/tpm.h
	M	drivers/char/tpm/tpm_tis.c
	M	drivers/char/tty_io.c
	M	drivers/char/tty_ldisc.c
	M	drivers/char/vc_screen.c
	M	drivers/char/vt.c
	M	drivers/char/vt_ioctl.c
	M	drivers/clocksource/sh_cmt.c
	M	drivers/clocksource/sh_tmu.c
	M	drivers/clocksource/tcb_clksrc.c
	M	drivers/cpufreq/cpufreq.c
	M	drivers/edac/Kconfig
	M	drivers/edac/amd64_edac.c
	M	drivers/firewire/core-card.c
	M	drivers/gpu/drm/drm_drv.c
	M	drivers/gpu/drm/drm_edid.c
	M	drivers/gpu/drm/drm_fb_helper.c
	M	drivers/gpu/drm/i915/dvo_tfp410.c
	M	drivers/gpu/drm/i915/i915_debugfs.c
	M	drivers/gpu/drm/i915/i915_dma.c
	M	drivers/gpu/drm/i915/i915_drv.c
	M	drivers/gpu/drm/i915/i915_drv.h
	M	drivers/gpu/drm/i915/i915_gem.c
	M	drivers/gpu/drm/i915/i915_irq.c
	M	drivers/gpu/drm/i915/i915_reg.h
	M	drivers/gpu/drm/i915/intel_display.c
	M	drivers/gpu/drm/i915/intel_dp.c
	M	drivers/gpu/drm/i915/intel_drv.h
	M	drivers/gpu/drm/i915/intel_overlay.c
	M	drivers/gpu/drm/nouveau/nouveau_drv.c
	M	drivers/gpu/drm/radeon/r100.c
	M	drivers/gpu/drm/radeon/r200.c
	M	drivers/gpu/drm/radeon/r300.c
	M	drivers/gpu/drm/radeon/r600.c
	M	drivers/gpu/drm/radeon/r600d.h
	M	drivers/gpu/drm/radeon/radeon.h
	M	drivers/gpu/drm/radeon/radeon_agp.c
	M	drivers/gpu/drm/radeon/radeon_atombios.c
	M	drivers/gpu/drm/radeon/radeon_combios.c
	M	drivers/gpu/drm/radeon/radeon_connectors.c
	M	drivers/gpu/drm/radeon/radeon_device.c
	M	drivers/gpu/drm/radeon/radeon_display.c
	M	drivers/gpu/drm/radeon/radeon_encoders.c
	M	drivers/gpu/drm/radeon/radeon_i2c.c
	M	drivers/gpu/drm/radeon/radeon_irq_kms.c
	M	drivers/gpu/drm/radeon/radeon_legacy_crtc.c
	M	drivers/gpu/drm/radeon/radeon_legacy_encoders.c
	M	drivers/gpu/drm/radeon/radeon_legacy_tv.c
	M	drivers/gpu/drm/radeon/radeon_state.c
	M	drivers/gpu/drm/radeon/rs600.c
	M	drivers/gpu/drm/radeon/rs690.c
	M	drivers/gpu/drm/radeon/rv770.c
	M	drivers/gpu/drm/radeon/rv770d.h
	M	drivers/hid/hid-core.c
	M	drivers/hid/hid-gyration.c
	M	drivers/hid/hid-ids.h
	M	drivers/hid/usbhid/hid-core.c
	M	drivers/hid/usbhid/usbkbd.c
	M	drivers/hwmon/coretemp.c
	M	drivers/hwmon/i5k_amb.c
	M	drivers/hwmon/it87.c
	M	drivers/hwmon/k10temp.c
	M	drivers/hwmon/k8temp.c
	M	drivers/hwmon/ltc4245.c
	M	drivers/hwmon/pc87360.c
	M	drivers/hwmon/s3c-hwmon.c
	M	drivers/i2c/busses/i2c-omap.c
	M	drivers/ide/cmd640.c
	M	drivers/ide/hpt366.c
	M	drivers/ide/ide-cd.c
	M	drivers/ide/ide-io-std.c
	M	drivers/ide/ide-io.c
	M	drivers/ide/ide-iops.c
	M	drivers/ide/ide-probe.c
	M	drivers/ide/ide-taskfile.c
	M	drivers/idle/i7300_idle.c
	M	drivers/infiniband/core/user_mad.c
	M	drivers/infiniband/hw/ipath/ipath_fs.c
	M	drivers/infiniband/ulp/ipoib/ipoib_main.c
	M	drivers/infiniband/ulp/ipoib/ipoib_multicast.c
	M	drivers/input/gameport/gameport.c
	M	drivers/input/input.c
	M	drivers/input/joystick/analog.c
	M	drivers/input/joystick/gamecon.c
	M	drivers/input/keyboard/twl4030_keypad.c
	M	drivers/input/misc/hp_sdc_rtc.c
	M	drivers/input/misc/pcspkr.c
	M	drivers/input/serio/hil_mlc.c
	M	drivers/input/serio/hp_sdc.c
	M	drivers/input/serio/i8042-x86ia64io.h
	M	drivers/input/touchscreen/ads7846.c
	M	drivers/isdn/capi/kcapi.c
	M	drivers/isdn/gigaset/asyncdata.c
	M	drivers/isdn/gigaset/capi.c
	M	drivers/isdn/gigaset/common.c
	M	drivers/isdn/gigaset/ev-layer.c
	M	drivers/isdn/gigaset/gigaset.h
	M	drivers/isdn/gigaset/i4l.c
	M	drivers/isdn/gigaset/isocdata.c
	M	drivers/isdn/sc/ioctl.c
	M	drivers/macintosh/adb.c
	M	drivers/md/bitmap.c
	M	drivers/md/bitmap.h
	M	drivers/md/dm-exception-store.c
	M	drivers/md/dm-exception-store.h
	M	drivers/md/dm-ioctl.c
	M	drivers/md/dm-mpath.c
	M	drivers/md/dm-snap.c
	M	drivers/md/dm.c
	M	drivers/md/linear.c
	M	drivers/md/md.c
	M	drivers/md/md.h
	M	drivers/md/raid1.c
	M	drivers/md/raid10.c
	M	drivers/md/raid5.c
	M	drivers/md/raid5.h
	M	drivers/media/dvb/dvb-core/dvb_frontend.c
	M	drivers/media/dvb/dvb-core/dvb_net.c
	M	drivers/media/dvb/ttpci/Kconfig
	M	drivers/media/video/cx23885/cx23885-i2c.c
	M	drivers/media/video/cx88/cx88-i2c.c
	M	drivers/media/video/uvc/uvc_ctrl.c
	M	drivers/media/video/uvc/uvc_driver.c
	M	drivers/media/video/uvc/uvcvideo.h
	M	drivers/memstick/core/mspro_block.c
	M	drivers/mfd/88pm860x-i2c.c
	M	drivers/mfd/max8925-i2c.c
	M	drivers/misc/Kconfig
	M	drivers/misc/Makefile
	M	drivers/misc/enclosure.c
	M	drivers/misc/kgdbts.c
	M	drivers/misc/vmware_balloon.c
	M	drivers/mmc/card/queue.c
	M	drivers/mmc/host/omap.c
	M	drivers/mmc/host/omap_hsmmc.c
	M	drivers/mmc/host/sdhci-s3c.c
	M	drivers/mtd/chips/Kconfig
	M	drivers/mtd/chips/cfi_cmdset_0001.c
	M	drivers/mtd/nand/plat_nand.c
	M	drivers/mtd/nand/pxa3xx_nand.c
	M	drivers/net/3c503.c
	M	drivers/net/3c527.c
	M	drivers/net/3c59x.c
	M	drivers/net/8139too.c
	M	drivers/net/Kconfig
	M	drivers/net/Makefile
	M	drivers/net/arcnet/com20020-pci.c
	M	drivers/net/arm/at91_ether.c
	M	drivers/net/atl1c/atl1c_main.c
	M	drivers/net/atl1e/atl1e_main.c
	M	drivers/net/bnx2.c
	M	drivers/net/can/sja1000/sja1000.c
	M	drivers/net/can/sja1000/sja1000.h
	M	drivers/net/chelsio/sge.c
	M	drivers/net/cpmac.c
	M	drivers/net/dm9000.c
	M	drivers/net/e1000e/82571.c
	M	drivers/net/e1000e/defines.h
	M	drivers/net/e1000e/hw.h
	M	drivers/net/e1000e/ich8lan.c
	M	drivers/net/e1000e/lib.c
	M	drivers/net/e1000e/netdev.c
	M	drivers/net/ehea/ehea_main.c
	M	drivers/net/fs_enet/mac-fec.c
	M	drivers/net/gianfar.c
	M	drivers/net/hamradio/6pack.c
	M	drivers/net/hamradio/mkiss.c
	M	drivers/net/ibm_newemac/core.c
	M	drivers/net/ibm_newemac/mal.c
	M	drivers/net/ibm_newemac/mal.h
	M	drivers/net/igb/igb_main.c
	M	drivers/net/irda/sir_dev.c
	M	drivers/net/loopback.c
	M	drivers/net/mlx4/icm.c
	M	drivers/net/mlx4/mlx4.h
	M	drivers/net/mv643xx_eth.c
	M	drivers/net/netxen/netxen_nic_init.c
	M	drivers/net/niu.c
	M	drivers/net/ppp_async.c
	M	drivers/net/ppp_generic.c
	M	drivers/net/pppol2tp.c
	M	drivers/net/r8169.c
	M	drivers/net/rionet.c
	M	drivers/net/s2io.c
	M	drivers/net/sky2.c
	M	drivers/net/smc911x.c
	M	drivers/net/smsc911x.c
	M	drivers/net/sungem.c
	M	drivers/net/tehuti.c
	M	drivers/net/tg3.c
	M	drivers/net/tulip/tulip_core.c
	M	drivers/net/ucc_geth.c
	M	drivers/net/ucc_geth.h
	M	drivers/net/ucc_geth_ethtool.c
	M	drivers/net/usb/pegasus.h
	M	drivers/net/usb/usbnet.c
	M	drivers/net/virtio_net.c
	M	drivers/net/wan/cosa.c
	M	drivers/net/wan/hd64570.c
	M	drivers/net/wan/hd64572.c
	M	drivers/net/wireless/ath/ar9170/hw.h
	M	drivers/net/wireless/ath/ar9170/main.c
	M	drivers/net/wireless/ath/ar9170/usb.c
	M	drivers/net/wireless/ath/ath5k/attach.c
	M	drivers/net/wireless/ath/ath5k/base.c
	M	drivers/net/wireless/ath/ath9k/eeprom_def.c
	M	drivers/net/wireless/ath/ath9k/hw.c
	M	drivers/net/wireless/ath/ath9k/init.c
	M	drivers/net/wireless/ath/ath9k/initvals.h
	M	drivers/net/wireless/ath/ath9k/xmit.c
	M	drivers/net/wireless/hostap/hostap_cs.c
	M	drivers/net/wireless/hostap/hostap_hw.c
	M	drivers/net/wireless/hostap/hostap_wlan.h
	M	drivers/net/wireless/iwlwifi/iwl-1000.c
	M	drivers/net/wireless/iwlwifi/iwl-3945.c
	M	drivers/net/wireless/iwlwifi/iwl-4965.c
	M	drivers/net/wireless/iwlwifi/iwl-5000.c
	M	drivers/net/wireless/iwlwifi/iwl-6000.c
	M	drivers/net/wireless/iwlwifi/iwl-agn-rs.c
	M	drivers/net/wireless/iwlwifi/iwl-agn.c
	M	drivers/net/wireless/iwlwifi/iwl-core.c
	M	drivers/net/wireless/iwlwifi/iwl-core.h
	M	drivers/net/wireless/iwlwifi/iwl-dev.h
	M	drivers/net/wireless/iwlwifi/iwl-devtrace.h
	M	drivers/net/wireless/iwlwifi/iwl-scan.c
	M	drivers/net/wireless/iwlwifi/iwl-tx.c
	M	drivers/net/wireless/iwlwifi/iwl3945-base.c
	M	drivers/net/wireless/libertas/if_sdio.c
	M	drivers/net/wireless/p54/p54pci.c
	M	drivers/net/wireless/p54/p54usb.c
	M	drivers/net/wireless/rtl818x/rtl8180_dev.c
	M	drivers/net/wireless/wl12xx/wl1251_cmd.c
	M	drivers/net/wireless/wl12xx/wl1251_sdio.c
	M	drivers/net/xen-netfront.c
	M	drivers/of/base.c
	M	drivers/oprofile/cpu_buffer.c
	M	drivers/oprofile/event_buffer.c
	M	drivers/oprofile/oprof.c
	M	drivers/oprofile/oprof.h
	M	drivers/oprofile/oprofile_files.c
	M	drivers/oprofile/oprofilefs.c
	M	drivers/parisc/led.c
	M	drivers/parport/share.c
	M	drivers/pci/access.c
	M	drivers/pci/hotplug/ibmphp_hpc.c
	M	drivers/pci/pci.c
	M	drivers/pci/pcie/pme/pcie_pme.c
	M	drivers/pci/quirks.c
	M	drivers/pcmcia/ds.c
	M	drivers/pcmcia/pcmcia_resource.c
	M	drivers/pcmcia/yenta_socket.c
	M	drivers/platform/x86/Kconfig
	M	drivers/platform/x86/compal-laptop.c
	M	drivers/platform/x86/dell-laptop.c
	M	drivers/regulator/wm8994-regulator.c
	M	drivers/rtc/rtc-cmos.c
	M	drivers/rtc/rtc-ds1307.c
	M	drivers/rtc/rtc-s3c.c
	M	drivers/scsi/aacraid/commctrl.c
	M	drivers/scsi/aacraid/commsup.c
	M	drivers/scsi/ibmvscsi/ibmvfc.c
	M	drivers/scsi/ibmvscsi/ibmvfc.h
	M	drivers/scsi/libsas/sas_ata.c
	M	drivers/scsi/libsas/sas_scsi_host.c
	M	drivers/serial/68328serial.c
	M	drivers/serial/8250.c
	M	drivers/serial/8250.h
	M	drivers/serial/Kconfig
	M	drivers/serial/Makefile
	M	drivers/serial/amba-pl011.c
	M	drivers/serial/cpm_uart/cpm_uart_core.c
	M	drivers/serial/kgdboc.c
	M	drivers/serial/sb1250-duart.c
	M	drivers/serial/serial_core.c
	M	drivers/serial/sh-sci.c
	M	drivers/serial/sunhv.c
	M	drivers/serial/sunzilog.c
	M	drivers/spi/spi_mpc8xxx.c
	M	drivers/ssb/driver_chipcommon.c
	M	drivers/ssb/pci.c
	M	drivers/ssb/sprom.c
	M	drivers/staging/batman-adv/proc.c
	M	drivers/staging/batman-adv/vis.c
	M	drivers/staging/batman-adv/vis.h
	M	drivers/staging/comedi/Kconfig
	M	drivers/staging/comedi/drivers/Makefile
	M	drivers/staging/comedi/drivers/dt9812.c
	M	drivers/staging/comedi/drivers/ni_mio_cs.c
	M	drivers/staging/comedi/drivers/usbdux.c
	M	drivers/staging/comedi/drivers/usbduxfast.c
	M	drivers/staging/dream/pmem.c
	M	drivers/staging/frontier/alphatrack.c
	M	drivers/staging/frontier/tranzport.c
	M	drivers/staging/line6/Kconfig
	M	drivers/staging/otus/wwrap.c
	M	drivers/staging/panel/panel.c
	M	drivers/staging/pohmelfs/path_entry.c
	M	drivers/staging/rt2860/common/rtmp_init.c
	M	drivers/staging/rt2860/usb_main_dev.c
	M	drivers/staging/sm7xx/smtcfb.c
	M	drivers/staging/vme/devices/vme_user.c
	M	drivers/staging/vt6655/device_main.c
	M	drivers/usb/class/cdc-acm.c
	M	drivers/usb/core/devio.c
	M	drivers/usb/core/driver.c
	M	drivers/usb/core/hcd.c
	M	drivers/usb/core/hub.c
	M	drivers/usb/core/inode.c
	M	drivers/usb/core/message.c
	M	drivers/usb/core/quirks.c
	M	drivers/usb/core/urb.c
	M	drivers/usb/core/usb.c
	M	drivers/usb/early/ehci-dbgp.c
	M	drivers/usb/gadget/fsl_udc_core.c
	M	drivers/usb/gadget/u_serial.c
	M	drivers/usb/host/ehci-au1xxx.c
	M	drivers/usb/host/ehci-fsl.c
	M	drivers/usb/host/ehci-hub.c
	M	drivers/usb/host/ehci-mxc.c
	M	drivers/usb/host/ehci-omap.c
	M	drivers/usb/host/ehci-pci.c
	M	drivers/usb/host/ehci-sched.c
	M	drivers/usb/host/ehci.h
	M	drivers/usb/host/fhci.h
	M	drivers/usb/host/ohci-hcd.c
	M	drivers/usb/host/pci-quirks.c
	M	drivers/usb/host/uhci-q.c
	M	drivers/usb/host/whci/qset.c
	M	drivers/usb/host/xhci-mem.c
	M	drivers/usb/host/xhci-pci.c
	M	drivers/usb/host/xhci-ring.c
	M	drivers/usb/host/xhci.c
	M	drivers/usb/misc/ftdi-elan.c
	M	drivers/usb/misc/sisusbvga/sisusb.c
	M	drivers/usb/misc/usbtest.c
	M	drivers/usb/mon/mon_bin.c
	M	drivers/usb/mon/mon_text.c
	M	drivers/usb/musb/musb_core.c
	M	drivers/usb/musb/musb_core.h
	M	drivers/usb/musb/tusb6010.c
	M	drivers/usb/serial/console.c
	M	drivers/usb/serial/cp210x.c
	M	drivers/usb/serial/cypress_m8.c
	M	drivers/usb/serial/digi_acceleport.c
	M	drivers/usb/serial/ftdi_sio.c
	M	drivers/usb/serial/ftdi_sio_ids.h
	M	drivers/usb/serial/generic.c
	M	drivers/usb/serial/io_ti.c
	M	drivers/usb/serial/ir-usb.c
	M	drivers/usb/serial/kl5kusb105.c
	M	drivers/usb/serial/kobil_sct.c
	M	drivers/usb/serial/mos7840.c
	M	drivers/usb/serial/navman.c
	M	drivers/usb/serial/option.c
	M	drivers/usb/serial/pl2303.c
	M	drivers/usb/serial/pl2303.h
	M	drivers/usb/serial/qcaux.c
	M	drivers/usb/serial/sierra.c
	M	drivers/usb/serial/spcp8x5.c
	M	drivers/usb/serial/usb-serial.c
	M	drivers/usb/serial/usb_debug.c
	M	drivers/usb/serial/visor.c
	M	drivers/usb/storage/unusual_devs.h
	M	drivers/vhost/net.c
	M	drivers/video/arcfb.c
	M	drivers/video/arkfb.c
	M	drivers/video/aty/aty128fb.c
	M	drivers/video/aty/atyfb_base.c
	M	drivers/video/aty/radeon_pm.c
	M	drivers/video/chipsfb.c
	M	drivers/video/console/fbcon.c
	M	drivers/video/console/vgacon.c
	M	drivers/video/da8xx-fb.c
	M	drivers/video/fbmem.c
	M	drivers/video/fbsysfs.c
	M	drivers/video/geode/gxfb_core.c
	M	drivers/video/geode/lxfb_core.c
	M	drivers/video/hgafb.c
	M	drivers/video/i810/i810_main.c
	M	drivers/video/matrox/matroxfb_base.h
	M	drivers/video/mx3fb.c
	M	drivers/video/nvidia/nvidia.c
	M	drivers/video/omap2/dss/dpi.c
	M	drivers/video/omap2/omapfb/omapfb-main.c
	M	drivers/video/ps3fb.c
	M	drivers/video/s3fb.c
	M	drivers/video/savage/savagefb_driver.c
	M	drivers/video/sm501fb.c
	M	drivers/video/tmiofb.c
	M	drivers/video/vfb.c
	M	drivers/video/vga16fb.c
	M	drivers/video/vt8623fb.c
	M	drivers/video/w100fb.c
	M	drivers/video/xen-fbfront.c
	M	drivers/virtio/virtio_pci.c
	M	drivers/virtio/virtio_ring.c
	M	drivers/xen/events.c
	M	drivers/xen/xenbus/xenbus_xs.c
	M	firmware/Makefile
	M	fs/Kconfig
	M	fs/Makefile
	M	fs/affs/affs.h
	M	fs/affs/amigaffs.c
	M	fs/affs/inode.c
	M	fs/affs/super.c
	M	fs/afs/dir.c
	M	fs/aio.c
	M	fs/anon_inodes.c
	M	fs/attr.c
	M	fs/autofs4/autofs_i.h
	M	fs/autofs4/expire.c
	M	fs/autofs4/root.c
	M	fs/autofs4/waitq.c
	M	fs/bfs/dir.c
	M	fs/binfmt_elf.c
	M	fs/block_dev.c
	M	fs/btrfs/acl.c
	M	fs/btrfs/inode.c
	M	fs/btrfs/ioctl.c
	M	fs/btrfs/locking.c
	M	fs/buffer.c
	M	fs/cifs/cifsfs.c
	M	fs/cifs/cifsproto.h
	M	fs/cifs/dir.c
	M	fs/cifs/dns_resolve.c
	M	fs/cifs/dns_resolve.h
	M	fs/cifs/file.c
	M	fs/cifs/inode.c
	M	fs/cifs/sess.c
	M	fs/coda/cache.c
	M	fs/coda/dir.c
	M	fs/compat.c
	M	fs/configfs/configfs_internal.h
	M	fs/configfs/dir.c
	M	fs/configfs/inode.c
	M	fs/cramfs/Kconfig
	M	fs/cramfs/inode.c
	M	fs/dcache.c
	M	fs/direct-io.c
	M	fs/drop_caches.c
	M	fs/ecryptfs/file.c
	M	fs/ecryptfs/inode.c
	M	fs/ecryptfs/messaging.c
	M	fs/eventfd.c
	M	fs/exec.c
	M	fs/exofs/dir.c
	M	fs/exofs/inode.c
	M	fs/exofs/namei.c
	M	fs/exportfs/expfs.c
	M	fs/ext2/namei.c
	M	fs/ext2/super.c
	M	fs/ext3/ialloc.c
	M	fs/ext3/namei.c
	M	fs/ext3/super.c
	M	fs/ext4/ialloc.c
	M	fs/ext4/inode.c
	M	fs/ext4/move_extent.c
	M	fs/ext4/namei.c
	M	fs/ext4/resize.c
	M	fs/fat/Kconfig
	M	fs/fat/dir.c
	M	fs/fat/inode.c
	M	fs/fat/namei_vfat.c
	M	fs/fcntl.c
	M	fs/file.c
	M	fs/file_table.c
	M	fs/filesystems.c
	M	fs/fs-writeback.c
	M	fs/fs_struct.c
	M	fs/gfs2/dir.c
	M	fs/gfs2/file.c
	M	fs/gfs2/ops_inode.c
	M	fs/hfs/bfind.c
	M	fs/hfs/btree.c
	M	fs/hfs/btree.h
	M	fs/hfsplus/bfind.c
	M	fs/hfsplus/btree.c
	M	fs/hfsplus/dir.c
	M	fs/hfsplus/hfsplus_fs.h
	M	fs/hpfs/buffer.c
	M	fs/hpfs/hpfs_fn.h
	M	fs/hpfs/inode.c
	M	fs/hpfs/super.c
	M	fs/hugetlbfs/inode.c
	M	fs/inode.c
	M	fs/internal.h
	M	fs/ioctl.c
	M	fs/ioprio.c
	M	fs/jbd/transaction.c
	M	fs/jbd2/journal.c
	M	fs/jbd2/transaction.c
	M	fs/jffs2/dir.c
	M	fs/jffs2/fs.c
	M	fs/jffs2/os-linux.h
	M	fs/jffs2/scan.c
	M	fs/jfs/jfs_txnmgr.c
	M	fs/jfs/namei.c
	M	fs/jfs/xattr.c
	M	fs/libfs.c
	M	fs/locks.c
	M	fs/minix/namei.c
	M	fs/namei.c
	M	fs/namespace.c
	M	fs/ncpfs/dir.c
	M	fs/ncpfs/ncplib_kernel.h
	M	fs/nfs/Kconfig
	M	fs/nfs/client.c
	M	fs/nfs/dir.c
	M	fs/nfs/file.c
	M	fs/nfs/getroot.c
	M	fs/nfs/inode.c
	M	fs/nfs/internal.h
	M	fs/nfs/mount_clnt.c
	M	fs/nfs/namespace.c
	M	fs/nfs/nfs4xdr.c
	M	fs/nfs/nfsroot.c
	M	fs/nfs/super.c
	M	fs/nfs/write.c
	M	fs/nfsd/nfssvc.c
	M	fs/nfsd/vfs.c
	M	fs/nfsd/vfs.h
	M	fs/nilfs2/gcdat.c
	M	fs/nilfs2/mdt.c
	M	fs/nilfs2/namei.c
	M	fs/nilfs2/super.c
	M	fs/notify/fsnotify.c
	M	fs/notify/inode_mark.c
	M	fs/notify/inotify/inotify.c
	M	fs/ntfs/aops.c
	M	fs/ntfs/file.c
	M	fs/ntfs/super.c
	M	fs/ocfs2/acl.c
	M	fs/ocfs2/aops.c
	M	fs/ocfs2/dcache.c
	M	fs/ocfs2/dlm/dlmmaster.c
	M	fs/ocfs2/dlm/dlmrecovery.c
	M	fs/ocfs2/dlm/dlmthread.c
	M	fs/ocfs2/file.c
	M	fs/ocfs2/namei.c
	M	fs/ocfs2/refcounttree.c
	M	fs/ocfs2/xattr.c
	M	fs/open.c
	M	fs/partitions/check.c
	M	fs/pipe.c
	M	fs/pnode.c
	M	fs/proc/array.c
	M	fs/proc/base.c
	M	fs/proc/inode.c
	M	fs/proc/task_mmu.c
	M	fs/quota/dquot.c
	M	fs/read_write.c
	M	fs/reiserfs/file.c
	M	fs/reiserfs/namei.c
	M	fs/reiserfs/stree.c
	M	fs/reiserfs/xattr.c
	M	fs/select.c
	M	fs/seq_file.c
	M	fs/signalfd.c
	M	fs/smbfs/cache.c
	M	fs/smbfs/dir.c
	M	fs/smbfs/inode.c
	M	fs/smbfs/proc.c
	M	fs/splice.c
	M	fs/stack.c
	M	fs/super.c
	M	fs/sysv/ialloc.c
	M	fs/sysv/namei.c
	M	fs/ubifs/dir.c
	M	fs/ubifs/super.c
	M	fs/udf/namei.c
	M	fs/ufs/namei.c
	M	fs/xfs/xfs_dfrag.c
	M	include/acpi/acexcep.h
	M	include/acpi/acpiosxf.h
	M	include/acpi/actypes.h
	M	include/acpi/processor.h
	M	include/asm-generic/bug.h
	M	include/asm-generic/cmpxchg-local.h
	M	include/asm-generic/ioctls.h
	M	include/asm-generic/kmap_types.h
	M	include/asm-generic/percpu.h
	M	include/asm-generic/tlb.h
	M	include/asm-generic/vmlinux.lds.h
	M	include/drm/drm_crtc_helper.h
	M	include/drm/drm_fb_helper.h
	M	include/drm/drm_pciids.h
	M	include/linux/Kbuild
	M	include/linux/a.out.h
	M	include/linux/acpi.h
	M	include/linux/aio.h
	M	include/linux/bottom_half.h
	M	include/linux/buffer_head.h
	M	include/linux/compat.h
	M	include/linux/compiler-gcc.h
	M	include/linux/compiler-gcc4.h
	M	include/linux/connector.h
	M	include/linux/console.h
	M	include/linux/cramfs_fs_sb.h
	M	include/linux/dcache.h
	M	include/linux/debugobjects.h
	M	include/linux/device.h
	M	include/linux/ethtool.h
	M	include/linux/fb.h
	M	include/linux/firmware.h
	M	include/linux/fs.h
	M	include/linux/fs_stack.h
	M	include/linux/fsnotify_backend.h
	M	include/linux/genetlink.h
	M	include/linux/hardirq.h
	M	include/linux/hrtimer.h
	M	include/linux/if_pppol2tp.h
	M	include/linux/if_pppox.h
	M	include/linux/init.h
	M	include/linux/init_task.h
	M	include/linux/inotify.h
	M	include/linux/interrupt.h
	M	include/linux/irq.h
	M	include/linux/jbd.h
	M	include/linux/jbd2.h
	M	include/linux/kbd_kern.h
	M	include/linux/kernel.h
	M	include/linux/kgdb.h
	M	include/linux/kprobes.h
	M	include/linux/kvm_host.h
	M	include/linux/list.h
	M	include/linux/lockdep.h
	M	include/linux/magic.h
	M	include/linux/miscdevice.h
	M	include/linux/mm.h
	M	include/linux/mm_types.h
	M	include/linux/mmc/sdio.h
	M	include/linux/mmzone.h
	M	include/linux/module.h
	M	include/linux/mount.h
	M	include/linux/msdos_fs.h
	M	include/linux/mutex.h
	M	include/linux/namei.h
	M	include/linux/netdevice.h
	M	include/linux/netfilter/x_tables.h
	M	include/linux/netpoll.h
	M	include/linux/nfs_fs.h
	M	include/linux/nfs_fs_sb.h
	M	include/linux/nfs_mount.h
	M	include/linux/nfs_xdr.h
	M	include/linux/notifier.h
	M	include/linux/of.h
	M	include/linux/oprofile.h
	M	include/linux/page_cgroup.h
	M	include/linux/pagevec.h
	M	include/linux/pci_ids.h
	M	include/linux/percpu-defs.h
	M	include/linux/percpu.h
	M	include/linux/percpu_counter.h
	M	include/linux/perf_event.h
	M	include/linux/plist.h
	M	include/linux/poison.h
	M	include/linux/poll.h
	M	include/linux/ppp_channel.h
	M	include/linux/preempt.h
	M	include/linux/profile.h
	M	include/linux/proportions.h
	M	include/linux/ptrace.h
	M	include/linux/quicklist.h
	M	include/linux/radix-tree.h
	M	include/linux/random.h
	M	include/linux/ratelimit.h
	M	include/linux/rculist.h
	M	include/linux/rcupdate.h
	M	include/linux/rtmutex.h
	M	include/linux/rwlock.h
	M	include/linux/rwlock_api_smp.h
	M	include/linux/rwsem-spinlock.h
	M	include/linux/rwsem.h
	M	include/linux/sched.h
	M	include/linux/security.h
	M	include/linux/semaphore.h
	M	include/linux/seq_file.h
	M	include/linux/seqlock.h
	M	include/linux/serial_8250.h
	M	include/linux/serial_core.h
	M	include/linux/signal.h
	M	include/linux/skbuff.h
	M	include/linux/slub_def.h
	M	include/linux/smb_fs_sb.h
	M	include/linux/smp.h
	M	include/linux/spinlock.h
	M	include/linux/spinlock_api_smp.h
	M	include/linux/spinlock_api_up.h
	M	include/linux/spinlock_types.h
	M	include/linux/splice.h
	M	include/linux/ssb/ssb.h
	M	include/linux/ssb/ssb_driver_chipcommon.h
	M	include/linux/ssb/ssb_regs.h
	M	include/linux/sunrpc/auth.h
	M	include/linux/swap.h
	M	include/linux/swapops.h
	M	include/linux/sysctl.h
	M	include/linux/sysrq.h
	M	include/linux/tboot.h
	M	include/linux/time.h
	M	include/linux/timer.h
	M	include/linux/tipc.h
	M	include/linux/tipc_config.h
	M	include/linux/tracepoint.h
	M	include/linux/tty.h
	M	include/linux/tty_driver.h
	M	include/linux/uaccess.h
	M	include/linux/usb.h
	M	include/linux/usb/serial.h
	M	include/linux/utsname.h
	M	include/linux/vmalloc.h
	M	include/linux/vmstat.h
	M	include/linux/workqueue.h
	M	include/linux/writeback.h
	M	include/math-emu/op-common.h
	M	include/mtd/mtd-abi.h
	M	include/net/sctp/structs.h
	M	include/net/sock.h
	M	include/net/tipc/tipc.h
	M	include/sound/emu10k1.h
	M	include/trace/events/sched.h
	M	include/trace/events/signal.h
	M	include/trace/events/timer.h
	M	include/trace/syscall.h
	M	init/Kconfig
	M	init/Makefile
	M	init/do_mounts.c
	M	init/main.c
	M	init/version.c
	M	ipc/mqueue.c
	M	ipc/msg.c
	M	ipc/msgutil.c
	M	ipc/sem.c
	M	ipc/shm.c
	M	ipc/syscall.c
	M	ipc/util.h
	M	kernel/Kconfig.preempt
	M	kernel/Makefile
	M	kernel/audit.c
	M	kernel/cgroup.c
	M	kernel/compat.c
	M	kernel/early_res.c
	M	kernel/exit.c
	M	kernel/fork.c
	M	kernel/futex.c
	M	kernel/hrtimer.c
	M	kernel/irq/chip.c
	M	kernel/irq/handle.c
	M	kernel/irq/manage.c
	M	kernel/irq/migration.c
	M	kernel/irq/spurious.c
	M	kernel/itimer.c
	M	kernel/kallsyms.c
	M	kernel/kexec.c
	M	kernel/kgdb.c
	M	kernel/kprobes.c
	M	kernel/ksysfs.c
	M	kernel/latencytop.c
	M	kernel/lockdep.c
	M	kernel/module.c
	M	kernel/mutex-debug.h
	M	kernel/mutex.c
	M	kernel/notifier.c
	M	kernel/nsproxy.c
	M	kernel/panic.c
	M	kernel/params.c
	M	kernel/perf_event.c
	M	kernel/pid.c
	M	kernel/posix-cpu-timers.c
	M	kernel/posix-timers.c
	M	kernel/power/Kconfig
	M	kernel/power/Makefile
	M	kernel/printk.c
	M	kernel/profile.c
	M	kernel/rcupdate.c
	M	kernel/rcutiny.c
	M	kernel/rcutorture.c
	M	kernel/rcutree.c
	M	kernel/relay.c
	M	kernel/res_counter.c
	M	kernel/rtmutex-debug.c
	M	kernel/rtmutex-debug.h
	M	kernel/rtmutex.c
	M	kernel/rtmutex_common.h
	M	kernel/rwsem.c
	M	kernel/sched.c
	M	kernel/sched_debug.c
	M	kernel/sched_fair.c
	M	kernel/sched_rt.c
	M	kernel/sched_stats.h
	M	kernel/semaphore.c
	M	kernel/signal.c
	M	kernel/softirq.c
	M	kernel/softlockup.c
	M	kernel/spinlock.c
	M	kernel/stop_machine.c
	M	kernel/sys.c
	M	kernel/sysctl.c
	M	kernel/time.c
	M	kernel/time/Makefile
	M	kernel/time/ntp.c
	M	kernel/time/tick-common.c
	M	kernel/time/tick-sched.c
	M	kernel/time/timekeeping.c
	M	kernel/timer.c
	M	kernel/trace/Kconfig
	M	kernel/trace/Makefile
	M	kernel/trace/ftrace.c
	M	kernel/trace/power-traces.c
	M	kernel/trace/ring_buffer.c
	M	kernel/trace/trace.c
	M	kernel/trace/trace.h
	M	kernel/trace/trace_functions_graph.c
	M	kernel/trace/trace_irqsoff.c
	M	kernel/trace/trace_printk.c
	M	kernel/tracepoint.c
	M	kernel/user.c
	M	kernel/workqueue.c
	M	lib/Kconfig
	M	lib/Kconfig.debug
	M	lib/Kconfig.kgdb
	M	lib/Makefile
	M	lib/debugobjects.c
	M	lib/idr.c
	M	lib/kernel_lock.c
	M	lib/locking-selftest.c
	M	lib/percpu_counter.c
	M	lib/proportions.c
	M	lib/radix-tree.c
	M	lib/ratelimit.c
	M	lib/rwsem-spinlock.c
	M	lib/rwsem.c
	M	lib/scatterlist.c
	M	lib/spinlock_debug.c
	M	mm/backing-dev.c
	M	mm/bootmem.c
	M	mm/bounce.c
	M	mm/filemap.c
	M	mm/highmem.c
	M	mm/hugetlb.c
	M	mm/memcontrol.c
	M	mm/memory.c
	M	mm/mlock.c
	M	mm/mmap.c
	M	mm/mmu_context.c
	M	mm/nommu.c
	M	mm/oom_kill.c
	M	mm/page_alloc.c
	M	mm/page_cgroup.c
	M	mm/page_io.c
	M	mm/quicklist.c
	M	mm/shmem.c
	M	mm/slab.c
	M	mm/slob.c
	M	mm/slub.c
	M	mm/swap.c
	M	mm/swapfile.c
	M	mm/vmalloc.c
	M	mm/vmscan.c
	M	mm/vmstat.c
	M	net/9p/trans_fd.c
	M	net/Kconfig
	M	net/Makefile
	M	net/bridge/br_device.c
	M	net/bridge/br_fdb.c
	M	net/bridge/br_input.c
	M	net/bridge/br_stp_bpdu.c
	M	net/can/bcm.c
	M	net/core/dev.c
	M	net/core/drop_monitor.c
	M	net/core/ethtool.c
	M	net/core/filter.c
	M	net/core/flow.c
	M	net/core/neighbour.c
	M	net/core/netpoll.c
	M	net/core/skbuff.c
	M	net/core/sock.c
	M	net/dccp/input.c
	M	net/ipv4/arp.c
	M	net/ipv4/devinet.c
	M	net/ipv4/fib_trie.c
	M	net/ipv4/icmp.c
	M	net/ipv4/netfilter/arp_tables.c
	M	net/ipv4/netfilter/ip_tables.c
	M	net/ipv4/route.c
	M	net/ipv4/syncookies.c
	M	net/ipv4/tcp.c
	M	net/ipv4/tcp_ipv4.c
	M	net/ipv4/tcp_output.c
	M	net/ipv4/udp.c
	M	net/ipv6/addrconf.c
	M	net/ipv6/ip6_output.c
	M	net/ipv6/ndisc.c
	M	net/ipv6/netfilter/ip6_tables.c
	M	net/ipv6/netfilter/ip6t_REJECT.c
	M	net/ipv6/route.c
	M	net/irda/af_irda.c
	M	net/mac80211/Kconfig
	M	net/mac80211/cfg.c
	M	net/mac80211/mesh_plink.c
	M	net/mac80211/mlme.c
	M	net/mac80211/rx.c
	M	net/mac80211/scan.c
	M	net/mac80211/tx.c
	M	net/mac80211/work.c
	M	net/netfilter/core.c
	M	net/netfilter/ipvs/ip_vs_conn.c
	M	net/netfilter/nf_conntrack_expect.c
	M	net/netlink/af_netlink.c
	M	net/netlink/genetlink.c
	M	net/sched/act_nat.c
	M	net/sched/sch_generic.c
	M	net/sched/sch_sfq.c
	M	net/sctp/output.c
	M	net/sctp/protocol.c
	M	net/sctp/sm_make_chunk.c
	M	net/sctp/sysctl.c
	M	net/socket.c
	M	net/sunrpc/auth_generic.c
	M	net/sunrpc/rpc_pipe.c
	M	net/sunrpc/xprtsock.c
	M	net/tipc/Kconfig
	M	net/tipc/Makefile
	M	net/wireless/mlme.c
	M	net/wireless/scan.c
	M	samples/Kconfig
	M	samples/Makefile
	M	scripts/Makefile.modpost
	M	scripts/checkpatch.pl
	M	scripts/kallsyms.c
	M	scripts/kconfig/Makefile
	M	scripts/kconfig/conf.c
	M	scripts/kconfig/confdata.c
	M	scripts/kconfig/expr.c
	M	scripts/kconfig/expr.h
	M	scripts/kconfig/symbol.c
	M	scripts/kconfig/zconf.hash.c_shipped
	M	scripts/kconfig/zconf.tab.c_shipped
	M	scripts/kconfig/zconf.y
	M	scripts/mkcompile_h
	M	scripts/mkmakefile
	M	scripts/mod/modpost.c
	M	scripts/mod/modpost.h
	M	scripts/setlocalversion
	M	security/Kconfig
	M	security/Makefile
	M	security/commoncap.c
	M	security/keys/permission.c
	M	security/keys/proc.c
	M	security/security.c
	M	security/selinux/Makefile
	M	security/selinux/avc.c
	M	security/selinux/hooks.c
	M	security/selinux/netnode.c
	M	security/selinux/selinuxfs.c
	M	security/tomoyo/realpath.c
	M	sound/core/pcm_lib.c
	M	sound/core/pcm_native.c
	M	sound/drivers/pcsp/pcsp.h
	M	sound/drivers/pcsp/pcsp_input.c
	M	sound/drivers/pcsp/pcsp_lib.c
	M	sound/pci/emu10k1/emu10k1.c
	M	sound/pci/emu10k1/emupcm.c
	M	sound/pci/emu10k1/memory.c
	M	sound/pci/hda/hda_codec.c
	M	sound/pci/hda/hda_codec.h
	M	sound/pci/hda/hda_intel.c
	M	sound/pci/hda/patch_conexant.c
	M	sound/pci/hda/patch_hdmi.c
	M	sound/pci/hda/patch_nvhdmi.c
	M	sound/pci/hda/patch_realtek.c
	M	sound/pci/hda/patch_sigmatel.c
	M	sound/pci/intel8x0.c
	M	sound/pci/riptide/riptide.c
	M	sound/soc/codecs/wm8350.c
	M	sound/soc/codecs/wm8400.c
	M	sound/soc/codecs/wm8580.c
	M	sound/soc/codecs/wm8776.c
	M	sound/soc/codecs/wm8990.c
	M	sound/soc/fsl/mpc5200_dma.h
	M	sound/soc/imx/imx-pcm-dma-mx2.c
	M	sound/soc/soc-cache.c
	M	tools/perf/Makefile
	M	tools/perf/bench/mem-memcpy.c
	M	tools/perf/bench/sched-messaging.c
	M	tools/perf/builtin-annotate.c
	M	tools/perf/builtin-buildid-cache.c
	M	tools/perf/builtin-buildid-list.c
	M	tools/perf/builtin-diff.c
	M	tools/perf/builtin-help.c
	M	tools/perf/builtin-lock.c
	M	tools/perf/builtin-probe.c
	M	tools/perf/builtin-record.c
	M	tools/perf/builtin-report.c
	M	tools/perf/builtin-sched.c
	M	tools/perf/builtin-stat.c
	M	tools/perf/builtin-timechart.c
	M	tools/perf/builtin-top.c
	M	tools/perf/builtin-trace.c
	M	tools/perf/perf.h
	M	tools/perf/util/callchain.h
	M	tools/perf/util/debug.c
	M	tools/perf/util/debug.h
	M	tools/perf/util/parse-options.c
	M	tools/perf/util/parse-options.h
	M	tools/perf/util/probe-finder.c
	M	tools/perf/util/symbol.c
	M	tools/perf/util/symbol.h
	M	tools/perf/util/trace-event-parse.c
	M	tools/perf/util/trace-event.h
	M	virt/kvm/ioapic.c
	M	virt/kvm/kvm_main.c
	error: Your local changes to the following files would be overwritten by checkout:
		virt/kvm/kvm_main.c
		virt/kvm/ioapic.c
		tools/perf/util/trace-event.h
		tools/perf/util/trace-event-parse.c
		tools/perf/util/symbol.h
		tools/perf/util/symbol.c
		tools/perf/util/probe-finder.c
		tools/perf/util/parse-options.h
		tools/perf/util/parse-options.c
		tools/perf/util/debug.h
		tools/perf/util/debug.c
		tools/perf/util/callchain.h
		tools/perf/perf.h
		tools/perf/builtin-trace.c
		tools/perf/builtin-top.c
		tools/perf/builtin-timechart.c
		tools/perf/builtin-stat.c
		tools/perf/builtin-sched.c
		tools/perf/builtin-report.c
		tools/perf/builtin-record.c
		tools/perf/builtin-probe.c
		tools/perf/builtin-lock.c
		tools/perf/builtin-help.c
		tools/perf/builtin-diff.c
		tools/perf/builtin-buildid-list.c
		tools/perf/builtin-buildid-cache.c
		tools/perf/builtin-annotate.c
		tools/perf/bench/sched-messaging.c
		tools/perf/bench/mem-memcpy.c
		tools/perf/Makefile
		sound/soc/soc-cache.c
		sound/soc/imx/imx-pcm-dma-mx2.c
		sound/soc/fsl/mpc5200_dma.h
		sound/soc/codecs/wm8990.c
		sound/soc/codecs/wm8776.c
		sound/soc/codecs/wm8580.c
		sound/soc/codecs/wm8400.c
		sound/soc/codecs/wm8350.c
		sound/pci/riptide/riptide.c
		sound/pci/intel8x0.c
		sound/pci/hda/patch_sigmatel.c
		sound/pci/hda/patch_realtek.c
		sound/pci/hda/patch_nvhdmi.c
		sound/pci/hda/patch_hdmi.c
		sound/pci/hda/patch_conexant.c
		sound/pci/hda/hda_intel.c
		sound/pci/hda/hda_codec.h
		sound/pci/hda/hda_codec.c
		sound/pci/emu10k1/memory.c
		sound/pci/emu10k1/emupcm.c
		sound/pci/emu10k1/emu10k1.c
		sound/drivers/pcsp/pcsp_lib.c
		sound/drivers/pcsp/pcsp_input.c
		sound/drivers/pcsp/pcsp.h
		sound/core/pcm_native.c
		sound/core/pcm_lib.c
		security/tomoyo/realpath.c
		security/selinux/selinuxfs.c
		security/selinux/netnode.c
		security/selinux/hooks.c
		security/selinux/avc.c
		security/selinux/Makefile
		security/security.c
		security/keys/proc.c
		security/keys/permission.c
		security/commoncap.c
		security/Makefile
		security/Kconfig
		scripts/setlocalversion
		scripts/mod/modpost.h
		scripts/mod/modpost.c
		scripts/mkmakefile
		scripts/mkcompile_h
		scripts/kconfig/zconf.y
		scripts/kconfig/zconf.tab.c_shipped
		scripts/kconfig/zconf.hash.c_shipped
		scripts/kconfig/symbol.c
		scripts/kconfig/expr.h
		scripts/kconfig/expr.c
		scripts/kconfig/confdata.c
		scripts/kconfig/conf.c
		scripts/kconfig/Makefile
		scripts/kallsyms.c
		scripts/checkpatch.pl
		scripts/Makefile.modpost
		samples/Makefile
		samples/Kconfig
		net/wireless/scan.c
		net/wireless/mlme.c
		net/tipc/Makefile
		net/tipc/Kconfig
		net/sunrpc/xprtsock.c
		net/sunrpc/rpc_pipe.c
		net/sunrpc/auth_generic.c
		net/socket.c
		net/sctp/sysctl.c
		net/sctp/sm_make_chunk.c
		net/sctp/protocol.c
		net/sctp/output.c
		net/sched/sch_sfq.c
		net/sched/sch_generic.c
		net/sched/act_nat.c
		net/netlink/genetlink.c
		net/netlink/af_netlink.c
		net/netfilter/nf_conntrack_expect.c
		net/netfilter/ipvs/ip_vs_conn.c
		net/netfilter/core.c
		net/mac80211/work.c
		net/mac80211/tx.c
		net/mac80211/scan.c
		net/mac80211/rx.c
		net/mac80211/mlme.c
		net/mac80211/mesh_plink.c
		net/mac80211/cfg.c
		net/mac80211/Kconfig
		net/irda/af_irda.c
		net/ipv6/route.c
		net/ipv6/netfilter/ip6t_REJECT.c
		net/ipv6/netfilter/ip6_tables.c
		net/ipv6/ndisc.c
		net/ipv6/ip6_output.c
		net/ipv6/addrconf.c
		net/ipv4/udp.c
		net/ipv4/tcp_output.c
		net/ipv4/tcp_ipv4.c
		net/ipv4/tcp.c
		net/ipv4/syncookies.c
		net/ipv4/route.c
		net/ipv4/netfilter/ip_tables.c
		net/ipv4/netfilter/arp_tables.c
		net/ipv4/icmp.c
		net/ipv4/fib_trie.c
		net/ipv4/devinet.c
		net/ipv4/arp.c
		net/dccp/input.c
		net/core/sock.c
		net/core/skbuff.c
		net/core/netpoll.c
		net/core/neighbour.c
		net/core/flow.c
		net/core/filter.c
		net/core/ethtool.c
		net/core/drop_monitor.c
		net/core/dev.c
		net/can/bcm.c
		net/bridge/br_stp_bpdu.c
		net/bridge/br_input.c
		net/bridge/br_fdb.c
		net/bridge/br_device.c
		net/Makefile
		net/Kconfig
		net/9p/trans_fd.c
		mm/vmstat.c
		mm/vmscan.c
		mm/vmalloc.c
		mm/swapfile.c
		mm/swap.c
		mm/slub.c
		mm/slob.c
		mm/slab.c
		mm/shmem.c
		mm/quicklist.c
		mm/page_io.c
		mm/page_cgroup.c
		mm/page_alloc.c
		mm/oom_kill.c
		mm/nommu.c
		mm/mmu_context.c
		mm/mmap.c
		mm/mlock.c
		mm/memory.c
		mm/memcontrol.c
	
	error: The following untracked working tree files would be overwritten by checkout:
		virt/kvm/xinterface.c
		security/bsdjail.c
		samples/psrwlock/psrwlock_example.c
		samples/psrwlock/Makefile
		samples/markers/test-multi.c
		samples/markers/probe-example.c
		samples/markers/marker-example.c
		samples/markers/Makefile
		net/tipc/tipc_user_reg.h
		net/tipc/tipc_user_reg.c
		net/tipc/tipc_topsrv.h
		net/tipc/tipc_topsrv.c
		net/tipc/tipc_socket.c
		net/tipc/tipc_ref.h
		net/tipc/tipc_ref.c
		net/tipc/tipc_port.h
		net/tipc/tipc_port.c
		net/tipc/tipc_node.h
		net/tipc/tipc_node.c
		net/tipc/tipc_netlink.c
		net/tipc/tipc_net.h
		net/tipc/tipc_net.c
		net/tipc/tipc_name_table.h
		net/tipc/tipc_name_table.c
		net/tipc/tipc_name_distr.h
		net/tipc/tipc_name_distr.c
		net/tipc/tipc_msg.h
		net/tipc/tipc_msg.c
		net/tipc/tipc_link.h
		net/tipc/tipc_link.c
		net/tipc/tipc_handler.c
		net/tipc/tipc_eth_media.c
		net/tipc/tipc_discover.h
		net/tipc/tipc_discover.c
		net/tipc/tipc_dbg.h
		net/tipc/tipc_dbg.c
		net/tipc/tipc_core.h
		net/tipc/tipc_core.c
		net/tipc/tipc_cfgsrv.h
		net/tipc/tipc_cfgsrv.c
		net/tipc/tipc_bearer.h
		net/tipc/tipc_bearer.c
		net/tipc/tipc_bcast.h
		net/tipc/tipc_bcast.c
		net/tipc/tipc_addr.h
		net/tipc/tipc_addr.c
		net/l2tp/l2tp_ppp.c
		net/l2tp/l2tp_netlink.c
		net/l2tp/l2tp_ip.c
		net/l2tp/l2tp_eth.c
		net/l2tp/l2tp_debugfs.c
		net/l2tp/l2tp_core.h
		net/l2tp/l2tp_core.c
		net/l2tp/Makefile
		net/l2tp/Kconfig
		ltt/probes/trap-trace.c
		ltt/probes/syscall-trace.c
		ltt/probes/rcu-trace.c
		ltt/probes/pm-trace.c
		ltt/probes/net-trace.c
		ltt/probes/net-extended-trace.c
		ltt/probes/mm-trace.c
		ltt/probes/lockdep-trace.c
		ltt/probes/kernel-trace.c
		ltt/probes/jbd2-trace.c
		ltt/probes/ipc-trace.c
		ltt/probes/fs-trace.c
		ltt/probes/ext4-trace.c
		ltt/probes/block-trace.c
		ltt/probes/Makefile
		ltt/ltt-userspace-event.c
		ltt/ltt-type-serializer.c
		ltt/ltt-tracer.c
		ltt/ltt-trace-control.c
		ltt/ltt-statedump.c
		ltt/ltt-serialize.c
		ltt/ltt-relay-vfs.c
		ltt/ltt-relay-splice.c
		ltt/ltt-relay-select.h
		ltt/ltt-relay-lockless.h
		ltt/ltt-relay-lockless.c
		ltt/ltt-relay-locked.h
		ltt/ltt-relay-locked.c
		ltt/ltt-relay-irqoff.h
		ltt/ltt-relay-irqoff.c
		ltt/ltt-relay-alloc.c
		ltt/ltt-marker-control.c
		ltt/ltt-kprobes.c
		ltt/ltt-ftrace.c
		ltt/ltt-filter.c
		ltt/ltt-core.c
		ltt/ltt-channels.c
		ltt/ltt-ascii.c
		ltt/Makefile
		ltt/Kconfig
		lib/shm_signal_eventfd.c
		lib/shm_signal.c
		lib/psrwlock.h
		lib/psrwlock.c
		lib/psrwlock-latency-trace.c
		lib/psrwlock-debug.h
		lib/psrwlock-debug.c
		lib/ioq.c
		kernel/vbus/vbus.h
		kernel/vbus/shm-ioq.c
		kernel/vbus/map.h
		kernel/vbus/map.c
		kernel/vbus/devices/venet/venetdevice.h
		kernel/vbus/devices/venet/tap.c
		kernel/vbus/devices/venet/macvlan.c
		kernel/vbus/devices/venet/device.c
		kernel/vbus/devices/venet/Makefile
		kernel/vbus/devices/venet/Kconfig
		kernel/vbus/devices/Makefile
		kernel/vbus/devices/Kconfig
		kernel/vbus/devclass.c
		kernel/vbus/core.c
		kernel/vbus/connectors/null.c
		kernel/vbus/connectors/kvm.c
		kernel/vbus/connectors/Makefile
		kernel/vbus/connectors/Kconfig
		kernel/vbus/config-ioctl.c
		kernel/vbus/config-fs.c
		kernel/vbus/client.c
		kernel/vbus/attribute.c
		kernel/vbus/Makefile
		kernel/vbus/Kconfig
		kernel/trace/trace_kdb.c
		kernel/trace/trace-clock.c
		kernel/trace/trace-clock-32-to-64.c
		kernel/trace/latency_hist.c
		kernel/time/tsc-sync.c
		kernel/rt.c
		kernel/power/ksnap.c
		kernel/marker.c
		kernel/immediate.c
		kernel/debug/kms_hooks.c
		kernel/debug/kdb/kdb_support.c
		kernel/debug/kdb/kdb_private.h
		kernel/debug/kdb/kdb_main.c
		kernel/debug/kdb/kdb_keyboard.c
		kernel/debug/kdb/kdb_io.c
		kernel/debug/kdb/kdb_debugger.c
		kernel/debug/kdb/kdb_cmds
		kernel/debug/kdb/kdb_bt.c
		kernel/debug/kdb/kdb_bp.c
		kernel/debug/kdb/Makefile
		kernel/debug/kdb/.gitignore
		kernel/debug/gdbstub.c
		kernel/debug/debug_core.h
		kernel/debug/debug_core.c
		kernel/debug/Makefile
		include/trace/trap.h
		include/trace/timer.h
		include/trace/swap.h
		include/trace/socket.h
		include/trace/sched.h
		include/trace/rcu.h
		include/trace/pm.h
		include/trace/page_alloc.h
		include/trace/net.h
		include/trace/lockdep.h
		include/trace/kernel.h
		include/trace/irq.h
		include/
	Aborting
	error: Cannot delete the branch 'wrs_meta-temp' which you are currently on.
	error: Your local changes to the following files would be overwritten by checkout:
		virt/kvm/kvm_main.c
		virt/kvm/ioapic.c
		tools/perf/util/trace-event.h
		tools/perf/util/trace-event-parse.c
		tools/perf/util/symbol.h
		tools/perf/util/symbol.c
		tools/perf/util/probe-finder.c
		tools/perf/util/parse-options.h
		tools/perf/util/parse-options.c
		tools/perf/util/debug.h
		tools/perf/util/debug.c
		tools/perf/util/callchain.h
		tools/perf/perf.h
		tools/perf/builtin-trace.c
		tools/perf/builtin-top.c
		tools/perf/builtin-timechart.c
		tools/perf/builtin-stat.c
		tools/perf/builtin-sched.c
		tools/perf/builtin-report.c
		tools/perf/builtin-record.c
		tools/perf/builtin-probe.c
		tools/perf/builtin-lock.c
		tools/perf/builtin-help.c
		tools/perf/builtin-diff.c
		tools/perf/builtin-buildid-list.c
		tools/perf/builtin-buildid-cache.c
		tools/perf/builtin-annotate.c
		tools/perf/bench/sched-messaging.c
		tools/perf/bench/mem-memcpy.c
		tools/perf/Makefile
		sound/soc/soc-cache.c
		sound/soc/imx/imx-pcm-dma-mx2.c
		sound/soc/fsl/mpc5200_dma.h
		sound/soc/codecs/wm8990.c
		sound/soc/codecs/wm8776.c
		sound/soc/codecs/wm8580.c
		sound/soc/codecs/wm8400.c
		sound/soc/codecs/wm8350.c
		sound/pci/riptide/riptide.c
		sound/pci/intel8x0.c
		sound/pci/hda/patch_sigmatel.c
		sound/pci/hda/patch_realtek.c
		sound/pci/hda/patch_nvhdmi.c
		sound/pci/hda/patch_hdmi.c
		sound/pci/hda/patch_conexant.c
		sound/pci/hda/hda_intel.c
		sound/pci/hda/hda_codec.h
		sound/pci/hda/hda_codec.c
		sound/pci/emu10k1/memory.c
		sound/pci/emu10k1/emupcm.c
		sound/pci/emu10k1/emu10k1.c
		sound/drivers/pcsp/pcsp_lib.c
		sound/drivers/pcsp/pcsp_input.c
		sound/drivers/pcsp/pcsp.h
		sound/core/pcm_native.c
		sound/core/pcm_lib.c
		security/tomoyo/realpath.c
		security/selinux/selinuxfs.c
		security/selinux/netnode.c
		security/selinux/hooks.c
		security/selinux/avc.c
		security/selinux/Makefile
		security/security.c
		security/keys/proc.c
		security/keys/permission.c
		security/commoncap.c
		security/Makefile
		security/Kconfig
		scripts/setlocalversion
		scripts/mod/modpost.h
		scripts/mod/modpost.c
		scripts/mkmakefile
		scripts/mkcompile_h
		scripts/kconfig/zconf.y
		scripts/kconfig/zconf.tab.c_shipped
		scripts/kconfig/zconf.hash.c_shipped
		scripts/kconfig/symbol.c
		scripts/kconfig/expr.h
		scripts/kconfig/expr.c
		scripts/kconfig/confdata.c
		scripts/kconfig/conf.c
		scripts/kconfig/Makefile
		scripts/kallsyms.c
		scripts/checkpatch.pl
		scripts/Makefile.modpost
		samples/Makefile
		samples/Kconfig
		net/wireless/scan.c
		net/wireless/mlme.c
		net/tipc/Makefile
		net/tipc/Kconfig
		net/sunrpc/xprtsock.c
		net/sunrpc/rpc_pipe.c
		net/sunrpc/auth_generic.c
		net/socket.c
		net/sctp/sysctl.c
		net/sctp/sm_make_chunk.c
		net/sctp/protocol.c
		net/sctp/output.c
		net/sched/sch_sfq.c
		net/sched/sch_generic.c
		net/sched/act_nat.c
		net/netlink/genetlink.c
		net/netlink/af_netlink.c
		net/netfilter/nf_conntrack_expect.c
		net/netfilter/ipvs/ip_vs_conn.c
		net/netfilter/core.c
		net/mac80211/work.c
		net/mac80211/tx.c
		net/mac80211/scan.c
		net/mac80211/rx.c
		net/mac80211/mlme.c
		net/mac80211/mesh_plink.c
		net/mac80211/cfg.c
		net/mac80211/Kconfig
		net/irda/af_irda.c
		net/ipv6/route.c
		net/ipv6/netfilter/ip6t_REJECT.c
		net/ipv6/netfilter/ip6_tables.c
		net/ipv6/ndisc.c
		net/ipv6/ip6_output.c
		net/ipv6/addrconf.c
		net/ipv4/udp.c
		net/ipv4/tcp_output.c
		net/ipv4/tcp_ipv4.c
		net/ipv4/tcp.c
		net/ipv4/syncookies.c
		net/ipv4/route.c
		net/ipv4/netfilter/ip_tables.c
		net/ipv4/netfilter/arp_tables.c
		net/ipv4/icmp.c
		net/ipv4/fib_trie.c
		net/ipv4/devinet.c
		net/ipv4/arp.c
		net/dccp/input.c
		net/core/sock.c
		net/core/skbuff.c
		net/core/netpoll.c
		net/core/neighbour.c
		net/core/flow.c
		net/core/filter.c
		net/core/ethtool.c
		net/core/drop_monitor.c
		net/core/dev.c
		net/can/bcm.c
		net/bridge/br_stp_bpdu.c
		net/bridge/br_input.c
		net/bridge/br_fdb.c
		net/bridge/br_device.c
		net/Makefile
		net/Kconfig
		net/9p/trans_fd.c
		mm/vmstat.c
		mm/vmscan.c
		mm/vmalloc.c
		mm/swapfile.c
		mm/swap.c
		mm/slub.c
		mm/slob.c
		mm/slab.c
		mm/shmem.c
		mm/quicklist.c
		mm/page_io.c
		mm/page_cgroup.c
		mm/page_alloc.c
		mm/oom_kill.c
		mm/nommu.c
		mm/mmu_context.c
		mm/mmap.c
		mm/mlock.c
		mm/memory.c
		mm/memcontrol.c
	
	error: The following untracked working tree files would be overwritten by checkout:
		virt/kvm/xinterface.c
		security/bsdjail.c
		samples/psrwlock/psrwlock_example.c
		samples/psrwlock/Makefile
		samples/markers/test-multi.c
		samples/markers/probe-example.c
		samples/markers/marker-example.c
		samples/markers/Makefile
		net/tipc/tipc_user_reg.h
		net/tipc/tipc_user_reg.c
		net/tipc/tipc_topsrv.h
		net/tipc/tipc_topsrv.c
		net/tipc/tipc_socket.c
		net/tipc/tipc_ref.h
		net/tipc/tipc_ref.c
		net/tipc/tipc_port.h
		net/tipc/tipc_port.c
		net/tipc/tipc_node.h
		net/tipc/tipc_node.c
		net/tipc/tipc_netlink.c
		net/tipc/tipc_net.h
		net/tipc/tipc_net.c
		net/tipc/tipc_name_table.h
		net/tipc/tipc_name_table.c
		net/tipc/tipc_name_distr.h
		net/tipc/tipc_name_distr.c
		net/tipc/tipc_msg.h
		net/tipc/tipc_msg.c
		net/tipc/tipc_link.h
		net/tipc/tipc_link.c
		net/tipc/tipc_handler.c
		net/tipc/tipc_eth_media.c
		net/tipc/tipc_discover.h
		net/tipc/tipc_discover.c
		net/tipc/tipc_dbg.h
		net/tipc/tipc_dbg.c
		net/tipc/tipc_core.h
		net/tipc/tipc_core.c
		net/tipc/tipc_cfgsrv.h
		net/tipc/tipc_cfgsrv.c
		net/tipc/tipc_bearer.h
		net/tipc/tipc_bearer.c
		net/tipc/tipc_bcast.h
		net/tipc/tipc_bcast.c
		net/tipc/tipc_addr.h
		net/tipc/tipc_addr.c
		net/l2tp/l2tp_ppp.c
		net/l2tp/l2tp_netlink.c
		net/l2tp/l2tp_ip.c
		net/l2tp/l2tp_eth.c
		net/l2tp/l2tp_debugfs.c
		net/l2tp/l2tp_core.h
		net/l2tp/l2tp_core.c
		net/l2tp/Makefile
		net/l2tp/Kconfig
		ltt/probes/trap-trace.c
		ltt/probes/syscall-trace.c
		ltt/probes/rcu-trace.c
		ltt/probes/pm-trace.c
		ltt/probes/net-trace.c
		ltt/probes/net-extended-trace.c
		ltt/probes/mm-trace.c
		ltt/probes/lockdep-trace.c
		ltt/probes/kernel-trace.c
		ltt/probes/jbd2-trace.c
		ltt/probes/ipc-trace.c
		ltt/probes/fs-trace.c
		ltt/probes/ext4-trace.c
		ltt/probes/block-trace.c
		ltt/probes/Makefile
		ltt/ltt-userspace-event.c
		ltt/ltt-type-serializer.c
		ltt/ltt-tracer.c
		ltt/ltt-trace-control.c
		ltt/ltt-statedump.c
		ltt/ltt-serialize.c
		ltt/ltt-relay-vfs.c
		ltt/ltt-relay-splice.c
		ltt/ltt-relay-select.h
		ltt/ltt-relay-lockless.h
		ltt/ltt-relay-lockless.c
		ltt/ltt-relay-locked.h
		ltt/ltt-relay-locked.c
		ltt/ltt-relay-irqoff.h
		ltt/ltt-relay-irqoff.c
		ltt/ltt-relay-alloc.c
		ltt/ltt-marker-control.c
		ltt/ltt-kprobes.c
		ltt/ltt-ftrace.c
		ltt/ltt-filter.c
		ltt/ltt-core.c
		ltt/ltt-channels.c
		ltt/ltt-ascii.c
		ltt/Makefile
		ltt/Kconfig
		lib/shm_signal_eventfd.c
		lib/shm_signal.c
		lib/psrwlock.h
		lib/psrwlock.c
		lib/psrwlock-latency-trace.c
		lib/psrwlock-debug.h
		lib/psrwlock-debug.c
		lib/ioq.c
		kernel/vbus/vbus.h
		kernel/vbus/shm-ioq.c
		kernel/vbus/map.h
		kernel/vbus/map.c
		kernel/vbus/devices/venet/venetdevice.h
		kernel/vbus/devices/venet/tap.c
		kernel/vbus/devices/venet/macvlan.c
		kernel/vbus/devices/venet/device.c
		kernel/vbus/devices/venet/Makefile
		kernel/vbus/devices/venet/Kconfig
		kernel/vbus/devices/Makefile
		kernel/vbus/devices/Kconfig
		kernel/vbus/devclass.c
		kernel/vbus/core.c
		kernel/vbus/connectors/null.c
		kernel/vbus/connectors/kvm.c
		kernel/vbus/connectors/Makefile
		kernel/vbus/connectors/Kconfig
		kernel/vbus/config-ioctl.c
		kernel/vbus/config-fs.c
		kernel/vbus/client.c
		kernel/vbus/attribute.c
		kernel/vbus/Makefile
		kernel/vbus/Kconfig
		kernel/trace/trace_kdb.c
		kernel/trace/trace-clock.c
		kernel/trace/trace-clock-32-to-64.c
		kernel/trace/latency_hist.c
		kernel/time/tsc-sync.c
		kernel/rt.c
		kernel/power/ksnap.c
		kernel/marker.c
		kernel/immediate.c
		kernel/debug/kms_hooks.c
		kernel/debug/kdb/kdb_support.c
		kernel/debug/kdb/kdb_private.h
		kernel/debug/kdb/kdb_main.c
		kernel/debug/kdb/kdb_keyboard.c
		kernel/debug/kdb/kdb_io.c
		kernel/debug/kdb/kdb_debugger.c
		kernel/debug/kdb/kdb_cmds
		kernel/debug/kdb/kdb_bt.c
		kernel/debug/kdb/kdb_bp.c
		kernel/debug/kdb/Makefile
		kernel/debug/kdb/.gitignore
		kernel/debug/gdbstub.c
		kernel/debug/debug_core.h
		kernel/debug/debug_core.c
		kernel/debug/Makefile
		include/trace/trap.h
		include/trace/timer.h
		include/trace/swap.h
		include/trace/socket.h
		include/trace/sched.h
		include/trace/rcu.h
		include/trace/pm.h
		include/trace/page_alloc.h
		include/trace/net.h
		include/trace/lockdep.h
		include/trace/kernel.h
		include/trace/irq.h
		include/
	Aborting
	warning: could not find ktypes/temp.scc
	./0-wrs_meta-temp-33ebe31bfbabe8a7793524c85ea65707.sco: line 14: temp_68b329da9893e34099c7d8ad5cb9c940: command not found
	ERROR. Could not locate meta series for common_pc_64-preempt_rt
	ERROR: Task failed: ('function do_patch failed', '/vol/1/dvhart/poky.git/build/tmp/work/qemux86-64-poky-linux/linux-yocto-rt-2.6.34+git1+f49444f06875894389e640bcda6c3f6ceb1f0c3e_2+f49444f06875894389e640bcda6c3f6ceb1f0c3e-r0/temp/log.do_patch.30710')
	

I look at look at the linux directory:
	$ cd tmp/work/qemux86-64-poky-linux/linux-yocto-rt-2.6.34+git1+f49444f06875894389e640bcda6c3f6ceb1f0c3e_2+f49444f06875894389e640bcda6c3f6ceb1f0c3e-r0/linux/
	$ git branch
	  arm_versatile_926ejs-standard
	  atom-pc-standard
	  beagleboard-standard
	  blacksand-standard
	  common_pc-preempt_rt
	  common_pc-standard
	  common_pc_64-preempt_rt
	  common_pc_64-standard
	  crownbay-standard
	  davinci-consolidated-2.6.34-merge
	  emenlow-standard
	  fsl-mpc8315e-rdb-standard
	  kgdb-2.6.34-base-merge
	  master
	  mti_malta32_be-standard
	  mti_malta32_le-standard
	  omap-base-merge
	  preempt_rt
	  qemu_ppc32-standard
	  routerstationpro-standard
	  rt-2.6.34-base-merge
	  standard
	  wrs_base
	  wrs_meta
	  wrs_meta-orig
	* wrs_meta-temp

This suggests to me that I'm not hitting the previous
no-local-branches-after-clone issues, and that "common_pc-preempt_rt"
does indeed exist. A quick review of the linux-2.6-wrs.git wrs_meta
branch wrs directory suggests all the preempt-rt meta data exists and
matches the expected naming.

	$ find wrs -name "*preempt_rt*"
	wrs/cfg/kernel-cache/bsp/common_pc/common_pc-preempt_rt.scc
	wrs/cfg/kernel-cache/bsp/common_pc_64/common_pc_64-preempt_rt.scc
	wrs/cfg/kernel-cache/ktypes/preempt_rt
	wrs/cfg/kernel-cache/ktypes/preempt_rt/preempt_rt.cfg
	wrs/cfg/kernel-cache/ktypes/preempt_rt/preempt_rt.scc
	wrs/cfg/meta/common_pc-preempt_rt-meta
	wrs/cfg/meta/common_pc_64-preempt_rt-meta
	wrs/patches/common_pc_64-preempt_rt
	wrs/patches/preempt_rt
	wrs/patches/common_pc-preempt_rt
	

Any thoughts on what might be going wrong?

-- 
Darren Hart
Yocto Linux Kernel

