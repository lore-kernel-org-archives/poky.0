Return-Path: <cahoshing@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66D22E0055C
	for <poky@yoctoproject.org>; Tue, 20 Sep 2011 21:49:50 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iabz7 with SMTP id z7so2062346iab.35
	for <poky@yoctoproject.org>; Tue, 20 Sep 2011 21:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=13ZNJryuvX/uGB634vP0sS7F2NWjz4FpmCuPgkoU/0I=;
	b=lO5aUbkOiBsMHdkwo1ysgeiJAftxWNBsmIecQCB2VoKljA/XUVckt66zawnPcKViVt
	6jU8O1mbvtP5T3juawY7033VojsejolRsgfmiIVkANMmu0iEy2ALx+HeQ3Rfai324DzU
	AW/QfNPyIwSi5TA7WMgETwq+m3eSJ+lwTAbTw=
MIME-Version: 1.0
Received: by 10.231.65.72 with SMTP id h8mr538545ibi.47.1316580588073; Tue, 20
	Sep 2011 21:49:48 -0700 (PDT)
Received: by 10.231.208.14 with HTTP; Tue, 20 Sep 2011 21:49:48 -0700 (PDT)
In-Reply-To: <CADkTA4M97n2SC7SbMFBowgg9KL539J+sWpjpCH79PNvFSWur4w@mail.gmail.com>
References: <CAMTw45BRK9H5THCL+h33KPMrZh8EgAJnQ3sO5QVoiz822Xf-bQ@mail.gmail.com>
	<CADkTA4PVKxWW1f1CmfXD3sKd+W0+Vn3JGOV6TeL9PVS+VrWu5A@mail.gmail.com>
	<CADkTA4PXcrk=b92UEPS72Byd5ine_ZRKJs7bzohfZfKBUbzVmw@mail.gmail.com>
	<1316185585.20858.29.camel@ted> <4E7369B7.7080201@mlbassoc.com>
	<CAMTw45Di1_n0N_bOno6_tms0DMpUovWPJ-CbKPiFaptXoE3B8A@mail.gmail.com>
	<CADkTA4M97n2SC7SbMFBowgg9KL539J+sWpjpCH79PNvFSWur4w@mail.gmail.com>
Date: Wed, 21 Sep 2011 10:19:48 +0530
Message-ID: <CAMTw45DzQ2-3tdD5pyMA2-RhCuZaAtKWxCvoJb07piW_s9zqvg@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
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
X-List-Received-Date: Wed, 21 Sep 2011 04:49:50 -0000
Content-Type: multipart/alternative; boundary=00151773db9845328a04ad6c4e74

--00151773db9845328a04ad6c4e74
Content-Type: text/plain; charset=ISO-8859-1

Hi ,

I have setup a git server that is clone of linux-yocto-3.0  from
git://git.yoctoproject.org/linux-yocto-3.0 repository.

Regards
C Hoshing

On Tue, Sep 20, 2011 at 7:24 PM, Bruce Ashfield <bruce.ashfield@gmail.com>wrote:

> On Tue, Sep 20, 2011 at 5:51 AM, chinmaya hoshing <cahoshing@gmail.com>
> wrote:
> > Hi ,
> > I have set up a git server for linux-yocto.
> > Following is my recipe  :
> > require linux-yocto.inc
> > KMACHINE = "yocto/standard/base"
> > KMACHINE_qemux86  = "yocto/standard/common-pc/base"
> > KMACHINE_qemux86-64  = "yocto/standard/common-pc-64/base"
> > KMACHINE_qemuppc  = "yocto/standard/qemu-ppc32"
> > KMACHINE_qemumips = "yocto/standard/mti-malta32-be"
> > KMACHINE_qemuarm  = "yocto/standard/arm-versatile-926ejs"
> > KMACHINE_atom-pc  = "yocto/standard/common-pc/atom-pc"
> > KMACHINE_routerstationpro = "yocto/standard/routerstationpro"
> > KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
> > KMACHINE_beagleboard = "yocto/standard/beagleboard"
> > KMACHINE_fishriver = "yocto/standard/fishriver"
> > KBRANCH = ${KMACHINE}
> > KMETA = meta
> > LINUX_VERSION ?= "3.0"
> > LINUX_VERSION_EXTENSION ?= "-yocto-${LINUX_KERNEL_TYPE}"
> > PR = "r0"
> > #PV = "${LINUX_VERSION}+git${SRCPV}"
> > #SRCREV_FORMAT = "meta_machine"
> > SRC_URI =
> >
> "git://xxx.xxx.xxx.xx/linux-yocto-3.0.git;protocol=git;nocheckout=1;branch=$%7BKBRANCH%7D,meta;name=machine,meta"
> >
> > COMPATIBLE_MACHINE =
> >
> "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|mpc8315e-rdb|routerstationpro|beagleboard)"
> > # Functionality flags
> > KERNEL_REVISION_CHECKING ?= "t"
> > KERNEL_FEATURES="features/netfilter"
> > KERNEL_FEATURES_append_qemux86=" cfg/sound"
> > KERNEL_FEATURES_append_qemux86-64=" cfg/sound"
> > YOCTO_KERNEL_META_DATA=t
> > # Temporary fix for oprofile and latencytop on qemux86-64
> > KERNEL_FEATURES_append_qemux86-64=" features/profiling"
> > KERNEL_FEATURES_append_qemux86-64=" features/latencytop"
> > # extra tasks
> > addtask kernel_link_vmlinux after do_compile before do_install
> > addtask validate_branches before do_patch after do_kernel_checkout
> > addtask kernel_configcheck after do_configure before do_compile
> > require linux-tools.inc
> >
> >
> > But still I am getting the same result as before . My previous git
> commits
> > in poky source are flashed out , also the only recipe remains in
> >  meta/recipe-kernel/ is linux .
>
> Just so I'm clear here. Are you still working with tarballs of the
> source, or have
> you setup a git server that is a clone of the linux-yocto-3.0 (as an
> example) tree ?
>
> Where are you putting your changes in this scenario ?
>
> Bruce
>
> >
> > Regards
> > C Hoshing
> >
> > On Fri, Sep 16, 2011 at 8:52 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> >>
> >> On 2011-09-16 09:06, Richard Purdie wrote:
> >>>
> >>> On Fri, 2011-09-16 at 10:35 -0400, Bruce Ashfield wrote:
> >>>>
> >>>> On Fri, Sep 16, 2011 at 10:24 AM, Bruce Ashfield
> >>>> <bruce.ashfield@gmail.com>  wrote:
> >>>>>
> >>>>> On Fri, Sep 16, 2011 at 8:38 AM, chinmaya hoshing<
> cahoshing@gmail.com>
> >>>>>  wrote:
> >>>>>>
> >>>>>> Hi ,
> >>>>>> I am building poky-build minimal live image for fishriver machine on
> >>>>>> 64 bit
> >>>>>> host machine.
> >>>>>> As I am having limited internet band-width, so I have identified all
> >>>>>> the
> >>>>>> dependent packages and setup a Apache server on my local system so
> >>>>>> that I
> >>>>>> can redirect the SRC_URI of all the packages to my local server.
> >>>>>> I have changed the related recipes to build  minimal live image, and
> >>>>>> modify
> >>>>>> bitbake.conf to add LOCAL_MIRROR="xxx.xxx.xxx.xxx/packages" , in
> side
> >>>>>> packages I have tars which  was present "build/download" folder.
> >>>>>> While building linux-yocto, fetch and unpack was done but during
> >>>>>> kernel
> >>>>>> checkout whatever git commits I have done previously in poky source
> >>>>>> were
> >>>>>> flashed out (lost),  also the only recipe remains in
> >>>>>>  meta/recipe-kernel/ is
> >>>>>> linux .
> >>>>>>
> >>>>>> Following are the changes made in
> >>>>>> meta/recipes-kernel/linux/linux-yocto_git.bb
> >>>>>> #SRCREV_FORMAT = "meta_machine"
> >>>>>> SRC_URI = "${LOCAL_MIRROR}/linux-yocto-3.0-3.0.tar.bz2"
> >>>>>>  // This tar file I took from
> >>>>>>
> >>>>>>
> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/snapshot/linux-yocto-3.0-3.0.tar.bz2
> >>>>>> PV = "${LINUX_VERSION}"
> >>>>>> In file meta-intel/meta-fishriver/conf/machine/fishriver.conf I
> >>>>>> modified
> >>>>>> PREFERRED_VERSION_linux-yocto = "3.0"                (which  was
> >>>>>> PREFERRED_VERSION_linux-yocto = "3.0+git%" )
> >>>>>>
> >>>>>> Can any one help me to find the solution that if I had to pull linux
> >>>>>> kernel
> >>>>>> source from tar file or such and not from git repository. What
> things
> >>>>>> I have
> >>>>>> to do.
> >>>>>
> >>>>> The linux-yocto recipes are designed from the ground up to work on a
> >>>>> git
> >>>>> based repository, and there's really no way to get around that fact
> >>>>> (and no
> >>>>> plans to make any changes in this area).
> >>>>
> >>>> Thinking further about this, if the tgz actually was just a tarball of
> >>>> the git
> >>>> repositories (including the git blobs), it could work.
> >>>
> >>> This is exactly what we use behind the scenes for mirroring the git
> >>> repositories so this should work. It should be possible to use our
> >>> existing PREMIRROR code to avoid having to rewrite individual recipes
> >>> though.
> >>>
> >>> It will firstly unpack the tarball, then access whether the revisions
> it
> >>> needs are present. If they're not, it will then (and only then) try and
> >>> fetch them over the network. If the tarball is complete it will
> >>> therefore not touch the network. If its incomplete it will only fetch
> >>> the different (delta).
> >>
> >> This does work as advertised - I use it exclusively.  I have a local
> >> package cache which I use with PREMIRROR and I set BB_NO_NETWORK to
> >> prove/protect that no network access is required.
> >>
> >> --
> >> ------------------------------------------------------------
> >> Gary Thomas                 |  Consulting for the
> >> MLB Associates              |    Embedded world
> >> ------------------------------------------------------------
> >> _______________________________________________
> >> poky mailing list
> >> poky@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/poky
> >
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> >
> >
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"
>

--00151773db9845328a04ad6c4e74
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi ,<div><br></div><div>I have setup a git server that is =
clone of=A0linux-yocto-3.0 =A0from=A0</div><div><a href=3D"git://git.yoctop=
roject.org/linux-yocto-3.0">git://git.yoctoproject.org/linux-yocto-3.0</a>=
=A0repository.</div>
<div><br></div><div>Regards=A0</div><div>C Hoshing<br><br><div class=3D"gma=
il_quote">On Tue, Sep 20, 2011 at 7:24 PM, Bruce Ashfield <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:bruce.ashfield@gmail.com">bruce.ashfield@gmail.com</=
a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;"><div class=3D"im">On Tue, Sep 20, 2011 at 5=
:51 AM, chinmaya hoshing &lt;<a href=3D"mailto:cahoshing@gmail.com">cahoshi=
ng@gmail.com</a>&gt; wrote:<br>

&gt; Hi ,<br>
</div><div><div></div><div class=3D"h5">&gt; I have set up a git server for=
 linux-yocto.<br>
&gt; Following is my recipe =A0:<br>
&gt; require linux-yocto.inc<br>
&gt; KMACHINE =3D &quot;yocto/standard/base&quot;<br>
&gt; KMACHINE_qemux86 =A0=3D &quot;yocto/standard/common-pc/base&quot;<br>
&gt; KMACHINE_qemux86-64 =A0=3D &quot;yocto/standard/common-pc-64/base&quot=
;<br>
&gt; KMACHINE_qemuppc =A0=3D &quot;yocto/standard/qemu-ppc32&quot;<br>
&gt; KMACHINE_qemumips =3D &quot;yocto/standard/mti-malta32-be&quot;<br>
&gt; KMACHINE_qemuarm =A0=3D &quot;yocto/standard/arm-versatile-926ejs&quot=
;<br>
&gt; KMACHINE_atom-pc =A0=3D &quot;yocto/standard/common-pc/atom-pc&quot;<b=
r>
&gt; KMACHINE_routerstationpro =3D &quot;yocto/standard/routerstationpro&qu=
ot;<br>
&gt; KMACHINE_mpc8315e-rdb =3D &quot;yocto/standard/fsl-mpc8315e-rdb&quot;<=
br>
&gt; KMACHINE_beagleboard =3D &quot;yocto/standard/beagleboard&quot;<br>
&gt; KMACHINE_fishriver =3D &quot;yocto/standard/fishriver&quot;<br>
&gt; KBRANCH =3D ${KMACHINE}<br>
&gt; KMETA =3D meta<br>
&gt; LINUX_VERSION ?=3D &quot;3.0&quot;<br>
&gt; LINUX_VERSION_EXTENSION ?=3D &quot;-yocto-${LINUX_KERNEL_TYPE}&quot;<b=
r>
&gt; PR =3D &quot;r0&quot;<br>
&gt; #PV =3D &quot;${LINUX_VERSION}+git${SRCPV}&quot;<br>
&gt; #SRCREV_FORMAT =3D &quot;meta_machine&quot;<br>
&gt; SRC_URI =3D<br>
&gt; &quot;git://xxx.xxx.xxx.xx/linux-yocto-3.0.git;protocol=3Dgit;nochecko=
ut=3D1;branch=3D$%7BKBRANCH%7D,meta;name=3Dmachine,meta&quot;<br>
&gt;<br>
&gt; COMPATIBLE_MACHINE =3D<br>
&gt; &quot;(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|mpc8315e-rdb|router=
stationpro|beagleboard)&quot;<br>
&gt; # Functionality flags<br>
&gt; KERNEL_REVISION_CHECKING ?=3D &quot;t&quot;<br>
&gt; KERNEL_FEATURES=3D&quot;features/netfilter&quot;<br>
&gt; KERNEL_FEATURES_append_qemux86=3D&quot; cfg/sound&quot;<br>
&gt; KERNEL_FEATURES_append_qemux86-64=3D&quot; cfg/sound&quot;<br>
&gt; YOCTO_KERNEL_META_DATA=3Dt<br>
&gt; # Temporary fix for oprofile and latencytop on qemux86-64<br>
&gt; KERNEL_FEATURES_append_qemux86-64=3D&quot; features/profiling&quot;<br=
>
&gt; KERNEL_FEATURES_append_qemux86-64=3D&quot; features/latencytop&quot;<b=
r>
&gt; # extra tasks<br>
&gt; addtask kernel_link_vmlinux after do_compile before do_install<br>
&gt; addtask validate_branches before do_patch after do_kernel_checkout<br>
&gt; addtask kernel_configcheck after do_configure before do_compile<br>
&gt; require linux-tools.inc<br>
&gt;<br>
&gt;<br>
&gt; But still I am getting the same result as before . My previous git com=
mits<br>
&gt; in poky source are flashed out , also the only recipe remains in<br>
&gt; =A0meta/recipe-kernel/ is linux .<br>
<br>
</div></div>Just so I&#39;m clear here. Are you still working with tarballs=
 of the<br>
source, or have<br>
you setup a git server that is a clone of the linux-yocto-3.0 (as an<br>
example) tree ?<br>
<br>
Where are you putting your changes in this scenario ?<br>
<font color=3D"#888888"><br>
Bruce<br>
</font><div><div></div><div class=3D"h5"><br>
&gt;<br>
&gt; Regards<br>
&gt; C Hoshing<br>
&gt;<br>
&gt; On Fri, Sep 16, 2011 at 8:52 PM, Gary Thomas &lt;<a href=3D"mailto:gar=
y@mlbassoc.com">gary@mlbassoc.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On 2011-09-16 09:06, Richard Purdie wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Fri, 2011-09-16 at 10:35 -0400, Bruce Ashfield wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On Fri, Sep 16, 2011 at 10:24 AM, Bruce Ashfield<br>
&gt;&gt;&gt;&gt; &lt;<a href=3D"mailto:bruce.ashfield@gmail.com">bruce.ashf=
ield@gmail.com</a>&gt; =A0wrote:<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; On Fri, Sep 16, 2011 at 8:38 AM, chinmaya hoshing&lt;<=
a href=3D"mailto:cahoshing@gmail.com">cahoshing@gmail.com</a>&gt;<br>
&gt;&gt;&gt;&gt;&gt; =A0wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Hi ,<br>
&gt;&gt;&gt;&gt;&gt;&gt; I am building poky-build minimal live image for fi=
shriver machine on<br>
&gt;&gt;&gt;&gt;&gt;&gt; 64 bit<br>
&gt;&gt;&gt;&gt;&gt;&gt; host machine.<br>
&gt;&gt;&gt;&gt;&gt;&gt; As I am having limited internet band-width, so I h=
ave identified all<br>
&gt;&gt;&gt;&gt;&gt;&gt; the<br>
&gt;&gt;&gt;&gt;&gt;&gt; dependent packages and setup a Apache server on my=
 local system so<br>
&gt;&gt;&gt;&gt;&gt;&gt; that I<br>
&gt;&gt;&gt;&gt;&gt;&gt; can redirect the SRC_URI of all the packages to my=
 local server.<br>
&gt;&gt;&gt;&gt;&gt;&gt; I have changed the related recipes to build =A0min=
imal live image, and<br>
&gt;&gt;&gt;&gt;&gt;&gt; modify<br>
&gt;&gt;&gt;&gt;&gt;&gt; bitbake.conf to add LOCAL_MIRROR=3D&quot;xxx.xxx.x=
xx.xxx/packages&quot; , in side<br>
&gt;&gt;&gt;&gt;&gt;&gt; packages I have tars which =A0was present &quot;bu=
ild/download&quot; folder.<br>
&gt;&gt;&gt;&gt;&gt;&gt; While building linux-yocto, fetch and unpack was d=
one but during<br>
&gt;&gt;&gt;&gt;&gt;&gt; kernel<br>
&gt;&gt;&gt;&gt;&gt;&gt; checkout whatever git commits I have done previous=
ly in poky source<br>
&gt;&gt;&gt;&gt;&gt;&gt; were<br>
&gt;&gt;&gt;&gt;&gt;&gt; flashed out (lost), =A0also the only recipe remain=
s in<br>
&gt;&gt;&gt;&gt;&gt;&gt; =A0meta/recipe-kernel/ is<br>
&gt;&gt;&gt;&gt;&gt;&gt; linux .<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Following are the changes made in<br>
&gt;&gt;&gt;&gt;&gt;&gt; meta/recipes-kernel/linux/<a href=3D"http://linux-=
yocto_git.bb" target=3D"_blank">linux-yocto_git.bb</a><br>
&gt;&gt;&gt;&gt;&gt;&gt; #SRCREV_FORMAT =3D &quot;meta_machine&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt; SRC_URI =3D &quot;${LOCAL_MIRROR}/linux-yocto-3.0-=
3.0.tar.bz2&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt; =A0// This tar file I took from<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"http://git.yoctoproject.org/cgit/cgit.c=
gi/linux-yocto-3.0/snapshot/linux-yocto-3.0-3.0.tar.bz2" target=3D"_blank">=
http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/snapshot/linux-yo=
cto-3.0-3.0.tar.bz2</a><br>

&gt;&gt;&gt;&gt;&gt;&gt; PV =3D &quot;${LINUX_VERSION}&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt; In file meta-intel/meta-fishriver/conf/machine/fis=
hriver.conf I<br>
&gt;&gt;&gt;&gt;&gt;&gt; modified<br>
&gt;&gt;&gt;&gt;&gt;&gt; PREFERRED_VERSION_linux-yocto =3D &quot;3.0&quot; =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0(which =A0was<br>
&gt;&gt;&gt;&gt;&gt;&gt; PREFERRED_VERSION_linux-yocto =3D &quot;3.0+git%&q=
uot; )<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Can any one help me to find the solution that if I=
 had to pull linux<br>
&gt;&gt;&gt;&gt;&gt;&gt; kernel<br>
&gt;&gt;&gt;&gt;&gt;&gt; source from tar file or such and not from git repo=
sitory. What things<br>
&gt;&gt;&gt;&gt;&gt;&gt; I have<br>
&gt;&gt;&gt;&gt;&gt;&gt; to do.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; The linux-yocto recipes are designed from the ground u=
p to work on a<br>
&gt;&gt;&gt;&gt;&gt; git<br>
&gt;&gt;&gt;&gt;&gt; based repository, and there&#39;s really no way to get=
 around that fact<br>
&gt;&gt;&gt;&gt;&gt; (and no<br>
&gt;&gt;&gt;&gt;&gt; plans to make any changes in this area).<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Thinking further about this, if the tgz actually was just =
a tarball of<br>
&gt;&gt;&gt;&gt; the git<br>
&gt;&gt;&gt;&gt; repositories (including the git blobs), it could work.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; This is exactly what we use behind the scenes for mirroring th=
e git<br>
&gt;&gt;&gt; repositories so this should work. It should be possible to use=
 our<br>
&gt;&gt;&gt; existing PREMIRROR code to avoid having to rewrite individual =
recipes<br>
&gt;&gt;&gt; though.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; It will firstly unpack the tarball, then access whether the re=
visions it<br>
&gt;&gt;&gt; needs are present. If they&#39;re not, it will then (and only =
then) try and<br>
&gt;&gt;&gt; fetch them over the network. If the tarball is complete it wil=
l<br>
&gt;&gt;&gt; therefore not touch the network. If its incomplete it will onl=
y fetch<br>
&gt;&gt;&gt; the different (delta).<br>
&gt;&gt;<br>
&gt;&gt; This does work as advertised - I use it exclusively. =A0I have a l=
ocal<br>
&gt;&gt; package cache which I use with PREMIRROR and I set BB_NO_NETWORK t=
o<br>
&gt;&gt; prove/protect that no network access is required.<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; ------------------------------------------------------------<br>
&gt;&gt; Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for th=
e<br>
&gt;&gt; MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<=
br>
&gt;&gt; ------------------------------------------------------------<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; poky mailing list<br>
&gt;&gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a>=
<br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D=
"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_bl=
ank">https://lists.yoctoproject.org/listinfo/poky</a><br>
&gt;<br>
&gt;<br>
<br>
<br>
<br>
</div></div>--<br>
<div><div></div><div class=3D"h5">&quot;Thou shalt not follow the NULL poin=
ter, for chaos and madness await<br>
thee at its end&quot;<br>
</div></div></blockquote></div><br></div></div>

--00151773db9845328a04ad6c4e74--
