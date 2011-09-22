Return-Path: <cahoshing@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 298A3E0051B
	for <poky@yoctoproject.org>; Thu, 22 Sep 2011 01:39:26 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iabz7 with SMTP id z7so4060656iab.35
	for <poky@yoctoproject.org>; Thu, 22 Sep 2011 01:39:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=eJ4pqiAJ0N5IIeGskGpen34coi5rMK+vq0tLXPYLkzw=;
	b=FSA0YCZYNHQdR4NkU18NMU63akhtp7CapOlniI2063srjbNhDTcsyQCmGPfE2kpXVC
	I92Hj6hvBYQVpSiJpUhAT3Dgsx9BRQn6zer2dS898i1DDZ8gAEC20TdpwZir1IfnrP1I
	SHPZDA8/BtrZ/eWNK5XSEBfmHfandHh24liwE=
MIME-Version: 1.0
Received: by 10.231.40.223 with SMTP id l31mr3288415ibe.60.1316680762130; Thu,
	22 Sep 2011 01:39:22 -0700 (PDT)
Received: by 10.231.208.14 with HTTP; Thu, 22 Sep 2011 01:39:22 -0700 (PDT)
In-Reply-To: <4E7A0C90.8050505@windriver.com>
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
Date: Thu, 22 Sep 2011 14:09:22 +0530
Message-ID: <CAMTw45DdLUXtG1BxHgVSiun04Ticd_Kxo+B-0ESCA6gMEgd=9g@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
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
X-List-Received-Date: Thu, 22 Sep 2011 08:39:26 -0000
Content-Type: multipart/alternative; boundary=0015175cfe481c039d04ad83a131

--0015175cfe481c039d04ad83a131
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Sep 21, 2011 at 9:40 PM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

> On 11-09-21 10:03 AM, chinmaya hoshing wrote:
>
>>
>> Hi ,
>>
>> I am not doing any changes to kernel, following are the thing what I did
>> :-
>>
>> 1. I cloned poky from ( git://git.yoctoproject.org/**poky<http://git.yoctoproject.org/poky>) and using
>> bernard <http://git.yoctoproject.org/**cgit/cgit.cgi/poky/log/?h=**
>> bernard <http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?h=bernard>>
>>
>> branch.
>> 2. I pull some packages from openembeded and also create my own.
>> 3. I maintained git repository for my poky source and did git commit for
>> all for my changes.
>>
>
> >>>Are you talking about committing kernel changes here ? Or changes
> >>>to layers and packages ?
>

         No I am not Commiting kernel changes here ,I am commiting packages
which are pulled in poky source

         eg-
          ${POKY_SOURCE}/
     (it contains) bitbake  LICENSE    meta-intel  README  build meta
meta-rt  README.hardware   documentation  meta-demoapps  poky-init-build-env
 scripts

         Before modifying the linux-yocto recipe the source extracted in
        ${POKY_SOURCE}/build/tmp/work/fishriver-poky-linux/linux-yocto-3.0+git1+7782fc673afd6a1c742409896ae787560d96fce8_1+c111526f70815ceff495bab07df64c0cee494d8a-r0/

     linux-fishriver-standard-build
     (it contains) : arch  block  crypto  drivers  firmware  fs  include
 init  ipc  kernel  lib  Makefile  mm  modules.builtin  modules.order
 Module.symvers  net  scripts
                     security  sound  source  System.map  usr  vmlinux
 vmlinux.o


        After modifying the linux-yocto recipe (for local server)  , I
observer  that the source instead of being extracted to the above mentioned
path in WORKDIR is being extracted in ${POKY_SOURCE} itself
        ${POKY_SOURCE}/
    (it contains): arch Documentation  Kbuild   scripts bitbake  drivers
 Kconfig  security block  firmware  kernel sound  build  fs  lib  net
 tools COPYING  include
                   MAINTAINERS  README usr CREDITS  init  Makefile
REPORTING-BUGS
 virt  crypto   ipc  meta samples

    This causes the .git folder present in kernel source to overwrite my
.git directory present in ${POKY_SOURCE} resulting in loss of my git commits


       I made following changes to linux-yocto_git.bb  as follows :-
       -   git://
git.pokylinux.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=$%7BKBRANCH%7D,meta;name=machine,meta
      +   git://
192.168.128.11/linux-yocto-3.0.git;protocol=git;nocheckout=1;branch=$%7BKBRANCH%7D,meta;name=machine,meta





>  4. I created a local git and ftp repo on my local machine and modify the
>> related recipes (SRC_URI ) as I don't want to waste my band width by
>> downloaing packages while building again and again.
>>
>>
>> Now I have a local the git repository for linux-yocto from
>> git://git.yoctoproject.org/**linux-yocto-3.0<http://git.yoctoproject.org/linux-yocto-3.0>
>> <git://git.yoctoproject.org/**linux-yocto-3.0<http://git.yoctoproject.org/linux-yocto-3.0>>
>> Now I modify the linux-yocto_git.bb <http://linux-yocto_git.bb> as
>>
>> follows :-
>> -
>> git://git.pokylinux.org/linux-**yocto-3.0;protocol=git;**
>> nocheckout=1;branch=$%**7BKBRANCH%7D,meta;name=**machine,meta<http://git.pokylinux.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=$%7BKBRANCH%7D,meta;name=machine,meta>
>>  <http://git.pokylinux.org/**linux-yocto-3.0;protocol=git;**
>> nocheckout=1;branch=$%**7BKBRANCH%7D,meta;name=**machine,meta<http://git.pokylinux.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=$%7BKBRANCH%7D,meta;name=machine,meta>
>> >
>>
>> +
>> git://192.168.128.11/linux-**yocto-3.0.git;protocol=git;**
>> nocheckout=1;branch=$%**7BKBRANCH%7D,meta;name=**machine,meta<http://192.168.128.11/linux-yocto-3.0.git;protocol=git;nocheckout=1;branch=$%7BKBRANCH%7D,meta;name=machine,meta>
>>  <http://192.168.128.11/linux-**yocto-3.0.git;protocol=git;**
>> nocheckout=1;branch=$%**7BKBRANCH%7D,meta;name=**machine,meta<http://192.168.128.11/linux-yocto-3.0.git;protocol=git;nocheckout=1;branch=$%7BKBRANCH%7D,meta;name=machine,meta>
>> >
>>
>>
>> Every package is building fine even u-boot but, while building
>> linux-yocto I got error as "No such file or directory update-modules,
>> scripts/bitbake " ( some more dirs ).
>>
>> When I examine the source tree for poky I found out that linux-yocto
>> source is fetched in side the poky source and modifying the poky source
>> tree.
>>
>
> >>>I'm not following what you are describing here. Linux-yocto works
> largely
> >>>like any other git based recipe. It works from the copy of the repo
> >>>that is created in downloads/git2 and does a slightly different
> >>>instantiation into ${B} to ensure that all branches are local. If
> >>>you don't have the right code in in the downloaded git repo, or a
> >>>tarball created from it, you won't see it in your build.
>
>
>
>> The modification also removing the poky recipes directories like
>> recipes-multimedia recipes-sato and so on .
>>
>> I am also attaching the tree for both i.e original poky tree and after
>> pulling linux-yocto poky tree
>>
>
> >>>Can you clarify what this is showing ? missing changes you
> >>>made to the kernel ? Perhaps a diff would illustrate it better.
>
> Bruce
>
>
>>
>> Regards
>> Chinmaya
>>
>> On Wed, Sep 21, 2011 at 6:00 PM, Bruce Ashfield
>> <bruce.ashfield@gmail.com <mailto:bruce.ashfield@gmail.**com<bruce.ashfield@gmail.com>>>
>> wrote:
>>
>>    On Wed, Sep 21, 2011 at 12:49 AM, chinmaya hoshing
>>    <cahoshing@gmail.com <mailto:cahoshing@gmail.com>> wrote:
>>     > Hi ,
>>     > I have setup a git server that is clone of linux-yocto-3.0 from
>>     > git://git.yoctoproject.org/**linux-yocto-3.0<http://git.yoctoproject.org/linux-yocto-3.0>
>>    <http://git.yoctoproject.org/**linux-yocto-3.0<http://git.yoctoproject.org/linux-yocto-3.0>>
>> repository.
>>
>>
>>    That's good! So where are you pushing your changes ? To that repo ? Are
>>    you updating the SRCREV or using AUTOREV in your local layers ? I use
>>    this workflow everyday, so it does work. I just need to understand
>>    where you
>>    are putting your changes, and then we'll know why you aren't seeing
>> them
>>    on subsequent builds (or we'll have more ideas about where to look).
>>
>>    Cheers,
>>
>>    Bruce
>>
>>     > Regards
>>     > C Hoshing
>>     >
>>     > On Tue, Sep 20, 2011 at 7:24 PM, Bruce Ashfield
>>    <bruce.ashfield@gmail.com <mailto:bruce.ashfield@gmail.**com<bruce.ashfield@gmail.com>
>> >>
>>
>>     > wrote:
>>     >>
>>     >> On Tue, Sep 20, 2011 at 5:51 AM, chinmaya hoshing
>>    <cahoshing@gmail.com <mailto:cahoshing@gmail.com>>
>>
>>     >> wrote:
>>     >> > Hi ,
>>     >> > I have set up a git server for linux-yocto.
>>     >> > Following is my recipe :
>>     >> > require linux-yocto.inc
>>     >> > KMACHINE = "yocto/standard/base"
>>     >> > KMACHINE_qemux86 = "yocto/standard/common-pc/**base"
>>     >> > KMACHINE_qemux86-64 = "yocto/standard/common-pc-64/**base"
>>     >> > KMACHINE_qemuppc = "yocto/standard/qemu-ppc32"
>>     >> > KMACHINE_qemumips = "yocto/standard/mti-malta32-**be"
>>     >> > KMACHINE_qemuarm = "yocto/standard/arm-versatile-**926ejs"
>>     >> > KMACHINE_atom-pc = "yocto/standard/common-pc/**atom-pc"
>>     >> > KMACHINE_routerstationpro = "yocto/standard/**routerstationpro"
>>     >> > KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-**rdb"
>>     >> > KMACHINE_beagleboard = "yocto/standard/beagleboard"
>>     >> > KMACHINE_fishriver = "yocto/standard/fishriver"
>>     >> > KBRANCH = ${KMACHINE}
>>     >> > KMETA = meta
>>     >> > LINUX_VERSION ?= "3.0"
>>     >> > LINUX_VERSION_EXTENSION ?= "-yocto-${LINUX_KERNEL_TYPE}"
>>     >> > PR = "r0"
>>     >> > #PV = "${LINUX_VERSION}+git${SRCPV}"
>>     >> > #SRCREV_FORMAT = "meta_machine"
>>     >> > SRC_URI =
>>     >> >
>>     >> >
>>    "git://xxx.xxx.xxx.xx/linux-**yocto-3.0.git;protocol=git;**
>> nocheckout=1;branch=$%**7BKBRANCH%7D,meta;name=**machine,meta"
>>     >> >
>>     >> > COMPATIBLE_MACHINE =
>>     >> >
>>     >> >
>>    "(qemuarm|qemux86|qemuppc|**qemumips|qemux86-64|mpc8315e-**
>> rdb|routerstationpro|**beagleboard)"
>>     >> > # Functionality flags
>>     >> > KERNEL_REVISION_CHECKING ?= "t"
>>     >> > KERNEL_FEATURES="features/**netfilter"
>>     >> > KERNEL_FEATURES_append_**qemux86=" cfg/sound"
>>     >> > KERNEL_FEATURES_append_**qemux86-64=" cfg/sound"
>>     >> > YOCTO_KERNEL_META_DATA=t
>>     >> > # Temporary fix for oprofile and latencytop on qemux86-64
>>     >> > KERNEL_FEATURES_append_**qemux86-64=" features/profiling"
>>     >> > KERNEL_FEATURES_append_**qemux86-64=" features/latencytop"
>>     >> > # extra tasks
>>     >> > addtask kernel_link_vmlinux after do_compile before do_install
>>     >> > addtask validate_branches before do_patch after
>> do_kernel_checkout
>>     >> > addtask kernel_configcheck after do_configure before do_compile
>>     >> > require linux-tools.inc
>>     >> >
>>     >> >
>>     >> > But still I am getting the same result as before . My previous
>> git
>>     >> > commits
>>     >> > in poky source are flashed out , also the only recipe remains in
>>     >> > meta/recipe-kernel/ is linux .
>>     >>
>>     >> Just so I'm clear here. Are you still working with tarballs of the
>>     >> source, or have
>>     >> you setup a git server that is a clone of the linux-yocto-3.0 (as
>> an
>>     >> example) tree ?
>>     >>
>>     >> Where are you putting your changes in this scenario ?
>>     >>
>>     >> Bruce
>>     >>
>>     >> >
>>     >> > Regards
>>     >> > C Hoshing
>>     >> >
>>     >> > On Fri, Sep 16, 2011 at 8:52 PM, Gary Thomas
>>    <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>>     >> >>
>>     >> >> On 2011-09-16 09:06, Richard Purdie wrote:
>>     >> >>>
>>     >> >>> On Fri, 2011-09-16 at 10:35 -0400, Bruce Ashfield wrote:
>>     >> >>>>
>>     >> >>>> On Fri, Sep 16, 2011 at 10:24 AM, Bruce Ashfield
>>     >> >>>> <bruce.ashfield@gmail.com
>>    <mailto:bruce.ashfield@gmail.**com <bruce.ashfield@gmail.com>>> wrote:
>>     >> >>>>>
>>     >> >>>>> On Fri, Sep 16, 2011 at 8:38 AM, chinmaya
>>     >> >>>>> hoshing<cahoshing@gmail.com <mailto:cahoshing@gmail.com>>
>>
>>     >> >>>>> wrote:
>>     >> >>>>>>
>>     >> >>>>>> Hi ,
>>     >> >>>>>> I am building poky-build minimal live image for fishriver
>>    machine
>>     >> >>>>>> on
>>     >> >>>>>> 64 bit
>>     >> >>>>>> host machine.
>>     >> >>>>>> As I am having limited internet band-width, so I have
>>    identified
>>     >> >>>>>> all
>>     >> >>>>>> the
>>     >> >>>>>> dependent packages and setup a Apache server on my local
>>    system so
>>     >> >>>>>> that I
>>     >> >>>>>> can redirect the SRC_URI of all the packages to my local
>>    server.
>>     >> >>>>>> I have changed the related recipes to build minimal live
>>    image,
>>     >> >>>>>> and
>>     >> >>>>>> modify
>>     >> >>>>>> bitbake.conf to add
>>    LOCAL_MIRROR="xxx.xxx.xxx.xxx/**packages" , in
>>     >> >>>>>> side
>>     >> >>>>>> packages I have tars which was present "build/download"
>>    folder.
>>     >> >>>>>> While building linux-yocto, fetch and unpack was done but
>>    during
>>     >> >>>>>> kernel
>>     >> >>>>>> checkout whatever git commits I have done previously in
>>    poky source
>>     >> >>>>>> were
>>     >> >>>>>> flashed out (lost), also the only recipe remains in
>>     >> >>>>>> meta/recipe-kernel/ is
>>     >> >>>>>> linux .
>>     >> >>>>>>
>>     >> >>>>>> Following are the changes made in
>>     >> >>>>>> meta/recipes-kernel/linux/linu**x-yocto_git.bb<http://linux-yocto_git.bb>
>>    <http://linux-yocto_git.bb>
>>
>>     >> >>>>>> #SRCREV_FORMAT = "meta_machine"
>>     >> >>>>>> SRC_URI = "${LOCAL_MIRROR}/linux-yocto-**3.0-3.0.tar.bz2"
>>     >> >>>>>> // This tar file I took from
>>     >> >>>>>>
>>     >> >>>>>>
>>     >> >>>>>>
>>    http://git.yoctoproject.org/**cgit/cgit.cgi/linux-yocto-3.0/**
>> snapshot/linux-yocto-3.0-3.0.**tar.bz2<http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/snapshot/linux-yocto-3.0-3.0.tar.bz2>
>>     >> >>>>>> PV = "${LINUX_VERSION}"
>>     >> >>>>>> In file
>>    meta-intel/meta-fishriver/**conf/machine/fishriver.conf I
>>     >> >>>>>> modified
>>     >> >>>>>> PREFERRED_VERSION_linux-yocto = "3.0" (which was
>>     >> >>>>>> PREFERRED_VERSION_linux-yocto = "3.0+git%" )
>>     >> >>>>>>
>>     >> >>>>>> Can any one help me to find the solution that if I had to
>>    pull
>>     >> >>>>>> linux
>>     >> >>>>>> kernel
>>     >> >>>>>> source from tar file or such and not from git repository.
>>    What
>>     >> >>>>>> things
>>     >> >>>>>> I have
>>     >> >>>>>> to do.
>>     >> >>>>>
>>     >> >>>>> The linux-yocto recipes are designed from the ground up to
>>    work on a
>>     >> >>>>> git
>>     >> >>>>> based repository, and there's really no way to get around
>>    that fact
>>     >> >>>>> (and no
>>     >> >>>>> plans to make any changes in this area).
>>     >> >>>>
>>     >> >>>> Thinking further about this, if the tgz actually was just a
>>    tarball
>>     >> >>>> of
>>     >> >>>> the git
>>     >> >>>> repositories (including the git blobs), it could work.
>>     >> >>>
>>     >> >>> This is exactly what we use behind the scenes for mirroring
>>    the git
>>     >> >>> repositories so this should work. It should be possible to
>>    use our
>>     >> >>> existing PREMIRROR code to avoid having to rewrite
>>    individual recipes
>>     >> >>> though.
>>     >> >>>
>>     >> >>> It will firstly unpack the tarball, then access whether the
>>    revisions
>>     >> >>> it
>>     >> >>> needs are present. If they're not, it will then (and only
>>    then) try
>>     >> >>> and
>>     >> >>> fetch them over the network. If the tarball is complete it will
>>     >> >>> therefore not touch the network. If its incomplete it will
>>    only fetch
>>     >> >>> the different (delta).
>>     >> >>
>>     >> >> This does work as advertised - I use it exclusively. I have a
>>    local
>>     >> >> package cache which I use with PREMIRROR and I set
>>    BB_NO_NETWORK to
>>     >> >> prove/protect that no network access is required.
>>     >> >>
>>     >> >> --
>>     >> >> ------------------------------**------------------------------
>>     >> >> Gary Thomas | Consulting for the
>>     >> >> MLB Associates | Embedded world
>>     >> >> ------------------------------**------------------------------
>>     >> >> ______________________________**_________________
>>     >> >> poky mailing list
>>     >> >> poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>>
>>     >> >> https://lists.yoctoproject.**org/listinfo/poky<https://lists.yoctoproject.org/listinfo/poky>
>>     >> >
>>     >> >
>>     >> > ______________________________**_________________
>>     >> > poky mailing list
>>     >> > poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>>
>>     >> > https://lists.yoctoproject.**org/listinfo/poky<https://lists.yoctoproject.org/listinfo/poky>
>>     >> >
>>     >> >
>>     >>
>>     >>
>>     >>
>>     >> --
>>     >> "Thou shalt not follow the NULL pointer, for chaos and madness
>> await
>>     >> thee at its end"
>>     >
>>     >
>>
>>
>>
>>    --
>>    "Thou shalt not follow the NULL pointer, for chaos and madness await
>>    thee at its end"
>>
>>
>>
>>
>> ______________________________**_________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.**org/listinfo/poky<https://lists.yoctoproject.org/listinfo/poky>
>>
>
>

--0015175cfe481c039d04ad83a131
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><span style=3D"backgrou=
nd-color:rgb(255, 255, 255)"><font color=3D"#6600cc">On Wed, Sep 21, 2011 a=
t 9:40 PM, Bruce Ashfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ash=
field@windriver.com" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;=
</span> wrote:<br>


</font></span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div><span style=3D"background=
-color:rgb(255, 255, 255)"><font color=3D"#6600cc">On 11-09-21 10:03 AM, ch=
inmaya hoshing wrote:<br>



</font></span></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>
<span style=3D"background-color:rgb(255, 255, 255)"><font color=3D"#6600cc"=
><br>
Hi ,<br>
<br>
I am not doing any changes to kernel, following are the thing what I did :-=
<br>
<br>
1. I cloned poky from ( git://<a href=3D"http://git.yoctoproject.org/poky" =
target=3D"_blank">git.yoctoproject.org/<u></u>poky</a> ) and using<br></fon=
t></span></div><span style=3D"background-color:rgb(255, 255, 255)"><font co=
lor=3D"#6600cc">
bernard &lt;<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?=
h=3Dbernard" target=3D"_blank">http://git.yoctoproject.org/<u></u>cgit/cgit=
.cgi/poky/log/?h=3D<u></u>bernard</a>&gt;</font></span><div><span style=3D"=
background-color:rgb(255, 255, 255)"><font color=3D"#6600cc"><br>



branch.<br>
2. I pull some packages from openembeded and also create my own.<br>
3. I maintained git repository for my poky source and did git commit for<br=
>
all for my changes.<br>
</font></span></div></blockquote>
<span style=3D"background-color:rgb(255, 255, 255)"><font color=3D"#6600cc"=
><br>&gt;&gt;&gt;Are you talking about committing kernel changes here ? Or =
changes<br>&gt;&gt;&gt;to layers and packages ?<br>
=A0 =A0=A0</font></span></blockquote><div>=A0 =A0 =A0 =A0 =A0No I am not Co=
mmiting kernel changes here ,I am commiting packages which are pulled in po=
ky source</div><div><br></div><div>=A0 =A0 =A0 =A0 =A0eg-</div><div>=A0 =A0=
 =A0 =A0 =A0 <font face=3D"&#39;courier new&#39;, monospace">${POKY_SOURCE}=
/</font></div>

<div><font face=3D"&#39;courier new&#39;, monospace">=A0 =A0 =A0(</font><sp=
an style=3D"font-family:&#39;courier new&#39;, monospace">it contains)=A0bi=
tbake =A0LICENSE =A0 =A0meta-intel =A0README =A0build meta meta-rt =A0READM=
E.hardware =A0=A0documentation =A0meta-demoapps =A0poky-init-build-env =A0s=
cripts</span></div>


<div>=A0 =A0 =A0 =A0=A0 =A0</div><div>=A0 =A0 =A0 =A0 =A0Before modifying t=
he linux-yocto recipe the source extracted in</div>
<div>=A0 =A0 =A0 =A0 <font face=3D"&#39;courier new&#39;, monospace">${POKY=
_SOURCE}/build/tmp/work/fishriver-poky-linux/linux-yocto-3.0+git1+7782fc673=
afd6a1c742409896ae787560d96fce8_1+c111526f70815ceff495bab07df64c0cee494d8a-=
r0/ =A0 =A0 =A0 =A0 =A0 =A0=A0</font></div>

<div><font face=3D"&#39;courier new&#39;, monospace">=A0 =A0 =A0linux-fishr=
iver-standard-build=A0 =A0 =A0</font></div><div></div><div></div><div></div=
><div>
<span style=3D"font-family:&#39;courier new&#39;, monospace">=A0 =A0 =A0(it=
 contains) :=A0arch =A0block =A0crypto =A0drivers =A0firmware =A0fs =A0incl=
ude =A0init =A0ipc =A0kernel =A0lib =A0Makefile =A0mm =A0modules.builtin =
=A0modules.order =A0Module.symvers =A0net =A0scripts=A0</span></div>

<div><span style=3D"font-family:&#39;courier new&#39;, monospace">=A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0security =A0sound =A0source =A0System.ma=
p =A0usr =A0vmlinux =A0vmlinux.o</span></div><div><font face=3D"&#39;courie=
r new&#39;, monospace"><br>
</font></div><div>=A0</div><div>=A0 =A0 =A0 =A0 After modifying the linux-y=
octo recipe (for local server) =A0, I observer =A0that the source instead o=
f being extracted to the above mentioned path in WORKDIR is being=A0extract=
ed in ${POKY_SOURCE} itself=A0</div>

<div>=A0 =A0 =A0 =A0=A0<font face=3D"&#39;courier new&#39;, monospace">${PO=
KY_SOURCE}/</font></div><div><font face=3D"&#39;courier new&#39;, monospace=
">=A0 =A0 (it contains): arch Documentation =A0Kbuild =A0 scripts=A0bitbake=
 =A0drivers =A0Kconfig =A0security=A0block =A0firmware =A0kernel sound =A0b=
uild =A0fs =A0lib =A0net =A0tools=A0COPYING =A0include =A0</font></div>

<div><font face=3D"&#39;courier new&#39;, monospace">=A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0MAINTAINERS =A0README usr=A0CREDITS =A0init =A0Makefile=
=A0</font><span style=3D"font-family:&#39;courier new&#39;, monospace">REPO=
RTING-BUGS =A0virt =A0crypto =A0 ipc =A0meta samples</span></div>

<div><span style=3D"font-family:&#39;courier new&#39;, monospace">=A0</span=
></div><div><font face=3D"&#39;courier new&#39;, monospace">=A0 =A0</font><=
font face=3D"arial, helvetica, sans-serif">=A0This causes the .git folder p=
resent in kernel source to overwrite my .git directory present in ${POKY_SO=
URCE}=A0resulting in loss of my git commits</font><font face=3D"&#39;courie=
r new&#39;, monospace">=A0</font></div>

<div><font face=3D"&#39;courier new&#39;, monospace">=A0 =A0 =A0</font></di=
v><div><font face=3D"arial, helvetica, sans-serif">=A0 =A0 =A0 =A0I made fo=
llowing changes to=A0</font><span style=3D"font-family:arial, helvetica, sa=
ns-serif"><a href=3D"http://linux-yocto_git.bb" target=3D"_blank">linux-yoc=
to_git.bb</a> =A0as=A0</span><span style=3D"font-family:arial, helvetica, s=
ans-serif">follows :-</span></div>

<div><font face=3D"arial, helvetica, sans-serif">=A0 =A0 =A0 =A0-</font><sp=
an style=3D"font-family:arial, helvetica, sans-serif">=A0 =A0git://<a href=
=3D"http://git.pokylinux.org/linux-yocto-3.0;protocol=3Dgit;nocheckout=3D1;=
branch=3D$%7BKBRANCH%7D,meta;name=3Dmachine,meta" target=3D"_blank">git.pok=
ylinux.org/linux-yocto-3.0;protocol=3Dgit;nocheckout=3D1;branch=3D$%7BKBRAN=
CH%7D,meta;name=3Dmachine,meta</a></span></div>

<div><font face=3D"arial, helvetica, sans-serif">=A0 =A0 =A0 + =A0=A0</font=
><span style=3D"font-family:arial, helvetica, sans-serif">git://<a href=3D"=
http://192.168.128.11/linux-yocto-3.0.git;protocol=3Dgit;nocheckout=3D1;bra=
nch=3D$%7BKBRANCH%7D,meta;name=3Dmachine,meta" target=3D"_blank">192.168.12=
8.11/linux-yocto-3.0.git;protocol=3Dgit;nocheckout=3D1;branch=3D$%7BKBRANCH=
%7D,meta;name=3Dmachine,meta</a></span></div>

<div><font face=3D"arial, helvetica, sans-serif"><br></font></div><div>=A0 =
=A0=A0 =A0 =A0 =A0=A0</div><div>=A0 =A0 =A0 =A0 =A0 =A0</div><div>=A0</div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">


<span style=3D"background-color:rgb(255, 255, 255)"><font color=3D"#6600cc"=
>
</font></span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div><span style=3D"background=
-color:rgb(255, 255, 255)"><font color=3D"#6600cc">
4. I created a local git and ftp repo on my local machine and modify the<br=
>
related recipes (SRC_URI ) as I don&#39;t want to waste my band width by<br=
>
downloaing packages while building again and again.<br>
<br>
<br>
Now I have a local the git repository for linux-yocto from<br>
git://<a href=3D"http://git.yoctoproject.org/linux-yocto-3.0" target=3D"_bl=
ank">git.yoctoproject.org/<u></u>linux-yocto-3.0</a><br>
&lt;git://<a href=3D"http://git.yoctoproject.org/linux-yocto-3.0" target=3D=
"_blank">git.yoctoproject.org/<u></u>linux-yocto-3.0</a> &gt;<br></font></s=
pan></div><span style=3D"background-color:rgb(255, 255, 255)"><font color=
=3D"#6600cc">
Now I modify the <a href=3D"http://linux-yocto_git.bb" target=3D"_blank">li=
nux-yocto_git.bb</a> &lt;<a href=3D"http://linux-yocto_git.bb" target=3D"_b=
lank">http://linux-yocto_git.bb</a>&gt; as</font></span><div><span style=3D=
"background-color:rgb(255, 255, 255)"><font color=3D"#6600cc"><br>



follows :-<br>
-<br>
git://<a href=3D"http://git.pokylinux.org/linux-yocto-3.0;protocol=3Dgit;no=
checkout=3D1;branch=3D$%7BKBRANCH%7D,meta;name=3Dmachine,meta" target=3D"_b=
lank">git.pokylinux.org/linux-<u></u>yocto-3.0;protocol=3Dgit;<u></u>nochec=
kout=3D1;branch=3D$%<u></u>7BKBRANCH%7D,meta;name=3D<u></u>machine,meta</a>=
<br>


</font></span></div><span style=3D"background-color:rgb(255, 255, 255)"><fo=
nt color=3D"#6600cc">
&lt;<a href=3D"http://git.pokylinux.org/linux-yocto-3.0;protocol=3Dgit;noch=
eckout=3D1;branch=3D$%7BKBRANCH%7D,meta;name=3Dmachine,meta" target=3D"_bla=
nk">http://git.pokylinux.org/<u></u>linux-yocto-3.0;protocol=3Dgit;<u></u>n=
ocheckout=3D1;branch=3D$%<u></u>7BKBRANCH%7D,meta;name=3D<u></u>machine,met=
a</a>&gt;</font></span><div>


<span style=3D"background-color:rgb(255, 255, 255)"><font color=3D"#6600cc"=
><br>
+<br>
git://<a href=3D"http://192.168.128.11/linux-yocto-3.0.git;protocol=3Dgit;n=
ocheckout=3D1;branch=3D$%7BKBRANCH%7D,meta;name=3Dmachine,meta" target=3D"_=
blank">192.168.128.11/linux-<u></u>yocto-3.0.git;protocol=3Dgit;<u></u>noch=
eckout=3D1;branch=3D$%<u></u>7BKBRANCH%7D,meta;name=3D<u></u>machine,meta</=
a><br>


</font></span></div><span style=3D"background-color:rgb(255, 255, 255)"><fo=
nt color=3D"#6600cc">
&lt;<a href=3D"http://192.168.128.11/linux-yocto-3.0.git;protocol=3Dgit;noc=
heckout=3D1;branch=3D$%7BKBRANCH%7D,meta;name=3Dmachine,meta" target=3D"_bl=
ank">http://192.168.128.11/linux-<u></u>yocto-3.0.git;protocol=3Dgit;<u></u=
>nocheckout=3D1;branch=3D$%<u></u>7BKBRANCH%7D,meta;name=3D<u></u>machine,m=
eta</a>&gt;</font></span><div>


<span style=3D"background-color:rgb(255, 255, 255)"><font color=3D"#6600cc"=
><br>
<br>
Every package is building fine even u-boot but, while building<br>
linux-yocto I got error as &quot;No such file or directory update-modules,<=
br>
scripts/bitbake &quot; ( some more dirs ).<br>
<br>
When I examine the source tree for poky I found out that linux-yocto<br>
source is fetched in side the poky source and modifying the poky source<br>
tree.<br>
</font></span></div></blockquote>
<span style=3D"background-color:rgb(255, 255, 255)"><font color=3D"#6600cc"=
><br>&gt;&gt;&gt;I&#39;m not following what you are describing here. Linux-=
yocto works largely<br>
&gt;&gt;&gt;like any other git based recipe. It works from the copy of the =
repo<br>&gt;&gt;&gt;that is created in downloads/git2 and does a slightly d=
ifferent<br>&gt;&gt;&gt;instantiation into ${B} to ensure that all branches=
 are local. If<br>


&gt;&gt;&gt;you don&#39;t have the right code in in the downloaded git repo=
, or a<br>&gt;&gt;&gt;tarball created from it, you won&#39;t see it in your=
 build.</font></span><div><span style=3D"background-color:rgb(255, 255, 255=
)"><br>

<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">
<span style=3D"background-color:rgb(255, 255, 255)"><font color=3D"#6600cc"=
><br>
The modification also removing the poky recipes directories like<br>
recipes-multimedia recipes-sato and so on .<br>
<br>
I am also attaching the tree for both i.e original poky tree and after<br>
pulling linux-yocto poky tree<br>
</font></span></blockquote>
<span style=3D"background-color:rgb(255, 255, 255)"><font color=3D"#6600cc"=
><br></font></span></div><span style=3D"background-color:rgb(255, 255, 255)=
"><font color=3D"#6600cc">&gt;&gt;&gt;Can you clarify what this is showing =
? missing changes you<br>


&gt;&gt;&gt;made to the kernel ? Perhaps a diff would illustrate it better.=
<br>
<br>
Bruce<br></font></span>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>
<br>
<br>
Regards<br>
Chinmaya<br>
<br>
On Wed, Sep 21, 2011 at 6:00 PM, Bruce Ashfield<br></div><div>
&lt;<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.ash=
field@gmail.com</a> &lt;mailto:<a href=3D"mailto:bruce.ashfield@gmail.com" =
target=3D"_blank">bruce.ashfield@gmail.<u></u>com</a>&gt;&gt; wrote:<br>
<br>
 =A0 =A0On Wed, Sep 21, 2011 at 12:49 AM, chinmaya hoshing<br></div><div>
 =A0 =A0&lt;<a href=3D"mailto:cahoshing@gmail.com" target=3D"_blank">cahosh=
ing@gmail.com</a> &lt;mailto:<a href=3D"mailto:cahoshing@gmail.com" target=
=3D"_blank">cahoshing@gmail.com</a>&gt;&gt; wrote:<br>
 =A0 =A0 &gt; Hi ,<br>
 =A0 =A0 &gt; I have setup a git server that is clone of linux-yocto-3.0 fr=
om<br>
 =A0 =A0 &gt; git://<a href=3D"http://git.yoctoproject.org/linux-yocto-3.0"=
 target=3D"_blank">git.yoctoproject.org/<u></u>linux-yocto-3.0</a><br></div=
>
 =A0 =A0&lt;<a href=3D"http://git.yoctoproject.org/linux-yocto-3.0" target=
=3D"_blank">http://git.yoctoproject.org/<u></u>linux-yocto-3.0</a>&gt; repo=
sitory.<div><br>
<br>
 =A0 =A0That&#39;s good! So where are you pushing your changes ? To that re=
po ? Are<br>
 =A0 =A0you updating the SRCREV or using AUTOREV in your local layers ? I u=
se<br>
 =A0 =A0this workflow everyday, so it does work. I just need to understand<=
br>
 =A0 =A0where you<br>
 =A0 =A0are putting your changes, and then we&#39;ll know why you aren&#39;=
t seeing them<br>
 =A0 =A0on subsequent builds (or we&#39;ll have more ideas about where to l=
ook).<br>
<br>
 =A0 =A0Cheers,<br>
<br>
 =A0 =A0Bruce<br>
<br>
 =A0 =A0 &gt; Regards<br>
 =A0 =A0 &gt; C Hoshing<br>
 =A0 =A0 &gt;<br>
 =A0 =A0 &gt; On Tue, Sep 20, 2011 at 7:24 PM, Bruce Ashfield<br></div>
 =A0 =A0&lt;<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">b=
ruce.ashfield@gmail.com</a> &lt;mailto:<a href=3D"mailto:bruce.ashfield@gma=
il.com" target=3D"_blank">bruce.ashfield@gmail.<u></u>com</a>&gt;&gt;<div>
<br>
 =A0 =A0 &gt; wrote:<br>
 =A0 =A0 &gt;&gt;<br>
 =A0 =A0 &gt;&gt; On Tue, Sep 20, 2011 at 5:51 AM, chinmaya hoshing<br></di=
v>
 =A0 =A0&lt;<a href=3D"mailto:cahoshing@gmail.com" target=3D"_blank">cahosh=
ing@gmail.com</a> &lt;mailto:<a href=3D"mailto:cahoshing@gmail.com" target=
=3D"_blank">cahoshing@gmail.com</a>&gt;&gt;<div><div></div><div><br>
 =A0 =A0 &gt;&gt; wrote:<br>
 =A0 =A0 &gt;&gt; &gt; Hi ,<br>
 =A0 =A0 &gt;&gt; &gt; I have set up a git server for linux-yocto.<br>
 =A0 =A0 &gt;&gt; &gt; Following is my recipe :<br>
 =A0 =A0 &gt;&gt; &gt; require linux-yocto.inc<br>
 =A0 =A0 &gt;&gt; &gt; KMACHINE =3D &quot;yocto/standard/base&quot;<br>
 =A0 =A0 &gt;&gt; &gt; KMACHINE_qemux86 =3D &quot;yocto/standard/common-pc/=
<u></u>base&quot;<br>
 =A0 =A0 &gt;&gt; &gt; KMACHINE_qemux86-64 =3D &quot;yocto/standard/common-=
pc-64/<u></u>base&quot;<br>
 =A0 =A0 &gt;&gt; &gt; KMACHINE_qemuppc =3D &quot;yocto/standard/qemu-ppc32=
&quot;<br>
 =A0 =A0 &gt;&gt; &gt; KMACHINE_qemumips =3D &quot;yocto/standard/mti-malta=
32-<u></u>be&quot;<br>
 =A0 =A0 &gt;&gt; &gt; KMACHINE_qemuarm =3D &quot;yocto/standard/arm-versat=
ile-<u></u>926ejs&quot;<br>
 =A0 =A0 &gt;&gt; &gt; KMACHINE_atom-pc =3D &quot;yocto/standard/common-pc/=
<u></u>atom-pc&quot;<br>
 =A0 =A0 &gt;&gt; &gt; KMACHINE_routerstationpro =3D &quot;yocto/standard/<=
u></u>routerstationpro&quot;<br>
 =A0 =A0 &gt;&gt; &gt; KMACHINE_mpc8315e-rdb =3D &quot;yocto/standard/fsl-m=
pc8315e-<u></u>rdb&quot;<br>
 =A0 =A0 &gt;&gt; &gt; KMACHINE_beagleboard =3D &quot;yocto/standard/beagle=
board&quot;<br>
 =A0 =A0 &gt;&gt; &gt; KMACHINE_fishriver =3D &quot;yocto/standard/fishrive=
r&quot;<br>
 =A0 =A0 &gt;&gt; &gt; KBRANCH =3D ${KMACHINE}<br>
 =A0 =A0 &gt;&gt; &gt; KMETA =3D meta<br>
 =A0 =A0 &gt;&gt; &gt; LINUX_VERSION ?=3D &quot;3.0&quot;<br>
 =A0 =A0 &gt;&gt; &gt; LINUX_VERSION_EXTENSION ?=3D &quot;-yocto-${LINUX_KE=
RNEL_TYPE}&quot;<br>
 =A0 =A0 &gt;&gt; &gt; PR =3D &quot;r0&quot;<br>
 =A0 =A0 &gt;&gt; &gt; #PV =3D &quot;${LINUX_VERSION}+git${SRCPV}&quot;<br>
 =A0 =A0 &gt;&gt; &gt; #SRCREV_FORMAT =3D &quot;meta_machine&quot;<br>
 =A0 =A0 &gt;&gt; &gt; SRC_URI =3D<br>
 =A0 =A0 &gt;&gt; &gt;<br>
 =A0 =A0 &gt;&gt; &gt;<br>
 =A0 =A0&quot;git://xxx.xxx.xxx.xx/linux-<u></u>yocto-3.0.git;protocol=3Dgi=
t;<u></u>nocheckout=3D1;branch=3D$%<u></u>7BKBRANCH%7D,meta;name=3D<u></u>m=
achine,meta&quot;<br>
 =A0 =A0 &gt;&gt; &gt;<br>
 =A0 =A0 &gt;&gt; &gt; COMPATIBLE_MACHINE =3D<br>
 =A0 =A0 &gt;&gt; &gt;<br>
 =A0 =A0 &gt;&gt; &gt;<br>
 =A0 =A0&quot;(qemuarm|qemux86|qemuppc|<u></u>qemumips|qemux86-64|mpc8315e-=
<u></u>rdb|routerstationpro|<u></u>beagleboard)&quot;<br>
 =A0 =A0 &gt;&gt; &gt; # Functionality flags<br>
 =A0 =A0 &gt;&gt; &gt; KERNEL_REVISION_CHECKING ?=3D &quot;t&quot;<br>
 =A0 =A0 &gt;&gt; &gt; KERNEL_FEATURES=3D&quot;features/<u></u>netfilter&qu=
ot;<br>
 =A0 =A0 &gt;&gt; &gt; KERNEL_FEATURES_append_<u></u>qemux86=3D&quot; cfg/s=
ound&quot;<br>
 =A0 =A0 &gt;&gt; &gt; KERNEL_FEATURES_append_<u></u>qemux86-64=3D&quot; cf=
g/sound&quot;<br>
 =A0 =A0 &gt;&gt; &gt; YOCTO_KERNEL_META_DATA=3Dt<br>
 =A0 =A0 &gt;&gt; &gt; # Temporary fix for oprofile and latencytop on qemux=
86-64<br>
 =A0 =A0 &gt;&gt; &gt; KERNEL_FEATURES_append_<u></u>qemux86-64=3D&quot; fe=
atures/profiling&quot;<br>
 =A0 =A0 &gt;&gt; &gt; KERNEL_FEATURES_append_<u></u>qemux86-64=3D&quot; fe=
atures/latencytop&quot;<br>
 =A0 =A0 &gt;&gt; &gt; # extra tasks<br>
 =A0 =A0 &gt;&gt; &gt; addtask kernel_link_vmlinux after do_compile before =
do_install<br>
 =A0 =A0 &gt;&gt; &gt; addtask validate_branches before do_patch after do_k=
ernel_checkout<br>
 =A0 =A0 &gt;&gt; &gt; addtask kernel_configcheck after do_configure before=
 do_compile<br>
 =A0 =A0 &gt;&gt; &gt; require linux-tools.inc<br>
 =A0 =A0 &gt;&gt; &gt;<br>
 =A0 =A0 &gt;&gt; &gt;<br>
 =A0 =A0 &gt;&gt; &gt; But still I am getting the same result as before . M=
y previous git<br>
 =A0 =A0 &gt;&gt; &gt; commits<br>
 =A0 =A0 &gt;&gt; &gt; in poky source are flashed out , also the only recip=
e remains in<br>
 =A0 =A0 &gt;&gt; &gt; meta/recipe-kernel/ is linux .<br>
 =A0 =A0 &gt;&gt;<br>
 =A0 =A0 &gt;&gt; Just so I&#39;m clear here. Are you still working with ta=
rballs of the<br>
 =A0 =A0 &gt;&gt; source, or have<br>
 =A0 =A0 &gt;&gt; you setup a git server that is a clone of the linux-yocto=
-3.0 (as an<br>
 =A0 =A0 &gt;&gt; example) tree ?<br>
 =A0 =A0 &gt;&gt;<br>
 =A0 =A0 &gt;&gt; Where are you putting your changes in this scenario ?<br>
 =A0 =A0 &gt;&gt;<br>
 =A0 =A0 &gt;&gt; Bruce<br>
 =A0 =A0 &gt;&gt;<br>
 =A0 =A0 &gt;&gt; &gt;<br>
 =A0 =A0 &gt;&gt; &gt; Regards<br>
 =A0 =A0 &gt;&gt; &gt; C Hoshing<br>
 =A0 =A0 &gt;&gt; &gt;<br>
 =A0 =A0 &gt;&gt; &gt; On Fri, Sep 16, 2011 at 8:52 PM, Gary Thomas<br></di=
v></div><div>
 =A0 =A0&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlb=
assoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com" target=3D"_bl=
ank">gary@mlbassoc.com</a>&gt;&gt; wrote:<br>
 =A0 =A0 &gt;&gt; &gt;&gt;<br>
 =A0 =A0 &gt;&gt; &gt;&gt; On 2011-09-16 09:06, Richard Purdie wrote:<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt; On Fri, 2011-09-16 at 10:35 -0400, Bruce Ash=
field wrote:<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt; On Fri, Sep 16, 2011 at 10:24 AM, Bruce =
Ashfield<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt; &lt;<a href=3D"mailto:bruce.ashfield@gma=
il.com" target=3D"_blank">bruce.ashfield@gmail.com</a><br></div><div>
 =A0 =A0&lt;mailto:<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_b=
lank">bruce.ashfield@gmail.<u></u>com</a>&gt;&gt; wrote:<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt; On Fri, Sep 16, 2011 at 8:38 AM, chi=
nmaya<br></div>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt; hoshing&lt;<a href=3D"mailto:cahoshi=
ng@gmail.com" target=3D"_blank">cahoshing@gmail.com</a> &lt;mailto:<a href=
=3D"mailto:cahoshing@gmail.com" target=3D"_blank">cahoshing@gmail.com</a>&g=
t;&gt;<div>


<div></div><div><br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt; wrote:<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; Hi ,<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; I am building poky-build minimal=
 live image for fishriver<br>
 =A0 =A0machine<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; on<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; 64 bit<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; host machine.<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; As I am having limited internet =
band-width, so I have<br>
 =A0 =A0identified<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; all<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; the<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; dependent packages and setup a A=
pache server on my local<br>
 =A0 =A0system so<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; that I<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; can redirect the SRC_URI of all =
the packages to my local<br>
 =A0 =A0server.<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; I have changed the related recip=
es to build minimal live<br>
 =A0 =A0image,<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; and<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; modify<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; bitbake.conf to add<br>
 =A0 =A0LOCAL_MIRROR=3D&quot;xxx.xxx.xxx.xxx/<u></u>packages&quot; , in<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; side<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; packages I have tars which was p=
resent &quot;build/download&quot;<br>
 =A0 =A0folder.<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; While building linux-yocto, fetc=
h and unpack was done but<br>
 =A0 =A0during<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; kernel<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; checkout whatever git commits I =
have done previously in<br>
 =A0 =A0poky source<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; were<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; flashed out (lost), also the onl=
y recipe remains in<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; meta/recipe-kernel/ is<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; linux .<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; Following are the changes made i=
n<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; meta/recipes-kernel/linux/<a hre=
f=3D"http://linux-yocto_git.bb" target=3D"_blank">linu<u></u>x-yocto_git.bb=
</a><br></div></div>
 =A0 =A0&lt;<a href=3D"http://linux-yocto_git.bb" target=3D"_blank">http://=
linux-yocto_git.bb</a>&gt;<div><div></div><div><br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; #SRCREV_FORMAT =3D &quot;meta_ma=
chine&quot;<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; SRC_URI =3D &quot;${LOCAL_MIRROR=
}/linux-yocto-<u></u>3.0-3.0.tar.bz2&quot;<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; // This tar file I took from<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>
 =A0 =A0<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.=
0/snapshot/linux-yocto-3.0-3.0.tar.bz2" target=3D"_blank">http://git.yoctop=
roject.org/<u></u>cgit/cgit.cgi/linux-yocto-3.0/<u></u>snapshot/linux-yocto=
-3.0-3.0.<u></u>tar.bz2</a><br>



 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; PV =3D &quot;${LINUX_VERSION}&qu=
ot;<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; In file<br>
 =A0 =A0meta-intel/meta-fishriver/<u></u>conf/machine/fishriver.conf I<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; modified<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; PREFERRED_VERSION_linux-yocto =
=3D &quot;3.0&quot; (which was<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; PREFERRED_VERSION_linux-yocto =
=3D &quot;3.0+git%&quot; )<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; Can any one help me to find the =
solution that if I had to<br>
 =A0 =A0pull<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; linux<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; kernel<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; source from tar file or such and=
 not from git repository.<br>
 =A0 =A0What<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; things<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; I have<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt; to do.<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt;<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt; The linux-yocto recipes are designed=
 from the ground up to<br>
 =A0 =A0work on a<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt; git<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt; based repository, and there&#39;s re=
ally no way to get around<br>
 =A0 =A0that fact<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt; (and no<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;&gt; plans to make any changes in this ar=
ea).<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt;<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt; Thinking further about this, if the tgz =
actually was just a<br>
 =A0 =A0tarball<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt; of<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt; the git<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;&gt; repositories (including the git blobs), =
it could work.<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt; This is exactly what we use behind the scene=
s for mirroring<br>
 =A0 =A0the git<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt; repositories so this should work. It should =
be possible to<br>
 =A0 =A0use our<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt; existing PREMIRROR code to avoid having to r=
ewrite<br>
 =A0 =A0individual recipes<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt; though.<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt;<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt; It will firstly unpack the tarball, then acc=
ess whether the<br>
 =A0 =A0revisions<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt; it<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt; needs are present. If they&#39;re not, it wi=
ll then (and only<br>
 =A0 =A0then) try<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt; and<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt; fetch them over the network. If the tarball =
is complete it will<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt; therefore not touch the network. If its inco=
mplete it will<br>
 =A0 =A0only fetch<br>
 =A0 =A0 &gt;&gt; &gt;&gt;&gt; the different (delta).<br>
 =A0 =A0 &gt;&gt; &gt;&gt;<br>
 =A0 =A0 &gt;&gt; &gt;&gt; This does work as advertised - I use it exclusiv=
ely. I have a<br>
 =A0 =A0local<br>
 =A0 =A0 &gt;&gt; &gt;&gt; package cache which I use with PREMIRROR and I s=
et<br>
 =A0 =A0BB_NO_NETWORK to<br>
 =A0 =A0 &gt;&gt; &gt;&gt; prove/protect that no network access is required=
.<br>
 =A0 =A0 &gt;&gt; &gt;&gt;<br>
 =A0 =A0 &gt;&gt; &gt;&gt; --<br>
 =A0 =A0 &gt;&gt; &gt;&gt; ------------------------------<u></u>-----------=
-------------------<br>
 =A0 =A0 &gt;&gt; &gt;&gt; Gary Thomas | Consulting for the<br>
 =A0 =A0 &gt;&gt; &gt;&gt; MLB Associates | Embedded world<br>
 =A0 =A0 &gt;&gt; &gt;&gt; ------------------------------<u></u>-----------=
-------------------<br>
 =A0 =A0 &gt;&gt; &gt;&gt; ______________________________<u></u>___________=
______<br>
 =A0 =A0 &gt;&gt; &gt;&gt; poky mailing list<br></div></div>
 =A0 =A0 &gt;&gt; &gt;&gt; <a href=3D"mailto:poky@yoctoproject.org" target=
=3D"_blank">poky@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:poky@yoc=
toproject.org" target=3D"_blank">poky@yoctoproject.org</a>&gt;<div><br>
 =A0 =A0 &gt;&gt; &gt;&gt; <a href=3D"https://lists.yoctoproject.org/listin=
fo/poky" target=3D"_blank">https://lists.yoctoproject.<u></u>org/listinfo/p=
oky</a><br>
 =A0 =A0 &gt;&gt; &gt;<br>
 =A0 =A0 &gt;&gt; &gt;<br>
 =A0 =A0 &gt;&gt; &gt; ______________________________<u></u>_______________=
__<br>
 =A0 =A0 &gt;&gt; &gt; poky mailing list<br></div>
 =A0 =A0 &gt;&gt; &gt; <a href=3D"mailto:poky@yoctoproject.org" target=3D"_=
blank">poky@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:poky@yoctopro=
ject.org" target=3D"_blank">poky@yoctoproject.org</a>&gt;<div><br>
 =A0 =A0 &gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/p=
oky" target=3D"_blank">https://lists.yoctoproject.<u></u>org/listinfo/poky<=
/a><br>
 =A0 =A0 &gt;&gt; &gt;<br>
 =A0 =A0 &gt;&gt; &gt;<br>
 =A0 =A0 &gt;&gt;<br>
 =A0 =A0 &gt;&gt;<br>
 =A0 =A0 &gt;&gt;<br>
 =A0 =A0 &gt;&gt; --<br>
 =A0 =A0 &gt;&gt; &quot;Thou shalt not follow the NULL pointer, for chaos a=
nd madness await<br>
 =A0 =A0 &gt;&gt; thee at its end&quot;<br>
 =A0 =A0 &gt;<br>
 =A0 =A0 &gt;<br>
<br>
<br>
<br>
 =A0 =A0--<br>
 =A0 =A0&quot;Thou shalt not follow the NULL pointer, for chaos and madness=
 await<br>
 =A0 =A0thee at its end&quot;<br>
<br>
<br>
<br>
<br></div><div>
______________________________<u></u>_________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.<u></u>org/listinfo/poky</a><br>
</div></blockquote>
<br>
</blockquote></div><br></div>

--0015175cfe481c039d04ad83a131--
