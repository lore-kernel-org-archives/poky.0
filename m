Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6BDDEB64D7
	for <webhook@archiver.kernel.org>; Fri, 23 Jun 2023 19:00:08 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
 by mx.groups.io with SMTP id smtpd.web11.6505.1687546802499778406
 for <poky@lists.yoctoproject.org>;
 Fri, 23 Jun 2023 12:00:02 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=XrfaZ1eJ;
 spf=pass (domain: gmail.com, ip: 209.85.128.181, mailfrom: ticotimo@gmail.com)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-57028539aadso9265607b3.2
        for <poky@lists.yoctoproject.org>; Fri, 23 Jun 2023 12:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687546801; x=1690138801;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Tew3sUzVQ/LlnMWnB9Cy+YVs1no3G/I3/FD77qKgGdI=;
        b=XrfaZ1eJYe9xtEkWdQ311eyqA40VDDr2lvlqe0bqpCeUD8Aw4WrGBAOGNpl/wXmJ77
         gjgpSsxV/ciSfNnVFN+iW5l5ue2NAarfQpzBBbMH401vP88gDmgwLMDiX+7CwY0Xj3Ni
         MbLqLiL0S2P0Kkv9sGAZoYD8IOdBw9hfpB0WMHlxPQmovAUxuJYi/v9NI334XA9Gy4+5
         ACHXiRVpqeCdYrhEFOkPbswaU0xLFpsrUy5ILkZGXvbAgRTAYXZCB+syQEdZiTguP3pw
         TKDfHP4FQpiZWINdoCpE3dq25dKRPF2Gi1g9KdBJ2EpteM1GIgf2vpl5Cv4zumyfSLfp
         C0kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687546801; x=1690138801;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tew3sUzVQ/LlnMWnB9Cy+YVs1no3G/I3/FD77qKgGdI=;
        b=Y5dyfQQNsDkkmSWHlr37PeUTmMG+cIsx5XsheZRfe5f9AsDHXq1QNA1vmi4Ig5h6sy
         6eLeZvJjdhJamZiZ95gvSooEN2zUBw1VpZcW/9gotSBeeo07raWVaMVHf3RPI2SjSlpN
         n9bWZVi4OGuUKmzMr9+RQsThbA/NnMH2/MJ/DT5mcylu5wrtZ0OX1idHUlDNm9bgfZTl
         DPqibajs3MNQXAm7IhRl9yNOiPtUr80KhkpTpgufu4BfUpdxDGGKVu2cqQLyAQchN+mR
         1tkr0EAxgyhx60qrnmJIoClR9Wzmkp/296/dxbEkfP4RWvRkhAQXLZ21U/Hbr3Ykk+95
         SBkA==
X-Gm-Message-State: AC+VfDzEWqHcq0Wj9McpmOC56L0hpOXlqXfJ2DJ8AlgNsu+tDOO+SDeW
	YrcA4KfsFoEGAHk4SPDzRxJP8gV2ObKHw259J3s=
X-Google-Smtp-Source: ACHHUZ5cIAWxzA+SHeg8O+9X6NOlG7ymupLjP5UYFht1JDokOzYoj7Mb3eNYjdNh4FKtww34ATNLFgkgQFsb/mkOgfw=
X-Received: by 2002:a81:47c1:0:b0:56c:e706:2e04 with SMTP id
 u184-20020a8147c1000000b0056ce7062e04mr25284343ywa.0.1687546801123; Fri, 23
 Jun 2023 12:00:01 -0700 (PDT)
MIME-Version: 1.0
References: <7613284c-e7b0-61c4-d93f-41a5f904d9d0@gmx.li> <CANNYZj8sk4R-CzPZe1thmdp0K9PhbZ_Oi5U0yRHwOwGWFfZd2w@mail.gmail.com>
 <f7b3af62-9843-8d0e-3882-ca5914969eac@gmx.li> <CANNYZj-Y3fHBuPU4LxnhQbrw_MdKcAJFsh08ZNBBmfAMGFqW9w@mail.gmail.com>
 <d18af7ff-ed61-5e3f-363a-29d85fa10903@gmx.li> <CANNYZj8yFLetMj52Gf_jRzpxs=nN1W7z30eBFCO50WHayJeGEA@mail.gmail.com>
 <78205739-5dc8-af4f-e498-378a00b4c245@gmx.li>
In-Reply-To: <78205739-5dc8-af4f-e498-378a00b4c245@gmx.li>
From: Tim Orling <ticotimo@gmail.com>
Date: Fri, 23 Jun 2023 20:59:50 +0200
Message-ID: <CANx9H-Av+J1N+04vV_=5jaH_39U762QgUMa=CYCy9keS15wtEw@mail.gmail.com>
Subject: Re: [poky] Yocto and kernel - dependencies
To: Steve <star@gmx.li>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009f76e505fed09b23"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 23 Jun 2023 19:00:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13099

--0000000000009f76e505fed09b23
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 23, 2023 at 5:34=E2=80=AFPM Steve <star@gmx.li> wrote:

> Actually not the kernel frustrates me, but the yocto (or at least what
> NXP does there). I mean the recipes are for dozen of processors with
> each different platforms.
> I definitly need something simpler at start, otherwise I freak out ;)
>
> I understand that virtual/kernel is somewhat a link to a certain
> kernel-recipe.
> So what to do? I mean as mentioned a source, a version and a defconfig
> should be enough. What is about that COMPATIBLE machine?
>
> The reason bitbake is not resolving a provider for virtual/kernel is
because there is no linux-yocto_%.bbappend in your layer
adding your MACHINE to COMPATIBLE_MACHINE variable. Bitbake is not psychic,
it simply looks at MACHINE and says
"this is not in the COMPATIBLE_MACHINE variable list for linx-foo so I will
keep trying to find another kernel recipe that matches".


> Am 23.06.23 um 15:42 schrieb Alexander Kanavin:
> > I would rather take meta-freescale and start with a machine definition
> > available from there.
> >
> > https://git.yoctoproject.org/meta-freescale/about/
> >
> > Once you get that working, you can embark on customizations. But
> > trying to build your own kernel outside of yocto, and without all of
> > the accumulated knowledge embedded in a BSP layer will just frustrate
> > you.
> >
> > Alex
> >
> > On Fri, 23 Jun 2023 at 14:14, Steve <star@gmx.li> wrote:
> >>
> >> It's an imx8mp.
> >> The stuff that comes from NXP ia so fully bloated that I don't have a
> >> chance to understand what's going on.
> >> That is why I skipped this til now and have in my machine conf:
> >>
> >> imx8mp-my.conf only 3 lines:
> >> require conf/machine/include/arm/armv8a/tune-cortexa53.inc
> >> DEFAULTTUNE =3D "cortexa53-crypto"
> >> SERIAL_CONSOLES =3D "115200, ttymxc1".
> >>
> >> In local.conf there is
> >> MACHINE ?=3D "imx8mp-my"
>

In a bbappend for linux-yocto, you need
COMPATIBLE_MACHINE ?=3D "(imx8mp-my)"
or something similar

Then your layer priority needs to be higher than the other layers which
might also be setting that variable.

For instance, meta-intel has a bbappend which adds an include file
https://git.yoctoproject.org/meta-intel/tree/recipes-kernel/linux/linux-yoc=
to_%25.bbappend#n1
 which sets the COMPATIBLE_MACHINE
https://git.yoctoproject.org/meta-intel/tree/recipes-kernel/linux/linux-int=
el.inc#n21

>>
> >> That's all for the moment to create a rootfs, but afraid with wrong
> >> kernel headers.
> >>
> >>> At this point I need to ask about your hardware. Can you tell what it
> is?
> >>>
> >>> Alex
> >>>
> >>> On Fri, 23 Jun 2023 at 13:23, Steve <star@gmx.li> wrote:
> >>>>
> >>>> Thanks Alex, that was indeed my first attempt.
> >>>> To start with a simple case (I thought) I just added to my
> <machine>.conf
> >>>>
> >>>> PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
> >>>> PREFERRED_VERSION_linux-yocto ?=3D "5.15%"
> >>>>
> >>>> But get: "Noting Provides virtual/kernel"
> >>>> I mentiones a few that provides it, but all are skipped as they are
> >>>> incompatible with my machine. But isn't that anyhow wrong way, as I
> want
> >>>> to use my kernel, not yocto-kernel?
> >>>>
> >>>> I also thought about doing like that:
> >>>>
> >>>> PREFERRED_PROVIDER_virtual/kernel ?=3D "my-linux"
> >>>> PREFERRED_VERSION_linux-yocto ?=3D "5.15%"
> >>>>
> >>>> but it doesn't go for my-linux_5.15.bb file that contains SRC_URI an=
d
> >>>> SRCREV.
> >>>>
> >>>> Seems I am on a completly wrong track.
> >>>> Thinking about what is theoretically needed:
> >>>> Source, Revision and what config file it should compile.
> >>>> How to provide that?
> >>>>
> >>>> Am 23.06.23 um 10:38 schrieb Alexander Kanavin:
> >>>>> The recommended thing is to build the kernel directly in yocto with=
 a
> >>>>> recipe. Or, even better, take one of the standard kernel recipes an=
d
> >>>>> use that.
> >>>>>
> >>>>> Alex
> >>>>>
> >>>>> On Fri, 23 Jun 2023 at 10:28, Steve <star@gmx.li> wrote:
> >>>>>>
> >>>>>> I am a bit clueless about the relation between yocto build of
> rootfs and
> >>>>>> kernel.
> >>>>>> Usually I build my kernel completely outside of Yocto, just using
> the
> >>>>>> SDK created by Yocto.
> >>>>>> But now I am afraid I doing something wrong regarding kernel heade=
rs
> >>>>>> need in rootfs - or at least in SDK.
> >>>>>>
> >>>>>> My machine-config seems not to have any link to kernel or
> >>>>>> kernel-version. I found that linux-libc-headers (is this what I
> need ?)
> >>>>>> is of 5.16, while I am actually compile a 5.15 (again completely
> out of
> >>>>>> Yocto).
> >>>>>>
> >>>>>> So what is recommended? What change is needed to use headers out o=
f
> my
> >>>>>> linux git repo?
> >>>>>>
> >>>>>> Best regards, Arno
> >>
> >>
> >>
> >>
> >>
> >>
> >>
> >>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13098):
> https://lists.yoctoproject.org/g/poky/message/13098
> Mute This Topic: https://lists.yoctoproject.org/mt/99714609/924729
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000009f76e505fed09b23
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 23, 2023 at 5:34=E2=80=AF=
PM Steve &lt;<a href=3D"mailto:star@gmx.li">star@gmx.li</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">Actually not the ker=
nel frustrates me, but the yocto (or at least what<br>
NXP does there). I mean the recipes are for dozen of processors with<br>
each different platforms.<br>
I definitly need something simpler at start, otherwise I freak out ;)<br>
<br>
I understand that virtual/kernel is somewhat a link to a certain<br>
kernel-recipe.<br>
So what to do? I mean as mentioned a source, a version and a defconfig<br>
should be enough. What is about that COMPATIBLE machine?<br>
<br></blockquote><div>The reason bitbake is not resolving a provider for vi=
rtual/kernel is because there is no linux-yocto_%.bbappend in your layer</d=
iv><div>adding your MACHINE to COMPATIBLE_MACHINE variable. Bitbake is not =
psychic, it simply looks at MACHINE and says</div><div>&quot;this is not in=
 the COMPATIBLE_MACHINE variable list for linx-foo so I will keep trying to=
 find another kernel recipe that matches&quot;.</div><div><br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">
<br>
Am 23.06.23 um 15:42 schrieb Alexander Kanavin:<br>
&gt; I would rather take meta-freescale and start with a machine definition=
<br>
&gt; available from there.<br>
&gt;<br>
&gt; <a href=3D"https://git.yoctoproject.org/meta-freescale/about/" rel=3D"=
noreferrer" target=3D"_blank">https://git.yoctoproject.org/meta-freescale/a=
bout/</a><br>
&gt;<br>
&gt; Once you get that working, you can embark on customizations. But<br>
&gt; trying to build your own kernel outside of yocto, and without all of<b=
r>
&gt; the accumulated knowledge embedded in a BSP layer will just frustrate<=
br>
&gt; you.<br>
&gt;<br>
&gt; Alex<br>
&gt;<br>
&gt; On Fri, 23 Jun 2023 at 14:14, Steve &lt;<a href=3D"mailto:star@gmx.li"=
 target=3D"_blank">star@gmx.li</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; It&#39;s an imx8mp.<br>
&gt;&gt; The stuff that comes from NXP ia so fully bloated that I don&#39;t=
 have a<br>
&gt;&gt; chance to understand what&#39;s going on.<br>
&gt;&gt; That is why I skipped this til now and have in my machine conf:<br=
>
&gt;&gt;<br>
&gt;&gt; imx8mp-my.conf only 3 lines:<br>
&gt;&gt; require conf/machine/include/arm/armv8a/tune-cortexa53.inc<br>
&gt;&gt; DEFAULTTUNE =3D &quot;cortexa53-crypto&quot;<br>
&gt;&gt; SERIAL_CONSOLES =3D &quot;115200, ttymxc1&quot;.<br>
&gt;&gt;<br>
&gt;&gt; In local.conf there is<br>
&gt;&gt; MACHINE ?=3D &quot;imx8mp-my&quot;<br></blockquote><div><br></div>=
<div>In a bbappend for linux-yocto, you need</div><div>COMPATIBLE_MACHINE ?=
=3D &quot;(imx8mp-my)&quot;=C2=A0</div><div>or something similar</div><div>=
<br></div><div>Then your layer priority needs to be higher than the other l=
ayers which might also be setting that variable.</div><div><br></div><div>F=
or instance, meta-intel has a bbappend which adds an include file<br><a hre=
f=3D"https://git.yoctoproject.org/meta-intel/tree/recipes-kernel/linux/linu=
x-yocto_%25.bbappend#n1">https://git.yoctoproject.org/meta-intel/tree/recip=
es-kernel/linux/linux-yocto_%25.bbappend#n1</a></div><div>=C2=A0which sets =
the COMPATIBLE_MACHINE</div><div><a href=3D"https://git.yoctoproject.org/me=
ta-intel/tree/recipes-kernel/linux/linux-intel.inc#n21">https://git.yoctopr=
oject.org/meta-intel/tree/recipes-kernel/linux/linux-intel.inc#n21</a><br><=
/div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
&gt;&gt;<br>
&gt;&gt; That&#39;s all for the moment to create a rootfs, but afraid with =
wrong<br>
&gt;&gt; kernel headers.<br>
&gt;&gt;<br>
&gt;&gt;&gt; At this point I need to ask about your hardware. Can you tell =
what it is?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Alex<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Fri, 23 Jun 2023 at 13:23, Steve &lt;<a href=3D"mailto:star=
@gmx.li" target=3D"_blank">star@gmx.li</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Thanks Alex, that was indeed my first attempt.<br>
&gt;&gt;&gt;&gt; To start with a simple case (I thought) I just added to my=
 &lt;machine&gt;.conf<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; PREFERRED_PROVIDER_virtual/kernel ?=3D &quot;linux-yocto&q=
uot;<br>
&gt;&gt;&gt;&gt; PREFERRED_VERSION_linux-yocto ?=3D &quot;5.15%&quot;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; But get: &quot;Noting Provides virtual/kernel&quot;<br>
&gt;&gt;&gt;&gt; I mentiones a few that provides it, but all are skipped as=
 they are<br>
&gt;&gt;&gt;&gt; incompatible with my machine. But isn&#39;t that anyhow wr=
ong way, as I want<br>
&gt;&gt;&gt;&gt; to use my kernel, not yocto-kernel?<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; I also thought about doing like that:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; PREFERRED_PROVIDER_virtual/kernel ?=3D &quot;my-linux&quot=
;<br>
&gt;&gt;&gt;&gt; PREFERRED_VERSION_linux-yocto ?=3D &quot;5.15%&quot;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; but it doesn&#39;t go for <a href=3D"http://my-linux_5.15.=
bb" rel=3D"noreferrer" target=3D"_blank">my-linux_5.15.bb</a> file that con=
tains SRC_URI and<br>
&gt;&gt;&gt;&gt; SRCREV.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Seems I am on a completly wrong track.<br>
&gt;&gt;&gt;&gt; Thinking about what is theoretically needed:<br>
&gt;&gt;&gt;&gt; Source, Revision and what config file it should compile.<b=
r>
&gt;&gt;&gt;&gt; How to provide that?<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Am 23.06.23 um 10:38 schrieb Alexander Kanavin:<br>
&gt;&gt;&gt;&gt;&gt; The recommended thing is to build the kernel directly =
in yocto with a<br>
&gt;&gt;&gt;&gt;&gt; recipe. Or, even better, take one of the standard kern=
el recipes and<br>
&gt;&gt;&gt;&gt;&gt; use that.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Alex<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; On Fri, 23 Jun 2023 at 10:28, Steve &lt;<a href=3D"mai=
lto:star@gmx.li" target=3D"_blank">star@gmx.li</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; I am a bit clueless about the relation between yoc=
to build of rootfs and<br>
&gt;&gt;&gt;&gt;&gt;&gt; kernel.<br>
&gt;&gt;&gt;&gt;&gt;&gt; Usually I build my kernel completely outside of Yo=
cto, just using the<br>
&gt;&gt;&gt;&gt;&gt;&gt; SDK created by Yocto.<br>
&gt;&gt;&gt;&gt;&gt;&gt; But now I am afraid I doing something wrong regard=
ing kernel headers<br>
&gt;&gt;&gt;&gt;&gt;&gt; need in rootfs - or at least in SDK.<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; My machine-config seems not to have any link to ke=
rnel or<br>
&gt;&gt;&gt;&gt;&gt;&gt; kernel-version. I found that linux-libc-headers (i=
s this what I need ?)<br>
&gt;&gt;&gt;&gt;&gt;&gt; is of 5.16, while I am actually compile a 5.15 (ag=
ain completely out of<br>
&gt;&gt;&gt;&gt;&gt;&gt; Yocto).<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; So what is recommended? What change is needed to u=
se headers out of my<br>
&gt;&gt;&gt;&gt;&gt;&gt; linux git repo?<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Best regards, Arno<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; <br>
&gt;&gt;<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13098): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13098" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13098</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/99714609/9247=
29" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
99714609/924729</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@gmail=
.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000009f76e505fed09b23--

