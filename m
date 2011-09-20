Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFCE7E00569
	for <poky@yoctoproject.org>; Tue, 20 Sep 2011 06:54:03 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyg10 with SMTP id 10so704101wyg.35
	for <poky@yoctoproject.org>; Tue, 20 Sep 2011 06:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=iI90i6Gv6I7D7badkxPcOb/WG2sYq7wLWixrdU5nM70=;
	b=dtWMhOKMrSa2cxjywRa9u9vAliyj6E2z2+MII0VfcvvRVxYAYAbtqizB6Ym8dpHsjK
	QiAH7xa9l6lK4MIROtWKIlCTPUiE2CLYwVeDm9oHvg98SDVaSlfFu0+I6PgzNLXesFs+
	Yj4nNGijYSkBk/wI2YT3cKncclNoU+UB2nRJo=
MIME-Version: 1.0
Received: by 10.227.2.129 with SMTP id 1mr963266wbj.39.1316526842437; Tue, 20
	Sep 2011 06:54:02 -0700 (PDT)
Received: by 10.180.100.165 with HTTP; Tue, 20 Sep 2011 06:54:02 -0700 (PDT)
In-Reply-To: <CAMTw45Di1_n0N_bOno6_tms0DMpUovWPJ-CbKPiFaptXoE3B8A@mail.gmail.com>
References: <CAMTw45BRK9H5THCL+h33KPMrZh8EgAJnQ3sO5QVoiz822Xf-bQ@mail.gmail.com>
	<CADkTA4PVKxWW1f1CmfXD3sKd+W0+Vn3JGOV6TeL9PVS+VrWu5A@mail.gmail.com>
	<CADkTA4PXcrk=b92UEPS72Byd5ine_ZRKJs7bzohfZfKBUbzVmw@mail.gmail.com>
	<1316185585.20858.29.camel@ted> <4E7369B7.7080201@mlbassoc.com>
	<CAMTw45Di1_n0N_bOno6_tms0DMpUovWPJ-CbKPiFaptXoE3B8A@mail.gmail.com>
Date: Tue, 20 Sep 2011 09:54:02 -0400
Message-ID: <CADkTA4M97n2SC7SbMFBowgg9KL539J+sWpjpCH79PNvFSWur4w@mail.gmail.com>
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
X-List-Received-Date: Tue, 20 Sep 2011 13:54:04 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 20, 2011 at 5:51 AM, chinmaya hoshing <cahoshing@gmail.com> wro=
te:
> Hi ,
> I have set up a git server for linux-yocto.
> Following is my recipe =A0:
> require linux-yocto.inc
> KMACHINE =3D "yocto/standard/base"
> KMACHINE_qemux86 =A0=3D "yocto/standard/common-pc/base"
> KMACHINE_qemux86-64 =A0=3D "yocto/standard/common-pc-64/base"
> KMACHINE_qemuppc =A0=3D "yocto/standard/qemu-ppc32"
> KMACHINE_qemumips =3D "yocto/standard/mti-malta32-be"
> KMACHINE_qemuarm =A0=3D "yocto/standard/arm-versatile-926ejs"
> KMACHINE_atom-pc =A0=3D "yocto/standard/common-pc/atom-pc"
> KMACHINE_routerstationpro =3D "yocto/standard/routerstationpro"
> KMACHINE_mpc8315e-rdb =3D "yocto/standard/fsl-mpc8315e-rdb"
> KMACHINE_beagleboard =3D "yocto/standard/beagleboard"
> KMACHINE_fishriver =3D "yocto/standard/fishriver"
> KBRANCH =3D ${KMACHINE}
> KMETA =3D meta
> LINUX_VERSION ?=3D "3.0"
> LINUX_VERSION_EXTENSION ?=3D "-yocto-${LINUX_KERNEL_TYPE}"
> PR =3D "r0"
> #PV =3D "${LINUX_VERSION}+git${SRCPV}"
> #SRCREV_FORMAT =3D "meta_machine"
> SRC_URI =3D
> "git://xxx.xxx.xxx.xx/linux-yocto-3.0.git;protocol=3Dgit;nocheckout=3D1;b=
ranch=3D$%7BKBRANCH%7D,meta;name=3Dmachine,meta"
>
> COMPATIBLE_MACHINE =3D
> "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|mpc8315e-rdb|routerstationp=
ro|beagleboard)"
> # Functionality flags
> KERNEL_REVISION_CHECKING ?=3D "t"
> KERNEL_FEATURES=3D"features/netfilter"
> KERNEL_FEATURES_append_qemux86=3D" cfg/sound"
> KERNEL_FEATURES_append_qemux86-64=3D" cfg/sound"
> YOCTO_KERNEL_META_DATA=3Dt
> # Temporary fix for oprofile and latencytop on qemux86-64
> KERNEL_FEATURES_append_qemux86-64=3D" features/profiling"
> KERNEL_FEATURES_append_qemux86-64=3D" features/latencytop"
> # extra tasks
> addtask kernel_link_vmlinux after do_compile before do_install
> addtask validate_branches before do_patch after do_kernel_checkout
> addtask kernel_configcheck after do_configure before do_compile
> require linux-tools.inc
>
>
> But still I am getting the same result as before . My previous git commit=
s
> in poky source are flashed out , also the only recipe remains in
> =A0meta/recipe-kernel/ is linux .

Just so I'm clear here. Are you still working with tarballs of the
source, or have
you setup a git server that is a clone of the linux-yocto-3.0 (as an
example) tree ?

Where are you putting your changes in this scenario ?

Bruce

>
> Regards
> C Hoshing
>
> On Fri, Sep 16, 2011 at 8:52 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>
>> On 2011-09-16 09:06, Richard Purdie wrote:
>>>
>>> On Fri, 2011-09-16 at 10:35 -0400, Bruce Ashfield wrote:
>>>>
>>>> On Fri, Sep 16, 2011 at 10:24 AM, Bruce Ashfield
>>>> <bruce.ashfield@gmail.com> =A0wrote:
>>>>>
>>>>> On Fri, Sep 16, 2011 at 8:38 AM, chinmaya hoshing<cahoshing@gmail.com=
>
>>>>> =A0wrote:
>>>>>>
>>>>>> Hi ,
>>>>>> I am building poky-build minimal live image for fishriver machine on
>>>>>> 64 bit
>>>>>> host machine.
>>>>>> As I am having limited internet band-width, so I have identified all
>>>>>> the
>>>>>> dependent packages and setup a Apache server on my local system so
>>>>>> that I
>>>>>> can redirect the SRC_URI of all the packages to my local server.
>>>>>> I have changed the related recipes to build =A0minimal live image, a=
nd
>>>>>> modify
>>>>>> bitbake.conf to add LOCAL_MIRROR=3D"xxx.xxx.xxx.xxx/packages" , in s=
ide
>>>>>> packages I have tars which =A0was present "build/download" folder.
>>>>>> While building linux-yocto, fetch and unpack was done but during
>>>>>> kernel
>>>>>> checkout whatever git commits I have done previously in poky source
>>>>>> were
>>>>>> flashed out (lost), =A0also the only recipe remains in
>>>>>> =A0meta/recipe-kernel/ is
>>>>>> linux .
>>>>>>
>>>>>> Following are the changes made in
>>>>>> meta/recipes-kernel/linux/linux-yocto_git.bb
>>>>>> #SRCREV_FORMAT =3D "meta_machine"
>>>>>> SRC_URI =3D "${LOCAL_MIRROR}/linux-yocto-3.0-3.0.tar.bz2"
>>>>>> =A0// This tar file I took from
>>>>>>
>>>>>> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/snapshot/l=
inux-yocto-3.0-3.0.tar.bz2
>>>>>> PV =3D "${LINUX_VERSION}"
>>>>>> In file meta-intel/meta-fishriver/conf/machine/fishriver.conf I
>>>>>> modified
>>>>>> PREFERRED_VERSION_linux-yocto =3D "3.0" =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0(which =A0was
>>>>>> PREFERRED_VERSION_linux-yocto =3D "3.0+git%" )
>>>>>>
>>>>>> Can any one help me to find the solution that if I had to pull linux
>>>>>> kernel
>>>>>> source from tar file or such and not from git repository. What thing=
s
>>>>>> I have
>>>>>> to do.
>>>>>
>>>>> The linux-yocto recipes are designed from the ground up to work on a
>>>>> git
>>>>> based repository, and there's really no way to get around that fact
>>>>> (and no
>>>>> plans to make any changes in this area).
>>>>
>>>> Thinking further about this, if the tgz actually was just a tarball of
>>>> the git
>>>> repositories (including the git blobs), it could work.
>>>
>>> This is exactly what we use behind the scenes for mirroring the git
>>> repositories so this should work. It should be possible to use our
>>> existing PREMIRROR code to avoid having to rewrite individual recipes
>>> though.
>>>
>>> It will firstly unpack the tarball, then access whether the revisions i=
t
>>> needs are present. If they're not, it will then (and only then) try and
>>> fetch them over the network. If the tarball is complete it will
>>> therefore not touch the network. If its incomplete it will only fetch
>>> the different (delta).
>>
>> This does work as advertised - I use it exclusively. =A0I have a local
>> package cache which I use with PREMIRROR and I set BB_NO_NETWORK to
>> prove/protect that no network access is required.
>>
>> --
>> ------------------------------------------------------------
>> Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the
>> MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world
>> ------------------------------------------------------------
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

