Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20F92C71136
	for <webhook@archiver.kernel.org>; Mon, 16 Jun 2025 23:49:17 +0000 (UTC)
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web10.6169.1750117756178289626
 for <poky@lists.yoctoproject.org>;
 Mon, 16 Jun 2025 16:49:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PprCBKoF;
 spf=pass (domain: gmail.com, ip: 209.85.210.169, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-742c3d06de3so6021651b3a.0
        for <poky@lists.yoctoproject.org>; Mon, 16 Jun 2025 16:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750117755; x=1750722555; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=V+7KrnbR343XqOLQMr0NFl2GukRQT6xPZj9jBVw/81Y=;
        b=PprCBKoFtUmupXey5UyFSOIfRVaLZGRAxq/0waV/TQXvJ+MGBu3apwYfMbfDPFCpKb
         aszhzNNvsZ1wI5ZZxK4v6aRXWhIAZYONBDPf5Kf6ZTWFaH8CydZHh0K3K6dRDYxzk6Ye
         izHnyPETzt+Lxfi89D/2jqBZ6+LJWrFRI4Myakw3QXDLfI358eELzwNUgpU7YpcnlvLf
         BtfSgxYfmf5+xm8d3Scvr1/U694tGrlM33ycZIP+ihqCHapiuRUoQc1TrIoLjs9ilXfQ
         OSkRA5lixwzqbpt8PQQxcz15UXTfhUowvqjl/nG3gp96FcvCr6m68Um8bKHO6YEoiPZW
         Yoqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750117755; x=1750722555;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V+7KrnbR343XqOLQMr0NFl2GukRQT6xPZj9jBVw/81Y=;
        b=DuFvh5NyGrpKnWtA7DYKmJ2VeSzLrhtFaN3fL5A4b3uw7fINCBl+YM3qp6dxGH4lQg
         VvvpICN7/DRPZgP+Ns7DlCyKfizqzkPkcKFFDnWvrwMB3CYf7Ll3DsmqTCX3dDg7Nxs9
         AUVe8jVsgRuTH/2/98ipCahkV3B4KJ33iQSNMOvNJAkuRCWxDCXKFelTwprkJyUBmTsl
         XdvpbkSb22VaHxhIRIDsC+2d8qybr9oOXottyRnjZu55S+MJ7GX6W/h6drUpVbDMexKF
         cxXAql5ZDRBjg/wSlbrKvJbzq0fhbsI4Raceg+Lgm4ztPU0/qPFgNkNeOM4upUSYSzoV
         8peQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2AZ/L1i7I3R7pGpkQb69OxOrjSD5bBLTWDCoRybQlpGmZBokSXPJ89BRVIzOryCjkIQWw@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YypjAeAkvOEj/uGrIBWgLd9Q08Neewc+xxnFfMyFTV7dM0vq0Ag
	z2VwG0mZ0ODsBW8QSgs6BJqKZtQy5bFQJsneQql+Due4KVLn73Rj7FQisGAKPRZ1Fri/6mVpDDI
	+0Tbu0AtoGlxsrsjczfY06lzcGuxUoiQ=
X-Gm-Gg: ASbGncvr/Jz5TKemz+LEz/YiQ7dRcTKlJCilUvZJIf94pKS0R0MTC1ce8C5f5UfLl56
	6lOltJv6SxIW7F/WMDBEpBlr6LrS5lZJnRwI8FQqv6rS21xkoIDDXqZXNDMCnxLiQ7Bikl3gXE7
	Tj6ZmtN5yP5W9XsFySmn86HWwPVovHdfZtkE/+4d+YfVEA
X-Google-Smtp-Source: AGHT+IEoimGH0fEewepktF3rax+Yfxc/r9UihK1wil2Xhx0t9nEmSdgRfaJENL/gjoEqwfDJM17/BOZ4r1p8C5Xe1sM=
X-Received: by 2002:a05:6a00:4b4a:b0:736:5c8e:baaa with SMTP id
 d2e1a72fcca58-7489cfc2784mr14737100b3a.2.1750117755476; Mon, 16 Jun 2025
 16:49:15 -0700 (PDT)
MIME-Version: 1.0
References: <20250616184607.92039-1-alexander.sowarka@linaro.org>
 <20250616184607.92039-2-alexander.sowarka@linaro.org> <958D0280-79D4-4421-A161-4D5451A4D035@arm.com>
In-Reply-To: <958D0280-79D4-4421-A161-4D5451A4D035@arm.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Mon, 16 Jun 2025 19:49:03 -0400
X-Gm-Features: AX0GCFs95ZJDYrS_WICzYduMhVT95Ptj-_mrRji5b9ECDikpcr5cXsVpQu3Lh5w
Message-ID: <CADkTA4NYLyCqC1uNq8HHnofv-T+2HRLAa5r+K3UbKrLyFf06vw@mail.gmail.com>
Subject: Re: [poky] [PATCH 1/1] linux-yocto: Use in-tree config for genericarm64
To: ross.burton@arm.com
Cc: "alexander.sowarka@linaro.org" <alexander.sowarka@linaro.org>, 
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002160d30637b90b97"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 16 Jun 2025 23:49:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13652

--0000000000002160d30637b90b97
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 16, 2025 at 3:05=E2=80=AFPM Ross Burton via lists.yoctoproject.=
org
<ross.burton=3Darm.com@lists.yoctoproject.org> wrote:

> On 16 Jun 2025, at 19:46, Alexander Sowarka via lists.yoctoproject.org
> <alexander.sowarka=3Dlinaro.org@lists.yoctoproject.org> wrote:
> >
> > The genericarm64 machine should run on most ARM SystemReady devices.
> > The arm64 configuration in the mainline kernel repository works stable
> > on a lot more devices then the poky internal one.
> > Switch to using the in-tree kernel config to run on more SystemReady
> > devices.
>
> This was almost by design: the initial target platform was the BeaglePlay=
,
> and then the Xilinx KV260.
>
> As the co-maintainer of this BSP I=E2=80=99d _much_ prefer to see the gap=
s fixed
> instead of upstream defconfig used blindly.  It=E2=80=99s an unusual upst=
ream
> release where the defconfig doesn=E2=80=99t result in configuration warni=
ngs, and
> we have a general ethos that modular configurations are better than a
> single monolithic defconfig.
>

And as one of our reference platforms, that's a hard NO from me (the in
tree defconfig).

We do our references by the yocto policy, not the kitchen-sink in tree
defconfig.

If there's issues with the fragments, fix them. Not this. There's
absolutely nothing by
accident about the way we do it currently.

Bruce



>
> Ross
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13651):
> https://lists.yoctoproject.org/g/poky/message/13651
> Mute This Topic: https://lists.yoctoproject.org/mt/113676396/1050810
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> bruce.ashfield@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--0000000000002160d30637b90b97
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote gmail_quote_con=
tainer"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 16, 2025 at 3:05=
=E2=80=AFPM Ross Burton via <a href=3D"http://lists.yoctoproject.org">lists=
.yoctoproject.org</a> &lt;ross.burton=3D<a href=3D"mailto:arm.com@lists.yoc=
toproject.org">arm.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">On 16 Jun 2025, at 19:46, Alex=
ander Sowarka via <a href=3D"http://lists.yoctoproject.org" rel=3D"noreferr=
er" target=3D"_blank">lists.yoctoproject.org</a> &lt;alexander.sowarka=3D<a=
 href=3D"mailto:linaro.org@lists.yoctoproject.org" target=3D"_blank">linaro=
.org@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt; <br>
&gt; The genericarm64 machine should run on most ARM SystemReady devices.<b=
r>
&gt; The arm64 configuration in the mainline kernel repository works stable=
<br>
&gt; on a lot more devices then the poky internal one.<br>
&gt; Switch to using the in-tree kernel config to run on more SystemReady<b=
r>
&gt; devices.<br>
<br>
This was almost by design: the initial target platform was the BeaglePlay, =
and then the Xilinx KV260.<br>
<br>
As the co-maintainer of this BSP I=E2=80=99d _much_ prefer to see the gaps =
fixed instead of upstream defconfig used blindly.=C2=A0 It=E2=80=99s an unu=
sual upstream release where the defconfig doesn=E2=80=99t result in configu=
ration warnings, and we have a general ethos that modular configurations ar=
e better than a single monolithic defconfig.<br></blockquote><div><br></div=
><div><div class=3D"gmail_default" style=3D"font-size:small">And as one of =
our reference platforms, that&#39;s a hard NO from me (the in tree defconfi=
g).</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><=
div class=3D"gmail_default" style=3D"font-size:small">We do our references =
by the yocto policy, not the kitchen-sink in tree defconfig.</div><div clas=
s=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmail=
_default" style=3D"font-size:small">If there&#39;s issues with the fragment=
s, fix them. Not this. There&#39;s absolutely nothing by</div><div class=3D=
"gmail_default" style=3D"font-size:small">accident about the way we do it c=
urrently.</div><div class=3D"gmail_default" style=3D"font-size:small"><br><=
/div><div class=3D"gmail_default" style=3D"font-size:small">Bruce</div><br>=
</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Ross<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13651): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13651" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13651</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/113676396/105=
0810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/113676396/1050810</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.as=
hfield@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature">- Thou shalt not follow the NULL pointer, for chaos and madness a=
wait thee at its end<br>- &quot;Use the force Harry&quot; - Gandalf, Star T=
rek II<br><br></div></div>

--0000000000002160d30637b90b97--

