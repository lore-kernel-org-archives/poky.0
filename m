Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6A6ED4C80B70
	for <poky@yoctoproject.org>; Fri, 17 Dec 2010 07:53:51 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so814246iwn.35
	for <poky@yoctoproject.org>; Fri, 17 Dec 2010 05:53:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=AhMYwf8YPogRlfRbxh8MoE4DxCa8CLGKjrzanwZbbJg=;
	b=qRXzPZdRzlMsG3QmEMoZSTVwardAI/KF+rmUgFGcGptsWixJ1y6Nnx5UyHiOmyl/Fe
	Vio+RK7oR5ZMV3a76wxdz2UKnO9aozsIhlfoSAm++fYZ/JpC7Kpx+HYXw68MUkAinJYL
	NqRkLsvToUoDZq7H5UeCyD+Y9nZWmmrEsi88A=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=nUmnya+7HL5zntzlGUXyhOnlsZab/tHVtJ+/E++xh7PUuiN1McRqNuZOx27RlvMSgV
	809fuZb/iFp2IOw+i8DOKqH7mptFqnV0nPlHgEp2ULfMJR/09lVEgEzQFTLRS6JKuEvF
	HODXBrey3AP5EIbUJaaaYF+3F+0YY3J59we/o=
MIME-Version: 1.0
Received: by 10.231.190.139 with SMTP id di11mr815056ibb.21.1292594030541;
	Fri, 17 Dec 2010 05:53:50 -0800 (PST)
Received: by 10.231.180.224 with HTTP; Fri, 17 Dec 2010 05:53:50 -0800 (PST)
In-Reply-To: <4D0AA615.7050505@linux.intel.com>
References: <4D0AA615.7050505@linux.intel.com>
Date: Fri, 17 Dec 2010 08:53:50 -0500
Message-ID: <AANLkTi=Ydq_ttWB6=P8F9wCx06Q6zWMzCuT4FwvdmWL7@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailman-Approved-At: Fri, 17 Dec 2010 09:36:04 -0600
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: kernel SRCREV and meta series woes re new preempt_rt recipe
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
X-List-Received-Date: Fri, 17 Dec 2010 13:53:52 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 16, 2010 at 6:51 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
> Hey Bruce,
>
> (lots of logs, explanation all through to the end)
>
> I'm running into a couple issues I haven't been able to explain.
> I'm building from poky-contrib dvhart/rt which I rebased against
> zedd/kernel today (646be7efc3c2a966607526439e3ad812cb4ae3f8). My
> local.conf has 'MACHINE?=3Dqemux86-64'.

This repo is missing a paired up kernel repo modification, but it should
be sane.

>
> You can see the linux-yocto-rt recipe in my contrib branch mentioned
> above, but for quick reference, here's the diff from linux-yocto-stable:

one demerit point fine for a non-unified diff ;)

>
> =A0 =A0 =A0 =A0$ diff linux-yocto-stable_git.bb linux-yocto-rt_stablegit.=
bb
> =A0 =A0 =A0 =A014a15
> =A0 =A0 =A0 =A0> LINUX_KERNEL_TYPE =3D "preempt_rt"
> =A0 =A0 =A0 =A021c22
> =A0 =A0 =A0 =A0< COMPATIBLE_MACHINE =3D "(qemuarm|qemux86|qemuppc|qemumip=
s|qemux86-64|atom-pc|routerstationpro|mpc8315e-rdb|beagleboard)"
> =A0 =A0 =A0 =A0---
> =A0 =A0 =A0 =A0> COMPATIBLE_MACHINE =3D "(qemux86-64)"
> =A0 =A0 =A0 =A032a34
> =A0 =A0 =A0 =A0> =A0 =A0 print "LINUX_KERNEL_TYPE_EXTENSION: ", bb.data.g=
etVar("LINUX_KERNEL_TYPE_EXTENSION", d)
> =A0 =A0 =A0 =A037a40,41
> =A0 =A0 =A0 =A0> #SRCREV_machine_pn-linux-yocto-rt_qemux86-64 =3D "f49444=
f06875894389e640bcda6c3f6ceb1f0c3e"
> =A0 =A0 =A0 =A0> #SRCREV =3D "f49444f06875894389e640bcda6c3f6ceb1f0c3e"
>
> I determined the SRCREV from:
> =A0 =A0 =A0 =A0$ git log --pretty=3Doneline origin/common_pc_64-preempt_r=
t -1
> =A0 =A0 =A0 =A0f49444f06875894389e640bcda6c3f6ceb1f0c3e Merge branch 'sta=
ndard' into common_pc_
>

That should be the right rev.

>
> First, bitbake is complaining about SRCREV while parsing
> linux-yocto-rt_stablegit.bb:
>
> =A0 =A0 =A0 =A0$ bitbake linux-yocto-rt
> =A0 =A0 =A0 =A0NOTE: Handling BitBake files: | (0236/0803) [29 %]
> =A0 =A0 =A0 =A0LINUX_KERNEL_TYPE_EXTENSION: =A0preempt-rt # dvhart debug
> =A0 =A0 =A0 =A0NOTE: <class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV t=
o a valid value while evaluating:
> =A0 =A0 =A0 =A0${@bb.fetch.get_srcrev(d)}
> =A0 =A0 =A0 =A0NOTE: <class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV t=
o a valid value while evaluating:
> =A0 =A0 =A0 =A0${LINUX_VERSION}+git${SRCPV}
> =A0 =A0 =A0 =A0NOTE: <class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV t=
o a valid value while evaluating:
> =A0 =A0 =A0 =A0${PN}-${EXTENDPE}${PV}-${PR}
> =A0 =A0 =A0 =A0NOTE: <class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV t=
o a valid value while evaluating:
> =A0 =A0 =A0 =A0${TMPDIR}/work/${MULTIMACH_TARGET_SYS}/${PF}
> =A0 =A0 =A0 =A0NOTE: <class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV t=
o a valid value while evaluating:
> =A0 =A0 =A0 =A0${WORKDIR}/linux
> =A0 =A0 =A0 =A0NOTE: <class 'bb.fetch.InvalidSRCREV'>:Please set SRCREV t=
o a valid value while evaluating:
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0cd ${S}
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if [ -f ${WORKDIR}/defconfig ]; then
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0defconfig=3D${WORKDIR}/defconfig
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0fi
>
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kbranch=3D${KBRANCH}
>
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0# simply ensures that a branch of the righ=
t name has been created
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0createme ${ARCH} ${kbranch} ${defconfig}
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if [ $? -ne 0 ]; then
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0echo "ERROR. Could not cre=
ate ${kbranch}"
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0exit 1
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0fi
>
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0# updates or generates the target descript=
ion
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if [ -n "${KERNEL_FEATURES}" ]; then
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 addon_features=3D"--features =
${KERNEL_FEATURES}"
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0fi
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0updateme ${addon_features} ${ARCH} ${WORKD=
IR}
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if [ $? -ne 0 ]; then
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0echo "ERROR. Could not upd=
ate ${kbranch}"
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0exit 1
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0fi
>
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0# executes and modifies the source tree as=
 required
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0patchme ${kbranch}
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if [ $? -ne 0 ]; then
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0echo "ERROR. Could not mod=
ify ${kbranch}"
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0exit 1
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0fi
>
> =A0 =A0 =A0 =A0NOTE: Error expanding variable do_patch
> =A0 =A0 =A0 =A0ERROR: Please set SRCREV to a valid value while parsing /h=
ome/dvhart/data/poky.git/meta/recipes-kernel/linux/linux-yocto-rt_stablegit=
.bb
> =A0 =A0 =A0 =A0NOTE: Handling BitBake files: - (0802/0803) [99 %]Command =
execution failed: Traceback (most recent call last):
> =A0 =A0 =A0 =A0 =A0File "/vol/1/dvhart/poky.git/scripts/..//bitbake/lib/b=
b/command.py", line 85, in runAsyncCommand
> =A0 =A0 =A0 =A0 =A0 =A0self.cooker.updateCache()
> =A0 =A0 =A0 =A0 =A0File "/vol/1/dvhart/poky.git/scripts/..//bitbake/lib/b=
b/cooker.py", line 804, in updateCache
> =A0 =A0 =A0 =A0 =A0 =A0if not self.parser.parse_next():
> =A0 =A0 =A0 =A0 =A0File "/vol/1/dvhart/poky.git/scripts/..//bitbake/lib/b=
b/cooker.py", line 1036, in parse_next
> =A0 =A0 =A0 =A0 =A0 =A0raise ParsingErrorsFound
> =A0 =A0 =A0 =A0ParsingErrorsFound
>
>
> I have added a SRC_REV in poky-default-revisions:
> =A0 =A0 =A0 =A0+# preempt_rt SRCREVs
> =A0 =A0 =A0 =A0+SRCREV_machine_pn-linux-yocto-rt_qemux86-64 ?=3D "f49444f=
06875894389e640bcda6c3f6ceb1f0c3e"

I've seen this man times, and typically it has always had to do with
processing order of the files related to the fetcher. I'm hoping
Richard reads this and can jump in with more details, since this is
something internal to BB and not something I've had the pleasure
of adding or digging into very much.

>
>
> If I add the following to linux-yocto-rt_stablegit.bb:
> =A0 =A0 =A0 =A0SRCREV =3D "f49444f06875894389e640bcda6c3f6ceb1f0c3e"

This hits it with a hammer .. yes. Because you set this, we aren't
counting on the machine specific override of SRCREV to set the
variable.  So this ensures that the variable has *something*, just
not something that the fetcher will use properly.

>
>
> I get passed the parse error, but do_patch fails:
>
> =A0 =A0 =A0 =A0Unstaged changes after reset:
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 .gitignore
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 Documentation/DocBook/kgdb.tmpl
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 Documentation/filesystems/00-INDEX
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 Documentation/filesystems/Locking
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 Documentation/filesystems/xip.txt
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 Documentation/hwmon/ltc4245
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 Documentation/ioctl/ioctl-number.txt
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 Documentation/kernel-parameters.txt
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 Documentation/networking/l2tp.txt
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 Documentation/trace/tracepoints.txt
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 MAINTAINERS
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/alpha/include/asm/rwsem.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/alpha/include/asm/thread_info.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/alpha/kernel/time.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/Kconfig.debug
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/boot/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/common/sa1111.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/configs/n8x0_defconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/include/asm/atomic.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/include/asm/dma.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/include/asm/elf.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/include/asm/kgdb.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/include/asm/kmap_types.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/include/asm/processor.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/include/asm/ptrace.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/include/asm/system.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/include/asm/thread_info.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/include/asm/tlb.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/include/asm/tlbflush.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/include/asm/unistd.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/kernel/dma.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/kernel/entry-common.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/kernel/head.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/kernel/kgdb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/kernel/kprobes-decode.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/kernel/module.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/kernel/perf_event.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/kernel/pmu.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/kernel/process.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/kernel/ptrace.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/kernel/signal.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/kernel/smp.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/kernel/time.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/kernel/traps.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/kernel/vmlinux.lds.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-at91/at91rm9200_time.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-at91/at91sam926x_time.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-at91/gpio.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-bcmring/dma.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-footbridge/include/mach/hardwa=
re.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-footbridge/netwinder-hw.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-footbridge/netwinder-leds.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-integrator/core.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-integrator/pci_v3.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-ixp2000/core.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-ixp4xx/common-pci.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-ixp4xx/ixdp425-setup.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-msm/proc_comm.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-mx2/devices.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-mx3/mach-qong.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-omap1/board-nokia770.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-omap2/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-omap2/board-n8x0.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-omap2/board-omap3evm.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-omap2/board-rx51-peripherals.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-omap2/clkt34xx_dpll3m2.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-omap2/clock34xx.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-omap2/clock3xxx_data.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-omap2/gpmc-nand.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-omap2/pm34xx.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-orion5x/ts78xx-setup.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-pxa/cm-x300.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-realview/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-sa1100/badge4.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mach-shark/leds.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mm/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mm/cache-l2x0.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mm/cache-v6.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mm/cache-v7.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mm/context.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mm/copypage-feroceon.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mm/copypage-v4mc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mm/copypage-v4wb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mm/copypage-v4wt.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mm/copypage-v6.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mm/copypage-xsc3.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mm/copypage-xscale.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mm/dma-mapping.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mm/fault.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mm/init.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/mm/mmu.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/oprofile/common.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/plat-mxc/gpio.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/plat-mxc/include/mach/gpio.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/plat-omap/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/plat-omap/clock.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/plat-omap/common.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/plat-omap/gpio.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/plat-omap/include/plat/clock.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/plat-omap/include/plat/control.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/plat-omap/include/plat/gpio.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/plat-omap/include/plat/omap34xx.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/arm/vfp/vfphw.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/avr32/include/asm/thread_info.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/blackfin/include/asm/cache.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/blackfin/include/asm/thread_info.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/blackfin/kernel/kgdb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/blackfin/kernel/time.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/blackfin/mach-bf537/boards/stamp.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/blackfin/mach-bf561/boards/acvilon.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/cris/include/asm/thread_info.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/frv/include/asm/cache.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/frv/include/asm/highmem.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/frv/include/asm/thread_info.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/frv/kernel/time.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/h8300/include/asm/thread_info.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/h8300/kernel/time.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/ia64/include/asm/compat.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/ia64/include/asm/thread_info.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/ia64/kernel/entry.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/ia64/mm/tlb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/m32r/include/asm/thread_info.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/m32r/kernel/time.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/m68k/include/asm/cache.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/m68k/include/asm/thread_info_mm.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/m68k/include/asm/thread_info_no.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/m68knommu/kernel/time.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/alchemy/mtx-1/board_setup.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/ar7/irq.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/bcm63xx/irq.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/cavium-octeon/csrc-octeon.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/cobalt/irq.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/dec/setup.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/emma/markeins/irq.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/include/asm/barrier.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/include/asm/bootinfo.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/include/asm/compat.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/include/asm/i8253.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/include/asm/kexec.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/include/asm/kgdb.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/include/asm/mach-loongson/loongson=
.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/include/asm/mipsregs.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/include/asm/ptrace.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/include/asm/thread_info.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/include/asm/time.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/include/asm/timex.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/cpu-probe.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/cpufreq/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/csrc-r4k.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/entry.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/ftrace.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/i8253.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/i8259.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/kgdb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/machine_kexec.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/mcount.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/proc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/process.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/ptrace.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/relocate_kernel.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/scall32-o32.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/scall64-64.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/scall64-n32.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/scall64-o32.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/setup.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/signal.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/smp.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/smtc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/syscall.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/time.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/traps.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/kernel/unaligned.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/lasat/interrupt.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/loongson/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/loongson/common/irq.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/loongson/fuloong-2e/irq.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/loongson/lemote-2f/irq.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/loongson/lemote-2f/reset.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/mm/c-r4k.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/mm/fault.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/mm/highmem.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/mm/tlbex.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/mti-malta/malta-int.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/nxp/pnx8550/common/int.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/oprofile/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/oprofile/common.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/oprofile/op_model_mipsxx.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/pmc-sierra/msp71xx/msp_irq.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/sgi-ip22/ip22-int.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/sni/rm200.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mips/vr41xx/common/irq.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mn10300/include/asm/cache.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/mn10300/kernel/time.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/parisc/include/asm/compat.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/parisc/include/asm/thread_info.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/parisc/kernel/firmware.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/parisc/math-emu/decode_exc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/include/asm/cacheflush.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/include/asm/compat.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/include/asm/cpm.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/include/asm/kexec.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/include/asm/kmap_types.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/include/asm/machdep.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/include/asm/pgalloc.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/include/asm/pgtable-ppc32.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/include/asm/pgtable-ppc64.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/include/asm/ptrace.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/include/asm/reg_booke.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/include/asm/rwsem.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/include/asm/syscalls.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/include/asm/thread_info.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/include/asm/timex.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/include/asm/tlb.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/include/asm/tlbflush.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/include/asm/trace.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kernel/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kernel/asm-offsets.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kernel/crash.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kernel/crash_dump.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kernel/head_32.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kernel/head_booke.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kernel/head_fsl_booke.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kernel/idle.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kernel/irq.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kernel/kgdb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kernel/kprobes.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kernel/machine_kexec_32.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kernel/misc_32.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kernel/misc_64.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kernel/ppc_ksyms.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kernel/process.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kernel/ptrace.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kernel/rtasd.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kernel/syscalls.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kernel/time.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kernel/traps.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kernel/vdso32/sigtramp.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kvm/book3s.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kvm/booke.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/kvm/powerpc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/lib/locks.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/lib/string.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/mm/fault.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/mm/fsl_booke_mmu.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/mm/highmem.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/mm/mmu_decl.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/mm/pgtable.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/mm/pgtable_32.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/mm/pgtable_64.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/mm/slb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/mm/tlb_hash32.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/mm/tlb_hash64.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/mm/tlb_nohash.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/mm/tlb_nohash_low.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/oprofile/backtrace.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/oprofile/common.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/oprofile/op_model_cell.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/platforms/cell/spufs/file.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/platforms/cell/spufs/inode.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/platforms/cell/spufs/sched.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/platforms/chrp/time.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/platforms/pseries/hotplug-cpu.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/platforms/pseries/iommu.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/platforms/pseries/plpar_wrapper=
s.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/platforms/pseries/smp.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/sysdev/micropatch.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/sysdev/uic.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/powerpc/xmon/xmon.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/s390/include/asm/compat.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/s390/include/asm/rwsem.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/s390/include/asm/thread_info.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/s390/kernel/entry.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/s390/kernel/entry64.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/s390/kernel/ptrace.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/s390/kernel/sys_s390.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/s390/kernel/traps.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/s390/kvm/kvm-s390.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/s390/mm/fault.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/sh/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/sh/include/asm/thread_info.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/sh/include/asm/timex.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/sh/kernel/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/sh/kernel/kgdb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/sparc/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/sparc/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/sparc/include/asm/asm.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/sparc/include/asm/atomic_64.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/sparc/include/asm/compat.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/sparc/include/asm/parport.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/sparc/include/asm/rwsem-const.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/sparc/include/asm/thread_info_32.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/sparc/include/asm/thread_info_64.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/sparc/include/asm/timex_64.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/sparc/kernel/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/sparc/kernel/entry.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/sparc/kernel/kgdb_32.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/sparc/kernel/kgdb_64.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/sparc/kernel/process_32.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/sparc/kernel/sys_sparc_32.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/sparc/kernel/time_64.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/um/include/asm/thread_info.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/um/os-Linux/mem.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/Kconfig.debug
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/ia32/ia32entry.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/ia32/ipc32.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/acpi.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/alternative.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/cmpxchg_32.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/cmpxchg_64.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/compat.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/highmem.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/i8253.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/idle.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/irqflags.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/kgdb.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/kvm_host.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/msr-index.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/page_64_types.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/paravirt.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/paravirt_types.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/pci_x86.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/pgtable-3level.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/pgtable_32.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/pgtable_64.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/processor.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/proto.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/ptrace-abi.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/rwsem.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/stacktrace.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/suspend_32.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/suspend_64.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/system.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/thread_info.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/timer.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/tlbflush.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/tsc.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/vgtod.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/include/asm/xor_32.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/acpi/cstate.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/acpi/sleep.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/alternative.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/amd_iommu.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/amd_iommu_init.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/apic/apic.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/apic/io_apic.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/apic/ipi.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/apic/nmi.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/apm_32.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/asm-offsets_32.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/asm-offsets_64.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/cpu/common.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/cpu/mcheck/therm_throt.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/cpu/perf_event.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/cpu/perf_event_amd.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/cpu/perf_event_intel.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/cpu/vmware.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/dumpstack.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/dumpstack_32.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/dumpstack_64.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/early_printk.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/entry_32.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/entry_64.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/head64.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/head_32.S
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/hpet.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/i8253.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/i8259.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/irqinit.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/kgdb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/kprobes.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/paravirt.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/paravirt_patch_32.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/paravirt_patch_64.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/pci-calgary_64.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/process.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/process_32.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/process_64.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/ptrace.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/pvclock.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/setup.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/signal.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/smp.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/smpboot.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/sys_i386_32.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/syscall_64.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/tboot.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/traps.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/tsc_sync.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/visws_quirks.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/vm86_32.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/vmi_32.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kernel/vsyscall_64.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kvm/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kvm/i8259.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kvm/irq.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kvm/mmu.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kvm/svm.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kvm/vmx.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/kvm/x86.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/lguest/boot.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/mm/fault.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/mm/gup.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/mm/highmem_32.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/mm/init.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/mm/iomap_32.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/mm/kmmio.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/mm/pageattr.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/mm/pgtable.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/mm/testmmiotrace.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/mm/tlb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/oprofile/backtrace.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/oprofile/nmi_int.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/pci/acpi.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/pci/common.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/pci/direct.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/pci/mmconfig_32.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/pci/mrst.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/pci/numaq_32.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/pci/pcbios.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/power/cpu.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/vdso/vclock_gettime.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/xen/enlighten.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/xen/mmu.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/xen/suspend.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/x86/xen/time.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/xtensa/include/asm/cache.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/xtensa/include/asm/rwsem.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/xtensa/include/asm/thread_info.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 arch/xtensa/kernel/time.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 block/blk-core.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 block/cfq-iosched.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 block/genhd.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 crypto/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 crypto/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/acpi/acpica/acevents.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/acpi/acpica/acglobal.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/acpi/acpica/achware.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/acpi/acpica/evgpe.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/acpi/acpica/evgpeblk.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/acpi/acpica/evxfevnt.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/acpi/acpica/hwgpe.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/acpi/acpica/hwregs.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/acpi/acpica/hwxface.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/acpi/acpica/utmutex.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/acpi/button.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/acpi/fan.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/acpi/processor_core.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/acpi/processor_idle.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/acpi/sleep.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/acpi/system.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/acpi/video_detect.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/acpi/wakeup.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/ata/ahci.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/ata/ata_generic.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/ata/ata_piix.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/ata/libata-core.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/ata/libata-scsi.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/ata/libata-sff.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/ata/sata_nv.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/ata/sata_via.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/atm/solos-pci.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/base/core.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/base/cpu.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/base/firmware_class.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/block/hd.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/block/paride/pseudo.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/bluetooth/btusb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/char/agp/amd64-agp.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/char/bfin_jtag_comm.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/char/ipmi/ipmi_si_intf.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/char/keyboard.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/char/nozomi.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/char/pty.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/char/random.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/char/rtc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/char/selection.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/char/sysrq.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/char/tpm/tpm.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/char/tpm/tpm_tis.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/char/tty_io.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/char/tty_ldisc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/char/vc_screen.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/char/vt.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/char/vt_ioctl.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/clocksource/sh_cmt.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/clocksource/sh_tmu.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/clocksource/tcb_clksrc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/cpufreq/cpufreq.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/edac/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/edac/amd64_edac.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/firewire/core-card.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/drm_drv.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/drm_edid.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/drm_fb_helper.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/i915/dvo_tfp410.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/i915/i915_debugfs.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/i915/i915_dma.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/i915/i915_drv.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/i915/i915_drv.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/i915/i915_gem.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/i915/i915_irq.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/i915/i915_reg.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/i915/intel_display.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/i915/intel_dp.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/i915/intel_drv.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/i915/intel_overlay.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/nouveau/nouveau_drv.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/radeon/r100.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/radeon/r200.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/radeon/r300.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/radeon/r600.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/radeon/r600d.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/radeon/radeon.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/radeon/radeon_agp.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/radeon/radeon_atombios.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/radeon/radeon_combios.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/radeon/radeon_connectors.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/radeon/radeon_device.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/radeon/radeon_display.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/radeon/radeon_encoders.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/radeon/radeon_i2c.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/radeon/radeon_irq_kms.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/radeon/radeon_legacy_crtc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/radeon/radeon_legacy_encoder=
s.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/radeon/radeon_legacy_tv.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/radeon/radeon_state.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/radeon/rs600.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/radeon/rs690.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/radeon/rv770.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/gpu/drm/radeon/rv770d.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/hid/hid-core.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/hid/hid-gyration.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/hid/hid-ids.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/hid/usbhid/hid-core.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/hid/usbhid/usbkbd.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/hwmon/coretemp.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/hwmon/i5k_amb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/hwmon/it87.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/hwmon/k10temp.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/hwmon/k8temp.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/hwmon/ltc4245.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/hwmon/pc87360.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/hwmon/s3c-hwmon.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/i2c/busses/i2c-omap.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/ide/cmd640.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/ide/hpt366.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/ide/ide-cd.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/ide/ide-io-std.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/ide/ide-io.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/ide/ide-iops.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/ide/ide-probe.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/ide/ide-taskfile.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/idle/i7300_idle.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/infiniband/core/user_mad.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/infiniband/hw/ipath/ipath_fs.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/infiniband/ulp/ipoib/ipoib_main.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/infiniband/ulp/ipoib/ipoib_multicast=
.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/input/gameport/gameport.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/input/input.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/input/joystick/analog.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/input/joystick/gamecon.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/input/keyboard/twl4030_keypad.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/input/misc/hp_sdc_rtc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/input/misc/pcspkr.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/input/serio/hil_mlc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/input/serio/hp_sdc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/input/serio/i8042-x86ia64io.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/input/touchscreen/ads7846.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/isdn/capi/kcapi.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/isdn/gigaset/asyncdata.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/isdn/gigaset/capi.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/isdn/gigaset/common.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/isdn/gigaset/ev-layer.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/isdn/gigaset/gigaset.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/isdn/gigaset/i4l.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/isdn/gigaset/isocdata.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/isdn/sc/ioctl.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/macintosh/adb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/md/bitmap.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/md/bitmap.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/md/dm-exception-store.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/md/dm-exception-store.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/md/dm-ioctl.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/md/dm-mpath.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/md/dm-snap.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/md/dm.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/md/linear.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/md/md.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/md/md.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/md/raid1.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/md/raid10.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/md/raid5.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/md/raid5.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/media/dvb/dvb-core/dvb_frontend.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/media/dvb/dvb-core/dvb_net.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/media/dvb/ttpci/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/media/video/cx23885/cx23885-i2c.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/media/video/cx88/cx88-i2c.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/media/video/uvc/uvc_ctrl.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/media/video/uvc/uvc_driver.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/media/video/uvc/uvcvideo.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/memstick/core/mspro_block.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/mfd/88pm860x-i2c.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/mfd/max8925-i2c.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/misc/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/misc/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/misc/enclosure.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/misc/kgdbts.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/misc/vmware_balloon.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/mmc/card/queue.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/mmc/host/omap.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/mmc/host/omap_hsmmc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/mmc/host/sdhci-s3c.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/mtd/chips/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/mtd/chips/cfi_cmdset_0001.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/mtd/nand/plat_nand.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/mtd/nand/pxa3xx_nand.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/3c503.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/3c527.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/3c59x.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/8139too.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/arcnet/com20020-pci.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/arm/at91_ether.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/atl1c/atl1c_main.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/atl1e/atl1e_main.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/bnx2.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/can/sja1000/sja1000.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/can/sja1000/sja1000.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/chelsio/sge.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/cpmac.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/dm9000.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/e1000e/82571.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/e1000e/defines.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/e1000e/hw.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/e1000e/ich8lan.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/e1000e/lib.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/e1000e/netdev.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/ehea/ehea_main.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/fs_enet/mac-fec.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/gianfar.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/hamradio/6pack.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/hamradio/mkiss.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/ibm_newemac/core.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/ibm_newemac/mal.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/ibm_newemac/mal.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/igb/igb_main.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/irda/sir_dev.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/loopback.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/mlx4/icm.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/mlx4/mlx4.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/mv643xx_eth.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/netxen/netxen_nic_init.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/niu.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/ppp_async.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/ppp_generic.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/pppol2tp.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/r8169.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/rionet.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/s2io.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/sky2.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/smc911x.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/smsc911x.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/sungem.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/tehuti.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/tg3.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/tulip/tulip_core.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/ucc_geth.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/ucc_geth.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/ucc_geth_ethtool.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/usb/pegasus.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/usb/usbnet.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/virtio_net.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wan/cosa.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wan/hd64570.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wan/hd64572.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/ath/ar9170/hw.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/ath/ar9170/main.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/ath/ar9170/usb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/ath/ath5k/attach.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/ath/ath5k/base.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/ath/ath9k/eeprom_def.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/ath/ath9k/hw.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/ath/ath9k/init.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/ath/ath9k/initvals.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/ath/ath9k/xmit.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/hostap/hostap_cs.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/hostap/hostap_hw.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/hostap/hostap_wlan.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/iwlwifi/iwl-1000.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/iwlwifi/iwl-3945.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/iwlwifi/iwl-4965.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/iwlwifi/iwl-5000.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/iwlwifi/iwl-6000.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/iwlwifi/iwl-agn-rs.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/iwlwifi/iwl-agn.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/iwlwifi/iwl-core.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/iwlwifi/iwl-core.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/iwlwifi/iwl-dev.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/iwlwifi/iwl-devtrace.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/iwlwifi/iwl-scan.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/iwlwifi/iwl-tx.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/iwlwifi/iwl3945-base.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/libertas/if_sdio.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/p54/p54pci.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/p54/p54usb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/rtl818x/rtl8180_dev.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/wl12xx/wl1251_cmd.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/wireless/wl12xx/wl1251_sdio.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/net/xen-netfront.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/of/base.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/oprofile/cpu_buffer.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/oprofile/event_buffer.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/oprofile/oprof.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/oprofile/oprof.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/oprofile/oprofile_files.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/oprofile/oprofilefs.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/parisc/led.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/parport/share.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/pci/access.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/pci/hotplug/ibmphp_hpc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/pci/pci.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/pci/pcie/pme/pcie_pme.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/pci/quirks.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/pcmcia/ds.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/pcmcia/pcmcia_resource.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/pcmcia/yenta_socket.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/platform/x86/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/platform/x86/compal-laptop.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/platform/x86/dell-laptop.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/regulator/wm8994-regulator.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/rtc/rtc-cmos.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/rtc/rtc-ds1307.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/rtc/rtc-s3c.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/scsi/aacraid/commctrl.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/scsi/aacraid/commsup.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/scsi/ibmvscsi/ibmvfc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/scsi/ibmvscsi/ibmvfc.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/scsi/libsas/sas_ata.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/scsi/libsas/sas_scsi_host.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/serial/68328serial.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/serial/8250.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/serial/8250.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/serial/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/serial/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/serial/amba-pl011.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/serial/cpm_uart/cpm_uart_core.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/serial/kgdboc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/serial/sb1250-duart.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/serial/serial_core.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/serial/sh-sci.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/serial/sunhv.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/serial/sunzilog.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/spi/spi_mpc8xxx.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/ssb/driver_chipcommon.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/ssb/pci.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/ssb/sprom.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/staging/batman-adv/proc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/staging/batman-adv/vis.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/staging/batman-adv/vis.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/staging/comedi/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/staging/comedi/drivers/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/staging/comedi/drivers/dt9812.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/staging/comedi/drivers/ni_mio_cs.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/staging/comedi/drivers/usbdux.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/staging/comedi/drivers/usbduxfast.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/staging/dream/pmem.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/staging/frontier/alphatrack.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/staging/frontier/tranzport.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/staging/line6/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/staging/otus/wwrap.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/staging/panel/panel.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/staging/pohmelfs/path_entry.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/staging/rt2860/common/rtmp_init.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/staging/rt2860/usb_main_dev.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/staging/sm7xx/smtcfb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/staging/vme/devices/vme_user.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/staging/vt6655/device_main.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/class/cdc-acm.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/core/devio.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/core/driver.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/core/hcd.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/core/hub.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/core/inode.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/core/message.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/core/quirks.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/core/urb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/core/usb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/early/ehci-dbgp.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/gadget/fsl_udc_core.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/gadget/u_serial.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/host/ehci-au1xxx.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/host/ehci-fsl.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/host/ehci-hub.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/host/ehci-mxc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/host/ehci-omap.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/host/ehci-pci.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/host/ehci-sched.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/host/ehci.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/host/fhci.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/host/ohci-hcd.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/host/pci-quirks.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/host/uhci-q.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/host/whci/qset.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/host/xhci-mem.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/host/xhci-pci.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/host/xhci-ring.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/host/xhci.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/misc/ftdi-elan.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/misc/sisusbvga/sisusb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/misc/usbtest.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/mon/mon_bin.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/mon/mon_text.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/musb/musb_core.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/musb/musb_core.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/musb/tusb6010.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/serial/console.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/serial/cp210x.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/serial/cypress_m8.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/serial/digi_acceleport.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/serial/ftdi_sio.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/serial/ftdi_sio_ids.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/serial/generic.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/serial/io_ti.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/serial/ir-usb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/serial/kl5kusb105.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/serial/kobil_sct.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/serial/mos7840.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/serial/navman.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/serial/option.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/serial/pl2303.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/serial/pl2303.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/serial/qcaux.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/serial/sierra.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/serial/spcp8x5.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/serial/usb-serial.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/serial/usb_debug.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/serial/visor.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/usb/storage/unusual_devs.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/vhost/net.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/arcfb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/arkfb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/aty/aty128fb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/aty/atyfb_base.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/aty/radeon_pm.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/chipsfb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/console/fbcon.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/console/vgacon.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/da8xx-fb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/fbmem.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/fbsysfs.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/geode/gxfb_core.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/geode/lxfb_core.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/hgafb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/i810/i810_main.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/matrox/matroxfb_base.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/mx3fb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/nvidia/nvidia.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/omap2/dss/dpi.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/omap2/omapfb/omapfb-main.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/ps3fb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/s3fb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/savage/savagefb_driver.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/sm501fb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/tmiofb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/vfb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/vga16fb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/vt8623fb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/w100fb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/video/xen-fbfront.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/virtio/virtio_pci.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/virtio/virtio_ring.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/xen/events.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 drivers/xen/xenbus/xenbus_xs.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 firmware/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/affs/affs.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/affs/amigaffs.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/affs/inode.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/affs/super.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/afs/dir.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/aio.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/anon_inodes.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/attr.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/autofs4/autofs_i.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/autofs4/expire.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/autofs4/root.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/autofs4/waitq.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/bfs/dir.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/binfmt_elf.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/block_dev.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/btrfs/acl.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/btrfs/inode.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/btrfs/ioctl.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/btrfs/locking.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/buffer.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/cifs/cifsfs.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/cifs/cifsproto.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/cifs/dir.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/cifs/dns_resolve.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/cifs/dns_resolve.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/cifs/file.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/cifs/inode.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/cifs/sess.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/coda/cache.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/coda/dir.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/compat.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/configfs/configfs_internal.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/configfs/dir.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/configfs/inode.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/cramfs/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/cramfs/inode.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/dcache.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/direct-io.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/drop_caches.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ecryptfs/file.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ecryptfs/inode.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ecryptfs/messaging.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/eventfd.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/exec.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/exofs/dir.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/exofs/inode.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/exofs/namei.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/exportfs/expfs.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ext2/namei.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ext2/super.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ext3/ialloc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ext3/namei.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ext3/super.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ext4/ialloc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ext4/inode.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ext4/move_extent.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ext4/namei.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ext4/resize.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/fat/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/fat/dir.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/fat/inode.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/fat/namei_vfat.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/fcntl.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/file.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/file_table.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/filesystems.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/fs-writeback.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/fs_struct.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/gfs2/dir.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/gfs2/file.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/gfs2/ops_inode.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/hfs/bfind.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/hfs/btree.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/hfs/btree.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/hfsplus/bfind.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/hfsplus/btree.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/hfsplus/dir.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/hfsplus/hfsplus_fs.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/hpfs/buffer.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/hpfs/hpfs_fn.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/hpfs/inode.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/hpfs/super.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/hugetlbfs/inode.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/inode.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/internal.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ioctl.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ioprio.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/jbd/transaction.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/jbd2/journal.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/jbd2/transaction.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/jffs2/dir.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/jffs2/fs.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/jffs2/os-linux.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/jffs2/scan.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/jfs/jfs_txnmgr.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/jfs/namei.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/jfs/xattr.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/libfs.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/locks.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/minix/namei.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/namei.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/namespace.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ncpfs/dir.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ncpfs/ncplib_kernel.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/nfs/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/nfs/client.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/nfs/dir.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/nfs/file.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/nfs/getroot.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/nfs/inode.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/nfs/internal.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/nfs/mount_clnt.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/nfs/namespace.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/nfs/nfs4xdr.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/nfs/nfsroot.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/nfs/super.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/nfs/write.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/nfsd/nfssvc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/nfsd/vfs.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/nfsd/vfs.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/nilfs2/gcdat.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/nilfs2/mdt.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/nilfs2/namei.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/nilfs2/super.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/notify/fsnotify.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/notify/inode_mark.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/notify/inotify/inotify.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ntfs/aops.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ntfs/file.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ntfs/super.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ocfs2/acl.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ocfs2/aops.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ocfs2/dcache.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ocfs2/dlm/dlmmaster.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ocfs2/dlm/dlmrecovery.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ocfs2/dlm/dlmthread.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ocfs2/file.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ocfs2/namei.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ocfs2/refcounttree.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ocfs2/xattr.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/open.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/partitions/check.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/pipe.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/pnode.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/proc/array.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/proc/base.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/proc/inode.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/proc/task_mmu.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/quota/dquot.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/read_write.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/reiserfs/file.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/reiserfs/namei.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/reiserfs/stree.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/reiserfs/xattr.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/select.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/seq_file.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/signalfd.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/smbfs/cache.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/smbfs/dir.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/smbfs/inode.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/smbfs/proc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/splice.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/stack.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/super.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/sysv/ialloc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/sysv/namei.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ubifs/dir.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ubifs/super.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/udf/namei.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/ufs/namei.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 fs/xfs/xfs_dfrag.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/acpi/acexcep.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/acpi/acpiosxf.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/acpi/actypes.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/acpi/processor.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/asm-generic/bug.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/asm-generic/cmpxchg-local.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/asm-generic/ioctls.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/asm-generic/kmap_types.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/asm-generic/percpu.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/asm-generic/tlb.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/asm-generic/vmlinux.lds.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/drm/drm_crtc_helper.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/drm/drm_fb_helper.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/drm/drm_pciids.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/Kbuild
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/a.out.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/acpi.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/aio.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/bottom_half.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/buffer_head.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/compat.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/compiler-gcc.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/compiler-gcc4.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/connector.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/console.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/cramfs_fs_sb.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/dcache.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/debugobjects.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/device.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/ethtool.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/fb.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/firmware.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/fs.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/fs_stack.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/fsnotify_backend.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/genetlink.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/hardirq.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/hrtimer.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/if_pppol2tp.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/if_pppox.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/init.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/init_task.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/inotify.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/interrupt.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/irq.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/jbd.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/jbd2.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/kbd_kern.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/kernel.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/kgdb.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/kprobes.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/kvm_host.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/list.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/lockdep.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/magic.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/miscdevice.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/mm.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/mm_types.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/mmc/sdio.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/mmzone.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/module.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/mount.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/msdos_fs.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/mutex.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/namei.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/netdevice.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/netfilter/x_tables.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/netpoll.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/nfs_fs.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/nfs_fs_sb.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/nfs_mount.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/nfs_xdr.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/notifier.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/of.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/oprofile.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/page_cgroup.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/pagevec.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/pci_ids.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/percpu-defs.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/percpu.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/percpu_counter.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/perf_event.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/plist.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/poison.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/poll.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/ppp_channel.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/preempt.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/profile.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/proportions.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/ptrace.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/quicklist.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/radix-tree.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/random.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/ratelimit.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/rculist.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/rcupdate.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/rtmutex.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/rwlock.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/rwlock_api_smp.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/rwsem-spinlock.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/rwsem.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/sched.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/security.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/semaphore.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/seq_file.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/seqlock.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/serial_8250.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/serial_core.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/signal.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/skbuff.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/slub_def.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/smb_fs_sb.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/smp.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/spinlock.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/spinlock_api_smp.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/spinlock_api_up.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/spinlock_types.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/splice.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/ssb/ssb.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/ssb/ssb_driver_chipcommon.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/ssb/ssb_regs.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/sunrpc/auth.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/swap.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/swapops.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/sysctl.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/sysrq.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/tboot.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/time.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/timer.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/tipc.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/tipc_config.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/tracepoint.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/tty.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/tty_driver.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/uaccess.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/usb.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/usb/serial.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/utsname.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/vmalloc.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/vmstat.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/workqueue.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/linux/writeback.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/math-emu/op-common.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/mtd/mtd-abi.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/net/sctp/structs.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/net/sock.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/net/tipc/tipc.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/sound/emu10k1.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/trace/events/sched.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/trace/events/signal.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/trace/events/timer.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 include/trace/syscall.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 init/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 init/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 init/do_mounts.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 init/main.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 init/version.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 ipc/mqueue.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 ipc/msg.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 ipc/msgutil.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 ipc/sem.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 ipc/shm.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 ipc/syscall.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 ipc/util.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/Kconfig.preempt
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/audit.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/cgroup.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/compat.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/early_res.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/exit.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/fork.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/futex.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/hrtimer.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/irq/chip.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/irq/handle.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/irq/manage.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/irq/migration.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/irq/spurious.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/itimer.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/kallsyms.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/kexec.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/kgdb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/kprobes.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/ksysfs.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/latencytop.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/lockdep.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/module.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/mutex-debug.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/mutex.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/notifier.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/nsproxy.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/panic.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/params.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/perf_event.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/pid.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/posix-cpu-timers.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/posix-timers.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/power/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/power/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/printk.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/profile.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/rcupdate.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/rcutiny.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/rcutorture.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/rcutree.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/relay.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/res_counter.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/rtmutex-debug.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/rtmutex-debug.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/rtmutex.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/rtmutex_common.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/rwsem.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/sched.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/sched_debug.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/sched_fair.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/sched_rt.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/sched_stats.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/semaphore.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/signal.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/softirq.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/softlockup.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/spinlock.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/stop_machine.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/sys.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/sysctl.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/time.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/time/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/time/ntp.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/time/tick-common.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/time/tick-sched.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/time/timekeeping.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/timer.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/trace/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/trace/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/trace/ftrace.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/trace/power-traces.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/trace/ring_buffer.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/trace/trace.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/trace/trace.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/trace/trace_functions_graph.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/trace/trace_irqsoff.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/trace/trace_printk.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/tracepoint.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/user.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 kernel/workqueue.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 lib/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 lib/Kconfig.debug
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 lib/Kconfig.kgdb
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 lib/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 lib/debugobjects.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 lib/idr.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 lib/kernel_lock.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 lib/locking-selftest.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 lib/percpu_counter.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 lib/proportions.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 lib/radix-tree.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 lib/ratelimit.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 lib/rwsem-spinlock.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 lib/rwsem.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 lib/scatterlist.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 lib/spinlock_debug.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/backing-dev.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/bootmem.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/bounce.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/filemap.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/highmem.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/hugetlb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/memcontrol.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/memory.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/mlock.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/mmap.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/mmu_context.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/nommu.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/oom_kill.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/page_alloc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/page_cgroup.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/page_io.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/quicklist.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/shmem.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/slab.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/slob.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/slub.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/swap.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/swapfile.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/vmalloc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/vmscan.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 mm/vmstat.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/9p/trans_fd.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/bridge/br_device.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/bridge/br_fdb.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/bridge/br_input.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/bridge/br_stp_bpdu.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/can/bcm.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/core/dev.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/core/drop_monitor.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/core/ethtool.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/core/filter.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/core/flow.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/core/neighbour.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/core/netpoll.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/core/skbuff.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/core/sock.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/dccp/input.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/ipv4/arp.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/ipv4/devinet.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/ipv4/fib_trie.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/ipv4/icmp.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/ipv4/netfilter/arp_tables.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/ipv4/netfilter/ip_tables.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/ipv4/route.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/ipv4/syncookies.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/ipv4/tcp.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/ipv4/tcp_ipv4.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/ipv4/tcp_output.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/ipv4/udp.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/ipv6/addrconf.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/ipv6/ip6_output.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/ipv6/ndisc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/ipv6/netfilter/ip6_tables.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/ipv6/netfilter/ip6t_REJECT.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/ipv6/route.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/irda/af_irda.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/mac80211/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/mac80211/cfg.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/mac80211/mesh_plink.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/mac80211/mlme.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/mac80211/rx.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/mac80211/scan.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/mac80211/tx.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/mac80211/work.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/netfilter/core.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/netfilter/ipvs/ip_vs_conn.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/netfilter/nf_conntrack_expect.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/netlink/af_netlink.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/netlink/genetlink.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/sched/act_nat.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/sched/sch_generic.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/sched/sch_sfq.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/sctp/output.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/sctp/protocol.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/sctp/sm_make_chunk.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/sctp/sysctl.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/socket.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/sunrpc/auth_generic.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/sunrpc/rpc_pipe.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/sunrpc/xprtsock.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/tipc/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/tipc/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/wireless/mlme.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 net/wireless/scan.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 samples/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 samples/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 scripts/Makefile.modpost
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 scripts/checkpatch.pl
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 scripts/kallsyms.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 scripts/kconfig/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 scripts/kconfig/conf.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 scripts/kconfig/confdata.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 scripts/kconfig/expr.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 scripts/kconfig/expr.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 scripts/kconfig/symbol.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 scripts/kconfig/zconf.hash.c_shipped
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 scripts/kconfig/zconf.tab.c_shipped
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 scripts/kconfig/zconf.y
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 scripts/mkcompile_h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 scripts/mkmakefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 scripts/mod/modpost.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 scripts/mod/modpost.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 scripts/setlocalversion
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 security/Kconfig
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 security/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 security/commoncap.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 security/keys/permission.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 security/keys/proc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 security/security.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 security/selinux/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 security/selinux/avc.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 security/selinux/hooks.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 security/selinux/netnode.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 security/selinux/selinuxfs.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 security/tomoyo/realpath.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/core/pcm_lib.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/core/pcm_native.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/drivers/pcsp/pcsp.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/drivers/pcsp/pcsp_input.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/drivers/pcsp/pcsp_lib.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/pci/emu10k1/emu10k1.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/pci/emu10k1/emupcm.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/pci/emu10k1/memory.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/pci/hda/hda_codec.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/pci/hda/hda_codec.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/pci/hda/hda_intel.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/pci/hda/patch_conexant.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/pci/hda/patch_hdmi.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/pci/hda/patch_nvhdmi.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/pci/hda/patch_realtek.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/pci/hda/patch_sigmatel.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/pci/intel8x0.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/pci/riptide/riptide.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/soc/codecs/wm8350.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/soc/codecs/wm8400.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/soc/codecs/wm8580.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/soc/codecs/wm8776.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/soc/codecs/wm8990.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/soc/fsl/mpc5200_dma.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/soc/imx/imx-pcm-dma-mx2.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 sound/soc/soc-cache.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/Makefile
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/bench/mem-memcpy.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/bench/sched-messaging.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/builtin-annotate.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/builtin-buildid-cache.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/builtin-buildid-list.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/builtin-diff.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/builtin-help.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/builtin-lock.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/builtin-probe.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/builtin-record.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/builtin-report.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/builtin-sched.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/builtin-stat.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/builtin-timechart.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/builtin-top.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/builtin-trace.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/perf.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/util/callchain.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/util/debug.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/util/debug.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/util/parse-options.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/util/parse-options.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/util/probe-finder.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/util/symbol.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/util/symbol.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/util/trace-event-parse.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 tools/perf/util/trace-event.h
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 virt/kvm/ioapic.c
> =A0 =A0 =A0 =A0M =A0 =A0 =A0 virt/kvm/kvm_main.c
> =A0 =A0 =A0 =A0error: Your local changes to the following files would be =
overwritten by checkout:
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0virt/kvm/kvm_main.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0virt/kvm/ioapic.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/util/trace-event.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/util/trace-event-parse.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/util/symbol.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/util/symbol.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/util/probe-finder.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/util/parse-options.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/util/parse-options.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/util/debug.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/util/debug.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/util/callchain.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/perf.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-top.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-timechart.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-stat.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-sched.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-report.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-record.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-probe.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-lock.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-help.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-diff.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-buildid-list.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-buildid-cache.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-annotate.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/bench/sched-messaging.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/bench/mem-memcpy.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/soc/soc-cache.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/soc/imx/imx-pcm-dma-mx2.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/soc/fsl/mpc5200_dma.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/soc/codecs/wm8990.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/soc/codecs/wm8776.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/soc/codecs/wm8580.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/soc/codecs/wm8400.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/soc/codecs/wm8350.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/riptide/riptide.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/intel8x0.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/hda/patch_sigmatel.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/hda/patch_realtek.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/hda/patch_nvhdmi.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/hda/patch_hdmi.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/hda/patch_conexant.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/hda/hda_intel.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/hda/hda_codec.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/hda/hda_codec.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/emu10k1/memory.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/emu10k1/emupcm.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/emu10k1/emu10k1.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/drivers/pcsp/pcsp_lib.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/drivers/pcsp/pcsp_input.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/drivers/pcsp/pcsp.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/core/pcm_native.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/core/pcm_lib.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/tomoyo/realpath.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/selinux/selinuxfs.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/selinux/netnode.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/selinux/hooks.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/selinux/avc.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/selinux/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/security.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/keys/proc.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/keys/permission.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/commoncap.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/Kconfig
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/setlocalversion
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/mod/modpost.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/mod/modpost.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/mkmakefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/mkcompile_h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/kconfig/zconf.y
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/kconfig/zconf.tab.c_shipped
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/kconfig/zconf.hash.c_shipped
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/kconfig/symbol.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/kconfig/expr.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/kconfig/expr.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/kconfig/confdata.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/kconfig/conf.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/kconfig/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/kallsyms.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/checkpatch.pl
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/Makefile.modpost
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0samples/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0samples/Kconfig
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/wireless/scan.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/wireless/mlme.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/Kconfig
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/sunrpc/xprtsock.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/sunrpc/rpc_pipe.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/sunrpc/auth_generic.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/socket.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/sctp/sysctl.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/sctp/sm_make_chunk.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/sctp/protocol.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/sctp/output.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/sched/sch_sfq.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/sched/sch_generic.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/sched/act_nat.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/netlink/genetlink.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/netlink/af_netlink.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/netfilter/nf_conntrack_expect.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/netfilter/ipvs/ip_vs_conn.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/netfilter/core.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/mac80211/work.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/mac80211/tx.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/mac80211/scan.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/mac80211/rx.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/mac80211/mlme.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/mac80211/mesh_plink.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/mac80211/cfg.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/mac80211/Kconfig
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/irda/af_irda.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv6/route.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv6/netfilter/ip6t_REJECT.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv6/netfilter/ip6_tables.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv6/ndisc.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv6/ip6_output.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv6/addrconf.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv4/udp.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv4/tcp_output.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv4/tcp_ipv4.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv4/tcp.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv4/syncookies.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv4/route.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv4/netfilter/ip_tables.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv4/netfilter/arp_tables.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv4/icmp.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv4/fib_trie.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv4/devinet.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv4/arp.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/dccp/input.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/core/sock.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/core/skbuff.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/core/netpoll.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/core/neighbour.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/core/flow.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/core/filter.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/core/ethtool.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/core/drop_monitor.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/core/dev.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/can/bcm.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/bridge/br_stp_bpdu.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/bridge/br_input.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/bridge/br_fdb.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/bridge/br_device.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/Kconfig
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/9p/trans_fd.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/vmstat.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/vmscan.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/vmalloc.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/swapfile.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/swap.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/slub.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/slob.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/slab.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/shmem.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/quicklist.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/page_io.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/page_cgroup.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/page_alloc.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/oom_kill.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/nommu.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/mmu_context.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/mmap.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/mlock.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/memory.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/memcontrol.c
>
> =A0 =A0 =A0 =A0error: The following untracked working tree files would be=
 overwritten by checkout:
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0virt/kvm/xinterface.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/bsdjail.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0samples/psrwlock/psrwlock_example.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0samples/psrwlock/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0samples/markers/test-multi.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0samples/markers/probe-example.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0samples/markers/marker-example.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0samples/markers/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_user_reg.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_user_reg.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_topsrv.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_topsrv.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_socket.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_ref.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_ref.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_port.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_port.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_node.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_node.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_netlink.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_net.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_net.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_name_table.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_name_table.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_name_distr.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_name_distr.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_msg.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_msg.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_link.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_link.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_handler.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_eth_media.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_discover.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_discover.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_dbg.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_dbg.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_core.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_core.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_cfgsrv.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_cfgsrv.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_bearer.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_bearer.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_bcast.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_bcast.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_addr.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_addr.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/l2tp/l2tp_ppp.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/l2tp/l2tp_netlink.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/l2tp/l2tp_ip.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/l2tp/l2tp_eth.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/l2tp/l2tp_debugfs.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/l2tp/l2tp_core.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/l2tp/l2tp_core.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/l2tp/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/l2tp/Kconfig
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/trap-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/syscall-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/rcu-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/pm-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/net-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/net-extended-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/mm-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/lockdep-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/kernel-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/jbd2-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/ipc-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/fs-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/ext4-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/block-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-userspace-event.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-type-serializer.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-tracer.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-trace-control.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-statedump.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-serialize.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-relay-vfs.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-relay-splice.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-relay-select.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-relay-lockless.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-relay-lockless.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-relay-locked.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-relay-locked.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-relay-irqoff.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-relay-irqoff.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-relay-alloc.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-marker-control.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-kprobes.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-ftrace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-filter.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-core.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-channels.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-ascii.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/Kconfig
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0lib/shm_signal_eventfd.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0lib/shm_signal.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0lib/psrwlock.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0lib/psrwlock.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0lib/psrwlock-latency-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0lib/psrwlock-debug.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0lib/psrwlock-debug.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0lib/ioq.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/vbus.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/shm-ioq.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/map.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/map.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/devices/venet/venetdevice.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/devices/venet/tap.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/devices/venet/macvlan.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/devices/venet/device.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/devices/venet/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/devices/venet/Kconfig
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/devices/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/devices/Kconfig
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/devclass.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/core.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/connectors/null.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/connectors/kvm.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/connectors/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/connectors/Kconfig
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/config-ioctl.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/config-fs.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/client.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/attribute.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/Kconfig
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/trace/trace_kdb.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/trace/trace-clock.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/trace/trace-clock-32-to-64.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/trace/latency_hist.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/time/tsc-sync.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/rt.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/power/ksnap.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/marker.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/immediate.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/kms_hooks.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/kdb/kdb_support.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/kdb/kdb_private.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/kdb/kdb_main.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/kdb/kdb_keyboard.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/kdb/kdb_io.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/kdb/kdb_debugger.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/kdb/kdb_cmds
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/kdb/kdb_bt.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/kdb/kdb_bp.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/kdb/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/kdb/.gitignore
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/gdbstub.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/debug_core.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/debug_core.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/trace/trap.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/trace/timer.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/trace/swap.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/trace/socket.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/trace/sched.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/trace/rcu.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/trace/pm.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/trace/page_alloc.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/trace/net.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/trace/lockdep.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/trace/kernel.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/trace/irq.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/
> =A0 =A0 =A0 =A0Aborting
> =A0 =A0 =A0 =A0error: Cannot delete the branch 'wrs_meta-temp' which you =
are currently on.
> =A0 =A0 =A0 =A0error: Your local changes to the following files would be =
overwritten by checkout:
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0virt/kvm/kvm_main.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0virt/kvm/ioapic.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/util/trace-event.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/util/trace-event-parse.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/util/symbol.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/util/symbol.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/util/probe-finder.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/util/parse-options.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/util/parse-options.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/util/debug.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/util/debug.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/util/callchain.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/perf.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-top.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-timechart.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-stat.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-sched.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-report.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-record.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-probe.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-lock.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-help.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-diff.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-buildid-list.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-buildid-cache.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/builtin-annotate.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/bench/sched-messaging.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/bench/mem-memcpy.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tools/perf/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/soc/soc-cache.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/soc/imx/imx-pcm-dma-mx2.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/soc/fsl/mpc5200_dma.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/soc/codecs/wm8990.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/soc/codecs/wm8776.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/soc/codecs/wm8580.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/soc/codecs/wm8400.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/soc/codecs/wm8350.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/riptide/riptide.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/intel8x0.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/hda/patch_sigmatel.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/hda/patch_realtek.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/hda/patch_nvhdmi.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/hda/patch_hdmi.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/hda/patch_conexant.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/hda/hda_intel.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/hda/hda_codec.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/hda/hda_codec.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/emu10k1/memory.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/emu10k1/emupcm.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/pci/emu10k1/emu10k1.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/drivers/pcsp/pcsp_lib.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/drivers/pcsp/pcsp_input.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/drivers/pcsp/pcsp.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/core/pcm_native.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0sound/core/pcm_lib.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/tomoyo/realpath.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/selinux/selinuxfs.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/selinux/netnode.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/selinux/hooks.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/selinux/avc.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/selinux/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/security.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/keys/proc.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/keys/permission.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/commoncap.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/Kconfig
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/setlocalversion
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/mod/modpost.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/mod/modpost.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/mkmakefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/mkcompile_h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/kconfig/zconf.y
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/kconfig/zconf.tab.c_shipped
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/kconfig/zconf.hash.c_shipped
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/kconfig/symbol.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/kconfig/expr.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/kconfig/expr.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/kconfig/confdata.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/kconfig/conf.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/kconfig/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/kallsyms.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/checkpatch.pl
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0scripts/Makefile.modpost
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0samples/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0samples/Kconfig
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/wireless/scan.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/wireless/mlme.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/Kconfig
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/sunrpc/xprtsock.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/sunrpc/rpc_pipe.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/sunrpc/auth_generic.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/socket.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/sctp/sysctl.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/sctp/sm_make_chunk.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/sctp/protocol.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/sctp/output.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/sched/sch_sfq.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/sched/sch_generic.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/sched/act_nat.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/netlink/genetlink.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/netlink/af_netlink.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/netfilter/nf_conntrack_expect.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/netfilter/ipvs/ip_vs_conn.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/netfilter/core.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/mac80211/work.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/mac80211/tx.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/mac80211/scan.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/mac80211/rx.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/mac80211/mlme.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/mac80211/mesh_plink.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/mac80211/cfg.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/mac80211/Kconfig
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/irda/af_irda.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv6/route.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv6/netfilter/ip6t_REJECT.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv6/netfilter/ip6_tables.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv6/ndisc.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv6/ip6_output.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv6/addrconf.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv4/udp.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv4/tcp_output.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv4/tcp_ipv4.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv4/tcp.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv4/syncookies.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv4/route.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv4/netfilter/ip_tables.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv4/netfilter/arp_tables.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv4/icmp.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv4/fib_trie.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv4/devinet.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/ipv4/arp.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/dccp/input.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/core/sock.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/core/skbuff.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/core/netpoll.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/core/neighbour.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/core/flow.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/core/filter.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/core/ethtool.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/core/drop_monitor.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/core/dev.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/can/bcm.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/bridge/br_stp_bpdu.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/bridge/br_input.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/bridge/br_fdb.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/bridge/br_device.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/Kconfig
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/9p/trans_fd.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/vmstat.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/vmscan.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/vmalloc.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/swapfile.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/swap.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/slub.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/slob.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/slab.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/shmem.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/quicklist.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/page_io.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/page_cgroup.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/page_alloc.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/oom_kill.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/nommu.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/mmu_context.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/mmap.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/mlock.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/memory.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mm/memcontrol.c
>
> =A0 =A0 =A0 =A0error: The following untracked working tree files would be=
 overwritten by checkout:
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0virt/kvm/xinterface.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security/bsdjail.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0samples/psrwlock/psrwlock_example.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0samples/psrwlock/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0samples/markers/test-multi.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0samples/markers/probe-example.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0samples/markers/marker-example.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0samples/markers/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_user_reg.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_user_reg.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_topsrv.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_topsrv.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_socket.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_ref.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_ref.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_port.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_port.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_node.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_node.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_netlink.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_net.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_net.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_name_table.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_name_table.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_name_distr.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_name_distr.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_msg.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_msg.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_link.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_link.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_handler.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_eth_media.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_discover.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_discover.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_dbg.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_dbg.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_core.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_core.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_cfgsrv.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_cfgsrv.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_bearer.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_bearer.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_bcast.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_bcast.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_addr.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/tipc/tipc_addr.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/l2tp/l2tp_ppp.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/l2tp/l2tp_netlink.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/l2tp/l2tp_ip.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/l2tp/l2tp_eth.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/l2tp/l2tp_debugfs.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/l2tp/l2tp_core.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/l2tp/l2tp_core.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/l2tp/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0net/l2tp/Kconfig
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/trap-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/syscall-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/rcu-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/pm-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/net-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/net-extended-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/mm-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/lockdep-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/kernel-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/jbd2-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/ipc-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/fs-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/ext4-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/block-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/probes/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-userspace-event.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-type-serializer.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-tracer.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-trace-control.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-statedump.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-serialize.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-relay-vfs.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-relay-splice.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-relay-select.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-relay-lockless.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-relay-lockless.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-relay-locked.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-relay-locked.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-relay-irqoff.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-relay-irqoff.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-relay-alloc.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-marker-control.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-kprobes.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-ftrace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-filter.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-core.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-channels.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/ltt-ascii.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ltt/Kconfig
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0lib/shm_signal_eventfd.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0lib/shm_signal.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0lib/psrwlock.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0lib/psrwlock.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0lib/psrwlock-latency-trace.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0lib/psrwlock-debug.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0lib/psrwlock-debug.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0lib/ioq.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/vbus.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/shm-ioq.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/map.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/map.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/devices/venet/venetdevice.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/devices/venet/tap.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/devices/venet/macvlan.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/devices/venet/device.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/devices/venet/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/devices/venet/Kconfig
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/devices/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/devices/Kconfig
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/devclass.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/core.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/connectors/null.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/connectors/kvm.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/connectors/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/connectors/Kconfig
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/config-ioctl.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/config-fs.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/client.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/attribute.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/vbus/Kconfig
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/trace/trace_kdb.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/trace/trace-clock.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/trace/trace-clock-32-to-64.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/trace/latency_hist.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/time/tsc-sync.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/rt.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/power/ksnap.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/marker.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/immediate.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/kms_hooks.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/kdb/kdb_support.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/kdb/kdb_private.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/kdb/kdb_main.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/kdb/kdb_keyboard.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/kdb/kdb_io.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/kdb/kdb_debugger.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/kdb/kdb_cmds
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/kdb/kdb_bt.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/kdb/kdb_bp.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/kdb/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/kdb/.gitignore
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/gdbstub.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/debug_core.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/debug_core.c
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel/debug/Makefile
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/trace/trap.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/trace/timer.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/trace/swap.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/trace/socket.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/trace/sched.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/trace/rcu.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/trace/pm.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/trace/page_alloc.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/trace/net.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/trace/lockdep.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/trace/kernel.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/trace/irq.h
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0include/
> =A0 =A0 =A0 =A0Aborting
> =A0 =A0 =A0 =A0warning: could not find ktypes/temp.scc
> =A0 =A0 =A0 =A0./0-wrs_meta-temp-33ebe31bfbabe8a7793524c85ea65707.sco: li=
ne 14: temp_68b329da9893e34099c7d8ad5cb9c940: command not found
> =A0 =A0 =A0 =A0ERROR. Could not locate meta series for common_pc_64-preem=
pt_rt
> =A0 =A0 =A0 =A0ERROR: Task failed: ('function do_patch failed', '/vol/1/d=
vhart/poky.git/build/tmp/work/qemux86-64-poky-linux/linux-yocto-rt-2.6.34+g=
it1+f49444f06875894389e640bcda6c3f6ceb1f0c3e_2+f49444f06875894389e640bcda6c=
3f6ceb1f0c3e-r0/temp/log.do_patch.30710')


This means you built a random temporary board and when the branch
validation steps kicked in, they declared that patches were not present,
and tried to re-push changes (which were really there) and hence caused
your failure.

It implies that your tools weren't up to date to me. Since I made changes
to allow it to locate the proper meta series adapting for the _ vs -
in the name.

I'll check the SRCREV I pushed for the tools and see if it is out of date.

>
>
> I look at look at the linux directory:
> =A0 =A0 =A0 =A0$ cd tmp/work/qemux86-64-poky-linux/linux-yocto-rt-2.6.34+=
git1+f49444f06875894389e640bcda6c3f6ceb1f0c3e_2+f49444f06875894389e640bcda6=
c3f6ceb1f0c3e-r0/linux/
> =A0 =A0 =A0 =A0$ git branch
> =A0 =A0 =A0 =A0 =A0arm_versatile_926ejs-standard
> =A0 =A0 =A0 =A0 =A0atom-pc-standard
> =A0 =A0 =A0 =A0 =A0beagleboard-standard
> =A0 =A0 =A0 =A0 =A0blacksand-standard
> =A0 =A0 =A0 =A0 =A0common_pc-preempt_rt
> =A0 =A0 =A0 =A0 =A0common_pc-standard
> =A0 =A0 =A0 =A0 =A0common_pc_64-preempt_rt
> =A0 =A0 =A0 =A0 =A0common_pc_64-standard
> =A0 =A0 =A0 =A0 =A0crownbay-standard
> =A0 =A0 =A0 =A0 =A0davinci-consolidated-2.6.34-merge
> =A0 =A0 =A0 =A0 =A0emenlow-standard
> =A0 =A0 =A0 =A0 =A0fsl-mpc8315e-rdb-standard
> =A0 =A0 =A0 =A0 =A0kgdb-2.6.34-base-merge
> =A0 =A0 =A0 =A0 =A0master
> =A0 =A0 =A0 =A0 =A0mti_malta32_be-standard
> =A0 =A0 =A0 =A0 =A0mti_malta32_le-standard
> =A0 =A0 =A0 =A0 =A0omap-base-merge
> =A0 =A0 =A0 =A0 =A0preempt_rt
> =A0 =A0 =A0 =A0 =A0qemu_ppc32-standard
> =A0 =A0 =A0 =A0 =A0routerstationpro-standard
> =A0 =A0 =A0 =A0 =A0rt-2.6.34-base-merge
> =A0 =A0 =A0 =A0 =A0standard
> =A0 =A0 =A0 =A0 =A0wrs_base
> =A0 =A0 =A0 =A0 =A0wrs_meta
> =A0 =A0 =A0 =A0 =A0wrs_meta-orig
> =A0 =A0 =A0 =A0* wrs_meta-temp
>
> This suggests to me that I'm not hitting the previous
> no-local-branches-after-clone issues, and that "common_pc-preempt_rt"
> does indeed exist. A quick review of the linux-2.6-wrs.git wrs_meta
> branch wrs directory suggests all the preempt-rt meta data exists and
> matches the expected naming.
>
> =A0 =A0 =A0 =A0$ find wrs -name "*preempt_rt*"
> =A0 =A0 =A0 =A0wrs/cfg/kernel-cache/bsp/common_pc/common_pc-preempt_rt.sc=
c
> =A0 =A0 =A0 =A0wrs/cfg/kernel-cache/bsp/common_pc_64/common_pc_64-preempt=
_rt.scc
> =A0 =A0 =A0 =A0wrs/cfg/kernel-cache/ktypes/preempt_rt
> =A0 =A0 =A0 =A0wrs/cfg/kernel-cache/ktypes/preempt_rt/preempt_rt.cfg
> =A0 =A0 =A0 =A0wrs/cfg/kernel-cache/ktypes/preempt_rt/preempt_rt.scc
> =A0 =A0 =A0 =A0wrs/cfg/meta/common_pc-preempt_rt-meta
> =A0 =A0 =A0 =A0wrs/cfg/meta/common_pc_64-preempt_rt-meta
> =A0 =A0 =A0 =A0wrs/patches/common_pc_64-preempt_rt
> =A0 =A0 =A0 =A0wrs/patches/preempt_rt
> =A0 =A0 =A0 =A0wrs/patches/common_pc-preempt_rt
>
>
> Any thoughts on what might be going wrong?

Just the tools :) Since I just built the same thing here and it worked. I'l=
l
grab your recipe and have a look at the SRCREV and hopefully send a
consolidated series ASAP.

Bruce

>
> --
> Darren Hart
> Yocto Linux Kernel
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

