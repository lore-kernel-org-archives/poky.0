Return-Path: <akshat.embedded@gmail.com>
Received: from mail-qy0-f169.google.com (mail-qy0-f169.google.com
	[209.85.216.169])
	by mx1.pokylinux.org (Postfix) with ESMTP id ABCCA4C800AB
	for <poky@yoctoproject.org>; Wed, 29 Jun 2011 05:52:19 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qyk32 with SMTP id 32so2961303qyk.14
	for <poky@yoctoproject.org>; Wed, 29 Jun 2011 03:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=LSdq13Kv4WQ5BWBjv2sxvnXKG39+bmgDHxDmThtCrJo=;
	b=rUvmQMkjwYbG/1AOaR3zUCRQ75H2D29BlgxB8lEY7pMFpiJTa4LwfVFkXTMoRRAgwv
	OCiJaNVa+AoyTN6zLozsfAuOE8AqDSp/PvbCduYJoYTKXNY7prYkC58FrY9OiT/zHMKh
	IpwnroreyHRB2fPacJVz/Bfj4Y9iB4aZ6in9c=
MIME-Version: 1.0
Received: by 10.224.32.94 with SMTP id b30mr418995qad.302.1309344739313; Wed,
	29 Jun 2011 03:52:19 -0700 (PDT)
Received: by 10.229.92.3 with HTTP; Wed, 29 Jun 2011 03:52:19 -0700 (PDT)
In-Reply-To: <1309338098.20015.327.camel@rex>
References: <BANLkTi=0LjMdJAKGHPJGGhQiCdZnFtgD=Q@mail.gmail.com>
	<1309338098.20015.327.camel@rex>
Date: Wed, 29 Jun 2011 16:22:19 +0530
Message-ID: <BANLkTik8ZqtJ-EshUaFfBBK62Ds5FvwVFg@mail.gmail.com>
From: Akshat Saha <akshat.embedded@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@yoctoproject.org
Subject: Re: Problem getting PulseAudio Server Binaries
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
X-List-Received-Date: Wed, 29 Jun 2011 10:52:19 -0000
Content-Type: multipart/alternative; boundary=001517573ea41348f204a6d79425

--001517573ea41348f204a6d79425
Content-Type: text/plain; charset=ISO-8859-1

Thanks Richard,

I had tried this earlier too, but was building after clearing pulseaudio
instances form sstate-cache/ tmp/stamps and tmp/work.
It was giving me *"unbuildable, Nothing provides ... "* error.

But now, it seems to work just fine. :)
Will try it out. And post the results.

--
Thanks & Regards,
Akshat


On Wed, Jun 29, 2011 at 2:31 PM, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Wed, 2011-06-29 at 14:25 +0530, Akshat Saha wrote:
> > Hi All,
> >
> > I am trying to pull PulseAudio.
> > But am able to get conf(/usr/share/pulseaudio) files only in my RFS.
> > In the pulseaudio.inc file, it can be observed below that there are
> > some function and parametres specific to pulseaudio-server package .
> > Can anyone guide me on how to get other pulseaudio binaries and
> > configs into my build.
> >
> > I am using Ubuntu 10.10, 64-bit Host machine.
> > Building for MACHINE?="fishriver"
> >
> > Command used to build:
> > $ bitbake poky-image-minimal-xyz-live
> >
> > Contents of the poky-image-minimal-xyz.bb :
> > require recipes-core/images/poky-image-minimal.bb
> > IMAGE_INSTALL += "pulseaudio"
> > LICENSE = "MIT"
>
> You're close here. If you look through this list:
>
> > PACKAGES =+ "libpulsecore libpulsecommon libpulsedsp libpulse
> > libpulse-simple libpulse-browse libpulse-mainloop-glib \
> >              pulseaudio-server pulseaudio-misc
> > pulseaudio-gconf-helper"
>
> you can then change IMAGE_INSTALL to include the pieces you want, e.g:
>
> IMAGE_INSTALL += "pulseaudio-server"
>
> Cheers,
>
> Richard
>
>

--001517573ea41348f204a6d79425
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks Richard, <br><br>I had tried this earlier too, but was building afte=
r clearing pulseaudio instances form sstate-cache/ tmp/stamps and tmp/work.=
<br>It was giving me <b>&quot;unbuildable, Nothing provides ... &quot;</b> =
error. <br>
<br>But now, it seems to work just fine. :)<br>Will try it out. And post th=
e results.<br><br>--<br>Thanks &amp; Regards,<br><div><span style=3D"color:=
rgb(51, 51, 51);font-family:georgia, serif">Akshat</span><br></div><br><br>
<div class=3D"gmail_quote">On Wed, Jun 29, 2011 at 2:31 PM, Richard Purdie =
<span dir=3D"ltr">&lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org"=
>richard.purdie@linuxfoundation.org</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex;">
<div class=3D"im">On Wed, 2011-06-29 at 14:25 +0530, Akshat Saha wrote:<br>
&gt; Hi All,<br>
&gt;<br>
&gt; I am trying to pull PulseAudio.<br>
&gt; But am able to get conf(/usr/share/pulseaudio) files only in my RFS.<b=
r>
&gt; In the pulseaudio.inc file, it can be observed below that there are<br=
>
&gt; some function and parametres specific to pulseaudio-server package .<b=
r>
&gt; Can anyone guide me on how to get other pulseaudio binaries and<br>
&gt; configs into my build.<br>
&gt;<br>
&gt; I am using Ubuntu 10.10, 64-bit Host machine.<br>
&gt; Building for MACHINE?=3D&quot;fishriver&quot;<br>
&gt;<br>
&gt; Command used to build:<br>
&gt; $ bitbake poky-image-minimal-xyz-live<br>
&gt;<br>
&gt; Contents of the <a href=3D"http://poky-image-minimal-xyz.bb" target=3D=
"_blank">poky-image-minimal-xyz.bb</a> :<br>
&gt; require recipes-core/images/<a href=3D"http://poky-image-minimal.bb" t=
arget=3D"_blank">poky-image-minimal.bb</a><br>
&gt; IMAGE_INSTALL +=3D &quot;pulseaudio&quot;<br>
&gt; LICENSE =3D &quot;MIT&quot;<br>
<br>
</div>You&#39;re close here. If you look through this list:<br>
<div class=3D"im"><br>
&gt; PACKAGES =3D+ &quot;libpulsecore libpulsecommon libpulsedsp libpulse<b=
r>
&gt; libpulse-simple libpulse-browse libpulse-mainloop-glib \<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0pulseaudio-server pulseaudio-misc<br>
&gt; pulseaudio-gconf-helper&quot;<br>
<br>
</div>you can then change IMAGE_INSTALL to include the pieces you want, e.g=
:<br>
<br>
IMAGE_INSTALL +=3D &quot;pulseaudio-server&quot;<br>
<br>
Cheers,<br>
<font color=3D"#888888"><br>
Richard<br>
<br>
</font></blockquote></div><br>

--001517573ea41348f204a6d79425--
