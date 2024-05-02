Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE46CC4345F
	for <webhook@archiver.kernel.org>; Thu,  2 May 2024 14:34:36 +0000 (UTC)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
 by mx.groups.io with SMTP id smtpd.web11.15196.1714660467198434856
 for <poky@lists.yoctoproject.org>;
 Thu, 02 May 2024 07:34:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nfGyUMFb;
 spf=pass (domain: gmail.com, ip: 209.85.219.180, mailfrom: ticotimo@gmail.com)
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dcc6fc978ddso1750053276.0
        for <poky@lists.yoctoproject.org>; Thu, 02 May 2024 07:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714660466; x=1715265266; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fL/IDnuNCS2M6uoQ+S6HMT9E959zw7+qSPwEQIVykhc=;
        b=nfGyUMFb88LNV7OAA0s9ZIx9G0jjlrIu/6NokdFlSQzeTq1iXdOZ/AF+ar1tZuSxUf
         2VjRNnKdsolBOoKVXxNAObZT+KE+OVL1g90ba//1CmVZsiUd31br3dCWDsboR30Yk2sm
         Qat9vXgNhp6Dsjodp7FmXlWzEdws6DAppjTCko8k/ho53SQMsukYUNUDjdbZD404aiPk
         dbL5LVeKDs28HV+a4splmRQIGxbp2/6ZRcTd/xlTJREv9T53xvkfjnqW0sdZ2q0SXXFg
         d6AZVlG/h1cib6K8nqMj2QpCTICywCRxbTDDkezNtmKmBs6OT+A15pXD2VQaidaTP8wD
         Pn7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714660466; x=1715265266;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fL/IDnuNCS2M6uoQ+S6HMT9E959zw7+qSPwEQIVykhc=;
        b=rwF7AptUwigihw9clMt3F7aJBPTSehVYioKZTS20F1iTUczi9l6EMwS/vlhfWLJ0hk
         Vlg9+e9XTagusicTjF7pLqlCOhwwMfqj+LR+XuUw45lJphL4zVkZpZdL6XD9N1pzZ5wG
         uZ4fCLH9Dlpz+BvtEWrE2RE3Zq3C+oT9iXhFSESF/5f/+c5ZUqhBV5SqrkK0SoAaVPC+
         89qzQv2sg6zB8APYi8dWqYfn4V7pU6iZ6L9lWQxwkMa1Uk4wU1mRfAlEoAT98TAer4/K
         ZeTLRqCnk9nnpcJK2spMyn0DGWBXaBGiXwF4iJgGd/Uiq7Ch1N22xAay5mdzQc3c9qSs
         TLFA==
X-Gm-Message-State: AOJu0Ywdlk3EPbxFOPZ2B8p3+5YNmygBIy49ahvh7CgUQIyizcyQMbav
	JLYH+e7DKkosx+ey2GhXfyvhak710sznHSquiTmfCffcu+laR+6V1vJSnMy+rWmGNK8cXqitUCI
	xzqGjbtafEi9HRMyTJdi9hvXjEFwOZnjS
X-Google-Smtp-Source: AGHT+IH/khxttRXNpJRwYKZ7sDsqAaB0w0Pr1KPuQ4Pk1ATnHxvqcrN2EWDawDTYC7cvl4rFBzFz2xoO7TDwV3nT5ek=
X-Received: by 2002:a25:282:0:b0:de8:bba8:b60f with SMTP id
 124-20020a250282000000b00de8bba8b60fmr1409012ybc.10.1714660466224; Thu, 02
 May 2024 07:34:26 -0700 (PDT)
MIME-Version: 1.0
References: <17995B12D8E7BA2D.25909@lists.yoctoproject.org>
 <55b9a7c9-3ac3-40f2-a3cb-44328a067499@gmx.li> <447234ef-efc0-4b35-b71c-b4988b34859f@gmx.li>
 <55CA67CE-8196-4E70-B2BD-D8C5BB95B0F9@arm.com> <1204f795-ca39-4d9f-a1ec-820b8c2d577e@gmx.li>
In-Reply-To: <1204f795-ca39-4d9f-a1ec-820b8c2d577e@gmx.li>
From: Tim Orling <ticotimo@gmail.com>
Date: Thu, 2 May 2024 07:34:14 -0700
Message-ID: <CANx9H-CHJqUef2Zh39gCNK3NkK=wBsW8zOVCBbN9P9nrTn5DqA@mail.gmail.com>
Subject: Re: [poky] avahi configuration (without d-bus/X11)
To: star@gmx.li
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000fff72c0617797f86"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 02 May 2024 14:34:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13340

--000000000000fff72c0617797f86
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 2, 2024 at 7:18=E2=80=AFAM Steve via lists.yoctoproject.org <st=
ar=3D
gmx.li@lists.yoctoproject.org> wrote:

> On 5/2/24 14:54, Ross Burton via lists.yoctoproject.org wrote:
> > On 2 May 2024, at 13:00, Steve via lists.yoctoproject.org <star=3D
> gmx.li@lists.yoctoproject.org> wrote:
> >>
> >> Hello,
> >> I need the avahi to announce my embedded device to network and give it
> >> an IP if DCHP is not working.
> >> Over the normal "avahi-daemon.conf" I want to disable d-bus and ipv6.
> >> That is working by do_install:append changing that file.
> >>
> >> But, adding to image the package "avahi-daemon" (avahi-autoipd is not =
a
> >> problem) bloats my rootfs with dbus-daemon and libs and  libX11 libs. =
I
> >> don't have an screen attached.
> >>
> >> So question: How to avoid that?
> >>
> >> In my avahi_%.bbappend I added:
> >> EXTRA_OECONF +=3D " \
> >>     --disable-dbus \
> >>     --disable-gtk \
> >>     --disable-gtk3 \
> >>     --disable-libevent \
> >>     --disable-qt5 \
> >> "
> >> But that doesn't seem to help.
> >
> > Have a look at the recipe, specifically the PACKAGECONFIG options.  You
> want to disable the dbus and gtk3 options.  Note that if you have a
> headless device so don=E2=80=99t need X11 at all, then remove x11 from
> DISTRO_FEATURES and that will never be built.
> >
> > Ross
>
> Well Ross, you made my day ... again! Thanks.
> Yes, as above mentioned I already disabled dbus and gtk3. But it seems I
> have to write also PACKAGECONFIG[dbus] =3D "--disable-dbus,
> --disable-dbus,dbus"
>

That is not what you needed to change. What you need to change is the
"weak" default value of the PACKACONFIG ??=3D "dbus ..."
So just setting PACKAGECONFIG =3D ""

https://docs.yoctoproject.org/ref-manual/variables.html#term-PACKAGECONFIG
https://git.yoctoproject.org/poky/tree/meta/recipes-connectivity/avahi/avah=
i_0.8.bb#n50


> Frankly speaking I don't understand why this is to be configured twice
> and why PACKAGECONFIG overrule that, but that helps to get rid of both
> d-bus and libX11.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13338):
> https://lists.yoctoproject.org/g/poky/message/13338
> Mute This Topic: https://lists.yoctoproject.org/mt/105861001/924729
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000fff72c0617797f86
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 2, 2024 at 7:18=E2=80=AFA=
M Steve via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.or=
g</a> &lt;star=3D<a href=3D"mailto:gmx.li@lists.yoctoproject.org">gmx.li@li=
sts.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">On 5/2/24 14:54, Ross Burton via <a href=3D"http://list=
s.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject=
.org</a> wrote:<br>
&gt; On 2 May 2024, at 13:00, Steve via <a href=3D"http://lists.yoctoprojec=
t.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> &lt;=
star=3D<a href=3D"mailto:gmx.li@lists.yoctoproject.org" target=3D"_blank">g=
mx.li@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hello,<br>
&gt;&gt; I need the avahi to announce my embedded device to network and giv=
e it<br>
&gt;&gt; an IP if DCHP is not working.<br>
&gt;&gt; Over the normal &quot;avahi-daemon.conf&quot; I want to disable d-=
bus and ipv6.<br>
&gt;&gt; That is working by do_install:append changing that file.<br>
&gt;&gt;<br>
&gt;&gt; But, adding to image the package &quot;avahi-daemon&quot; (avahi-a=
utoipd is not a<br>
&gt;&gt; problem) bloats my rootfs with dbus-daemon and libs and=C2=A0 libX=
11 libs. I<br>
&gt;&gt; don&#39;t have an screen attached.<br>
&gt;&gt;<br>
&gt;&gt; So question: How to avoid that?<br>
&gt;&gt;<br>
&gt;&gt; In my avahi_%.bbappend I added:<br>
&gt;&gt; EXTRA_OECONF +=3D &quot; \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0--disable-dbus \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0--disable-gtk \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0--disable-gtk3 \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0--disable-libevent \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0--disable-qt5 \<br>
&gt;&gt; &quot;<br>
&gt;&gt; But that doesn&#39;t seem to help.<br>
&gt;<br>
&gt; Have a look at the recipe, specifically the PACKAGECONFIG options.=C2=
=A0 You want to disable the dbus and gtk3 options.=C2=A0 Note that if you h=
ave a headless device so don=E2=80=99t need X11 at all, then remove x11 fro=
m DISTRO_FEATURES and that will never be built.<br>
&gt;<br>
&gt; Ross<br>
<br>
Well Ross, you made my day ... again! Thanks.<br>
Yes, as above mentioned I already disabled dbus and gtk3. But it seems I<br=
>
have to write also PACKAGECONFIG[dbus] =3D &quot;--disable-dbus,<br>
--disable-dbus,dbus&quot;<br></blockquote><div><br></div><div>That is not w=
hat you needed to change. What you need to change is the &quot;weak&quot; d=
efault value of the PACKACONFIG ??=3D &quot;dbus ...&quot;<br>So just setti=
ng PACKAGECONFIG =3D &quot;&quot;</div><div><br></div><div><a href=3D"https=
://docs.yoctoproject.org/ref-manual/variables.html#term-PACKAGECONFIG">http=
s://docs.yoctoproject.org/ref-manual/variables.html#term-PACKAGECONFIG</a><=
/div><div><a href=3D"https://git.yoctoproject.org/poky/tree/meta/recipes-co=
nnectivity/avahi/avahi_0.8.bb#n50">https://git.yoctoproject.org/poky/tree/m=
eta/recipes-connectivity/avahi/avahi_0.8.bb#n50</a></div><div>=C2=A0</div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">
Frankly speaking I don&#39;t understand why this is to be configured twice<=
br>
and why PACKAGECONFIG overrule that, but that helps to get rid of both<br>
d-bus and libX11.<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13338): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13338" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13338</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/105861001/924=
729" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/105861001/924729</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@gmail=
.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000fff72c0617797f86--

