Return-Path: <eballetbo@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 82AE04C80A74
	for <poky@yoctoproject.org>; Sat,  4 Dec 2010 06:57:30 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pwj9 with SMTP id 9so2273098pwj.35
	for <poky@yoctoproject.org>; Sat, 04 Dec 2010 04:57:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=1T3pO+Zz2xJtAHz3+gXHmAwSIGlrubvky4kRVsWn6WM=;
	b=wPNrYZNJ/4HTFMUjKmU9FNYj6uo3gSeZpYiN4ZL2pxizs8EsNuJBzPspdffjGiBZon
	lHFMLAauCIUJgTmc2gbtA4rVuzRMZ+7rJNo+r9dmb+sUugyODVA2EtDDcDlRAb449bND
	fzdkkt71OTL0EtufHw3VnsXJgogO2ySvDShuw=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=eO7Fios/i+0t9+xuUGAi2WpeMy5tmdms5vIiS+0IFbgxC72WY+/DL0zubeuCKwdVzd
	CDUkPkuE1b4sfkGsgq9hY8Bf8jdUjF+1+FJ9pB5jSNJffMoiKf3Kh+eSCeaBlIf+AxXs
	439aqokBLEC+grItqWp31o9piXwnumUjp/Zjk=
MIME-Version: 1.0
Received: by 10.142.232.15 with SMTP id e15mr3144537wfh.341.1291467448830;
	Sat, 04 Dec 2010 04:57:28 -0800 (PST)
Received: by 10.143.9.9 with HTTP; Sat, 4 Dec 2010 04:57:28 -0800 (PST)
In-Reply-To: <b9dded$h8lm91@orsmga002.jf.intel.com>
References: <b9dded$h8lm91@orsmga002.jf.intel.com>
Date: Sat, 4 Dec 2010 13:57:28 +0100
Message-ID: <AANLkTinDQuMT6x1-Qr16rA-pkYrG_dv2OMLXZqgcYCZs@mail.gmail.com>
From: =?UTF-8?Q?Enric_Balletb=C3=B2_i_Serra?= <eballetbo@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/3] Initial meta-linaro skeleton
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
X-List-Received-Date: Sat, 04 Dec 2010 12:57:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

Anyone can explain a bit what's the purpose and the future of this
layer ? Is it allowed to add other ARM machines ?

Thanks in advance.
   Enric

2010/11/16 Darren Hart <dvhart@linux.intel.com>:
> Introduce the meta-linaro layer with an initial skeleton including the re=
cipe
> for linux-linaro-2.6.35:
>
> dvhart@fear:~/source/poky.git/meta-linaro$ tree
> .
> |-- TODO
> |-- conf
> | =C2=A0 |-- layer.conf
> | =C2=A0 `-- machine
> | =C2=A0 =C2=A0 =C2=A0 `-- beagleboard-linaro.conf
> `-- recipes-kernel
> =C2=A0 =C2=A0|-- linux-linaro-2.6.35
> =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 `-- beagleboard-linaro
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 `-- defco=
nfig
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0`-- linux-linaro-2=
.6.35_git.bb
>
> The general approach to using this layer is to add the layer to bblayers.=
conf
> and to set MACHINE to a *-linaro machine from those added by this layer. =
For now
> you can build the existing images, such as poky-image-minimal. We may add=
 linaro
> specific images as we flesh out the recipe.
>
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> ---
> =C2=A0TODO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 25 +
> =C2=A0conf/layer.conf =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0| =C2=A0 12 +
> =C2=A0conf/machine/beagleboard-linaro.conf =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 | =C2=A0 34 +
> =C2=A0.../beagleboard-linaro/defconfig =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 1984 ++++++++++++++++++++
> =C2=A0recipes-kernel/linux-linaro-2.6.35_git.bb =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0| =C2=A0 20 +
> =C2=A05 files changed, 2075 insertions(+), 0 deletions(-)
> =C2=A0create mode 100644 TODO
> =C2=A0create mode 100644 conf/layer.conf
> =C2=A0create mode 100644 conf/machine/beagleboard-linaro.conf
> =C2=A0create mode 100644 recipes-kernel/linux-linaro-2.6.35/beagleboard-l=
inaro/defconfig
> =C2=A0create mode 100644 recipes-kernel/linux-linaro-2.6.35_git.bb
>
> diff --git a/TODO b/TODO
> new file mode 100644
> index 0000000..fad4dd4
> --- /dev/null
> +++ b/TODO
> @@ -0,0 +1,25 @@
> +Linaro sources: http://www.linaro.org/downloads/
> +More git trees: http://git.linaro.org/gitweb
> + =C2=A0o Tools (GCC 4.5, GDB)
> + =C2=A0o Kernel (2.6.35, next)
> + =C2=A0o U-boot (stable, next)
> +
> +Basic layer plan:
> +For now we will be building linux-linaro-2.6.35.git/HEAD. Once working, =
we'll
> +look at adding linux-linaro-2.6.37 as a bleeding edge developer kernel. =
Per
> +discussions with Linaro developers, there is no need for us to package a=
ny
> +version other than 4.5 of GCC.gj
> +
> +recipes-kernel:
> + =C2=A0 =C2=A0 =C2=A0 linux-linaro-2.6.35
> + =C2=A0 =C2=A0 =C2=A0 linux-linaro-2.6.37
> +
> +Perhaps two layers are appropriate here?
> + =C2=A0 =C2=A0 =C2=A0 meta-linaro
> + =C2=A0 =C2=A0 =C2=A0 experimental/meta-linaro-next
> +
> +Approach:
> +To build a linaro image, set MACHINE in local.conf to one of the machine=
s
> +defined in the meta-linaro layer, ie beagleboard-linaro. Add meta-linaro=
 to your
> +bblayers.conf, and build an appropriate image - such as poky-image-minim=
al.
> +
> diff --git a/conf/layer.conf b/conf/layer.conf
> new file mode 100644
> index 0000000..cce0f43
> --- /dev/null
> +++ b/conf/layer.conf
> @@ -0,0 +1,12 @@
> +# Default to first disk/first partition
> +RSP_ROOT ?=3D "sda1"
> +
> +# We have a conf and classes directory, add to BBPATH
> +BBPATH :=3D "${BBPATH}:${LAYERDIR}"
> +
> +# We have an images and various recipe-* directories, add to BBFILES
> +BBFILES :=3D "${BBFILES} ${LAYERDIR}/images/*.bb ${LAYERDIR}/images/*.bb=
append ${LAYERDIR}/recipes-*/*.bb ${LAYERDIR}/recipes-*/*.bbappend"
> +
> +BBFILE_COLLECTIONS +=3D "linaro"
> +BBFILE_PATTERN_linaro :=3D "^${LAYERDIR}/"
> +BBFILE_PRIORITY_linaro =3D "9"
> diff --git a/conf/machine/beagleboard-linaro.conf b/conf/machine/beaglebo=
ard-linaro.conf
> new file mode 100644
> index 0000000..e2bc8cd
> --- /dev/null
> +++ b/conf/machine/beagleboard-linaro.conf
> @@ -0,0 +1,34 @@
> +#@TYPE: Machine
> +#@NAME: Beagleboard machine
> +#@DESCRIPTION: Machine configuration for the http://beagleboard.org/ boa=
rd
> +TARGET_ARCH =3D "arm"
> +PACKAGE_EXTRA_ARCHS =3D "armv4 armv4t armv5te armv6 armv7 armv7a"
> +
> +PREFERRED_PROVIDER_virtual/xserver =3D "xserver-kdrive"
> +XSERVER =3D "xserver-kdrive-fbdev"
> +
> +# Only has DVI connector for external screen
> +GUI_MACHINE_CLASS =3D "bigscreen"
> +
> +#Ship all kernel modules till the board support has matured enough
> +MACHINE_EXTRA_RRECOMMENDS =3D " kernel-modules"
> +
> +#include conf/machine/include/tune-arm1136jf-s.inc
> +include conf/machine/include/tune-cortexa8.inc
> +
> +IMAGE_FSTYPES +=3D "tar.bz2 jffs2"
> +EXTRA_IMAGECMD_jffs2 =3D "-lnp "
> +
> +# Guesswork
> +SERIAL_CONSOLE =3D "115200 ttyS2"
> +
> +PREFERRED_PROVIDER_virtual/kernel =3D "linux-linaro-2.6.35"
> +
> +KERNEL_IMAGETYPE =3D "uImage"
> +
> +UBOOT_ENTRYPOINT =3D "0x80008000"
> +UBOOT_LOADADDRESS =3D "0x80008000"
> +
> +
> +# and sdio
> +MACHINE_FEATURES =3D "kernel26 apm usbgadget usbhost vfat alsa"
> diff --git a/recipes-kernel/linux-linaro-2.6.35/beagleboard-linaro/defcon=
fig b/recipes-kernel/linux-linaro-2.6.35/beagleboard-linaro/defconfig
> new file mode 100644
> index 0000000..b4c3c31
> --- /dev/null
> +++ b/recipes-kernel/linux-linaro-2.6.35/beagleboard-linaro/defconfig
> @@ -0,0 +1,1984 @@
> +#
> +# Automatically generated make config: don't edit
> +# Linux kernel version: 2.6.26-rc9-omap1
> +# Tue Jul =C2=A08 15:36:02 2008
> +#
> +CONFIG_ARM=3Dy
> +CONFIG_SYS_SUPPORTS_APM_EMULATION=3Dy
> +CONFIG_GENERIC_GPIO=3Dy
> +CONFIG_GENERIC_TIME=3Dy
> +CONFIG_GENERIC_CLOCKEVENTS=3Dy
> +CONFIG_MMU=3Dy
> +# CONFIG_NO_IOPORT is not set
> +CONFIG_GENERIC_HARDIRQS=3Dy
> +CONFIG_STACKTRACE_SUPPORT=3Dy
> +CONFIG_LOCKDEP_SUPPORT=3Dy
> +CONFIG_TRACE_IRQFLAGS_SUPPORT=3Dy
> +CONFIG_HARDIRQS_SW_RESEND=3Dy
> +CONFIG_GENERIC_IRQ_PROBE=3Dy
> +CONFIG_RWSEM_GENERIC_SPINLOCK=3Dy
> +# CONFIG_ARCH_HAS_ILOG2_U32 is not set
> +# CONFIG_ARCH_HAS_ILOG2_U64 is not set
> +CONFIG_GENERIC_HWEIGHT=3Dy
> +CONFIG_GENERIC_CALIBRATE_DELAY=3Dy
> +CONFIG_ARCH_SUPPORTS_AOUT=3Dy
> +CONFIG_ZONE_DMA=3Dy
> +CONFIG_OPROFILE_ARMV7=3Dy
> +CONFIG_VECTORS_BASE=3D0xffff0000
> +CONFIG_DEFCONFIG_LIST=3D"/lib/modules/$UNAME_RELEASE/.config"
> +
> +#
> +# General setup
> +#
> +CONFIG_EXPERIMENTAL=3Dy
> +CONFIG_BROKEN_ON_SMP=3Dy
> +CONFIG_INIT_ENV_ARG_LIMIT=3D32
> +CONFIG_LOCALVERSION=3D""
> +CONFIG_LOCALVERSION_AUTO=3Dy
> +CONFIG_SWAP=3Dy
> +CONFIG_SYSVIPC=3Dy
> +CONFIG_SYSVIPC_SYSCTL=3Dy
> +# CONFIG_POSIX_MQUEUE is not set
> +CONFIG_BSD_PROCESS_ACCT=3Dy
> +# CONFIG_BSD_PROCESS_ACCT_V3 is not set
> +# CONFIG_TASKSTATS is not set
> +# CONFIG_AUDIT is not set
> +CONFIG_IKCONFIG=3Dy
> +CONFIG_IKCONFIG_PROC=3Dy
> +CONFIG_LOG_BUF_SHIFT=3D14
> +# CONFIG_CGROUPS is not set
> +CONFIG_GROUP_SCHED=3Dy
> +CONFIG_FAIR_GROUP_SCHED=3Dy
> +# CONFIG_RT_GROUP_SCHED is not set
> +CONFIG_USER_SCHED=3Dy
> +# CONFIG_CGROUP_SCHED is not set
> +CONFIG_SYSFS_DEPRECATED=3Dy
> +CONFIG_SYSFS_DEPRECATED_V2=3Dy
> +# CONFIG_RELAY is not set
> +# CONFIG_NAMESPACES is not set
> +CONFIG_BLK_DEV_INITRD=3Dy
> +CONFIG_INITRAMFS_SOURCE=3D""
> +CONFIG_CC_OPTIMIZE_FOR_SIZE=3Dy
> +CONFIG_SYSCTL=3Dy
> +CONFIG_EMBEDDED=3Dy
> +CONFIG_UID16=3Dy
> +# CONFIG_SYSCTL_SYSCALL is not set
> +CONFIG_KALLSYMS=3Dy
> +# CONFIG_KALLSYMS_ALL is not set
> +# CONFIG_KALLSYMS_EXTRA_PASS is not set
> +CONFIG_HOTPLUG=3Dy
> +CONFIG_PRINTK=3Dy
> +CONFIG_BUG=3Dy
> +# CONFIG_ELF_CORE is not set
> +# CONFIG_COMPAT_BRK is not set
> +CONFIG_BASE_FULL=3Dy
> +CONFIG_FUTEX=3Dy
> +CONFIG_ANON_INODES=3Dy
> +CONFIG_EPOLL=3Dy
> +CONFIG_SIGNALFD=3Dy
> +CONFIG_TIMERFD=3Dy
> +CONFIG_EVENTFD=3Dy
> +CONFIG_SHMEM=3Dy
> +CONFIG_VM_EVENT_COUNTERS=3Dy
> +CONFIG_SLUB_DEBUG=3Dy
> +# CONFIG_SLAB is not set
> +CONFIG_SLUB=3Dy
> +# CONFIG_SLOB is not set
> +CONFIG_PROFILING=3Dy
> +# CONFIG_MARKERS is not set
> +CONFIG_OPROFILE=3Dy
> +CONFIG_HAVE_OPROFILE=3Dy
> +# CONFIG_KPROBES is not set
> +CONFIG_HAVE_KPROBES=3Dy
> +CONFIG_HAVE_KRETPROBES=3Dy
> +# CONFIG_HAVE_DMA_ATTRS is not set
> +CONFIG_PROC_PAGE_MONITOR=3Dy
> +CONFIG_SLABINFO=3Dy
> +CONFIG_RT_MUTEXES=3Dy
> +# CONFIG_TINY_SHMEM is not set
> +CONFIG_BASE_SMALL=3D0
> +CONFIG_MODULES=3Dy
> +# CONFIG_MODULE_FORCE_LOAD is not set
> +CONFIG_MODULE_UNLOAD=3Dy
> +CONFIG_MODULE_FORCE_UNLOAD=3Dy
> +CONFIG_MODVERSIONS=3Dy
> +CONFIG_MODULE_SRCVERSION_ALL=3Dy
> +CONFIG_KMOD=3Dy
> +CONFIG_BLOCK=3Dy
> +CONFIG_LBD=3Dy
> +# CONFIG_BLK_DEV_IO_TRACE is not set
> +CONFIG_LSF=3Dy
> +# CONFIG_BLK_DEV_BSG is not set
> +
> +#
> +# IO Schedulers
> +#
> +CONFIG_IOSCHED_NOOP=3Dy
> +CONFIG_IOSCHED_AS=3Dy
> +CONFIG_IOSCHED_DEADLINE=3Dy
> +CONFIG_IOSCHED_CFQ=3Dy
> +# CONFIG_DEFAULT_AS is not set
> +# CONFIG_DEFAULT_DEADLINE is not set
> +CONFIG_DEFAULT_CFQ=3Dy
> +# CONFIG_DEFAULT_NOOP is not set
> +CONFIG_DEFAULT_IOSCHED=3D"cfq"
> +CONFIG_CLASSIC_RCU=3Dy
> +
> +#
> +# System Type
> +#
> +# CONFIG_ARCH_AAEC2000 is not set
> +# CONFIG_ARCH_INTEGRATOR is not set
> +# CONFIG_ARCH_REALVIEW is not set
> +# CONFIG_ARCH_VERSATILE is not set
> +# CONFIG_ARCH_AT91 is not set
> +# CONFIG_ARCH_CLPS7500 is not set
> +# CONFIG_ARCH_CLPS711X is not set
> +# CONFIG_ARCH_CO285 is not set
> +# CONFIG_ARCH_EBSA110 is not set
> +# CONFIG_ARCH_EP93XX is not set
> +# CONFIG_ARCH_FOOTBRIDGE is not set
> +# CONFIG_ARCH_NETX is not set
> +# CONFIG_ARCH_H720X is not set
> +# CONFIG_ARCH_IMX is not set
> +# CONFIG_ARCH_IOP13XX is not set
> +# CONFIG_ARCH_IOP32X is not set
> +# CONFIG_ARCH_IOP33X is not set
> +# CONFIG_ARCH_IXP23XX is not set
> +# CONFIG_ARCH_IXP2000 is not set
> +# CONFIG_ARCH_IXP4XX is not set
> +# CONFIG_ARCH_L7200 is not set
> +# CONFIG_ARCH_KS8695 is not set
> +# CONFIG_ARCH_NS9XXX is not set
> +# CONFIG_ARCH_MXC is not set
> +# CONFIG_ARCH_ORION5X is not set
> +# CONFIG_ARCH_PNX4008 is not set
> +# CONFIG_ARCH_PXA is not set
> +# CONFIG_ARCH_RPC is not set
> +# CONFIG_ARCH_SA1100 is not set
> +# CONFIG_ARCH_S3C2410 is not set
> +# CONFIG_ARCH_SHARK is not set
> +# CONFIG_ARCH_LH7A40X is not set
> +# CONFIG_ARCH_DAVINCI is not set
> +CONFIG_ARCH_OMAP=3Dy
> +# CONFIG_ARCH_MSM7X00A is not set
> +
> +#
> +# TI OMAP Implementations
> +#
> +CONFIG_ARCH_OMAP_OTG=3Dy
> +# CONFIG_ARCH_OMAP1 is not set
> +# CONFIG_ARCH_OMAP2 is not set
> +CONFIG_ARCH_OMAP3=3Dy
> +
> +#
> +# OMAP Feature Selections
> +#
> +# CONFIG_OMAP_DEBUG_POWERDOMAIN is not set
> +# CONFIG_OMAP_DEBUG_CLOCKDOMAIN is not set
> +CONFIG_OMAP_SMARTREFLEX=3Dy
> +# CONFIG_OMAP_SMARTREFLEX_TESTING is not set
> +CONFIG_OMAP_RESET_CLOCKS=3Dy
> +CONFIG_OMAP_BOOT_TAG=3Dy
> +CONFIG_OMAP_BOOT_REASON=3Dy
> +# CONFIG_OMAP_COMPONENT_VERSION is not set
> +# CONFIG_OMAP_GPIO_SWITCH is not set
> +# CONFIG_OMAP_MUX is not set
> +CONFIG_OMAP_MCBSP=3Dy
> +# CONFIG_OMAP_MMU_FWK is not set
> +# CONFIG_OMAP_MBOX_FWK is not set
> +# CONFIG_OMAP_MPU_TIMER is not set
> +CONFIG_OMAP_32K_TIMER=3Dy
> +CONFIG_OMAP_32K_TIMER_HZ=3D128
> +CONFIG_OMAP_DM_TIMER=3Dy
> +# CONFIG_OMAP_LL_DEBUG_UART1 is not set
> +# CONFIG_OMAP_LL_DEBUG_UART2 is not set
> +CONFIG_OMAP_LL_DEBUG_UART3=3Dy
> +CONFIG_ARCH_OMAP34XX=3Dy
> +CONFIG_ARCH_OMAP3430=3Dy
> +
> +#
> +# OMAP Board Type
> +#
> +# CONFIG_MACH_OMAP_LDP is not set
> +# CONFIG_MACH_OMAP_3430SDP is not set
> +# CONFIG_MACH_OMAP3EVM is not set
> +CONFIG_MACH_OMAP3_BEAGLE=3Dy
> +
> +#
> +# Boot options
> +#
> +
> +#
> +# Power management
> +#
> +
> +#
> +# Processor Type
> +#
> +CONFIG_CPU_32=3Dy
> +CONFIG_CPU_32v6K=3Dy
> +CONFIG_CPU_V7=3Dy
> +CONFIG_CPU_32v7=3Dy
> +CONFIG_CPU_ABRT_EV7=3Dy
> +CONFIG_CPU_PABRT_IFAR=3Dy
> +CONFIG_CPU_CACHE_V7=3Dy
> +CONFIG_CPU_CACHE_VIPT=3Dy
> +CONFIG_CPU_COPY_V6=3Dy
> +CONFIG_CPU_TLB_V7=3Dy
> +CONFIG_CPU_HAS_ASID=3Dy
> +CONFIG_CPU_CP15=3Dy
> +CONFIG_CPU_CP15_MMU=3Dy
> +
> +#
> +# Processor Features
> +#
> +CONFIG_ARM_THUMB=3Dy
> +CONFIG_ARM_THUMBEE=3Dy
> +# CONFIG_CPU_ICACHE_DISABLE is not set
> +# CONFIG_CPU_DCACHE_DISABLE is not set
> +# CONFIG_CPU_BPREDICT_DISABLE is not set
> +CONFIG_HAS_TLS_REG=3Dy
> +# CONFIG_OUTER_CACHE is not set
> +
> +#
> +# Bus support
> +#
> +# CONFIG_PCI_SYSCALL is not set
> +# CONFIG_ARCH_SUPPORTS_MSI is not set
> +# CONFIG_PCCARD is not set
> +
> +#
> +# Kernel Features
> +#
> +CONFIG_TICK_ONESHOT=3Dy
> +CONFIG_NO_HZ=3Dy
> +CONFIG_HIGH_RES_TIMERS=3Dy
> +CONFIG_GENERIC_CLOCKEVENTS_BUILD=3Dy
> +# CONFIG_PREEMPT is not set
> +CONFIG_HZ=3D128
> +CONFIG_AEABI=3Dy
> +# CONFIG_OABI_COMPAT is not set
> +# CONFIG_ARCH_DISCONTIGMEM_ENABLE is not set
> +CONFIG_SELECT_MEMORY_MODEL=3Dy
> +CONFIG_FLATMEM_MANUAL=3Dy
> +# CONFIG_DISCONTIGMEM_MANUAL is not set
> +# CONFIG_SPARSEMEM_MANUAL is not set
> +CONFIG_FLATMEM=3Dy
> +CONFIG_FLAT_NODE_MEM_MAP=3Dy
> +# CONFIG_SPARSEMEM_STATIC is not set
> +# CONFIG_SPARSEMEM_VMEMMAP_ENABLE is not set
> +CONFIG_PAGEFLAGS_EXTENDED=3Dy
> +CONFIG_SPLIT_PTLOCK_CPUS=3D4
> +# CONFIG_RESOURCES_64BIT is not set
> +CONFIG_ZONE_DMA_FLAG=3D1
> +CONFIG_BOUNCE=3Dy
> +CONFIG_VIRT_TO_BUS=3Dy
> +CONFIG_LEDS=3Dy
> +CONFIG_ALIGNMENT_TRAP=3Dy
> +
> +#
> +# Boot options
> +#
> +CONFIG_ZBOOT_ROM_TEXT=3D0x0
> +CONFIG_ZBOOT_ROM_BSS=3D0x0
> +CONFIG_CMDLINE=3D" quiet "
> +# CONFIG_XIP_KERNEL is not set
> +CONFIG_KEXEC=3Dy
> +CONFIG_ATAGS_PROC=3Dy
> +
> +#
> +# CPUIdle
> +#
> +
> +#
> +# CPU idle PM support
> +#
> +CONFIG_CPU_IDLE=3Dy
> +
> +#
> +# Governors
> +#
> +CONFIG_CPU_IDLE_GOV_LADDER=3Dy
> +CONFIG_CPU_IDLE_GOV_MENU=3Dy
> +
> +#
> +# CPU Frequency scaling
> +#
> +CONFIG_CPU_FREQ=3Dy
> +CONFIG_CPU_FREQ_TABLE=3Dy
> +# CONFIG_CPU_FREQ_DEBUG is not set
> +CONFIG_CPU_FREQ_STAT=3Dy
> +CONFIG_CPU_FREQ_STAT_DETAILS=3Dy
> +CONFIG_CPU_FREQ_DEFAULT_GOV_PERFORMANCE=3Dy
> +# CONFIG_CPU_FREQ_DEFAULT_GOV_POWERSAVE is not set
> +# CONFIG_CPU_FREQ_DEFAULT_GOV_USERSPACE is not set
> +# CONFIG_CPU_FREQ_DEFAULT_GOV_ONDEMAND is not set
> +# CONFIG_CPU_FREQ_DEFAULT_GOV_CONSERVATIVE is not set
> +CONFIG_CPU_FREQ_GOV_PERFORMANCE=3Dy
> +# CONFIG_CPU_FREQ_GOV_POWERSAVE is not set
> +CONFIG_CPU_FREQ_GOV_USERSPACE=3Dy
> +CONFIG_CPU_FREQ_GOV_ONDEMAND=3Dy
> +# CONFIG_CPU_FREQ_GOV_CONSERVATIVE is not set
> +
> +#
> +# Floating point emulation
> +#
> +
> +#
> +# At least one emulation must be selected
> +#
> +CONFIG_VFP=3Dy
> +CONFIG_VFPv3=3Dy
> +CONFIG_NEON=3Dy
> +
> +#
> +# Userspace binary formats
> +#
> +CONFIG_BINFMT_ELF=3Dy
> +CONFIG_BINFMT_AOUT=3Dm
> +CONFIG_BINFMT_MISC=3Dy
> +
> +#
> +# Power management options
> +#
> +CONFIG_PM=3Dy
> +# CONFIG_PM_DEBUG is not set
> +CONFIG_PM_SLEEP=3Dy
> +CONFIG_SUSPEND=3Dy
> +CONFIG_SUSPEND_FREEZER=3Dy
> +# CONFIG_APM_EMULATION is not set
> +CONFIG_ARCH_SUSPEND_POSSIBLE=3Dy
> +
> +#
> +# Networking
> +#
> +CONFIG_NET=3Dy
> +
> +#
> +# Networking options
> +#
> +CONFIG_PACKET=3Dy
> +CONFIG_PACKET_MMAP=3Dy
> +CONFIG_UNIX=3Dy
> +CONFIG_XFRM=3Dy
> +# CONFIG_XFRM_USER is not set
> +# CONFIG_XFRM_SUB_POLICY is not set
> +# CONFIG_XFRM_MIGRATE is not set
> +# CONFIG_XFRM_STATISTICS is not set
> +CONFIG_NET_KEY=3Dy
> +# CONFIG_NET_KEY_MIGRATE is not set
> +CONFIG_INET=3Dy
> +# CONFIG_IP_MULTICAST is not set
> +# CONFIG_IP_ADVANCED_ROUTER is not set
> +CONFIG_IP_FIB_HASH=3Dy
> +CONFIG_IP_PNP=3Dy
> +CONFIG_IP_PNP_DHCP=3Dy
> +CONFIG_IP_PNP_BOOTP=3Dy
> +CONFIG_IP_PNP_RARP=3Dy
> +# CONFIG_NET_IPIP is not set
> +# CONFIG_NET_IPGRE is not set
> +# CONFIG_ARPD is not set
> +# CONFIG_SYN_COOKIES is not set
> +# CONFIG_INET_AH is not set
> +# CONFIG_INET_ESP is not set
> +# CONFIG_INET_IPCOMP is not set
> +# CONFIG_INET_XFRM_TUNNEL is not set
> +CONFIG_INET_TUNNEL=3Dm
> +CONFIG_INET_XFRM_MODE_TRANSPORT=3Dy
> +CONFIG_INET_XFRM_MODE_TUNNEL=3Dy
> +CONFIG_INET_XFRM_MODE_BEET=3Dy
> +# CONFIG_INET_LRO is not set
> +CONFIG_INET_DIAG=3Dy
> +CONFIG_INET_TCP_DIAG=3Dy
> +# CONFIG_TCP_CONG_ADVANCED is not set
> +CONFIG_TCP_CONG_CUBIC=3Dy
> +CONFIG_DEFAULT_TCP_CONG=3D"cubic"
> +# CONFIG_TCP_MD5SIG is not set
> +CONFIG_IPV6=3Dm
> +# CONFIG_IPV6_PRIVACY is not set
> +# CONFIG_IPV6_ROUTER_PREF is not set
> +# CONFIG_IPV6_OPTIMISTIC_DAD is not set
> +# CONFIG_INET6_AH is not set
> +# CONFIG_INET6_ESP is not set
> +# CONFIG_INET6_IPCOMP is not set
> +# CONFIG_IPV6_MIP6 is not set
> +# CONFIG_INET6_XFRM_TUNNEL is not set
> +# CONFIG_INET6_TUNNEL is not set
> +CONFIG_INET6_XFRM_MODE_TRANSPORT=3Dm
> +CONFIG_INET6_XFRM_MODE_TUNNEL=3Dm
> +CONFIG_INET6_XFRM_MODE_BEET=3Dm
> +# CONFIG_INET6_XFRM_MODE_ROUTEOPTIMIZATION is not set
> +CONFIG_IPV6_SIT=3Dm
> +CONFIG_IPV6_NDISC_NODETYPE=3Dy
> +# CONFIG_IPV6_TUNNEL is not set
> +# CONFIG_IPV6_MULTIPLE_TABLES is not set
> +# CONFIG_IPV6_MROUTE is not set
> +# CONFIG_NETWORK_SECMARK is not set
> +# CONFIG_NETFILTER is not set
> +# CONFIG_IP_DCCP is not set
> +# CONFIG_IP_SCTP is not set
> +# CONFIG_TIPC is not set
> +# CONFIG_ATM is not set
> +# CONFIG_BRIDGE is not set
> +# CONFIG_VLAN_8021Q is not set
> +# CONFIG_DECNET is not set
> +# CONFIG_LLC2 is not set
> +# CONFIG_IPX is not set
> +# CONFIG_ATALK is not set
> +# CONFIG_X25 is not set
> +# CONFIG_LAPB is not set
> +# CONFIG_ECONET is not set
> +# CONFIG_WAN_ROUTER is not set
> +# CONFIG_NET_SCHED is not set
> +CONFIG_NET_SCH_FIFO=3Dy
> +
> +#
> +# Network testing
> +#
> +# CONFIG_NET_PKTGEN is not set
> +# CONFIG_HAMRADIO is not set
> +# CONFIG_CAN is not set
> +# CONFIG_IRDA is not set
> +CONFIG_BT=3Dy
> +CONFIG_BT_L2CAP=3Dy
> +CONFIG_BT_SCO=3Dy
> +CONFIG_BT_RFCOMM=3Dy
> +CONFIG_BT_RFCOMM_TTY=3Dy
> +CONFIG_BT_BNEP=3Dy
> +CONFIG_BT_BNEP_MC_FILTER=3Dy
> +CONFIG_BT_BNEP_PROTO_FILTER=3Dy
> +CONFIG_BT_HIDP=3Dy
> +
> +#
> +# Bluetooth device drivers
> +#
> +CONFIG_BT_HCIUSB=3Dy
> +CONFIG_BT_HCIUSB_SCO=3Dy
> +CONFIG_BT_HCIBTSDIO=3Dy
> +# CONFIG_BT_HCIUART is not set
> +CONFIG_BT_HCIBCM203X=3Dy
> +CONFIG_BT_HCIBPA10X=3Dy
> +# CONFIG_BT_HCIBFUSB is not set
> +# CONFIG_BT_HCIBRF6150 is not set
> +# CONFIG_BT_HCIH4P is not set
> +# CONFIG_BT_HCIVHCI is not set
> +# CONFIG_AF_RXRPC is not set
> +
> +#
> +# Wireless
> +#
> +CONFIG_CFG80211=3Dy
> +CONFIG_NL80211=3Dy
> +CONFIG_WIRELESS_EXT=3Dy
> +CONFIG_MAC80211=3Dy
> +
> +#
> +# Rate control algorithm selection
> +#
> +CONFIG_MAC80211_RC_DEFAULT_PID=3Dy
> +# CONFIG_MAC80211_RC_DEFAULT_NONE is not set
> +
> +#
> +# Selecting 'y' for an algorithm will
> +#
> +
> +#
> +# build the algorithm into mac80211.
> +#
> +CONFIG_MAC80211_RC_DEFAULT=3D"pid"
> +CONFIG_MAC80211_RC_PID=3Dy
> +# CONFIG_MAC80211_MESH is not set
> +CONFIG_MAC80211_LEDS=3Dy
> +# CONFIG_MAC80211_DEBUG_PACKET_ALIGNMENT is not set
> +# CONFIG_MAC80211_DEBUG is not set
> +CONFIG_IEEE80211=3Dy
> +# CONFIG_IEEE80211_DEBUG is not set
> +CONFIG_IEEE80211_CRYPT_WEP=3Dy
> +CONFIG_IEEE80211_CRYPT_CCMP=3Dy
> +CONFIG_IEEE80211_CRYPT_TKIP=3Dy
> +# CONFIG_RFKILL is not set
> +# CONFIG_NET_9P is not set
> +
> +#
> +# Device Drivers
> +#
> +
> +#
> +# Generic Driver Options
> +#
> +CONFIG_UEVENT_HELPER_PATH=3D"/sbin/hotplug"
> +CONFIG_STANDALONE=3Dy
> +CONFIG_PREVENT_FIRMWARE_BUILD=3Dy
> +CONFIG_FW_LOADER=3Dy
> +# CONFIG_DEBUG_DRIVER is not set
> +# CONFIG_DEBUG_DEVRES is not set
> +# CONFIG_SYS_HYPERVISOR is not set
> +# CONFIG_CONNECTOR is not set
> +CONFIG_MTD=3Dy
> +# CONFIG_MTD_DEBUG is not set
> +CONFIG_MTD_CONCAT=3Dy
> +CONFIG_MTD_PARTITIONS=3Dy
> +# CONFIG_MTD_REDBOOT_PARTS is not set
> +# CONFIG_MTD_CMDLINE_PARTS is not set
> +# CONFIG_MTD_AFS_PARTS is not set
> +# CONFIG_MTD_AR7_PARTS is not set
> +
> +#
> +# User Modules And Translation Layers
> +#
> +CONFIG_MTD_CHAR=3Dy
> +CONFIG_MTD_BLKDEVS=3Dy
> +CONFIG_MTD_BLOCK=3Dy
> +# CONFIG_FTL is not set
> +# CONFIG_NFTL is not set
> +# CONFIG_INFTL is not set
> +# CONFIG_RFD_FTL is not set
> +# CONFIG_SSFDC is not set
> +# CONFIG_MTD_OOPS is not set
> +
> +#
> +# RAM/ROM/Flash chip drivers
> +#
> +# CONFIG_MTD_CFI is not set
> +# CONFIG_MTD_JEDECPROBE is not set
> +CONFIG_MTD_MAP_BANK_WIDTH_1=3Dy
> +CONFIG_MTD_MAP_BANK_WIDTH_2=3Dy
> +CONFIG_MTD_MAP_BANK_WIDTH_4=3Dy
> +# CONFIG_MTD_MAP_BANK_WIDTH_8 is not set
> +# CONFIG_MTD_MAP_BANK_WIDTH_16 is not set
> +# CONFIG_MTD_MAP_BANK_WIDTH_32 is not set
> +CONFIG_MTD_CFI_I1=3Dy
> +CONFIG_MTD_CFI_I2=3Dy
> +# CONFIG_MTD_CFI_I4 is not set
> +# CONFIG_MTD_CFI_I8 is not set
> +# CONFIG_MTD_RAM is not set
> +# CONFIG_MTD_ROM is not set
> +# CONFIG_MTD_ABSENT is not set
> +
> +#
> +# Mapping drivers for chip access
> +#
> +# CONFIG_MTD_COMPLEX_MAPPINGS is not set
> +# CONFIG_MTD_PLATRAM is not set
> +
> +#
> +# Self-contained MTD device drivers
> +#
> +# CONFIG_MTD_DATAFLASH is not set
> +# CONFIG_MTD_M25P80 is not set
> +# CONFIG_MTD_SLRAM is not set
> +# CONFIG_MTD_PHRAM is not set
> +# CONFIG_MTD_MTDRAM is not set
> +# CONFIG_MTD_BLOCK2MTD is not set
> +
> +#
> +# Disk-On-Chip Device Drivers
> +#
> +# CONFIG_MTD_DOC2000 is not set
> +# CONFIG_MTD_DOC2001 is not set
> +# CONFIG_MTD_DOC2001PLUS is not set
> +CONFIG_MTD_NAND=3Dy
> +# CONFIG_MTD_NAND_VERIFY_WRITE is not set
> +# CONFIG_MTD_NAND_ECC_SMC is not set
> +# CONFIG_MTD_NAND_MUSEUM_IDS is not set
> +CONFIG_MTD_NAND_OMAP2=3Dy
> +CONFIG_MTD_NAND_IDS=3Dy
> +# CONFIG_MTD_NAND_DISKONCHIP is not set
> +# CONFIG_MTD_NAND_NANDSIM is not set
> +CONFIG_MTD_NAND_PLATFORM=3Dy
> +# CONFIG_MTD_ALAUDA is not set
> +# CONFIG_MTD_ONENAND is not set
> +
> +#
> +# UBI - Unsorted block images
> +#
> +# CONFIG_MTD_UBI is not set
> +# CONFIG_PARPORT is not set
> +CONFIG_BLK_DEV=3Dy
> +# CONFIG_BLK_DEV_COW_COMMON is not set
> +CONFIG_BLK_DEV_LOOP=3Dy
> +CONFIG_BLK_DEV_CRYPTOLOOP=3Dm
> +# CONFIG_BLK_DEV_NBD is not set
> +# CONFIG_BLK_DEV_UB is not set
> +CONFIG_BLK_DEV_RAM=3Dy
> +CONFIG_BLK_DEV_RAM_COUNT=3D16
> +CONFIG_BLK_DEV_RAM_SIZE=3D16384
> +# CONFIG_BLK_DEV_XIP is not set
> +CONFIG_CDROM_PKTCDVD=3Dm
> +CONFIG_CDROM_PKTCDVD_BUFFERS=3D8
> +# CONFIG_CDROM_PKTCDVD_WCACHE is not set
> +# CONFIG_ATA_OVER_ETH is not set
> +CONFIG_MISC_DEVICES=3Dy
> +# CONFIG_EEPROM_93CX6 is not set
> +# CONFIG_OMAP_STI is not set
> +# CONFIG_ENCLOSURE_SERVICES is not set
> +CONFIG_HAVE_IDE=3Dy
> +# CONFIG_IDE is not set
> +
> +#
> +# SCSI device support
> +#
> +CONFIG_RAID_ATTRS=3Dm
> +CONFIG_SCSI=3Dy
> +CONFIG_SCSI_DMA=3Dy
> +# CONFIG_SCSI_TGT is not set
> +# CONFIG_SCSI_NETLINK is not set
> +CONFIG_SCSI_PROC_FS=3Dy
> +
> +#
> +# SCSI support type (disk, tape, CD-ROM)
> +#
> +CONFIG_BLK_DEV_SD=3Dy
> +# CONFIG_CHR_DEV_ST is not set
> +# CONFIG_CHR_DEV_OSST is not set
> +# CONFIG_BLK_DEV_SR is not set
> +CONFIG_CHR_DEV_SG=3Dm
> +# CONFIG_CHR_DEV_SCH is not set
> +
> +#
> +# Some SCSI devices (e.g. CD jukebox) support multiple LUNs
> +#
> +CONFIG_SCSI_MULTI_LUN=3Dy
> +# CONFIG_SCSI_CONSTANTS is not set
> +# CONFIG_SCSI_LOGGING is not set
> +# CONFIG_SCSI_SCAN_ASYNC is not set
> +CONFIG_SCSI_WAIT_SCAN=3Dm
> +
> +#
> +# SCSI Transports
> +#
> +# CONFIG_SCSI_SPI_ATTRS is not set
> +# CONFIG_SCSI_FC_ATTRS is not set
> +# CONFIG_SCSI_ISCSI_ATTRS is not set
> +# CONFIG_SCSI_SAS_LIBSAS is not set
> +# CONFIG_SCSI_SRP_ATTRS is not set
> +CONFIG_SCSI_LOWLEVEL=3Dy
> +# CONFIG_ISCSI_TCP is not set
> +# CONFIG_SCSI_DEBUG is not set
> +# CONFIG_ATA is not set
> +CONFIG_MD=3Dy
> +CONFIG_BLK_DEV_MD=3Dm
> +CONFIG_MD_LINEAR=3Dm
> +CONFIG_MD_RAID0=3Dm
> +CONFIG_MD_RAID1=3Dm
> +CONFIG_MD_RAID10=3Dm
> +CONFIG_MD_RAID456=3Dm
> +CONFIG_MD_RAID5_RESHAPE=3Dy
> +CONFIG_MD_MULTIPATH=3Dm
> +CONFIG_MD_FAULTY=3Dm
> +CONFIG_BLK_DEV_DM=3Dm
> +# CONFIG_DM_DEBUG is not set
> +CONFIG_DM_CRYPT=3Dm
> +CONFIG_DM_SNAPSHOT=3Dm
> +CONFIG_DM_MIRROR=3Dm
> +CONFIG_DM_ZERO=3Dm
> +CONFIG_DM_MULTIPATH=3Dm
> +CONFIG_DM_MULTIPATH_EMC=3Dm
> +# CONFIG_DM_MULTIPATH_RDAC is not set
> +# CONFIG_DM_MULTIPATH_HP is not set
> +CONFIG_DM_DELAY=3Dm
> +# CONFIG_DM_UEVENT is not set
> +CONFIG_NETDEVICES=3Dy
> +# CONFIG_NETDEVICES_MULTIQUEUE is not set
> +CONFIG_DUMMY=3Dm
> +# CONFIG_BONDING is not set
> +# CONFIG_MACVLAN is not set
> +# CONFIG_EQUALIZER is not set
> +CONFIG_TUN=3Dm
> +# CONFIG_VETH is not set
> +# CONFIG_NET_ETHERNET is not set
> +CONFIG_MII=3Dy
> +# CONFIG_NETDEV_1000 is not set
> +# CONFIG_NETDEV_10000 is not set
> +
> +#
> +# Wireless LAN
> +#
> +# CONFIG_WLAN_PRE80211 is not set
> +CONFIG_WLAN_80211=3Dy
> +CONFIG_LIBERTAS=3Dm
> +CONFIG_LIBERTAS_USB=3Dm
> +# CONFIG_LIBERTAS_SDIO is not set
> +# CONFIG_LIBERTAS_DEBUG is not set
> +CONFIG_USB_ZD1201=3Dm
> +# CONFIG_USB_NET_RNDIS_WLAN is not set
> +# CONFIG_RTL8187 is not set
> +# CONFIG_P54_COMMON is not set
> +# CONFIG_IWLWIFI_LEDS is not set
> +CONFIG_HOSTAP=3Dm
> +CONFIG_HOSTAP_FIRMWARE=3Dy
> +CONFIG_HOSTAP_FIRMWARE_NVRAM=3Dy
> +# CONFIG_B43 is not set
> +# CONFIG_B43LEGACY is not set
> +# CONFIG_ZD1211RW is not set
> +# CONFIG_RT2X00 is not set
> +
> +#
> +# USB Network Adapters
> +#
> +CONFIG_USB_CATC=3Dm
> +CONFIG_USB_KAWETH=3Dm
> +CONFIG_USB_PEGASUS=3Dm
> +CONFIG_USB_RTL8150=3Dm
> +CONFIG_USB_USBNET=3Dy
> +CONFIG_USB_NET_AX8817X=3Dy
> +CONFIG_USB_NET_CDCETHER=3Dy
> +CONFIG_USB_NET_DM9601=3Dm
> +CONFIG_USB_NET_GL620A=3Dm
> +CONFIG_USB_NET_NET1080=3Dm
> +CONFIG_USB_NET_PLUSB=3Dm
> +CONFIG_USB_NET_MCS7830=3Dm
> +CONFIG_USB_NET_RNDIS_HOST=3Dm
> +CONFIG_USB_NET_CDC_SUBSET=3Dm
> +CONFIG_USB_ALI_M5632=3Dy
> +CONFIG_USB_AN2720=3Dy
> +CONFIG_USB_BELKIN=3Dy
> +CONFIG_USB_ARMLINUX=3Dy
> +CONFIG_USB_EPSON2888=3Dy
> +CONFIG_USB_KC2190=3Dy
> +CONFIG_USB_NET_ZAURUS=3Dm
> +# CONFIG_WAN is not set
> +CONFIG_PPP=3Dm
> +# CONFIG_PPP_MULTILINK is not set
> +# CONFIG_PPP_FILTER is not set
> +CONFIG_PPP_ASYNC=3Dm
> +CONFIG_PPP_SYNC_TTY=3Dm
> +CONFIG_PPP_DEFLATE=3Dm
> +CONFIG_PPP_BSDCOMP=3Dm
> +CONFIG_PPP_MPPE=3Dm
> +CONFIG_PPPOE=3Dm
> +# CONFIG_PPPOL2TP is not set
> +# CONFIG_SLIP is not set
> +CONFIG_SLHC=3Dm
> +# CONFIG_NETCONSOLE is not set
> +# CONFIG_NETPOLL is not set
> +# CONFIG_NET_POLL_CONTROLLER is not set
> +# CONFIG_ISDN is not set
> +
> +#
> +# Input device support
> +#
> +CONFIG_INPUT=3Dy
> +# CONFIG_INPUT_FF_MEMLESS is not set
> +# CONFIG_INPUT_POLLDEV is not set
> +
> +#
> +# Userland interfaces
> +#
> +CONFIG_INPUT_MOUSEDEV=3Dy
> +CONFIG_INPUT_MOUSEDEV_PSAUX=3Dy
> +CONFIG_INPUT_MOUSEDEV_SCREEN_X=3D1024
> +CONFIG_INPUT_MOUSEDEV_SCREEN_Y=3D768
> +# CONFIG_INPUT_JOYDEV is not set
> +CONFIG_INPUT_EVDEV=3Dy
> +# CONFIG_INPUT_EVBUG is not set
> +
> +#
> +# Input Device Drivers
> +#
> +CONFIG_INPUT_KEYBOARD=3Dy
> +# CONFIG_KEYBOARD_ATKBD is not set
> +# CONFIG_KEYBOARD_SUNKBD is not set
> +# CONFIG_KEYBOARD_LKKBD is not set
> +# CONFIG_KEYBOARD_XTKBD is not set
> +# CONFIG_KEYBOARD_NEWTON is not set
> +# CONFIG_KEYBOARD_STOWAWAY is not set
> +# CONFIG_KEYBOARD_LM8323 is not set
> +# CONFIG_KEYBOARD_GPIO is not set
> +CONFIG_INPUT_MOUSE=3Dy
> +CONFIG_MOUSE_PS2=3Dy
> +CONFIG_MOUSE_PS2_ALPS=3Dy
> +CONFIG_MOUSE_PS2_LOGIPS2PP=3Dy
> +CONFIG_MOUSE_PS2_SYNAPTICS=3Dy
> +CONFIG_MOUSE_PS2_LIFEBOOK=3Dy
> +CONFIG_MOUSE_PS2_TRACKPOINT=3Dy
> +# CONFIG_MOUSE_PS2_TOUCHKIT is not set
> +# CONFIG_MOUSE_SERIAL is not set
> +# CONFIG_MOUSE_APPLETOUCH is not set
> +# CONFIG_MOUSE_VSXXXAA is not set
> +# CONFIG_MOUSE_GPIO is not set
> +# CONFIG_INPUT_JOYSTICK is not set
> +# CONFIG_INPUT_TABLET is not set
> +# CONFIG_INPUT_TOUCHSCREEN is not set
> +# CONFIG_INPUT_MISC is not set
> +
> +#
> +# Hardware I/O ports
> +#
> +CONFIG_SERIO=3Dy
> +CONFIG_SERIO_SERPORT=3Dy
> +CONFIG_SERIO_LIBPS2=3Dy
> +# CONFIG_SERIO_RAW is not set
> +# CONFIG_GAMEPORT is not set
> +
> +#
> +# Character devices
> +#
> +CONFIG_VT=3Dy
> +CONFIG_VT_CONSOLE=3Dy
> +CONFIG_HW_CONSOLE=3Dy
> +CONFIG_VT_HW_CONSOLE_BINDING=3Dy
> +CONFIG_DEVKMEM=3Dy
> +# CONFIG_SERIAL_NONSTANDARD is not set
> +
> +#
> +# Serial drivers
> +#
> +CONFIG_SERIAL_8250=3Dy
> +CONFIG_SERIAL_8250_CONSOLE=3Dy
> +CONFIG_SERIAL_8250_NR_UARTS=3D32
> +CONFIG_SERIAL_8250_RUNTIME_UARTS=3D4
> +CONFIG_SERIAL_8250_EXTENDED=3Dy
> +CONFIG_SERIAL_8250_MANY_PORTS=3Dy
> +CONFIG_SERIAL_8250_SHARE_IRQ=3Dy
> +CONFIG_SERIAL_8250_DETECT_IRQ=3Dy
> +CONFIG_SERIAL_8250_RSA=3Dy
> +
> +#
> +# Non-8250 serial port support
> +#
> +CONFIG_SERIAL_CORE=3Dy
> +CONFIG_SERIAL_CORE_CONSOLE=3Dy
> +CONFIG_UNIX98_PTYS=3Dy
> +# CONFIG_LEGACY_PTYS is not set
> +# CONFIG_IPMI_HANDLER is not set
> +CONFIG_HW_RANDOM=3Dy
> +# CONFIG_NVRAM is not set
> +# CONFIG_R3964 is not set
> +# CONFIG_RAW_DRIVER is not set
> +# CONFIG_TCG_TPM is not set
> +CONFIG_I2C=3Dy
> +CONFIG_I2C_BOARDINFO=3Dy
> +CONFIG_I2C_CHARDEV=3Dy
> +
> +#
> +# I2C Hardware Bus support
> +#
> +# CONFIG_I2C_GPIO is not set
> +# CONFIG_I2C_OCORES is not set
> +CONFIG_I2C_OMAP=3Dy
> +# CONFIG_I2C_PARPORT_LIGHT is not set
> +# CONFIG_I2C_SIMTEC is not set
> +# CONFIG_I2C_TAOS_EVM is not set
> +# CONFIG_I2C_STUB is not set
> +# CONFIG_I2C_TINY_USB is not set
> +# CONFIG_I2C_PCA_PLATFORM is not set
> +
> +#
> +# Miscellaneous I2C Chip support
> +#
> +# CONFIG_DS1682 is not set
> +CONFIG_SENSORS_EEPROM=3Dy
> +# CONFIG_SENSORS_PCF8574 is not set
> +# CONFIG_PCF8575 is not set
> +# CONFIG_SENSORS_PCF8591 is not set
> +# CONFIG_ISP1301_OMAP is not set
> +# CONFIG_TPS65010 is not set
> +# CONFIG_SENSORS_TLV320AIC23 is not set
> +CONFIG_TWL4030_CORE=3Dy
> +CONFIG_TWL4030_GPIO=3Dy
> +CONFIG_TWL4030_MADC=3Dm
> +CONFIG_TWL4030_USB=3Dy
> +CONFIG_TWL4030_USB_HS_ULPI=3Dy
> +CONFIG_TWL4030_PWRBUTTON=3Dy
> +CONFIG_TWL4030_POWEROFF=3Dy
> +# CONFIG_SENSORS_MAX6875 is not set
> +# CONFIG_SENSORS_TSL2550 is not set
> +# CONFIG_SENSORS_TSL2563 is not set
> +# CONFIG_LP5521 is not set
> +# CONFIG_I2C_DEBUG_CORE is not set
> +# CONFIG_I2C_DEBUG_ALGO is not set
> +# CONFIG_I2C_DEBUG_BUS is not set
> +# CONFIG_I2C_DEBUG_CHIP is not set
> +CONFIG_SPI=3Dy
> +# CONFIG_SPI_DEBUG is not set
> +CONFIG_SPI_MASTER=3Dy
> +
> +#
> +# SPI Master Controller Drivers
> +#
> +# CONFIG_SPI_BITBANG is not set
> +# CONFIG_SPI_OMAP24XX is not set
> +
> +#
> +# SPI Protocol Masters
> +#
> +# CONFIG_SPI_AT25 is not set
> +CONFIG_SPI_TSC2101=3Dy
> +CONFIG_SPI_TSC2102=3Dy
> +# CONFIG_SPI_TSC210X is not set
> +# CONFIG_SPI_TSC2301 is not set
> +# CONFIG_SPI_SPIDEV is not set
> +# CONFIG_SPI_TLE62X0 is not set
> +CONFIG_HAVE_GPIO_LIB=3Dy
> +
> +#
> +# GPIO Support
> +#
> +# CONFIG_DEBUG_GPIO is not set
> +
> +#
> +# I2C GPIO expanders:
> +#
> +# CONFIG_GPIO_PCA953X is not set
> +# CONFIG_GPIO_PCF857X is not set
> +
> +#
> +# SPI GPIO expanders:
> +#
> +# CONFIG_GPIO_MCP23S08 is not set
> +# CONFIG_W1 is not set
> +CONFIG_POWER_SUPPLY=3Dm
> +# CONFIG_POWER_SUPPLY_DEBUG is not set
> +# CONFIG_PDA_POWER is not set
> +# CONFIG_BATTERY_DS2760 is not set
> +# CONFIG_BATTERY_BQ27x00 is not set
> +CONFIG_HWMON=3Dy
> +# CONFIG_HWMON_VID is not set
> +# CONFIG_SENSORS_AD7418 is not set
> +# CONFIG_SENSORS_ADM1021 is not set
> +# CONFIG_SENSORS_ADM1025 is not set
> +# CONFIG_SENSORS_ADM1026 is not set
> +# CONFIG_SENSORS_ADM1029 is not set
> +# CONFIG_SENSORS_ADM1031 is not set
> +# CONFIG_SENSORS_ADM9240 is not set
> +# CONFIG_SENSORS_ADT7470 is not set
> +# CONFIG_SENSORS_ADT7473 is not set
> +# CONFIG_SENSORS_ATXP1 is not set
> +# CONFIG_SENSORS_DS1621 is not set
> +# CONFIG_SENSORS_F71805F is not set
> +# CONFIG_SENSORS_F71882FG is not set
> +# CONFIG_SENSORS_F75375S is not set
> +# CONFIG_SENSORS_GL518SM is not set
> +# CONFIG_SENSORS_GL520SM is not set
> +# CONFIG_SENSORS_IT87 is not set
> +# CONFIG_SENSORS_LM63 is not set
> +# CONFIG_SENSORS_LM70 is not set
> +# CONFIG_SENSORS_LM75 is not set
> +# CONFIG_SENSORS_LM77 is not set
> +# CONFIG_SENSORS_LM78 is not set
> +# CONFIG_SENSORS_LM80 is not set
> +# CONFIG_SENSORS_LM83 is not set
> +# CONFIG_SENSORS_LM85 is not set
> +# CONFIG_SENSORS_LM87 is not set
> +# CONFIG_SENSORS_LM90 is not set
> +# CONFIG_SENSORS_LM92 is not set
> +# CONFIG_SENSORS_LM93 is not set
> +# CONFIG_SENSORS_MAX1619 is not set
> +# CONFIG_SENSORS_MAX6650 is not set
> +# CONFIG_SENSORS_PC87360 is not set
> +# CONFIG_SENSORS_PC87427 is not set
> +# CONFIG_SENSORS_DME1737 is not set
> +# CONFIG_SENSORS_SMSC47M1 is not set
> +# CONFIG_SENSORS_SMSC47M192 is not set
> +# CONFIG_SENSORS_SMSC47B397 is not set
> +# CONFIG_SENSORS_ADS7828 is not set
> +# CONFIG_SENSORS_THMC50 is not set
> +# CONFIG_SENSORS_VT1211 is not set
> +# CONFIG_SENSORS_W83781D is not set
> +# CONFIG_SENSORS_W83791D is not set
> +# CONFIG_SENSORS_W83792D is not set
> +# CONFIG_SENSORS_W83793 is not set
> +# CONFIG_SENSORS_W83L785TS is not set
> +# CONFIG_SENSORS_W83L786NG is not set
> +# CONFIG_SENSORS_W83627HF is not set
> +# CONFIG_SENSORS_W83627EHF is not set
> +# CONFIG_SENSORS_TSC210X is not set
> +CONFIG_SENSORS_OMAP34XX=3Dy
> +# CONFIG_HWMON_DEBUG_CHIP is not set
> +CONFIG_WATCHDOG=3Dy
> +CONFIG_WATCHDOG_NOWAYOUT=3Dy
> +
> +#
> +# Watchdog Device Drivers
> +#
> +# CONFIG_SOFT_WATCHDOG is not set
> +CONFIG_OMAP_WATCHDOG=3Dy
> +
> +#
> +# USB-based Watchdog Cards
> +#
> +# CONFIG_USBPCWATCHDOG is not set
> +
> +#
> +# Sonics Silicon Backplane
> +#
> +CONFIG_SSB_POSSIBLE=3Dy
> +# CONFIG_SSB is not set
> +
> +#
> +# Multifunction device drivers
> +#
> +# CONFIG_MFD_SM501 is not set
> +# CONFIG_MFD_ASIC3 is not set
> +# CONFIG_HTC_EGPIO is not set
> +# CONFIG_HTC_PASIC3 is not set
> +
> +#
> +# Multimedia devices
> +#
> +
> +#
> +# Multimedia core support
> +#
> +CONFIG_VIDEO_DEV=3Dm
> +CONFIG_VIDEO_V4L2_COMMON=3Dm
> +CONFIG_VIDEO_ALLOW_V4L1=3Dy
> +CONFIG_VIDEO_V4L1_COMPAT=3Dy
> +CONFIG_DVB_CORE=3Dm
> +CONFIG_VIDEO_MEDIA=3Dm
> +
> +#
> +# Multimedia drivers
> +#
> +CONFIG_MEDIA_ATTACH=3Dy
> +CONFIG_MEDIA_TUNER=3Dm
> +# CONFIG_MEDIA_TUNER_CUSTOMIZE is not set
> +CONFIG_MEDIA_TUNER_SIMPLE=3Dm
> +CONFIG_MEDIA_TUNER_TDA8290=3Dm
> +CONFIG_MEDIA_TUNER_TDA18271=3Dm
> +CONFIG_MEDIA_TUNER_TDA9887=3Dm
> +CONFIG_MEDIA_TUNER_TEA5761=3Dm
> +CONFIG_MEDIA_TUNER_TEA5767=3Dm
> +CONFIG_MEDIA_TUNER_MT20XX=3Dm
> +CONFIG_MEDIA_TUNER_MT2060=3Dm
> +CONFIG_MEDIA_TUNER_MT2266=3Dm
> +CONFIG_MEDIA_TUNER_QT1010=3Dm
> +CONFIG_MEDIA_TUNER_XC2028=3Dm
> +CONFIG_MEDIA_TUNER_XC5000=3Dm
> +CONFIG_VIDEO_V4L2=3Dm
> +CONFIG_VIDEO_V4L1=3Dm
> +CONFIG_VIDEO_TVEEPROM=3Dm
> +CONFIG_VIDEO_TUNER=3Dm
> +CONFIG_VIDEO_CAPTURE_DRIVERS=3Dy
> +# CONFIG_VIDEO_ADV_DEBUG is not set
> +CONFIG_VIDEO_HELPER_CHIPS_AUTO=3Dy
> +CONFIG_VIDEO_MSP3400=3Dm
> +CONFIG_VIDEO_CS53L32A=3Dm
> +CONFIG_VIDEO_WM8775=3Dm
> +CONFIG_VIDEO_SAA711X=3Dm
> +CONFIG_VIDEO_CX25840=3Dm
> +CONFIG_VIDEO_CX2341X=3Dm
> +# CONFIG_VIDEO_VIVI is not set
> +# CONFIG_VIDEO_CPIA is not set
> +# CONFIG_VIDEO_CPIA2 is not set
> +# CONFIG_VIDEO_SAA5246A is not set
> +# CONFIG_VIDEO_SAA5249 is not set
> +# CONFIG_TUNER_3036 is not set
> +# CONFIG_VIDEO_AU0828 is not set
> +CONFIG_V4L_USB_DRIVERS=3Dy
> +CONFIG_USB_VIDEO_CLASS=3Dm
> +CONFIG_VIDEO_PVRUSB2=3Dm
> +CONFIG_VIDEO_PVRUSB2_SYSFS=3Dy
> +CONFIG_VIDEO_PVRUSB2_DVB=3Dy
> +# CONFIG_VIDEO_PVRUSB2_DEBUGIFC is not set
> +# CONFIG_VIDEO_EM28XX is not set
> +CONFIG_VIDEO_USBVISION=3Dm
> +CONFIG_VIDEO_USBVIDEO=3Dm
> +CONFIG_USB_VICAM=3Dm
> +CONFIG_USB_IBMCAM=3Dm
> +CONFIG_USB_KONICAWC=3Dm
> +CONFIG_USB_QUICKCAM_MESSENGER=3Dm
> +# CONFIG_USB_ET61X251 is not set
> +CONFIG_VIDEO_OVCAMCHIP=3Dm
> +CONFIG_USB_W9968CF=3Dm
> +CONFIG_USB_OV511=3Dm
> +CONFIG_USB_SE401=3Dm
> +CONFIG_USB_SN9C102=3Dm
> +CONFIG_USB_STV680=3Dm
> +# CONFIG_USB_ZC0301 is not set
> +CONFIG_USB_PWC=3Dm
> +# CONFIG_USB_PWC_DEBUG is not set
> +CONFIG_USB_ZR364XX=3Dm
> +# CONFIG_USB_STKWEBCAM is not set
> +# CONFIG_SOC_CAMERA is not set
> +CONFIG_RADIO_ADAPTERS=3Dy
> +# CONFIG_RADIO_TEA5761 is not set
> +# CONFIG_USB_DSBR is not set
> +# CONFIG_USB_SI470X is not set
> +CONFIG_DVB_CAPTURE_DRIVERS=3Dy
> +# CONFIG_TTPCI_EEPROM is not set
> +
> +#
> +# Supported USB Adapters
> +#
> +CONFIG_DVB_USB=3Dm
> +# CONFIG_DVB_USB_DEBUG is not set
> +CONFIG_DVB_USB_A800=3Dm
> +CONFIG_DVB_USB_DIBUSB_MB=3Dm
> +# CONFIG_DVB_USB_DIBUSB_MB_FAULTY is not set
> +CONFIG_DVB_USB_DIBUSB_MC=3Dm
> +CONFIG_DVB_USB_DIB0700=3Dm
> +CONFIG_DVB_USB_UMT_010=3Dm
> +CONFIG_DVB_USB_CXUSB=3Dm
> +CONFIG_DVB_USB_M920X=3Dm
> +CONFIG_DVB_USB_GL861=3Dm
> +CONFIG_DVB_USB_AU6610=3Dm
> +CONFIG_DVB_USB_DIGITV=3Dm
> +CONFIG_DVB_USB_VP7045=3Dm
> +CONFIG_DVB_USB_VP702X=3Dm
> +CONFIG_DVB_USB_GP8PSK=3Dm
> +CONFIG_DVB_USB_NOVA_T_USB2=3Dm
> +CONFIG_DVB_USB_TTUSB2=3Dm
> +CONFIG_DVB_USB_DTT200U=3Dm
> +CONFIG_DVB_USB_OPERA1=3Dm
> +CONFIG_DVB_USB_AF9005=3Dm
> +CONFIG_DVB_USB_AF9005_REMOTE=3Dm
> +CONFIG_DVB_TTUSB_BUDGET=3Dm
> +CONFIG_DVB_TTUSB_DEC=3Dm
> +CONFIG_DVB_CINERGYT2=3Dm
> +# CONFIG_DVB_CINERGYT2_TUNING is not set
> +
> +#
> +# Supported FlexCopII (B2C2) Adapters
> +#
> +# CONFIG_DVB_B2C2_FLEXCOP is not set
> +
> +#
> +# Supported DVB Frontends
> +#
> +
> +#
> +# Customise DVB Frontends
> +#
> +# CONFIG_DVB_FE_CUSTOMISE is not set
> +
> +#
> +# DVB-S (satellite) frontends
> +#
> +CONFIG_DVB_CX24110=3Dm
> +CONFIG_DVB_CX24123=3Dm
> +CONFIG_DVB_MT312=3Dm
> +CONFIG_DVB_S5H1420=3Dm
> +CONFIG_DVB_STV0299=3Dm
> +CONFIG_DVB_TDA8083=3Dm
> +CONFIG_DVB_TDA10086=3Dm
> +CONFIG_DVB_VES1X93=3Dm
> +CONFIG_DVB_TUNER_ITD1000=3Dm
> +CONFIG_DVB_TDA826X=3Dm
> +CONFIG_DVB_TUA6100=3Dm
> +
> +#
> +# DVB-T (terrestrial) frontends
> +#
> +CONFIG_DVB_SP8870=3Dm
> +CONFIG_DVB_SP887X=3Dm
> +CONFIG_DVB_CX22700=3Dm
> +CONFIG_DVB_CX22702=3Dm
> +CONFIG_DVB_L64781=3Dm
> +CONFIG_DVB_TDA1004X=3Dm
> +CONFIG_DVB_NXT6000=3Dm
> +CONFIG_DVB_MT352=3Dm
> +CONFIG_DVB_ZL10353=3Dm
> +CONFIG_DVB_DIB3000MB=3Dm
> +CONFIG_DVB_DIB3000MC=3Dm
> +CONFIG_DVB_DIB7000M=3Dm
> +CONFIG_DVB_DIB7000P=3Dm
> +CONFIG_DVB_TDA10048=3Dm
> +
> +#
> +# DVB-C (cable) frontends
> +#
> +CONFIG_DVB_VES1820=3Dm
> +CONFIG_DVB_TDA10021=3Dm
> +CONFIG_DVB_TDA10023=3Dm
> +CONFIG_DVB_STV0297=3Dm
> +
> +#
> +# ATSC (North American/Korean Terrestrial/Cable DTV) frontends
> +#
> +CONFIG_DVB_NXT200X=3Dm
> +# CONFIG_DVB_OR51211 is not set
> +# CONFIG_DVB_OR51132 is not set
> +CONFIG_DVB_BCM3510=3Dm
> +CONFIG_DVB_LGDT330X=3Dm
> +CONFIG_DVB_S5H1409=3Dm
> +CONFIG_DVB_AU8522=3Dm
> +CONFIG_DVB_S5H1411=3Dm
> +
> +#
> +# Digital terrestrial only tuners/PLL
> +#
> +CONFIG_DVB_PLL=3Dm
> +CONFIG_DVB_TUNER_DIB0070=3Dm
> +
> +#
> +# SEC control devices for DVB-S
> +#
> +CONFIG_DVB_LNBP21=3Dm
> +# CONFIG_DVB_ISL6405 is not set
> +CONFIG_DVB_ISL6421=3Dm
> +# CONFIG_DAB is not set
> +
> +#
> +# Graphics support
> +#
> +# CONFIG_VGASTATE is not set
> +# CONFIG_VIDEO_OUTPUT_CONTROL is not set
> +CONFIG_FB=3Dy
> +# CONFIG_FIRMWARE_EDID is not set
> +# CONFIG_FB_DDC is not set
> +CONFIG_FB_CFB_FILLRECT=3Dy
> +CONFIG_FB_CFB_COPYAREA=3Dy
> +CONFIG_FB_CFB_IMAGEBLIT=3Dy
> +# CONFIG_FB_CFB_REV_PIXELS_IN_BYTE is not set
> +# CONFIG_FB_SYS_FILLRECT is not set
> +# CONFIG_FB_SYS_COPYAREA is not set
> +# CONFIG_FB_SYS_IMAGEBLIT is not set
> +# CONFIG_FB_FOREIGN_ENDIAN is not set
> +# CONFIG_FB_SYS_FOPS is not set
> +# CONFIG_FB_SVGALIB is not set
> +# CONFIG_FB_MACMODES is not set
> +# CONFIG_FB_BACKLIGHT is not set
> +# CONFIG_FB_MODE_HELPERS is not set
> +# CONFIG_FB_TILEBLITTING is not set
> +
> +#
> +# Frame buffer hardware drivers
> +#
> +# CONFIG_FB_S1D13XXX is not set
> +# CONFIG_FB_VIRTUAL is not set
> +CONFIG_FB_OMAP=3Dy
> +# CONFIG_FB_OMAP_031M3R is not set
> +# CONFIG_FB_OMAP_048M3R is not set
> +CONFIG_FB_OMAP_079M3R=3Dy
> +# CONFIG_FB_OMAP_092M9R is not set
> +# CONFIG_FB_OMAP_LCDC_EXTERNAL is not set
> +# CONFIG_FB_OMAP_BOOTLOADER_INIT is not set
> +CONFIG_FB_OMAP_CONSISTENT_DMA_SIZE=3D8
> +# CONFIG_BACKLIGHT_LCD_SUPPORT is not set
> +
> +#
> +# Display device support
> +#
> +CONFIG_DISPLAY_SUPPORT=3Dy
> +
> +#
> +# Display hardware drivers
> +#
> +
> +#
> +# Console display driver support
> +#
> +# CONFIG_VGA_CONSOLE is not set
> +CONFIG_DUMMY_CONSOLE=3Dy
> +CONFIG_FRAMEBUFFER_CONSOLE=3Dy
> +# CONFIG_FRAMEBUFFER_CONSOLE_DETECT_PRIMARY is not set
> +CONFIG_FRAMEBUFFER_CONSOLE_ROTATION=3Dy
> +# CONFIG_FONTS is not set
> +CONFIG_FONT_8x8=3Dy
> +CONFIG_FONT_8x16=3Dy
> +CONFIG_LOGO=3Dy
> +CONFIG_LOGO_LINUX_MONO=3Dy
> +CONFIG_LOGO_LINUX_VGA16=3Dy
> +CONFIG_LOGO_LINUX_CLUT224=3Dy
> +
> +#
> +# Sound
> +#
> +CONFIG_SOUND=3Dy
> +
> +#
> +# Advanced Linux Sound Architecture
> +#
> +CONFIG_SND=3Dy
> +CONFIG_SND_TIMER=3Dy
> +CONFIG_SND_PCM=3Dy
> +CONFIG_SND_HWDEP=3Dy
> +CONFIG_SND_RAWMIDI=3Dy
> +CONFIG_SND_SEQUENCER=3Dm
> +# CONFIG_SND_SEQ_DUMMY is not set
> +CONFIG_SND_OSSEMUL=3Dy
> +CONFIG_SND_MIXER_OSS=3Dy
> +CONFIG_SND_PCM_OSS=3Dy
> +CONFIG_SND_PCM_OSS_PLUGINS=3Dy
> +CONFIG_SND_SEQUENCER_OSS=3Dy
> +# CONFIG_SND_DYNAMIC_MINORS is not set
> +CONFIG_SND_SUPPORT_OLD_API=3Dy
> +CONFIG_SND_VERBOSE_PROCFS=3Dy
> +# CONFIG_SND_VERBOSE_PRINTK is not set
> +# CONFIG_SND_DEBUG is not set
> +
> +#
> +# Generic devices
> +#
> +# CONFIG_SND_DUMMY is not set
> +# CONFIG_SND_VIRMIDI is not set
> +# CONFIG_SND_MTPAV is not set
> +# CONFIG_SND_SERIAL_U16550 is not set
> +# CONFIG_SND_MPU401 is not set
> +
> +#
> +# ALSA ARM devices
> +#
> +# CONFIG_SND_OMAP_AIC23 is not set
> +# CONFIG_SND_OMAP_TSC2101 is not set
> +# CONFIG_SND_SX1 is not set
> +# CONFIG_SND_OMAP_TSC2102 is not set
> +# CONFIG_SND_OMAP24XX_EAC is not set
> +
> +#
> +# SPI devices
> +#
> +
> +#
> +# USB devices
> +#
> +CONFIG_SND_USB_AUDIO=3Dy
> +CONFIG_SND_USB_CAIAQ=3Dm
> +CONFIG_SND_USB_CAIAQ_INPUT=3Dy
> +
> +#
> +# System on Chip audio support
> +#
> +CONFIG_SND_SOC=3Dy
> +
> +#
> +# ALSA SoC audio for Freescale SOCs
> +#
> +
> +#
> +# SoC Audio for the Texas Instruments OMAP
> +#
> +CONFIG_SND_OMAP_SOC=3Dy
> +CONFIG_SND_OMAP_SOC_MCBSP=3Dy
> +CONFIG_SND_OMAP_SOC_OMAP3BEAGLE=3Dy
> +CONFIG_SND_SOC_TWL4030=3Dy
> +
> +#
> +# Open Sound System
> +#
> +# CONFIG_SOUND_PRIME is not set
> +CONFIG_HID_SUPPORT=3Dy
> +CONFIG_HID=3Dy
> +CONFIG_HID_DEBUG=3Dy
> +# CONFIG_HIDRAW is not set
> +
> +#
> +# USB Input Devices
> +#
> +CONFIG_USB_HID=3Dy
> +# CONFIG_USB_HIDINPUT_POWERBOOK is not set
> +# CONFIG_HID_FF is not set
> +# CONFIG_USB_HIDDEV is not set
> +CONFIG_USB_SUPPORT=3Dy
> +CONFIG_USB_ARCH_HAS_HCD=3Dy
> +CONFIG_USB_ARCH_HAS_OHCI=3Dy
> +CONFIG_USB_ARCH_HAS_EHCI=3Dy
> +CONFIG_USB=3Dy
> +# CONFIG_USB_DEBUG is not set
> +# CONFIG_USB_ANNOUNCE_NEW_DEVICES is not set
> +
> +#
> +# Miscellaneous USB options
> +#
> +CONFIG_USB_DEVICEFS=3Dy
> +CONFIG_USB_DEVICE_CLASS=3Dy
> +# CONFIG_USB_DYNAMIC_MINORS is not set
> +CONFIG_USB_SUSPEND=3Dy
> +CONFIG_USB_OTG=3Dy
> +# CONFIG_USB_OTG_WHITELIST is not set
> +# CONFIG_USB_OTG_BLACKLIST_HUB is not set
> +
> +#
> +# USB Host Controller Drivers
> +#
> +# CONFIG_USB_C67X00_HCD is not set
> +CONFIG_USB_EHCI_HCD=3Dy
> +CONFIG_OMAP_EHCI_PHY_MODE=3Dy
> +# CONFIG_OMAP_EHCI_TLL_MODE is not set
> +CONFIG_USB_EHCI_ROOT_HUB_TT=3Dy
> +# CONFIG_USB_EHCI_TT_NEWSCHED is not set
> +# CONFIG_USB_ISP116X_HCD is not set
> +# CONFIG_USB_ISP1760_HCD is not set
> +# CONFIG_USB_OHCI_HCD is not set
> +# CONFIG_USB_SL811_HCD is not set
> +# CONFIG_USB_R8A66597_HCD is not set
> +CONFIG_USB_MUSB_HDRC=3Dy
> +CONFIG_USB_MUSB_SOC=3Dy
> +
> +#
> +# OMAP 343x high speed USB support
> +#
> +# CONFIG_USB_MUSB_HOST is not set
> +# CONFIG_USB_MUSB_PERIPHERAL is not set
> +CONFIG_USB_MUSB_OTG=3Dy
> +CONFIG_USB_GADGET_MUSB_HDRC=3Dy
> +CONFIG_USB_MUSB_HDRC_HCD=3Dy
> +# CONFIG_MUSB_PIO_ONLY is not set
> +CONFIG_USB_INVENTRA_DMA=3Dy
> +# CONFIG_USB_TI_CPPI_DMA is not set
> +CONFIG_USB_MUSB_LOGLEVEL=3D0
> +
> +#
> +# USB Device Class drivers
> +#
> +CONFIG_USB_ACM=3Dm
> +CONFIG_USB_PRINTER=3Dm
> +CONFIG_USB_WDM=3Dm
> +
> +#
> +# NOTE: USB_STORAGE enables SCSI, and 'SCSI disk support'
> +#
> +
> +#
> +# may also be needed; see USB_STORAGE Help for more information
> +#
> +CONFIG_USB_STORAGE=3Dy
> +# CONFIG_USB_STORAGE_DEBUG is not set
> +# CONFIG_USB_STORAGE_DATAFAB is not set
> +# CONFIG_USB_STORAGE_FREECOM is not set
> +# CONFIG_USB_STORAGE_ISD200 is not set
> +# CONFIG_USB_STORAGE_DPCM is not set
> +# CONFIG_USB_STORAGE_USBAT is not set
> +# CONFIG_USB_STORAGE_SDDR09 is not set
> +# CONFIG_USB_STORAGE_SDDR55 is not set
> +# CONFIG_USB_STORAGE_JUMPSHOT is not set
> +# CONFIG_USB_STORAGE_ALAUDA is not set
> +# CONFIG_USB_STORAGE_ONETOUCH is not set
> +# CONFIG_USB_STORAGE_KARMA is not set
> +# CONFIG_USB_STORAGE_CYPRESS_ATACB is not set
> +# CONFIG_USB_LIBUSUAL is not set
> +
> +#
> +# USB Imaging devices
> +#
> +# CONFIG_USB_MDC800 is not set
> +# CONFIG_USB_MICROTEK is not set
> +CONFIG_USB_MON=3Dy
> +
> +#
> +# USB port drivers
> +#
> +CONFIG_USB_SERIAL=3Dm
> +# CONFIG_USB_EZUSB is not set
> +# CONFIG_USB_SERIAL_GENERIC is not set
> +# CONFIG_USB_SERIAL_AIRCABLE is not set
> +# CONFIG_USB_SERIAL_AIRPRIME is not set
> +# CONFIG_USB_SERIAL_ARK3116 is not set
> +# CONFIG_USB_SERIAL_BELKIN is not set
> +# CONFIG_USB_SERIAL_CH341 is not set
> +# CONFIG_USB_SERIAL_WHITEHEAT is not set
> +# CONFIG_USB_SERIAL_DIGI_ACCELEPORT is not set
> +# CONFIG_USB_SERIAL_CP2101 is not set
> +# CONFIG_USB_SERIAL_CYPRESS_M8 is not set
> +# CONFIG_USB_SERIAL_EMPEG is not set
> +# CONFIG_USB_SERIAL_FTDI_SIO is not set
> +# CONFIG_USB_SERIAL_FUNSOFT is not set
> +# CONFIG_USB_SERIAL_VISOR is not set
> +# CONFIG_USB_SERIAL_IPAQ is not set
> +# CONFIG_USB_SERIAL_IR is not set
> +# CONFIG_USB_SERIAL_EDGEPORT is not set
> +# CONFIG_USB_SERIAL_EDGEPORT_TI is not set
> +# CONFIG_USB_SERIAL_GARMIN is not set
> +# CONFIG_USB_SERIAL_IPW is not set
> +# CONFIG_USB_SERIAL_IUU is not set
> +# CONFIG_USB_SERIAL_KEYSPAN_PDA is not set
> +# CONFIG_USB_SERIAL_KEYSPAN is not set
> +# CONFIG_USB_SERIAL_KLSI is not set
> +# CONFIG_USB_SERIAL_KOBIL_SCT is not set
> +# CONFIG_USB_SERIAL_MCT_U232 is not set
> +# CONFIG_USB_SERIAL_MOS7720 is not set
> +# CONFIG_USB_SERIAL_MOS7840 is not set
> +# CONFIG_USB_SERIAL_MOTOROLA is not set
> +# CONFIG_USB_SERIAL_NAVMAN is not set
> +# CONFIG_USB_SERIAL_PL2303 is not set
> +# CONFIG_USB_SERIAL_OTI6858 is not set
> +# CONFIG_USB_SERIAL_SPCP8X5 is not set
> +# CONFIG_USB_SERIAL_HP4X is not set
> +# CONFIG_USB_SERIAL_SAFE is not set
> +# CONFIG_USB_SERIAL_SIERRAWIRELESS is not set
> +# CONFIG_USB_SERIAL_TI is not set
> +# CONFIG_USB_SERIAL_CYBERJACK is not set
> +# CONFIG_USB_SERIAL_XIRCOM is not set
> +# CONFIG_USB_SERIAL_OPTION is not set
> +# CONFIG_USB_SERIAL_OMNINET is not set
> +# CONFIG_USB_SERIAL_DEBUG is not set
> +
> +#
> +# USB Miscellaneous drivers
> +#
> +CONFIG_USB_EMI62=3Dm
> +CONFIG_USB_EMI26=3Dm
> +# CONFIG_USB_ADUTUX is not set
> +# CONFIG_USB_AUERSWALD is not set
> +# CONFIG_USB_RIO500 is not set
> +CONFIG_USB_LEGOTOWER=3Dm
> +CONFIG_USB_LCD=3Dm
> +# CONFIG_USB_BERRY_CHARGE is not set
> +CONFIG_USB_LED=3Dm
> +# CONFIG_USB_CYPRESS_CY7C63 is not set
> +# CONFIG_USB_CYTHERM is not set
> +# CONFIG_USB_PHIDGET is not set
> +# CONFIG_USB_IDMOUSE is not set
> +# CONFIG_USB_FTDI_ELAN is not set
> +# CONFIG_USB_APPLEDISPLAY is not set
> +CONFIG_USB_SISUSBVGA=3Dm
> +CONFIG_USB_SISUSBVGA_CON=3Dy
> +# CONFIG_USB_LD is not set
> +# CONFIG_USB_TRANCEVIBRATOR is not set
> +# CONFIG_USB_IOWARRIOR is not set
> +# CONFIG_USB_TEST is not set
> +# CONFIG_USB_ISIGHTFW is not set
> +CONFIG_USB_GADGET=3Dy
> +# CONFIG_USB_GADGET_DEBUG is not set
> +# CONFIG_USB_GADGET_DEBUG_FILES is not set
> +CONFIG_USB_GADGET_SELECTED=3Dy
> +# CONFIG_USB_GADGET_AMD5536UDC is not set
> +# CONFIG_USB_GADGET_ATMEL_USBA is not set
> +# CONFIG_USB_GADGET_FSL_USB2 is not set
> +# CONFIG_USB_GADGET_NET2280 is not set
> +# CONFIG_USB_GADGET_PXA2XX is not set
> +# CONFIG_USB_GADGET_M66592 is not set
> +# CONFIG_USB_GADGET_PXA27X is not set
> +# CONFIG_USB_GADGET_GOKU is not set
> +# CONFIG_USB_GADGET_LH7A40X is not set
> +# CONFIG_USB_GADGET_OMAP is not set
> +# CONFIG_USB_GADGET_S3C2410 is not set
> +# CONFIG_USB_GADGET_AT91 is not set
> +# CONFIG_USB_GADGET_DUMMY_HCD is not set
> +CONFIG_USB_GADGET_DUALSPEED=3Dy
> +# CONFIG_USB_ZERO is not set
> +CONFIG_USB_ETH=3Dy
> +CONFIG_USB_ETH_RNDIS=3Dy
> +# CONFIG_USB_GADGETFS is not set
> +# CONFIG_USB_FILE_STORAGE is not set
> +# CONFIG_USB_G_SERIAL is not set
> +# CONFIG_USB_MIDI_GADGET is not set
> +# CONFIG_USB_G_PRINTER is not set
> +CONFIG_MMC=3Dy
> +# CONFIG_MMC_DEBUG is not set
> +CONFIG_MMC_UNSAFE_RESUME=3Dy
> +
> +#
> +# MMC/SD Card Drivers
> +#
> +CONFIG_MMC_BLOCK=3Dy
> +CONFIG_MMC_BLOCK_BOUNCE=3Dy
> +CONFIG_SDIO_UART=3Dy
> +# CONFIG_MMC_TEST is not set
> +
> +#
> +# MMC/SD Host Controller Drivers
> +#
> +CONFIG_MMC_OMAP_HS=3Dy
> +CONFIG_MMC_SPI=3Dy
> +CONFIG_NEW_LEDS=3Dy
> +CONFIG_LEDS_CLASS=3Dy
> +
> +#
> +# LED drivers
> +#
> +# CONFIG_LEDS_OMAP_DEBUG is not set
> +# CONFIG_LEDS_OMAP is not set
> +# CONFIG_LEDS_OMAP_PWM is not set
> +CONFIG_LEDS_GPIO=3Dy
> +
> +#
> +# LED Triggers
> +#
> +CONFIG_LEDS_TRIGGERS=3Dy
> +CONFIG_LEDS_TRIGGER_TIMER=3Dy
> +CONFIG_LEDS_TRIGGER_HEARTBEAT=3Dy
> +# CONFIG_LEDS_TRIGGER_DEFAULT_ON is not set
> +CONFIG_RTC_LIB=3Dy
> +CONFIG_RTC_CLASS=3Dy
> +CONFIG_RTC_HCTOSYS=3Dy
> +CONFIG_RTC_HCTOSYS_DEVICE=3D"rtc0"
> +# CONFIG_RTC_DEBUG is not set
> +
> +#
> +# RTC interfaces
> +#
> +CONFIG_RTC_INTF_SYSFS=3Dy
> +CONFIG_RTC_INTF_PROC=3Dy
> +CONFIG_RTC_INTF_DEV=3Dy
> +# CONFIG_RTC_INTF_DEV_UIE_EMUL is not set
> +# CONFIG_RTC_DRV_TEST is not set
> +
> +#
> +# I2C RTC drivers
> +#
> +# CONFIG_RTC_DRV_DS1307 is not set
> +# CONFIG_RTC_DRV_DS1374 is not set
> +# CONFIG_RTC_DRV_DS1672 is not set
> +# CONFIG_RTC_DRV_MAX6900 is not set
> +# CONFIG_RTC_DRV_RS5C372 is not set
> +# CONFIG_RTC_DRV_ISL1208 is not set
> +# CONFIG_RTC_DRV_X1205 is not set
> +# CONFIG_RTC_DRV_PCF8563 is not set
> +# CONFIG_RTC_DRV_PCF8583 is not set
> +# CONFIG_RTC_DRV_M41T80 is not set
> +CONFIG_RTC_DRV_TWL4030=3Dy
> +# CONFIG_RTC_DRV_S35390A is not set
> +# CONFIG_RTC_DRV_FM3130 is not set
> +
> +#
> +# SPI RTC drivers
> +#
> +# CONFIG_RTC_DRV_MAX6902 is not set
> +# CONFIG_RTC_DRV_R9701 is not set
> +# CONFIG_RTC_DRV_RS5C348 is not set
> +
> +#
> +# Platform RTC drivers
> +#
> +# CONFIG_RTC_DRV_CMOS is not set
> +# CONFIG_RTC_DRV_DS1511 is not set
> +# CONFIG_RTC_DRV_DS1553 is not set
> +# CONFIG_RTC_DRV_DS1742 is not set
> +# CONFIG_RTC_DRV_STK17TA8 is not set
> +# CONFIG_RTC_DRV_M48T86 is not set
> +# CONFIG_RTC_DRV_M48T59 is not set
> +# CONFIG_RTC_DRV_V3020 is not set
> +
> +#
> +# on-CPU RTC drivers
> +#
> +# CONFIG_UIO is not set
> +
> +#
> +# CBUS support
> +#
> +# CONFIG_CBUS is not set
> +
> +#
> +# File systems
> +#
> +CONFIG_EXT2_FS=3Dy
> +# CONFIG_EXT2_FS_XATTR is not set
> +# CONFIG_EXT2_FS_XIP is not set
> +CONFIG_EXT3_FS=3Dy
> +# CONFIG_EXT3_FS_XATTR is not set
> +# CONFIG_EXT4DEV_FS is not set
> +CONFIG_JBD=3Dy
> +# CONFIG_REISERFS_FS is not set
> +# CONFIG_JFS_FS is not set
> +CONFIG_FS_POSIX_ACL=3Dy
> +CONFIG_XFS_FS=3Dm
> +# CONFIG_XFS_QUOTA is not set
> +# CONFIG_XFS_POSIX_ACL is not set
> +# CONFIG_XFS_RT is not set
> +# CONFIG_XFS_DEBUG is not set
> +# CONFIG_GFS2_FS is not set
> +# CONFIG_OCFS2_FS is not set
> +CONFIG_DNOTIFY=3Dy
> +CONFIG_INOTIFY=3Dy
> +CONFIG_INOTIFY_USER=3Dy
> +CONFIG_QUOTA=3Dy
> +# CONFIG_QUOTA_NETLINK_INTERFACE is not set
> +CONFIG_PRINT_QUOTA_WARNING=3Dy
> +# CONFIG_QFMT_V1 is not set
> +CONFIG_QFMT_V2=3Dy
> +CONFIG_QUOTACTL=3Dy
> +# CONFIG_AUTOFS_FS is not set
> +# CONFIG_AUTOFS4_FS is not set
> +CONFIG_FUSE_FS=3Dm
> +
> +#
> +# CD-ROM/DVD Filesystems
> +#
> +CONFIG_ISO9660_FS=3Dm
> +CONFIG_JOLIET=3Dy
> +CONFIG_ZISOFS=3Dy
> +CONFIG_UDF_FS=3Dm
> +CONFIG_UDF_NLS=3Dy
> +
> +#
> +# DOS/FAT/NT Filesystems
> +#
> +CONFIG_FAT_FS=3Dy
> +CONFIG_MSDOS_FS=3Dy
> +CONFIG_VFAT_FS=3Dy
> +CONFIG_FAT_DEFAULT_CODEPAGE=3D437
> +CONFIG_FAT_DEFAULT_IOCHARSET=3D"iso8859-1"
> +# CONFIG_NTFS_FS is not set
> +
> +#
> +# Pseudo filesystems
> +#
> +CONFIG_PROC_FS=3Dy
> +CONFIG_PROC_SYSCTL=3Dy
> +CONFIG_SYSFS=3Dy
> +CONFIG_TMPFS=3Dy
> +# CONFIG_TMPFS_POSIX_ACL is not set
> +# CONFIG_HUGETLB_PAGE is not set
> +# CONFIG_CONFIGFS_FS is not set
> +
> +#
> +# Miscellaneous filesystems
> +#
> +# CONFIG_ADFS_FS is not set
> +# CONFIG_AFFS_FS is not set
> +# CONFIG_HFS_FS is not set
> +# CONFIG_HFSPLUS_FS is not set
> +# CONFIG_BEFS_FS is not set
> +# CONFIG_BFS_FS is not set
> +# CONFIG_EFS_FS is not set
> +CONFIG_JFFS2_FS=3Dy
> +CONFIG_JFFS2_FS_DEBUG=3D0
> +CONFIG_JFFS2_FS_WRITEBUFFER=3Dy
> +# CONFIG_JFFS2_FS_WBUF_VERIFY is not set
> +CONFIG_JFFS2_SUMMARY=3Dy
> +CONFIG_JFFS2_FS_XATTR=3Dy
> +CONFIG_JFFS2_FS_POSIX_ACL=3Dy
> +CONFIG_JFFS2_FS_SECURITY=3Dy
> +CONFIG_JFFS2_COMPRESSION_OPTIONS=3Dy
> +CONFIG_JFFS2_ZLIB=3Dy
> +CONFIG_JFFS2_LZO=3Dy
> +CONFIG_JFFS2_RTIME=3Dy
> +CONFIG_JFFS2_RUBIN=3Dy
> +# CONFIG_JFFS2_CMODE_NONE is not set
> +CONFIG_JFFS2_CMODE_PRIORITY=3Dy
> +# CONFIG_JFFS2_CMODE_SIZE is not set
> +# CONFIG_JFFS2_CMODE_FAVOURLZO is not set
> +# CONFIG_CRAMFS is not set
> +# CONFIG_VXFS_FS is not set
> +# CONFIG_MINIX_FS is not set
> +# CONFIG_HPFS_FS is not set
> +# CONFIG_QNX4FS_FS is not set
> +# CONFIG_ROMFS_FS is not set
> +# CONFIG_SYSV_FS is not set
> +# CONFIG_UFS_FS is not set
> +CONFIG_NETWORK_FILESYSTEMS=3Dy
> +CONFIG_NFS_FS=3Dy
> +CONFIG_NFS_V3=3Dy
> +# CONFIG_NFS_V3_ACL is not set
> +CONFIG_NFS_V4=3Dy
> +# CONFIG_NFSD is not set
> +CONFIG_ROOT_NFS=3Dy
> +CONFIG_LOCKD=3Dy
> +CONFIG_LOCKD_V4=3Dy
> +CONFIG_NFS_COMMON=3Dy
> +CONFIG_SUNRPC=3Dy
> +CONFIG_SUNRPC_GSS=3Dy
> +# CONFIG_SUNRPC_BIND34 is not set
> +CONFIG_RPCSEC_GSS_KRB5=3Dy
> +# CONFIG_RPCSEC_GSS_SPKM3 is not set
> +# CONFIG_SMB_FS is not set
> +# CONFIG_CIFS is not set
> +# CONFIG_NCP_FS is not set
> +# CONFIG_CODA_FS is not set
> +# CONFIG_AFS_FS is not set
> +
> +#
> +# Partition Types
> +#
> +CONFIG_PARTITION_ADVANCED=3Dy
> +# CONFIG_ACORN_PARTITION is not set
> +# CONFIG_OSF_PARTITION is not set
> +# CONFIG_AMIGA_PARTITION is not set
> +# CONFIG_ATARI_PARTITION is not set
> +# CONFIG_MAC_PARTITION is not set
> +CONFIG_MSDOS_PARTITION=3Dy
> +# CONFIG_BSD_DISKLABEL is not set
> +# CONFIG_MINIX_SUBPARTITION is not set
> +# CONFIG_SOLARIS_X86_PARTITION is not set
> +# CONFIG_UNIXWARE_DISKLABEL is not set
> +# CONFIG_LDM_PARTITION is not set
> +# CONFIG_SGI_PARTITION is not set
> +# CONFIG_ULTRIX_PARTITION is not set
> +# CONFIG_SUN_PARTITION is not set
> +# CONFIG_KARMA_PARTITION is not set
> +# CONFIG_EFI_PARTITION is not set
> +# CONFIG_SYSV68_PARTITION is not set
> +CONFIG_NLS=3Dy
> +CONFIG_NLS_DEFAULT=3D"iso8859-1"
> +CONFIG_NLS_CODEPAGE_437=3Dy
> +# CONFIG_NLS_CODEPAGE_737 is not set
> +# CONFIG_NLS_CODEPAGE_775 is not set
> +# CONFIG_NLS_CODEPAGE_850 is not set
> +# CONFIG_NLS_CODEPAGE_852 is not set
> +# CONFIG_NLS_CODEPAGE_855 is not set
> +# CONFIG_NLS_CODEPAGE_857 is not set
> +# CONFIG_NLS_CODEPAGE_860 is not set
> +# CONFIG_NLS_CODEPAGE_861 is not set
> +# CONFIG_NLS_CODEPAGE_862 is not set
> +# CONFIG_NLS_CODEPAGE_863 is not set
> +# CONFIG_NLS_CODEPAGE_864 is not set
> +# CONFIG_NLS_CODEPAGE_865 is not set
> +# CONFIG_NLS_CODEPAGE_866 is not set
> +# CONFIG_NLS_CODEPAGE_869 is not set
> +# CONFIG_NLS_CODEPAGE_936 is not set
> +# CONFIG_NLS_CODEPAGE_950 is not set
> +# CONFIG_NLS_CODEPAGE_932 is not set
> +# CONFIG_NLS_CODEPAGE_949 is not set
> +# CONFIG_NLS_CODEPAGE_874 is not set
> +# CONFIG_NLS_ISO8859_8 is not set
> +# CONFIG_NLS_CODEPAGE_1250 is not set
> +# CONFIG_NLS_CODEPAGE_1251 is not set
> +# CONFIG_NLS_ASCII is not set
> +CONFIG_NLS_ISO8859_1=3Dy
> +# CONFIG_NLS_ISO8859_2 is not set
> +# CONFIG_NLS_ISO8859_3 is not set
> +# CONFIG_NLS_ISO8859_4 is not set
> +# CONFIG_NLS_ISO8859_5 is not set
> +# CONFIG_NLS_ISO8859_6 is not set
> +# CONFIG_NLS_ISO8859_7 is not set
> +# CONFIG_NLS_ISO8859_9 is not set
> +# CONFIG_NLS_ISO8859_13 is not set
> +# CONFIG_NLS_ISO8859_14 is not set
> +# CONFIG_NLS_ISO8859_15 is not set
> +# CONFIG_NLS_KOI8_R is not set
> +# CONFIG_NLS_KOI8_U is not set
> +# CONFIG_NLS_UTF8 is not set
> +# CONFIG_DLM is not set
> +
> +#
> +# Kernel hacking
> +#
> +# CONFIG_PRINTK_TIME is not set
> +CONFIG_ENABLE_WARN_DEPRECATED=3Dy
> +CONFIG_ENABLE_MUST_CHECK=3Dy
> +CONFIG_FRAME_WARN=3D1024
> +CONFIG_MAGIC_SYSRQ=3Dy
> +# CONFIG_UNUSED_SYMBOLS is not set
> +# CONFIG_DEBUG_FS is not set
> +# CONFIG_HEADERS_CHECK is not set
> +CONFIG_DEBUG_KERNEL=3Dy
> +# CONFIG_DEBUG_SHIRQ is not set
> +CONFIG_DETECT_SOFTLOCKUP=3Dy
> +CONFIG_SCHED_DEBUG=3Dy
> +CONFIG_SCHEDSTATS=3Dy
> +CONFIG_TIMER_STATS=3Dy
> +# CONFIG_DEBUG_OBJECTS is not set
> +# CONFIG_SLUB_DEBUG_ON is not set
> +# CONFIG_SLUB_STATS is not set
> +# CONFIG_DEBUG_RT_MUTEXES is not set
> +# CONFIG_RT_MUTEX_TESTER is not set
> +# CONFIG_DEBUG_SPINLOCK is not set
> +CONFIG_DEBUG_MUTEXES=3Dy
> +# CONFIG_DEBUG_LOCK_ALLOC is not set
> +# CONFIG_PROVE_LOCKING is not set
> +# CONFIG_LOCK_STAT is not set
> +# CONFIG_DEBUG_SPINLOCK_SLEEP is not set
> +# CONFIG_DEBUG_LOCKING_API_SELFTESTS is not set
> +# CONFIG_DEBUG_KOBJECT is not set
> +# CONFIG_DEBUG_BUGVERBOSE is not set
> +# CONFIG_DEBUG_INFO is not set
> +# CONFIG_DEBUG_VM is not set
> +# CONFIG_DEBUG_WRITECOUNT is not set
> +# CONFIG_DEBUG_LIST is not set
> +# CONFIG_DEBUG_SG is not set
> +CONFIG_FRAME_POINTER=3Dy
> +# CONFIG_BOOT_PRINTK_DELAY is not set
> +# CONFIG_RCU_TORTURE_TEST is not set
> +# CONFIG_BACKTRACE_SELF_TEST is not set
> +# CONFIG_FAULT_INJECTION is not set
> +# CONFIG_SAMPLES is not set
> +# CONFIG_DEBUG_USER is not set
> +# CONFIG_DEBUG_ERRORS is not set
> +# CONFIG_DEBUG_STACK_USAGE is not set
> +# CONFIG_DEBUG_LL is not set
> +
> +#
> +# Security options
> +#
> +# CONFIG_KEYS is not set
> +# CONFIG_SECURITY is not set
> +# CONFIG_SECURITY_FILE_CAPABILITIES is not set
> +CONFIG_XOR_BLOCKS=3Dm
> +CONFIG_ASYNC_CORE=3Dm
> +CONFIG_ASYNC_MEMCPY=3Dm
> +CONFIG_ASYNC_XOR=3Dm
> +CONFIG_CRYPTO=3Dy
> +
> +#
> +# Crypto core or helper
> +#
> +CONFIG_CRYPTO_ALGAPI=3Dy
> +CONFIG_CRYPTO_AEAD=3Dm
> +CONFIG_CRYPTO_BLKCIPHER=3Dy
> +CONFIG_CRYPTO_HASH=3Dm
> +CONFIG_CRYPTO_MANAGER=3Dy
> +CONFIG_CRYPTO_GF128MUL=3Dm
> +CONFIG_CRYPTO_NULL=3Dm
> +CONFIG_CRYPTO_CRYPTD=3Dm
> +# CONFIG_CRYPTO_AUTHENC is not set
> +CONFIG_CRYPTO_TEST=3Dm
> +
> +#
> +# Authenticated Encryption with Associated Data
> +#
> +# CONFIG_CRYPTO_CCM is not set
> +# CONFIG_CRYPTO_GCM is not set
> +# CONFIG_CRYPTO_SEQIV is not set
> +
> +#
> +# Block modes
> +#
> +CONFIG_CRYPTO_CBC=3Dy
> +# CONFIG_CRYPTO_CTR is not set
> +# CONFIG_CRYPTO_CTS is not set
> +CONFIG_CRYPTO_ECB=3Dy
> +CONFIG_CRYPTO_LRW=3Dm
> +CONFIG_CRYPTO_PCBC=3Dm
> +# CONFIG_CRYPTO_XTS is not set
> +
> +#
> +# Hash modes
> +#
> +CONFIG_CRYPTO_HMAC=3Dm
> +CONFIG_CRYPTO_XCBC=3Dm
> +
> +#
> +# Digest
> +#
> +CONFIG_CRYPTO_CRC32C=3Dm
> +CONFIG_CRYPTO_MD4=3Dm
> +CONFIG_CRYPTO_MD5=3Dy
> +CONFIG_CRYPTO_MICHAEL_MIC=3Dy
> +CONFIG_CRYPTO_SHA1=3Dm
> +CONFIG_CRYPTO_SHA256=3Dm
> +CONFIG_CRYPTO_SHA512=3Dm
> +CONFIG_CRYPTO_TGR192=3Dm
> +CONFIG_CRYPTO_WP512=3Dm
> +
> +#
> +# Ciphers
> +#
> +CONFIG_CRYPTO_AES=3Dy
> +CONFIG_CRYPTO_ANUBIS=3Dm
> +CONFIG_CRYPTO_ARC4=3Dy
> +CONFIG_CRYPTO_BLOWFISH=3Dm
> +CONFIG_CRYPTO_CAMELLIA=3Dm
> +CONFIG_CRYPTO_CAST5=3Dm
> +CONFIG_CRYPTO_CAST6=3Dm
> +CONFIG_CRYPTO_DES=3Dy
> +CONFIG_CRYPTO_FCRYPT=3Dm
> +CONFIG_CRYPTO_KHAZAD=3Dm
> +# CONFIG_CRYPTO_SALSA20 is not set
> +# CONFIG_CRYPTO_SEED is not set
> +CONFIG_CRYPTO_SERPENT=3Dm
> +CONFIG_CRYPTO_TEA=3Dm
> +CONFIG_CRYPTO_TWOFISH=3Dm
> +CONFIG_CRYPTO_TWOFISH_COMMON=3Dm
> +
> +#
> +# Compression
> +#
> +CONFIG_CRYPTO_DEFLATE=3Dm
> +# CONFIG_CRYPTO_LZO is not set
> +CONFIG_CRYPTO_HW=3Dy
> +
> +#
> +# Library routines
> +#
> +CONFIG_BITREVERSE=3Dy
> +# CONFIG_GENERIC_FIND_FIRST_BIT is not set
> +# CONFIG_GENERIC_FIND_NEXT_BIT is not set
> +CONFIG_CRC_CCITT=3Dy
> +CONFIG_CRC16=3Dm
> +CONFIG_CRC_ITU_T=3Dy
> +CONFIG_CRC32=3Dy
> +CONFIG_CRC7=3Dy
> +CONFIG_LIBCRC32C=3Dy
> +CONFIG_ZLIB_INFLATE=3Dy
> +CONFIG_ZLIB_DEFLATE=3Dy
> +CONFIG_LZO_COMPRESS=3Dy
> +CONFIG_LZO_DECOMPRESS=3Dy
> +CONFIG_PLIST=3Dy
> +CONFIG_HAS_IOMEM=3Dy
> +CONFIG_HAS_IOPORT=3Dy
> +CONFIG_HAS_DMA=3Dy
> diff --git a/recipes-kernel/linux-linaro-2.6.35_git.bb b/recipes-kernel/l=
inux-linaro-2.6.35_git.bb
> new file mode 100644
> index 0000000..a109c70
> --- /dev/null
> +++ b/recipes-kernel/linux-linaro-2.6.35_git.bb
> @@ -0,0 +1,20 @@
> +require recipes-kernel/linux/linux.inc
> +
> +FILESDIR =3D "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/linux-lina=
ro-2.6.35/${MACHINE}"
> +
> +DESCRIPTION =3D "Linaro 2.6.35 kernel for ARM7 processors"
> +KERNEL_IMAGETYPE =3D "uImage"
> +
> +SRC_URI =3D "git://git.linaro.org/kernel/linux-linaro-2.6.35.git;protoco=
l=3Dgit \
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://defconfig"
> +
> +SRCREV =3D "${AUTOREV}"
> +
> +PV =3D "2.6.35"
> +# FIXME: using the following PV breaks the build
> +#PV =3D "${PR}+git${SRCREV}"
> +PR =3D "r1"
> +
> +COMPATIBLE_MACHINE =3D "beagleboard-linaro"
> +
> +S =3D "${WORKDIR}/git"
> --
> 1.7.1
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

