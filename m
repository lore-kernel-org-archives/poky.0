Return-Path: <cahoshing@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B67A3E004CF
	for <poky@yoctoproject.org>; Tue, 20 Sep 2011 02:51:47 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iabz7 with SMTP id z7so593831iab.35
	for <poky@yoctoproject.org>; Tue, 20 Sep 2011 02:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=yONKX9PJC4AagsiIwLsjF+9e1uwSY0yzrCds4YvbBWw=;
	b=hZTwvb9RKEG7tN27mIj85zMRDQT9/akc60d/KjCBRSv6N6W19IpbQLCl3kdMhiDIhS
	VLYArEBsx6NlWepDRh+vPgb0ws4RBzOrsdyQbER/stEy8GFXF3H7pMNRS5ZghThTeHjO
	XPEwE65TBlTXHOrbGFLEyITjRyrilwC0OeHDg=
MIME-Version: 1.0
Received: by 10.231.60.139 with SMTP id p11mr1003295ibh.73.1316512304720; Tue,
	20 Sep 2011 02:51:44 -0700 (PDT)
Received: by 10.231.208.14 with HTTP; Tue, 20 Sep 2011 02:51:44 -0700 (PDT)
In-Reply-To: <4E7369B7.7080201@mlbassoc.com>
References: <CAMTw45BRK9H5THCL+h33KPMrZh8EgAJnQ3sO5QVoiz822Xf-bQ@mail.gmail.com>
	<CADkTA4PVKxWW1f1CmfXD3sKd+W0+Vn3JGOV6TeL9PVS+VrWu5A@mail.gmail.com>
	<CADkTA4PXcrk=b92UEPS72Byd5ine_ZRKJs7bzohfZfKBUbzVmw@mail.gmail.com>
	<1316185585.20858.29.camel@ted> <4E7369B7.7080201@mlbassoc.com>
Date: Tue, 20 Sep 2011 15:21:44 +0530
Message-ID: <CAMTw45Di1_n0N_bOno6_tms0DMpUovWPJ-CbKPiFaptXoE3B8A@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: poky@yoctoproject.org
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
X-List-Received-Date: Tue, 20 Sep 2011 09:51:48 -0000
Content-Type: multipart/alternative; boundary=0015176f0fc243ecd804ad5c68fc

--0015176f0fc243ecd804ad5c68fc
Content-Type: text/plain; charset=ISO-8859-1

Hi ,

I have set up a git server for linux-yocto.

Following is my recipe  :
require linux-yocto.inc

KMACHINE = "yocto/standard/base"
KMACHINE_qemux86  = "yocto/standard/common-pc/base"
KMACHINE_qemux86-64  = "yocto/standard/common-pc-64/base"
KMACHINE_qemuppc  = "yocto/standard/qemu-ppc32"
KMACHINE_qemumips = "yocto/standard/mti-malta32-be"
KMACHINE_qemuarm  = "yocto/standard/arm-versatile-926ejs"
KMACHINE_atom-pc  = "yocto/standard/common-pc/atom-pc"
KMACHINE_routerstationpro = "yocto/standard/routerstationpro"
KMACHINE_mpc8315e-rdb = "yocto/standard/fsl-mpc8315e-rdb"
KMACHINE_beagleboard = "yocto/standard/beagleboard"
KMACHINE_fishriver = "yocto/standard/fishriver"

KBRANCH = ${KMACHINE}
KMETA = meta

LINUX_VERSION ?= "3.0"
LINUX_VERSION_EXTENSION ?= "-yocto-${LINUX_KERNEL_TYPE}"
PR = "r0"
#PV = "${LINUX_VERSION}+git${SRCPV}"
#SRCREV_FORMAT = "meta_machine"

SRC_URI =
"git://xxx.xxx.xxx.xx/linux-yocto-3.0.git;protocol=git;nocheckout=1;branch=$%7BKBRANCH%7D,meta;name=machine,meta"

COMPATIBLE_MACHINE =
"(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|mpc8315e-rdb|routerstationpro|beagleboard)"

# Functionality flags
KERNEL_REVISION_CHECKING ?= "t"
KERNEL_FEATURES="features/netfilter"
KERNEL_FEATURES_append_qemux86=" cfg/sound"
KERNEL_FEATURES_append_qemux86-64=" cfg/sound"

YOCTO_KERNEL_META_DATA=t

# Temporary fix for oprofile and latencytop on qemux86-64
KERNEL_FEATURES_append_qemux86-64=" features/profiling"
KERNEL_FEATURES_append_qemux86-64=" features/latencytop"

# extra tasks
addtask kernel_link_vmlinux after do_compile before do_install
addtask validate_branches before do_patch after do_kernel_checkout
addtask kernel_configcheck after do_configure before do_compile

require linux-tools.inc



But still I am getting the same result as before . My previous git commits
in poky source are flashed out , also the only recipe remains in
 meta/recipe-kernel/ is linux .


Regards
C Hoshing


On Fri, Sep 16, 2011 at 8:52 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2011-09-16 09:06, Richard Purdie wrote:
>
>> On Fri, 2011-09-16 at 10:35 -0400, Bruce Ashfield wrote:
>>
>>> On Fri, Sep 16, 2011 at 10:24 AM, Bruce Ashfield
>>> <bruce.ashfield@gmail.com>  wrote:
>>>
>>>> On Fri, Sep 16, 2011 at 8:38 AM, chinmaya hoshing<cahoshing@gmail.com>
>>>>  wrote:
>>>>
>>>>> Hi ,
>>>>> I am building poky-build minimal live image for fishriver machine on 64
>>>>> bit
>>>>> host machine.
>>>>> As I am having limited internet band-width, so I have identified all
>>>>> the
>>>>> dependent packages and setup a Apache server on my local system so that
>>>>> I
>>>>> can redirect the SRC_URI of all the packages to my local server.
>>>>> I have changed the related recipes to build  minimal live image, and
>>>>> modify
>>>>> bitbake.conf to add LOCAL_MIRROR="xxx.xxx.xxx.xxx/**packages" , in
>>>>> side
>>>>> packages I have tars which  was present "build/download" folder.
>>>>> While building linux-yocto, fetch and unpack was done but during kernel
>>>>> checkout whatever git commits I have done previously in poky source
>>>>> were
>>>>> flashed out (lost),  also the only recipe remains in
>>>>>  meta/recipe-kernel/ is
>>>>> linux .
>>>>>
>>>>> Following are the changes made in
>>>>> meta/recipes-kernel/linux/linu**x-yocto_git.bb<http://linux-yocto_git.bb>
>>>>> #SRCREV_FORMAT = "meta_machine"
>>>>> SRC_URI = "${LOCAL_MIRROR}/linux-yocto-**3.0-3.0.tar.bz2"
>>>>>  // This tar file I took from
>>>>> http://git.yoctoproject.org/**cgit/cgit.cgi/linux-yocto-3.0/**
>>>>> snapshot/linux-yocto-3.0-3.0.**tar.bz2<http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/snapshot/linux-yocto-3.0-3.0.tar.bz2>
>>>>> PV = "${LINUX_VERSION}"
>>>>> In file meta-intel/meta-fishriver/**conf/machine/fishriver.conf I
>>>>> modified
>>>>> PREFERRED_VERSION_linux-yocto = "3.0"                (which  was
>>>>> PREFERRED_VERSION_linux-yocto = "3.0+git%" )
>>>>>
>>>>> Can any one help me to find the solution that if I had to pull linux
>>>>> kernel
>>>>> source from tar file or such and not from git repository. What things I
>>>>> have
>>>>> to do.
>>>>>
>>>>
>>>> The linux-yocto recipes are designed from the ground up to work on a git
>>>> based repository, and there's really no way to get around that fact (and
>>>> no
>>>> plans to make any changes in this area).
>>>>
>>>
>>> Thinking further about this, if the tgz actually was just a tarball of
>>> the git
>>> repositories (including the git blobs), it could work.
>>>
>>
>> This is exactly what we use behind the scenes for mirroring the git
>> repositories so this should work. It should be possible to use our
>> existing PREMIRROR code to avoid having to rewrite individual recipes
>> though.
>>
>> It will firstly unpack the tarball, then access whether the revisions it
>> needs are present. If they're not, it will then (and only then) try and
>> fetch them over the network. If the tarball is complete it will
>> therefore not touch the network. If its incomplete it will only fetch
>> the different (delta).
>>
>
> This does work as advertised - I use it exclusively.  I have a local
> package cache which I use with PREMIRROR and I set BB_NO_NETWORK to
> prove/protect that no network access is required.
>
> --
> ------------------------------**------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------**------------------------------
>
> ______________________________**_________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/poky<https://lists.yoctoproject.org/listinfo/poky>
>

--0015176f0fc243ecd804ad5c68fc
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi ,<div><br></div><div>I have set up a git server for lin=
ux-yocto.=A0</div><div><br></div><div>Following is my recipe =A0:</div><div=
>require linux-yocto.inc</div><div><div><br></div><div>KMACHINE =3D &quot;y=
octo/standard/base&quot;</div>
<div>KMACHINE_qemux86 =A0=3D &quot;yocto/standard/common-pc/base&quot;</div=
><div>KMACHINE_qemux86-64 =A0=3D &quot;yocto/standard/common-pc-64/base&quo=
t;</div><div>KMACHINE_qemuppc =A0=3D &quot;yocto/standard/qemu-ppc32&quot;<=
/div><div>
KMACHINE_qemumips =3D &quot;yocto/standard/mti-malta32-be&quot;</div><div>K=
MACHINE_qemuarm =A0=3D &quot;yocto/standard/arm-versatile-926ejs&quot;</div=
><div>KMACHINE_atom-pc =A0=3D &quot;yocto/standard/common-pc/atom-pc&quot;<=
/div><div>
KMACHINE_routerstationpro =3D &quot;yocto/standard/routerstationpro&quot;</=
div><div>KMACHINE_mpc8315e-rdb =3D &quot;yocto/standard/fsl-mpc8315e-rdb&qu=
ot;</div><div>KMACHINE_beagleboard =3D &quot;yocto/standard/beagleboard&quo=
t;</div>
<div>KMACHINE_fishriver =3D &quot;yocto/standard/fishriver&quot;</div><div>=
<br></div><div>KBRANCH =3D ${KMACHINE}</div><div>KMETA =3D meta</div><div><=
br></div><div>LINUX_VERSION ?=3D &quot;3.0&quot;</div><div>LINUX_VERSION_EX=
TENSION ?=3D &quot;-yocto-${LINUX_KERNEL_TYPE}&quot;</div>
<div>PR =3D &quot;r0&quot;</div><div>#PV =3D &quot;${LINUX_VERSION}+git${SR=
CPV}&quot;</div><div>#SRCREV_FORMAT =3D &quot;meta_machine&quot;</div><div>=
<br></div><div>SRC_URI =3D &quot;git://xxx.xxx.xxx.xx/linux-yocto-3.0.git;p=
rotocol=3Dgit;nocheckout=3D1;branch=3D$%7BKBRANCH%7D,meta;name=3Dmachine,me=
ta&quot;=A0</div>
<meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8"><d=
iv>=A0 =A0 =A0 =A0 =A0 =A0</div><div>COMPATIBLE_MACHINE =3D &quot;(qemuarm|=
qemux86|qemuppc|qemumips|qemux86-64|mpc8315e-rdb|routerstationpro|beagleboa=
rd)&quot;</div><div>
<br></div><div># Functionality flags</div><div>KERNEL_REVISION_CHECKING ?=
=3D &quot;t&quot;=A0</div><div>KERNEL_FEATURES=3D&quot;features/netfilter&q=
uot;</div><div>KERNEL_FEATURES_append_qemux86=3D&quot; cfg/sound&quot;</div=
><div>
KERNEL_FEATURES_append_qemux86-64=3D&quot; cfg/sound&quot;</div><div><br></=
div><div>YOCTO_KERNEL_META_DATA=3Dt</div><div><br></div><div># Temporary fi=
x for oprofile and latencytop on qemux86-64</div><div>KERNEL_FEATURES_appen=
d_qemux86-64=3D&quot; features/profiling&quot;</div>
<div>KERNEL_FEATURES_append_qemux86-64=3D&quot; features/latencytop&quot;</=
div><div><br></div><div># extra tasks</div><div>addtask kernel_link_vmlinux=
 after do_compile before do_install</div><div>addtask validate_branches bef=
ore do_patch after do_kernel_checkout</div>
<div>addtask kernel_configcheck after do_configure before do_compile</div><=
div><br></div><div>require linux-tools.inc</div><div><br></div><div><br></d=
iv><div>=A0</div><div>But still I am getting the same result as before . My=
 previous git commits in poky source are flashed out , also the only recipe=
 remains in =A0meta/recipe-kernel/ is linux .</div>
<div><br></div><div><br></div><div>Regards</div><div>C Hoshing</div><div>=
=A0=A0</div><br><div class=3D"gmail_quote">On Fri, Sep 16, 2011 at 8:52 PM,=
 Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com">gar=
y@mlbassoc.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;"><div class=3D"im">On 2011-09-16 09:06, Rich=
ard Purdie wrote:<br>
</div><div><div></div><div class=3D"h5"><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
On Fri, 2011-09-16 at 10:35 -0400, Bruce Ashfield wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Fri, Sep 16, 2011 at 10:24 AM, Bruce Ashfield<br>
&lt;<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.ash=
field@gmail.com</a>&gt; =A0wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Fri, Sep 16, 2011 at 8:38 AM, chinmaya hoshing&lt;<a href=3D"mailto:caho=
shing@gmail.com" target=3D"_blank">cahoshing@gmail.com</a>&gt; =A0wrote:<br=
>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi ,<br>
I am building poky-build minimal live image for fishriver machine on 64 bit=
<br>
host machine.<br>
As I am having limited internet band-width, so I have identified all the<br=
>
dependent packages and setup a Apache server on my local system so that I<b=
r>
can redirect the SRC_URI of all the packages to my local server.<br>
I have changed the related recipes to build =A0minimal live image, and modi=
fy<br>
bitbake.conf to add LOCAL_MIRROR=3D&quot;xxx.xxx.xxx.xxx/<u></u>packages&qu=
ot; , in side<br>
packages I have tars which =A0was present &quot;build/download&quot; folder=
.<br>
While building linux-yocto, fetch and unpack was done but during kernel<br>
checkout whatever git commits I have done previously in poky source were<br=
>
flashed out (lost), =A0also the only recipe remains in =A0meta/recipe-kerne=
l/ is<br>
linux .<br>
<br>
Following are the changes made in<br>
meta/recipes-kernel/linux/<a href=3D"http://linux-yocto_git.bb" target=3D"_=
blank">linu<u></u>x-yocto_git.bb</a><br>
#SRCREV_FORMAT =3D &quot;meta_machine&quot;<br>
SRC_URI =3D &quot;${LOCAL_MIRROR}/linux-yocto-<u></u>3.0-3.0.tar.bz2&quot;<=
br>
 =A0// This tar file I took from<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/snapsh=
ot/linux-yocto-3.0-3.0.tar.bz2" target=3D"_blank">http://git.yoctoproject.o=
rg/<u></u>cgit/cgit.cgi/linux-yocto-3.0/<u></u>snapshot/linux-yocto-3.0-3.0=
.<u></u>tar.bz2</a><br>

PV =3D &quot;${LINUX_VERSION}&quot;<br>
In file meta-intel/meta-fishriver/<u></u>conf/machine/fishriver.conf I modi=
fied<br>
PREFERRED_VERSION_linux-yocto =3D &quot;3.0&quot; =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0(which =A0was<br>
PREFERRED_VERSION_linux-yocto =3D &quot;3.0+git%&quot; )<br>
<br>
Can any one help me to find the solution that if I had to pull linux kernel=
<br>
source from tar file or such and not from git repository. What things I hav=
e<br>
to do.<br>
</blockquote>
<br>
The linux-yocto recipes are designed from the ground up to work on a git<br=
>
based repository, and there&#39;s really no way to get around that fact (an=
d no<br>
plans to make any changes in this area).<br>
</blockquote>
<br>
Thinking further about this, if the tgz actually was just a tarball of the =
git<br>
repositories (including the git blobs), it could work.<br>
</blockquote>
<br>
This is exactly what we use behind the scenes for mirroring the git<br>
repositories so this should work. It should be possible to use our<br>
existing PREMIRROR code to avoid having to rewrite individual recipes<br>
though.<br>
<br>
It will firstly unpack the tarball, then access whether the revisions it<br=
>
needs are present. If they&#39;re not, it will then (and only then) try and=
<br>
fetch them over the network. If the tarball is complete it will<br>
therefore not touch the network. If its incomplete it will only fetch<br>
the different (delta).<br>
</blockquote>
<br></div></div><div class=3D"im">
This does work as advertised - I use it exclusively. =A0I have a local<br>
package cache which I use with PREMIRROR and I set BB_NO_NETWORK to<br>
prove/protect that no network access is required.<br>
<br></div><font color=3D"#888888">
-- <br>
------------------------------<u></u>------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------<u></u>------------------------------</font><=
div><div></div><div class=3D"h5"><br>
______________________________<u></u>_________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.<u></u>org/listinfo/poky</a><br>
</div></div></blockquote></div><br></div></div>

--0015176f0fc243ecd804ad5c68fc--
