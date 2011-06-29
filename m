Return-Path: <akshat.embedded@gmail.com>
Received: from mail-qy0-f169.google.com (mail-qy0-f169.google.com
	[209.85.216.169])
	by mx1.pokylinux.org (Postfix) with ESMTP id DEDFA4C80039
	for <poky@yoctoproject.org>; Wed, 29 Jun 2011 07:47:15 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qyk32 with SMTP id 32so3024637qyk.14
	for <poky@yoctoproject.org>; Wed, 29 Jun 2011 05:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=3ODC/Wz7XIWz2NqgMwot0L+9I8MixFUSt+8exn4wHvw=;
	b=NdEm3s8d7TU15aNndbDDmEqzRQHRkHSAmvpfbhZDdOGXjoywZtWW8rkPaqwB/64H9+
	IGTBdmVWHH6Qw7R72yGDQ8utJ15m3ZNdRoQfZ5kRTkN8UJGqcDHvhCDbOxXI+VWaP9hL
	68WXcCtaT77kI/Hl0ASPzcGbXBUirHOMYnvvo=
MIME-Version: 1.0
Received: by 10.229.77.80 with SMTP id f16mr526407qck.144.1309351635040; Wed,
	29 Jun 2011 05:47:15 -0700 (PDT)
Received: by 10.229.92.3 with HTTP; Wed, 29 Jun 2011 05:47:14 -0700 (PDT)
In-Reply-To: <BANLkTik8ZqtJ-EshUaFfBBK62Ds5FvwVFg@mail.gmail.com>
References: <BANLkTi=0LjMdJAKGHPJGGhQiCdZnFtgD=Q@mail.gmail.com>
	<1309338098.20015.327.camel@rex>
	<BANLkTik8ZqtJ-EshUaFfBBK62Ds5FvwVFg@mail.gmail.com>
Date: Wed, 29 Jun 2011 18:17:14 +0530
Message-ID: <BANLkTi=LRPAxwzk+4FnfTBKyOzKg5v=LFQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 29 Jun 2011 12:47:16 -0000
Content-Type: multipart/alternative; boundary=002354470fb817b8d604a6d92f6b

--002354470fb817b8d604a6d92f6b
Content-Type: text/plain; charset=ISO-8859-1

Hi Richard,

PulseAudio seems to work fine now, but *pkg_postinst_${PN}-server() *does
not seem to be working.
Can you tell me how to make sure that it works, so that I do not have to do
create *pulse* user manually, after booting the machine.
Also can you tell me *pkg_postrm_ implies?*

-- 
Thanks & Regards,
Akshat



On Wed, Jun 29, 2011 at 4:22 PM, Akshat Saha <akshat.embedded@gmail.com>wrote:

> Thanks Richard,
>
> I had tried this earlier too, but was building after clearing pulseaudio
> instances form sstate-cache/ tmp/stamps and tmp/work.
> It was giving me *"unbuildable, Nothing provides ... "* error.
>
> But now, it seems to work just fine. :)
> Will try it out. And post the results.
>
> --
> Thanks & Regards,
> Akshat
>
>
> On Wed, Jun 29, 2011 at 2:31 PM, Richard Purdie <
> richard.purdie@linuxfoundation.org> wrote:
>
>> On Wed, 2011-06-29 at 14:25 +0530, Akshat Saha wrote:
>> > Hi All,
>> >
>> > I am trying to pull PulseAudio.
>> > But am able to get conf(/usr/share/pulseaudio) files only in my RFS.
>> > In the pulseaudio.inc file, it can be observed below that there are
>> > some function and parametres specific to pulseaudio-server package .
>> > Can anyone guide me on how to get other pulseaudio binaries and
>> > configs into my build.
>> >
>> > I am using Ubuntu 10.10, 64-bit Host machine.
>> > Building for MACHINE?="fishriver"
>> >
>> > Command used to build:
>> > $ bitbake poky-image-minimal-xyz-live
>> >
>> > Contents of the poky-image-minimal-xyz.bb :
>> > require recipes-core/images/poky-image-minimal.bb
>> > IMAGE_INSTALL += "pulseaudio"
>> > LICENSE = "MIT"
>>
>> You're close here. If you look through this list:
>>
>> > PACKAGES =+ "libpulsecore libpulsecommon libpulsedsp libpulse
>> > libpulse-simple libpulse-browse libpulse-mainloop-glib \
>> >              pulseaudio-server pulseaudio-misc
>> > pulseaudio-gconf-helper"
>>
>> you can then change IMAGE_INSTALL to include the pieces you want, e.g:
>>
>> IMAGE_INSTALL += "pulseaudio-server"
>>
>> Cheers,
>>
>> Richard
>>
>>
>

--002354470fb817b8d604a6d92f6b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Richard,<br><br>PulseAudio seems to work fine now, but <b style=3D"font-=
family: courier new,monospace;">pkg_postinst_${PN}-server() </b><span style=
=3D"font-family: courier new,monospace;">does not seem to be working</span>=
. <br>
Can you tell me how to make sure that it works, so that I do not have to do=
 create <b>pulse</b> user manually, after booting the machine.<br>Also can =
you tell me <b style=3D"font-family:courier new,monospace">pkg_postrm_ impl=
ies?</b><br>
<br>-- <br>Thanks &amp; Regards,<br><div><span style=3D"color:rgb(51, 51, 5=
1);font-family:georgia, serif">Akshat=A0</span></div><div><br></div><br><br=
><div class=3D"gmail_quote">On Wed, Jun 29, 2011 at 4:22 PM, Akshat Saha <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:akshat.embedded@gmail.com">akshat.emb=
edded@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;">Thanks Richard, <br><br>I had tried this ea=
rlier too, but was building after clearing pulseaudio instances form sstate=
-cache/ tmp/stamps and tmp/work.<br>
It was giving me <b>&quot;unbuildable, Nothing provides ... &quot;</b> erro=
r. <br>
<br>But now, it seems to work just fine. :)<br>Will try it out. And post th=
e results.<br><br>--<br>Thanks &amp; Regards,<br><font color=3D"#888888"><d=
iv><span style=3D"color:rgb(51, 51, 51);font-family:georgia, serif">Akshat<=
/span><br>
</div></font><div><div></div><div class=3D"h5"><br><br>
<div class=3D"gmail_quote">On Wed, Jun 29, 2011 at 2:31 PM, Richard Purdie =
<span dir=3D"ltr">&lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org"=
 target=3D"_blank">richard.purdie@linuxfoundation.org</a>&gt;</span> wrote:=
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div>On Wed, 2011-06-29 at 14:25 +0530, Akshat Saha wrote:<br>
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
<div><br>
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
</div></div></blockquote></div><br><br clear=3D"all"><br><br>

--002354470fb817b8d604a6d92f6b--
