Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F707E004E4
	for <poky@yoctoproject.org>; Thu, 22 Sep 2011 07:50:49 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p8MEojLs009039
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 22 Sep 2011 07:50:45 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 22 Sep 2011 07:50:44 -0700
Message-ID: <4E7B4B43.5020205@windriver.com>
Date: Thu, 22 Sep 2011 10:50:43 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110918 Thunderbird/7.0
MIME-Version: 1.0
To: chinmaya hoshing <cahoshing@gmail.com>
References: <CAMTw45BRK9H5THCL+h33KPMrZh8EgAJnQ3sO5QVoiz822Xf-bQ@mail.gmail.com>
	<CADkTA4PVKxWW1f1CmfXD3sKd+W0+Vn3JGOV6TeL9PVS+VrWu5A@mail.gmail.com>
	<CADkTA4PXcrk=b92UEPS72Byd5ine_ZRKJs7bzohfZfKBUbzVmw@mail.gmail.com>
	<1316185585.20858.29.camel@ted> <4E7369B7.7080201@mlbassoc.com>
	<CAMTw45Di1_n0N_bOno6_tms0DMpUovWPJ-CbKPiFaptXoE3B8A@mail.gmail.com>
	<CADkTA4M97n2SC7SbMFBowgg9KL539J+sWpjpCH79PNvFSWur4w@mail.gmail.com>
	<CAMTw45DzQ2-3tdD5pyMA2-RhCuZaAtKWxCvoJb07piW_s9zqvg@mail.gmail.com>
	<CADkTA4M1qKkkEYOEm6KU6SQ9ChmcQ+55T7Fnrs3tVimigmMNmw@mail.gmail.com>
	<CAMTw45C-hpYzBuyt65FmRxM6iffwpvJ3-37mA_e6TcRUTOVsKQ@mail.gmail.com>
	<4E7A0C90.8050505@windriver.com>
	<CAMTw45DdLUXtG1BxHgVSiun04Ticd_Kxo+B-0ESCA6gMEgd=9g@mail.gmail.com>
In-Reply-To: <CAMTw45DdLUXtG1BxHgVSiun04Ticd_Kxo+B-0ESCA6gMEgd=9g@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Getting error in linux-yocto kernel during build.
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
X-List-Received-Date: Thu, 22 Sep 2011 14:50:50 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-09-22 04:39 AM, chinmaya hoshing wrote:
>
>
> On Wed, Sep 21, 2011 at 9:40 PM, Bruce Ashfield
> <bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>> wrote:
>
>     On 11-09-21 10:03 AM, chinmaya hoshing wrote:
>
>
>         Hi ,
>
>         I am not doing any changes to kernel, following are the thing
>         what I did :-
>
>         1. I cloned poky from ( git://git.yoctoproject.org/__poky
>         <http://git.yoctoproject.org/poky> ) and using
>         bernard
>         <http://git.yoctoproject.org/__cgit/cgit.cgi/poky/log/?h=__bernard
>         <http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?h=bernard>>
>
>         branch.
>         2. I pull some packages from openembeded and also create my own.
>         3. I maintained git repository for my poky source and did git
>         commit for
>         all for my changes.
>
>
>     > >>Are you talking about committing kernel changes here ? Or changes
>     > >>to layers and packages ?
>
> No I am not Commiting kernel changes here ,I am commiting packages which
> are pulled in poky source
>
> eg-
> ${POKY_SOURCE}/
> (it contains) bitbake LICENSE meta-intel README build meta meta-rt
> README.hardware documentation meta-demoapps poky-init-build-env scripts
> Before modifying the linux-yocto recipe the source extracted in
> ${POKY_SOURCE}/build/tmp/work/fishriver-poky-linux/linux-yocto-3.0+git1+7782fc673afd6a1c742409896ae787560d96fce8_1+c111526f70815ceff495bab07df64c0cee494d8a-r0/
>
> linux-fishriver-standard-build
> (it contains) : arch block crypto drivers firmware fs include init ipc
> kernel lib Makefile mm modules.builtin modules.order Module.symvers net
> scripts
> security sound source System.map usr vmlinux vmlinux.o
>
> After modifying the linux-yocto recipe (for local server) , I observer
> that the source instead of being extracted to the above mentioned path
> in WORKDIR is being extracted in ${POKY_SOURCE} itself
> ${POKY_SOURCE}/
> (it contains): arch Documentation Kbuild scripts bitbake drivers Kconfig
> security block firmware kernel sound build fs lib net tools COPYING include
> MAINTAINERS README usr CREDITS init Makefile REPORTING-BUGS virt crypto
> ipc meta samples
> This causes the .git folder present in kernel source to overwrite my
> .git directory present in ${POKY_SOURCE} resulting in loss of my git commits

Aha. It is now clear to me. This is completely different than
what I was thinking.

This (to me) looks to be in the middle of the fetcher code, so we
need someone with more knowledge in this area to comment. But the
only way I can see that happening is is ${B} ends up pointing
to the wrong location.

Bruce

> I made following changes to linux-yocto_git.bb
> <http://linux-yocto_git.bb> as follows :-
> -git://git.pokylinux.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=$%7BKBRANCH%7D,meta;name=machine,meta
> <http://git.pokylinux.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=$%7BKBRANCH%7D,meta;name=machine,meta>
> +
> git://192.168.128.11/linux-yocto-3.0.git;protocol=git;nocheckout=1;branch=$%7BKBRANCH%7D,meta;name=machine,meta
> <http://192.168.128.11/linux-yocto-3.0.git;protocol=git;nocheckout=1;branch=$%7BKBRANCH%7D,meta;name=machine,meta>
>
>         4. I created a local git and ftp repo on my local machine and
>         modify the
>         related recipes (SRC_URI ) as I don't want to waste my band width by
>         downloaing packages while building again and again.
>
>
>         Now I have a local the git repository for linux-yocto from
>         git://git.yoctoproject.org/__linux-yocto-3.0
>         <http://git.yoctoproject.org/linux-yocto-3.0>
>         <git://git.yoctoproject.org/__linux-yocto-3.0
>         <http://git.yoctoproject.org/linux-yocto-3.0> >
>         Now I modify the linux-yocto_git.bb <http://linux-yocto_git.bb>
>         <http://linux-yocto_git.bb> as
>
>         follows :-
>         -
>         git://git.pokylinux.org/linux-__yocto-3.0;protocol=git;__nocheckout=1;branch=$%__7BKBRANCH%7D,meta;name=__machine,meta
>         <http://git.pokylinux.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=$%7BKBRANCH%7D,meta;name=machine,meta>
>         <http://git.pokylinux.org/__linux-yocto-3.0;protocol=git;__nocheckout=1;branch=$%__7BKBRANCH%7D,meta;name=__machine,meta
>         <http://git.pokylinux.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=$%7BKBRANCH%7D,meta;name=machine,meta>>
>
>         +
>         git://192.168.128.11/linux-__yocto-3.0.git;protocol=git;__nocheckout=1;branch=$%__7BKBRANCH%7D,meta;name=__machine,meta
>         <http://192.168.128.11/linux-yocto-3.0.git;protocol=git;nocheckout=1;branch=$%7BKBRANCH%7D,meta;name=machine,meta>
>         <http://192.168.128.11/linux-__yocto-3.0.git;protocol=git;__nocheckout=1;branch=$%__7BKBRANCH%7D,meta;name=__machine,meta
>         <http://192.168.128.11/linux-yocto-3.0.git;protocol=git;nocheckout=1;branch=$%7BKBRANCH%7D,meta;name=machine,meta>>
>
>
>         Every package is building fine even u-boot but, while building
>         linux-yocto I got error as "No such file or directory
>         update-modules,
>         scripts/bitbake " ( some more dirs ).
>
>         When I examine the source tree for poky I found out that linux-yocto
>         source is fetched in side the poky source and modifying the poky
>         source
>         tree.
>
>
>     > >>I'm not following what you are describing here. Linux-yocto works
>     largely
>     > >>like any other git based recipe. It works from the copy of the repo
>     > >>that is created in downloads/git2 and does a slightly different
>     > >>instantiation into ${B} to ensure that all branches are local. If
>     > >>you don't have the right code in in the downloaded git repo, or a
>     > >>tarball created from it, you won't see it in your build.
>
>
>
>         The modification also removing the poky recipes directories like
>         recipes-multimedia recipes-sato and so on .
>
>         I am also attaching the tree for both i.e original poky tree and
>         after
>         pulling linux-yocto poky tree
>
>
>     > >>Can you clarify what this is showing ? missing changes you
>     > >>made to the kernel ? Perhaps a diff would illustrate it better.
>
>     Bruce
>
>
>
>         Regards
>         Chinmaya
>
>         On Wed, Sep 21, 2011 at 6:00 PM, Bruce Ashfield
>         <bruce.ashfield@gmail.com <mailto:bruce.ashfield@gmail.com>
>         <mailto:bruce.ashfield@gmail.__com
>         <mailto:bruce.ashfield@gmail.com>>> wrote:
>
>         On Wed, Sep 21, 2011 at 12:49 AM, chinmaya hoshing
>         <cahoshing@gmail.com <mailto:cahoshing@gmail.com>
>         <mailto:cahoshing@gmail.com <mailto:cahoshing@gmail.com>>> wrote:
>          > Hi ,
>          > I have setup a git server that is clone of linux-yocto-3.0 from
>          > git://git.yoctoproject.org/__linux-yocto-3.0
>         <http://git.yoctoproject.org/linux-yocto-3.0>
>         <http://git.yoctoproject.org/__linux-yocto-3.0
>         <http://git.yoctoproject.org/linux-yocto-3.0>> repository.
>
>
>         That's good! So where are you pushing your changes ? To that
>         repo ? Are
>         you updating the SRCREV or using AUTOREV in your local layers ?
>         I use
>         this workflow everyday, so it does work. I just need to understand
>         where you
>         are putting your changes, and then we'll know why you aren't
>         seeing them
>         on subsequent builds (or we'll have more ideas about where to look).
>
>         Cheers,
>
>         Bruce
>
>          > Regards
>          > C Hoshing
>          >
>          > On Tue, Sep 20, 2011 at 7:24 PM, Bruce Ashfield
>         <bruce.ashfield@gmail.com <mailto:bruce.ashfield@gmail.com>
>         <mailto:bruce.ashfield@gmail.__com
>         <mailto:bruce.ashfield@gmail.com>>>
>
>          > wrote:
>          >>
>          >> On Tue, Sep 20, 2011 at 5:51 AM, chinmaya hoshing
>         <cahoshing@gmail.com <mailto:cahoshing@gmail.com>
>         <mailto:cahoshing@gmail.com <mailto:cahoshing@gmail.com>>>
>
>          >> wrote:
>          >> > Hi ,
>          >> > I have set up a git server for linux-yocto.
>          >> > Following is my recipe :
>          >> > require linux-yocto.inc
>          >> > KMACHINE = "yocto/standard/base"
>          >> > KMACHINE_qemux86 = "yocto/standard/common-pc/__base"
>          >> > KMACHINE_qemux86-64 = "yocto/standard/common-pc-64/__base"
>          >> > KMACHINE_qemuppc = "yocto/standard/qemu-ppc32"
>          >> > KMACHINE_qemumips = "yocto/standard/mti-malta32-__be"
>          >> > KMACHINE_qemuarm = "yocto/standard/arm-versatile-__926ejs"
>          >> > KMACHINE_atom-pc = "yocto/standard/common-pc/__atom-pc"
>          >> > KMACHINE_routerstationpro =
>         "yocto/standard/__routerstationpro"
>          >> > KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-__rdb"
>          >> > KMACHINE_beagleboard = "yocto/standard/beagleboard"
>          >> > KMACHINE_fishriver = "yocto/standard/fishriver"
>          >> > KBRANCH = ${KMACHINE}
>          >> > KMETA = meta
>          >> > LINUX_VERSION ?= "3.0"
>          >> > LINUX_VERSION_EXTENSION ?= "-yocto-${LINUX_KERNEL_TYPE}"
>          >> > PR = "r0"
>          >> > #PV = "${LINUX_VERSION}+git${SRCPV}"
>          >> > #SRCREV_FORMAT = "meta_machine"
>          >> > SRC_URI =
>          >> >
>          >> >
>         "git://xxx.xxx.xxx.xx/linux-__yocto-3.0.git;protocol=git;__nocheckout=1;branch=$%__7BKBRANCH%7D,meta;name=__machine,meta"
>          >> >
>          >> > COMPATIBLE_MACHINE =
>          >> >
>          >> >
>         "(qemuarm|qemux86|qemuppc|__qemumips|qemux86-64|mpc8315e-__rdb|routerstationpro|__beagleboard)"
>          >> > # Functionality flags
>          >> > KERNEL_REVISION_CHECKING ?= "t"
>          >> > KERNEL_FEATURES="features/__netfilter"
>          >> > KERNEL_FEATURES_append___qemux86=" cfg/sound"
>          >> > KERNEL_FEATURES_append___qemux86-64=" cfg/sound"
>          >> > YOCTO_KERNEL_META_DATA=t
>          >> > # Temporary fix for oprofile and latencytop on qemux86-64
>          >> > KERNEL_FEATURES_append___qemux86-64=" features/profiling"
>          >> > KERNEL_FEATURES_append___qemux86-64=" features/latencytop"
>          >> > # extra tasks
>          >> > addtask kernel_link_vmlinux after do_compile before do_install
>          >> > addtask validate_branches before do_patch after
>         do_kernel_checkout
>          >> > addtask kernel_configcheck after do_configure before
>         do_compile
>          >> > require linux-tools.inc
>          >> >
>          >> >
>          >> > But still I am getting the same result as before . My
>         previous git
>          >> > commits
>          >> > in poky source are flashed out , also the only recipe
>         remains in
>          >> > meta/recipe-kernel/ is linux .
>          >>
>          >> Just so I'm clear here. Are you still working with tarballs
>         of the
>          >> source, or have
>          >> you setup a git server that is a clone of the
>         linux-yocto-3.0 (as an
>          >> example) tree ?
>          >>
>          >> Where are you putting your changes in this scenario ?
>          >>
>          >> Bruce
>          >>
>          >> >
>          >> > Regards
>          >> > C Hoshing
>          >> >
>          >> > On Fri, Sep 16, 2011 at 8:52 PM, Gary Thomas
>         <gary@mlbassoc.com <mailto:gary@mlbassoc.com>
>         <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>> wrote:
>          >> >>
>          >> >> On 2011-09-16 09:06, Richard Purdie wrote:
>          >> >>>
>          >> >>> On Fri, 2011-09-16 at 10:35 -0400, Bruce Ashfield wrote:
>          >> >>>>
>          >> >>>> On Fri, Sep 16, 2011 at 10:24 AM, Bruce Ashfield
>          >> >>>> <bruce.ashfield@gmail.com <mailto:bruce.ashfield@gmail.com>
>         <mailto:bruce.ashfield@gmail.__com
>         <mailto:bruce.ashfield@gmail.com>>> wrote:
>          >> >>>>>
>          >> >>>>> On Fri, Sep 16, 2011 at 8:38 AM, chinmaya
>          >> >>>>> hoshing<cahoshing@gmail.com
>         <mailto:cahoshing@gmail.com> <mailto:cahoshing@gmail.com
>         <mailto:cahoshing@gmail.com>>>
>
>          >> >>>>> wrote:
>          >> >>>>>>
>          >> >>>>>> Hi ,
>          >> >>>>>> I am building poky-build minimal live image for fishriver
>         machine
>          >> >>>>>> on
>          >> >>>>>> 64 bit
>          >> >>>>>> host machine.
>          >> >>>>>> As I am having limited internet band-width, so I have
>         identified
>          >> >>>>>> all
>          >> >>>>>> the
>          >> >>>>>> dependent packages and setup a Apache server on my local
>         system so
>          >> >>>>>> that I
>          >> >>>>>> can redirect the SRC_URI of all the packages to my local
>         server.
>          >> >>>>>> I have changed the related recipes to build minimal live
>         image,
>          >> >>>>>> and
>          >> >>>>>> modify
>          >> >>>>>> bitbake.conf to add
>         LOCAL_MIRROR="xxx.xxx.xxx.xxx/__packages" , in
>          >> >>>>>> side
>          >> >>>>>> packages I have tars which was present "build/download"
>         folder.
>          >> >>>>>> While building linux-yocto, fetch and unpack was done but
>         during
>          >> >>>>>> kernel
>          >> >>>>>> checkout whatever git commits I have done previously in
>         poky source
>          >> >>>>>> were
>          >> >>>>>> flashed out (lost), also the only recipe remains in
>          >> >>>>>> meta/recipe-kernel/ is
>          >> >>>>>> linux .
>          >> >>>>>>
>          >> >>>>>> Following are the changes made in
>          >> >>>>>> meta/recipes-kernel/linux/linu__x-yocto_git.bb
>         <http://linux-yocto_git.bb>
>         <http://linux-yocto_git.bb>
>
>          >> >>>>>> #SRCREV_FORMAT = "meta_machine"
>          >> >>>>>> SRC_URI = "${LOCAL_MIRROR}/linux-yocto-__3.0-3.0.tar.bz2"
>          >> >>>>>> // This tar file I took from
>          >> >>>>>>
>          >> >>>>>>
>          >> >>>>>>
>         http://git.yoctoproject.org/__cgit/cgit.cgi/linux-yocto-3.0/__snapshot/linux-yocto-3.0-3.0.__tar.bz2
>         <http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/snapshot/linux-yocto-3.0-3.0.tar.bz2>
>          >> >>>>>> PV = "${LINUX_VERSION}"
>          >> >>>>>> In file
>         meta-intel/meta-fishriver/__conf/machine/fishriver.conf I
>          >> >>>>>> modified
>          >> >>>>>> PREFERRED_VERSION_linux-yocto = "3.0" (which was
>          >> >>>>>> PREFERRED_VERSION_linux-yocto = "3.0+git%" )
>          >> >>>>>>
>          >> >>>>>> Can any one help me to find the solution that if I had to
>         pull
>          >> >>>>>> linux
>          >> >>>>>> kernel
>          >> >>>>>> source from tar file or such and not from git repository.
>         What
>          >> >>>>>> things
>          >> >>>>>> I have
>          >> >>>>>> to do.
>          >> >>>>>
>          >> >>>>> The linux-yocto recipes are designed from the ground up to
>         work on a
>          >> >>>>> git
>          >> >>>>> based repository, and there's really no way to get around
>         that fact
>          >> >>>>> (and no
>          >> >>>>> plans to make any changes in this area).
>          >> >>>>
>          >> >>>> Thinking further about this, if the tgz actually was just a
>         tarball
>          >> >>>> of
>          >> >>>> the git
>          >> >>>> repositories (including the git blobs), it could work.
>          >> >>>
>          >> >>> This is exactly what we use behind the scenes for mirroring
>         the git
>          >> >>> repositories so this should work. It should be possible to
>         use our
>          >> >>> existing PREMIRROR code to avoid having to rewrite
>         individual recipes
>          >> >>> though.
>          >> >>>
>          >> >>> It will firstly unpack the tarball, then access whether the
>         revisions
>          >> >>> it
>          >> >>> needs are present. If they're not, it will then (and only
>         then) try
>          >> >>> and
>          >> >>> fetch them over the network. If the tarball is complete
>         it will
>          >> >>> therefore not touch the network. If its incomplete it will
>         only fetch
>          >> >>> the different (delta).
>          >> >>
>          >> >> This does work as advertised - I use it exclusively. I have a
>         local
>          >> >> package cache which I use with PREMIRROR and I set
>         BB_NO_NETWORK to
>          >> >> prove/protect that no network access is required.
>          >> >>
>          >> >> --
>          >> >>
>         ------------------------------__------------------------------
>          >> >> Gary Thomas | Consulting for the
>          >> >> MLB Associates | Embedded world
>          >> >>
>         ------------------------------__------------------------------
>          >> >> _________________________________________________
>          >> >> poky mailing list
>          >> >> poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>         <mailto:poky@yoctoproject.org <mailto:poky@yoctoproject.org>>
>
>          >> >> https://lists.yoctoproject.__org/listinfo/poky
>         <https://lists.yoctoproject.org/listinfo/poky>
>          >> >
>          >> >
>          >> > _________________________________________________
>          >> > poky mailing list
>          >> > poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>         <mailto:poky@yoctoproject.org <mailto:poky@yoctoproject.org>>
>
>          >> > https://lists.yoctoproject.__org/listinfo/poky
>         <https://lists.yoctoproject.org/listinfo/poky>
>          >> >
>          >> >
>          >>
>          >>
>          >>
>          >> --
>          >> "Thou shalt not follow the NULL pointer, for chaos and
>         madness await
>          >> thee at its end"
>          >
>          >
>
>
>
>         --
>         "Thou shalt not follow the NULL pointer, for chaos and madness await
>         thee at its end"
>
>
>
>
>         _________________________________________________
>         poky mailing list
>         poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>         https://lists.yoctoproject.__org/listinfo/poky
>         <https://lists.yoctoproject.org/listinfo/poky>
>
>
>


