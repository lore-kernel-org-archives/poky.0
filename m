Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42916E011B6
	for <poky@yoctoproject.org>; Fri, 12 Aug 2011 06:29:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7CDTe5M026639
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 12 Aug 2011 06:29:40 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 12 Aug 2011 06:29:40 -0700
Message-ID: <4E452AC1.6090507@windriver.com>
Date: Fri, 12 Aug 2011 09:29:37 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: v sailaja <vsailub4u@gmail.com>
References: <CAFt-coyFKC+d0qYtyO7_NZ-SZU16bbv+6geeXD+d4YCdSc5N1A@mail.gmail.com>	<CADkTA4MULaQ+cJS7K3eB1NhPiLo7s6Yb5_OO4a=tJTvxOy2=kg@mail.gmail.com>	<CAFt-coztLFfvmbB0fAY4Pmtcy-8AOaOvhqMg=JoQ5VKPWz-GeQ@mail.gmail.com>
	<CAFt-cowDU2Jru9DZp5AmmSHjpi6gDSgVWzrt=6n5ch=NJJ3XaQ@mail.gmail.com>
In-Reply-To: <CAFt-cowDU2Jru9DZp5AmmSHjpi6gDSgVWzrt=6n5ch=NJJ3XaQ@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Error for upgrading linux-yocto version from 3.0 to 3.0.1 for fishriver machine.
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
X-List-Received-Date: Fri, 12 Aug 2011 13:29:32 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-12 01:44 AM, v sailaja wrote:
>
> Hi Bruce,
>
> I replaced the version number 3.0 in the "linux-yocto_3.0.bb
> <http://linux-yocto_3.0.bb>" file as you said. I just tried.
> But still I am facing the same error.
> I Included the SRCREV s in the file
> "meta-intel/meta-fishriver/conf/machine/fishriver.conf "
>
> SRCREV_machine_pn-linux-yocto_fishriver ?=
> "c111526f70815ceff495bab07df64c0cee494d8a"
> SRCREV_meta_pn-linux-yocto_fishriver ?=

Just reading this now. You shouldn't need to update the SRCREVs
vs what's in that file already.

But the latest and greatest SRCREV for yocto/standard/fishriver
would be: ad13129a87957656c18584793abcee51de0e196a and for the
meta branch: 7782fc673afd6a1c742409896ae787560d96fce8

Bruce


> "55f9c40ff632d03c527d6a6ceddcda0a224587a6"
>
>
> Can you please tell me, Are these SRCREV s for "fishriver" machine for
> v3.0.1 kernel??
>
>
> On Thu, Aug 11, 2011 at 9:58 PM, Bruce Ashfield
> <bruce.ashfield@gmail.com <mailto:bruce.ashfield@gmail.com>> wrote:
>
>     On Thu, Aug 11, 2011 at 9:50 AM, v sailaja <vsailub4u@gmail.com
>     <mailto:vsailub4u@gmail.com>> wrote:
>      > Hi,
>      > I am trying to build the poky with linux-yocto kernel v3.0.1 for
>     fishriver
>      > machine.
>      >
>      > I modyfied the the linux-yocto_3.0.bb <http://linux-yocto_3.0.bb>
>     as follows.
>      >
>      >
>      > -----------ooooooooooooo----------------------------
>      > inherit kernel
>      > require linux-yocto.inc
>      > KMACHINE = "yocto/standard/base"
>      > KMACHINE_qemux86 = "yocto/standard/common-pc/base"
>      > KMACHINE_qemux86-64 = "yocto/standard/common-pc-64/base"
>      > KMACHINE_qemuppc = "yocto/standard/qemu-ppc32"
>      > KMACHINE_qemumips = "yocto/standard/mti-malta32-be"
>      > KMACHINE_qemuarm = "yocto/standard/arm-versatile-926ejs"
>      > KMACHINE_atom-pc = "yocto/standard/common-pc/atom-pc"
>      > KMACHINE_routerstationpro = "yocto/standard/routerstationpro"
>      > KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
>      > KMACHINE_beagleboard = "yocto/standard/beagleboard"
>      > KMACHINE_fishriver = "yocto/standard/fishriver"
>      > KBRANCH = ${KMACHINE}
>      > KMETA = meta
>      > LINUX_VERSION ?= "3.0.1"
>      > LINUX_VERSION_EXTENSION ?= "-yocto-${LINUX_KERNEL_TYPE}"
>      > PR = "r0"
>      > PV = "${LINUX_VERSION}+git${SRCPV}"
>      > SRCREV_FORMAT = "meta_machine"
>      > SRC_URI =
>      >
>     "git://git.pokylinux.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta
>     <http://git.pokylinux.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=$%7BKBRANCH%7D,meta;name=machine,meta>"
>      >
>      > COMPATIBLE_MACHINE =
>      >
>     "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|mpc8315e-rdb|routerstationpro|beagleboard)"
>      > # Functionality flags
>      > KERNEL_REVISION_CHECKING ?= "t"
>      > KERNEL_FEATURES="features/netfilter"
>      > KERNEL_FEATURES_append_qemux86=" cfg/sound"
>      > KERNEL_FEATURES_append_qemux86-64=" cfg/sound"
>      > YOCTO_KERNEL_META_DATA=t
>      > # Temporary fix for oprofile and latencytop on qemux86-64
>      > KERNEL_FEATURES_append_qemux86-64=" features/profiling"
>      > KERNEL_FEATURES_append_qemux86-64=" features/latencytop"
>      > # extra tasks
>      > addtask kernel_link_vmlinux after do_compile before do_install
>      > addtask validate_branches before do_patch after do_kernel_checkout
>      > addtask kernel_configcheck after do_configure before do_compile
>      > require linux-tools.inc
>      >
>      > -----------------------------end of the file-----------------------
>      >
>      >
>      > Included the SRCREV s in the file
>      > "meta-intel/meta-fishriver/conf/machine/fishriver.conf "
>      > SRCREV_machine_pn-linux-yocto_fishriver ?=
>      > "c111526f70815ceff495bab07df64c0cee494d8a"
>      > SRCREV_meta_pn-linux-yocto_fishriver ?=
>      > "55f9c40ff632d03c527d6a6ceddcda0a224587a6"
>      >
>      >
>      > Source has downloaded properly. But I am getting an error in
>     "do_patch".
>      > If i do the "git status" in
>      >
>     "build/tmp/work/fishriver-poky-linux/linux-yocto-3.0.1+git2+55f9c40ff632d03c527d6a6ceddcda0a224587a6_2+c111526f70815ceff495bab07df64c0cee494d8a-r0/linux/
>      > "
>      > It is showing many files are modified and deleted.
>      >
>      > Please find the attached files for "run.do_patch", "log.do_patch"
>     and "git
>      > status "
>      >
>      > Please Can anyone tell me the steps to upgrade the linux-yocto
>     kernel to
>      > v3.0.1.
>
>     The upgrade should already be in place. I pushed out that set of updates
>     last week.
>
>     Note: as part of that update, I explicitly mentioned that I wasn't
>     changing
>     the base version to 3.0.1 in the files, since we hand't been doing that
>     for 2.6.34 or 2.6.37.
>
>     I'm about to send another update that adds preempt-rt support on top of
>     3.0.1, so you might want to just wait and pickup those changes as well.
>
>
>     The error that you are seeing is because the wrong branch was checked
>     out, and hence you end up with conflicting files during the merge.
>
>     Bruce
>
>      >
>      >
>      >
>      >
>      > --
>      > Thanks & Regards,
>      > SAI
>      >
>      >
>      > _______________________________________________
>      > poky mailing list
>      > poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>      > https://lists.yoctoproject.org/listinfo/poky
>      >
>      >
>
>
>
>     --
>     "Thou shalt not follow the NULL pointer, for chaos and madness await
>     thee at its end"
>
>
>
>
> --
> Thanks & Regards,
> SAI
>
>
>
>
> --
> Thanks & Regards,
> SAI
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


