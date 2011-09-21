Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ABA2E004DD
	for <poky@yoctoproject.org>; Wed, 21 Sep 2011 05:30:58 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyg10 with SMTP id 10so2306061wyg.35
	for <poky@yoctoproject.org>; Wed, 21 Sep 2011 05:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=MAHEHAsLtYEVUhKWc0m4eodhtiEfNQpMlr30fARQKwY=;
	b=RntMgPISSQnHeTzEm8l8TtqsLkdlfU1xV44HIKbt5TOz7+Dl2Exd9jkHCuw5S8uJrS
	R2gRLsS/kRNZiM2Y0vz034YrvL0oQqicSlHfjLHFpRG+YNshqMZ8aTuOOs8gOi8W1taL
	9bDpZ4TwbCjRtI9ijs/9H0PNS1+zi6YpTQUm8=
MIME-Version: 1.0
Received: by 10.227.2.129 with SMTP id 1mr680659wbj.39.1316608253770; Wed, 21
	Sep 2011 05:30:53 -0700 (PDT)
Received: by 10.180.100.165 with HTTP; Wed, 21 Sep 2011 05:30:48 -0700 (PDT)
In-Reply-To: <CAMTw45DzQ2-3tdD5pyMA2-RhCuZaAtKWxCvoJb07piW_s9zqvg@mail.gmail.com>
References: <CAMTw45BRK9H5THCL+h33KPMrZh8EgAJnQ3sO5QVoiz822Xf-bQ@mail.gmail.com>
	<CADkTA4PVKxWW1f1CmfXD3sKd+W0+Vn3JGOV6TeL9PVS+VrWu5A@mail.gmail.com>
	<CADkTA4PXcrk=b92UEPS72Byd5ine_ZRKJs7bzohfZfKBUbzVmw@mail.gmail.com>
	<1316185585.20858.29.camel@ted> <4E7369B7.7080201@mlbassoc.com>
	<CAMTw45Di1_n0N_bOno6_tms0DMpUovWPJ-CbKPiFaptXoE3B8A@mail.gmail.com>
	<CADkTA4M97n2SC7SbMFBowgg9KL539J+sWpjpCH79PNvFSWur4w@mail.gmail.com>
	<CAMTw45DzQ2-3tdD5pyMA2-RhCuZaAtKWxCvoJb07piW_s9zqvg@mail.gmail.com>
Date: Wed, 21 Sep 2011 08:30:48 -0400
Message-ID: <CADkTA4M1qKkkEYOEm6KU6SQ9ChmcQ+55T7Fnrs3tVimigmMNmw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: chinmaya hoshing <cahoshing@gmail.com>
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
X-List-Received-Date: Wed, 21 Sep 2011 12:30:59 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 21, 2011 at 12:49 AM, chinmaya hoshing <cahoshing@gmail.com> wr=
ote:
> Hi ,
> I have setup a git server that is clone of=A0linux-yocto-3.0 =A0from
> git://git.yoctoproject.org/linux-yocto-3.0=A0repository.

That's good! So where are you pushing your changes ? To that repo ? Are
you updating the SRCREV or using AUTOREV in your local layers ? I use
this workflow everyday, so it does work. I just need to understand where yo=
u
are putting your changes, and then we'll know why you aren't seeing them
on subsequent builds (or we'll have more ideas about where to look).

Cheers,

Bruce

> Regards
> C Hoshing
>
> On Tue, Sep 20, 2011 at 7:24 PM, Bruce Ashfield <bruce.ashfield@gmail.com=
>
> wrote:
>>
>> On Tue, Sep 20, 2011 at 5:51 AM, chinmaya hoshing <cahoshing@gmail.com>
>> wrote:
>> > Hi ,
>> > I have set up a git server for linux-yocto.
>> > Following is my recipe =A0:
>> > require linux-yocto.inc
>> > KMACHINE =3D "yocto/standard/base"
>> > KMACHINE_qemux86 =A0=3D "yocto/standard/common-pc/base"
>> > KMACHINE_qemux86-64 =A0=3D "yocto/standard/common-pc-64/base"
>> > KMACHINE_qemuppc =A0=3D "yocto/standard/qemu-ppc32"
>> > KMACHINE_qemumips =3D "yocto/standard/mti-malta32-be"
>> > KMACHINE_qemuarm =A0=3D "yocto/standard/arm-versatile-926ejs"
>> > KMACHINE_atom-pc =A0=3D "yocto/standard/common-pc/atom-pc"
>> > KMACHINE_routerstationpro =3D "yocto/standard/routerstationpro"
>> > KMACHINE_mpc8315e-rdb =3D "yocto/standard/fsl-mpc8315e-rdb"
>> > KMACHINE_beagleboard =3D "yocto/standard/beagleboard"
>> > KMACHINE_fishriver =3D "yocto/standard/fishriver"
>> > KBRANCH =3D ${KMACHINE}
>> > KMETA =3D meta
>> > LINUX_VERSION ?=3D "3.0"
>> > LINUX_VERSION_EXTENSION ?=3D "-yocto-${LINUX_KERNEL_TYPE}"
>> > PR =3D "r0"
>> > #PV =3D "${LINUX_VERSION}+git${SRCPV}"
>> > #SRCREV_FORMAT =3D "meta_machine"
>> > SRC_URI =3D
>> >
>> > "git://xxx.xxx.xxx.xx/linux-yocto-3.0.git;protocol=3Dgit;nocheckout=3D=
1;branch=3D$%7BKBRANCH%7D,meta;name=3Dmachine,meta"
>> >
>> > COMPATIBLE_MACHINE =3D
>> >
>> > "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|mpc8315e-rdb|routerstati=
onpro|beagleboard)"
>> > # Functionality flags
>> > KERNEL_REVISION_CHECKING ?=3D "t"
>> > KERNEL_FEATURES=3D"features/netfilter"
>> > KERNEL_FEATURES_append_qemux86=3D" cfg/sound"
>> > KERNEL_FEATURES_append_qemux86-64=3D" cfg/sound"
>> > YOCTO_KERNEL_META_DATA=3Dt
>> > # Temporary fix for oprofile and latencytop on qemux86-64
>> > KERNEL_FEATURES_append_qemux86-64=3D" features/profiling"
>> > KERNEL_FEATURES_append_qemux86-64=3D" features/latencytop"
>> > # extra tasks
>> > addtask kernel_link_vmlinux after do_compile before do_install
>> > addtask validate_branches before do_patch after do_kernel_checkout
>> > addtask kernel_configcheck after do_configure before do_compile
>> > require linux-tools.inc
>> >
>> >
>> > But still I am getting the same result as before . My previous git
>> > commits
>> > in poky source are flashed out , also the only recipe remains in
>> > =A0meta/recipe-kernel/ is linux .
>>
>> Just so I'm clear here. Are you still working with tarballs of the
>> source, or have
>> you setup a git server that is a clone of the linux-yocto-3.0 (as an
>> example) tree ?
>>
>> Where are you putting your changes in this scenario ?
>>
>> Bruce
>>
>> >
>> > Regards
>> > C Hoshing
>> >
>> > On Fri, Sep 16, 2011 at 8:52 PM, Gary Thomas <gary@mlbassoc.com> wrote=
:
>> >>
>> >> On 2011-09-16 09:06, Richard Purdie wrote:
>> >>>
>> >>> On Fri, 2011-09-16 at 10:35 -0400, Bruce Ashfield wrote:
>> >>>>
>> >>>> On Fri, Sep 16, 2011 at 10:24 AM, Bruce Ashfield
>> >>>> <bruce.ashfield@gmail.com> =A0wrote:
>> >>>>>
>> >>>>> On Fri, Sep 16, 2011 at 8:38 AM, chinmaya
>> >>>>> hoshing<cahoshing@gmail.com>
>> >>>>> =A0wrote:
>> >>>>>>
>> >>>>>> Hi ,
>> >>>>>> I am building poky-build minimal live image for fishriver machine
>> >>>>>> on
>> >>>>>> 64 bit
>> >>>>>> host machine.
>> >>>>>> As I am having limited internet band-width, so I have identified
>> >>>>>> all
>> >>>>>> the
>> >>>>>> dependent packages and setup a Apache server on my local system s=
o
>> >>>>>> that I
>> >>>>>> can redirect the SRC_URI of all the packages to my local server.
>> >>>>>> I have changed the related recipes to build =A0minimal live image=
,
>> >>>>>> and
>> >>>>>> modify
>> >>>>>> bitbake.conf to add LOCAL_MIRROR=3D"xxx.xxx.xxx.xxx/packages" , i=
n
>> >>>>>> side
>> >>>>>> packages I have tars which =A0was present "build/download" folder=
.
>> >>>>>> While building linux-yocto, fetch and unpack was done but during
>> >>>>>> kernel
>> >>>>>> checkout whatever git commits I have done previously in poky sour=
ce
>> >>>>>> were
>> >>>>>> flashed out (lost), =A0also the only recipe remains in
>> >>>>>> =A0meta/recipe-kernel/ is
>> >>>>>> linux .
>> >>>>>>
>> >>>>>> Following are the changes made in
>> >>>>>> meta/recipes-kernel/linux/linux-yocto_git.bb
>> >>>>>> #SRCREV_FORMAT =3D "meta_machine"
>> >>>>>> SRC_URI =3D "${LOCAL_MIRROR}/linux-yocto-3.0-3.0.tar.bz2"
>> >>>>>> =A0// This tar file I took from
>> >>>>>>
>> >>>>>>
>> >>>>>> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/snapsho=
t/linux-yocto-3.0-3.0.tar.bz2
>> >>>>>> PV =3D "${LINUX_VERSION}"
>> >>>>>> In file meta-intel/meta-fishriver/conf/machine/fishriver.conf I
>> >>>>>> modified
>> >>>>>> PREFERRED_VERSION_linux-yocto =3D "3.0" =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0(which =A0was
>> >>>>>> PREFERRED_VERSION_linux-yocto =3D "3.0+git%" )
>> >>>>>>
>> >>>>>> Can any one help me to find the solution that if I had to pull
>> >>>>>> linux
>> >>>>>> kernel
>> >>>>>> source from tar file or such and not from git repository. What
>> >>>>>> things
>> >>>>>> I have
>> >>>>>> to do.
>> >>>>>
>> >>>>> The linux-yocto recipes are designed from the ground up to work on=
 a
>> >>>>> git
>> >>>>> based repository, and there's really no way to get around that fac=
t
>> >>>>> (and no
>> >>>>> plans to make any changes in this area).
>> >>>>
>> >>>> Thinking further about this, if the tgz actually was just a tarball
>> >>>> of
>> >>>> the git
>> >>>> repositories (including the git blobs), it could work.
>> >>>
>> >>> This is exactly what we use behind the scenes for mirroring the git
>> >>> repositories so this should work. It should be possible to use our
>> >>> existing PREMIRROR code to avoid having to rewrite individual recipe=
s
>> >>> though.
>> >>>
>> >>> It will firstly unpack the tarball, then access whether the revision=
s
>> >>> it
>> >>> needs are present. If they're not, it will then (and only then) try
>> >>> and
>> >>> fetch them over the network. If the tarball is complete it will
>> >>> therefore not touch the network. If its incomplete it will only fetc=
h
>> >>> the different (delta).
>> >>
>> >> This does work as advertised - I use it exclusively. =A0I have a loca=
l
>> >> package cache which I use with PREMIRROR and I set BB_NO_NETWORK to
>> >> prove/protect that no network access is required.
>> >>
>> >> --
>> >> ------------------------------------------------------------
>> >> Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the
>> >> MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world
>> >> ------------------------------------------------------------
>> >> _______________________________________________
>> >> poky mailing list
>> >> poky@yoctoproject.org
>> >> https://lists.yoctoproject.org/listinfo/poky
>> >
>> >
>> > _______________________________________________
>> > poky mailing list
>> > poky@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/poky
>> >
>> >
>>
>>
>>
>> --
>> "Thou shalt not follow the NULL pointer, for chaos and madness await
>> thee at its end"
>
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

