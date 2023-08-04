Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24849C001DB
	for <webhook@archiver.kernel.org>; Fri,  4 Aug 2023 14:20:29 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web10.12244.1691158822612478155
 for <poky@lists.yoctoproject.org>;
 Fri, 04 Aug 2023 07:20:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=DBqBmp/t;
 spf=pass (domain: gmail.com, ip: 209.85.128.53, mailfrom: martin.jansa@gmail.com)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-3fe1d9a8ec6so19856845e9.1
        for <poky@lists.yoctoproject.org>; Fri, 04 Aug 2023 07:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691158821; x=1691763621;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hkeWG8yIZRdrZ7nG7nUzj9LOIavFjMXQLG6O3dVfUTw=;
        b=DBqBmp/tUQ/K9PrN/HQk3wtrUGbCBjost5OwPhg0qWW5W3Ut04AbHDAMzfwvB4Mzbm
         DSJIfonBqbVLVQJlk3x5+hsTLV3q9OUBBO98UkksAGcL95yTZLun/XTuT1z7egp5URJi
         I+PGC0Y7NDVduIizp6K5uBctEsbjtdyqlvwwbI8MJkkmEyvpiuj46mRQSLhPiRLnxEaK
         AY+beL9e2zHhOHL0HLpQ/GlzyAQhojiJxT0QwyM5R11FqwbzCYM5Eung4s4haXuyHQjz
         gke5ruP2trmaqmrgeO1b91Uz5RUG58aT4T5mR/cjEsEC5Y1qFqw68z5A7z1vG42/9Zzn
         MPbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691158821; x=1691763621;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hkeWG8yIZRdrZ7nG7nUzj9LOIavFjMXQLG6O3dVfUTw=;
        b=Cv11aHwUZjh04tTmJR16AbG2RwwXK8Q8xnvSWD7A1aNBBEKNJVCY4sc/vilEyeksh/
         9o9xIJDSmo+zEeDn7QN/PQahtZOgtJqdYBp6VOb6nG7bpEg4H7uJ4pQB1vfplPsWWTwU
         JPNpW2qKrG27XupNexeglCMKulMWAwzdAAOV6P4epXMKz77sUkN0rVRleurhBcc1M4Dd
         iFLystnzUXgpUwWRIIcLsUwvL2t5GMtubEEVH///nfGhoAS9hW7XC19rVU/bxO1E+qqs
         DlWIMMol2z7qEgZBzxZKpsXygp96VwLotFag+e5R3B6s0jQcJh8iyYCLFbr1MSGnmfmd
         sgIw==
X-Gm-Message-State: AOJu0YwfDcTsRlegMwazbMf9bGv/+Tfa2gnEKtUtH/g+QL/LnTTjS+Sl
	AfMHADrNuBIe2DWKrng38e9d9x0B1JDX5PLL3uk=
X-Google-Smtp-Source: AGHT+IEjCkRx+N5QCCoJwOptfEGyfpssKAj4v6sOE4fepHQDbeAFVr0aen0DlpD9djCVNztWy6E2puwEegnwlE3zhTc=
X-Received: by 2002:a05:600c:35ca:b0:3fe:21f1:aba8 with SMTP id
 r10-20020a05600c35ca00b003fe21f1aba8mr1834853wmq.12.1691158820672; Fri, 04
 Aug 2023 07:20:20 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_8Kj6spQOHTvgFXSDQzmMTt6QtxwjeLs8L1yJ9GOEzkQ@mail.gmail.com>
 <25343.1691156776634873717@lists.yoctoproject.org>
In-Reply-To: <25343.1691156776634873717@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 4 Aug 2023 16:20:02 +0200
Message-ID: <CA+chaQdz5BXB4OUXZYNT06MVN3K+43URB1jVA=DCodP0Ev7u9A@mail.gmail.com>
Subject: Re: [poky] [LINUX-FIRMWARE] all pacakges in image
To: f.louveau@lacroix.group
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c3da2e060219981e"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 04 Aug 2023 14:20:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13111

--000000000000c3da2e060219981e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

deja vu:
https://lists.openembedded.org/g/openembedded-core/message/184825

On Fri, Aug 4, 2023 at 3:46=E2=80=AFPM <f.louveau@lacroix.group> wrote:

> Thanks for the advice.
> I analyze the depends.dot file and found something interesting.
>
> +"linux-firmware-mt7601u" -> "linux-firmware"
>  "linux-firmware-mt7601u" -> "linux-firmware-mt7601u-license"
>
>
> For the need firmware mt7601u, a new dependency is added to
> linux-firmware. That explains why I have all firmwares.
> But between linux-firmware packages 20230404 & 20230515, the recipe does
> not change.
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13110):
> https://lists.yoctoproject.org/g/poky/message/13110
> Mute This Topic: https://lists.yoctoproject.org/mt/100545329/3617156
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> Martin.Jansa@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000c3da2e060219981e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">deja vu:<div><a href=3D"https://lists.openembedded.org/g/o=
penembedded-core/message/184825">https://lists.openembedded.org/g/openembed=
ded-core/message/184825</a><br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Fri, Aug 4, 2023 at 3:46=E2=80=AFPM=
 &lt;f.louveau@lacroix.group&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">Thanks for the advice.<br>I analyze the depends.dot=
 file and found something interesting.<br>
<blockquote>+&quot;linux-firmware-mt7601u&quot; -&gt; &quot;linux-firmware&=
quot;<br>=C2=A0&quot;linux-firmware-mt7601u&quot; -&gt; &quot;linux-firmwar=
e-mt7601u-license&quot;</blockquote>
<br>For the need firmware mt7601u, a new dependency is added to linux-firmw=
are. That explains why I have all firmwares.<br>But between linux-firmware =
packages 20230404 &amp; 20230515, the recipe does not change.
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13110): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13110" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13110</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/100545329/361=
7156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/100545329/3617156</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin.Jan=
sa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000c3da2e060219981e--

