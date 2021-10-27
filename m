Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web09.8883.1635323525307291186
 for <poky@lists.yoctoproject.org>;
 Wed, 27 Oct 2021 01:32:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HyF6A7Q6;
 spf=pass (domain: gmail.com, ip: 209.85.167.52, mailfrom: quaresma.jose@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id bi35so4492410lfb.9
        for <poky@lists.yoctoproject.org>; Wed, 27 Oct 2021 01:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Zau8TeuIpdunNF1lx5rewp0Wu1KeiciJig0/mxDCkSk=;
        b=HyF6A7Q6+i+HVe8ZTai2ySz/HxitiI58Wq8U10TL4jHSYtMi1i3LTsiNOMfP0kFAjL
         w7mLr8+y5GkpJKDH5x4Xj5X8C1RJI19bi/h0aQ+XqrClqKrLUqoxhDB6YIRtqgRSRQue
         DsYV8oqO4tRfDOlmcdJdcOXu0/wcoZ3rgCGRGRYmhLH/y6zaL+8nqkuPVYfhr2Zx2NLn
         qb90EaI0DP3aMdWfg0NMs55c+31bQDP/+1GR19oef0xRqOOKtLVVTp8N4mG3v5ZOQl5P
         Q0U6YSymNvt5m+XIRhanrJxJ0hugt1fjy1JMeJEyxgWt+ll14j1jzKrBdX2ZCvazzfVD
         p0NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Zau8TeuIpdunNF1lx5rewp0Wu1KeiciJig0/mxDCkSk=;
        b=6SSz5mOkWlW5AybHiA95r8C0AfERcuraYHHMZRUHOg1r16bY2drFVyPkN8mHTjDdW/
         5wy0QuXKq0Z7nrN9jKJ4gR0AHTDfSXU7dZHGLqbopyWSlXtd3BlfsPjac7kz0E0Ox1Ym
         T6gZ7IQ8zNiIxhAip8AhVxTKl8X49tNsFCTDXPVKkx42h25avNBwHpUTqamzXS5YucA7
         w1QKBUG8vgiJS+AXKGxyNdsdzsVi+I5OVVGnWUDxcePyPgsUsfRyM2jUmxVzqeEhURck
         IkJMOTYxkv44P5YVarQFy1Hk+wupvF8Is9GseAJLQpe5VJrJDNgOgH75VIvcfov2cJKd
         /0Jg==
X-Gm-Message-State: AOAM531WM9oM2CVYxJuGUvNuCww9fDEvqqB8S/2AsDGBc8qSU0tm0gR6
	56GRnoJzM9MQ8fVVTfxvGBjGPZQVQ8Rk0ljyNfg=
X-Google-Smtp-Source: ABdhPJzaVejVBQUw3+bIMe4E/v8004bfv4lfnI4KnIlBHGnS+Er/5D+CHrYFsJkf0LxIJwcbCetV7giWHE/wmEUBImM=
X-Received: by 2002:a19:6717:: with SMTP id b23mr22763325lfc.95.1635323523386;
 Wed, 27 Oct 2021 01:32:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAP2OjchVtRJfFwirrNjJ80VHLEZvMkascBbDvVkbsOfBB5BCjw@mail.gmail.com>
 <CAMKF1soxAHRFgzqwoTJ+xXbcBKBWqR2MwoDciJvw-6Hijw7Gmw@mail.gmail.com> <16B1A23F29F0BE69.10400@lists.yoctoproject.org>
In-Reply-To: <16B1A23F29F0BE69.10400@lists.yoctoproject.org>
From: "Jose Quaresma" <quaresma.jose@gmail.com>
Date: Wed, 27 Oct 2021 09:31:53 +0100
Message-ID: <CANPvuRnf_q3T4FDrEiG4wSi8jn1wP04pAkgGZp08WdF_CcAdMw@mail.gmail.com>
Subject: Re: [poky] bitbake core-image-minimal struck at [ Initialising tasks: 44% ]
To: Jose Quaresma <quaresma.jose@gmail.com>
Cc: Khem Raj <raj.khem@gmail.com>, Ashish <ashishm@mvista.com>, 
	poky <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b4538a05cf516dea"

--000000000000b4538a05cf516dea
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Jose Quaresma via lists.yoctoproject.org <quaresma.jose=3D
gmail.com@lists.yoctoproject.org> escreveu no dia ter=C3=A7a, 26/10/2021 =
=C3=A0(s)
17:42:

> If you are using an upstream hash equivalence server it will deadlock if
> you have a clean cache dir.
>
>
Don't consider my last message, it is only true on the master branch and if
we can't connect the hash equivalence server.


> https://lists.openembedded.org/g/openembedded-core/topic/86362510
>
> Jose
>
> Khem Raj <raj.khem@gmail.com> escreveu no dia ter=C3=A7a, 26/10/2021 =C3=
=A0(s)
> 16:55:
>
>> On Tue, Oct 26, 2021 at 7:11 AM Ashish <ashishm@mvista.com> wrote:
>> >
>> > Hi All ,
>> > I am trying to get an basic yocto build for qemuarm.
>> > But the build is struck at message INITIALIZING TASK : 44%
>> >
>> > I tried with some other machine name , removing the cache folder etc
>> but the behaviour remians same .
>> >
>> > Any pointers to debug will be helpful .
>>
>> check ps output and see whats executing at this point. I wonder if its
>> stuck parsing some git recipe with autorev or something like that.
>>
>> >
>> > Thanks ,
>> > Ashish
>> >
>> >
>> > [LAP] ~/yocto-build/build-folder : bitbake core-image-minimal
>> > Parsing recipes: 100%
>> |#######################################################################=
###################|
>> Time: 0:00:57
>> > Parsing of 774 .bb files complete (0 cached, 774 parsed). 1326 targets=
,
>> 56 skipped, 0 masked, 0 errors.
>> > NOTE: Resolving any missing task queue dependencies
>> >
>> > Build Configuration:
>> > BB_VERSION           =3D "1.46.0"
>> > BUILD_SYS            =3D "x86_64-linux"
>> > NATIVELSBSTRING      =3D "universal"
>> > TARGET_SYS           =3D "aarch64-poky-linux"
>> > MACHINE              =3D "qemuarm64"
>> > DISTRO               =3D "poky"
>> > DISTRO_VERSION       =3D "3.1.11"
>> > TUNE_FEATURES        =3D "aarch64 armv8a crc"
>> > TARGET_FPU           =3D ""
>> > meta
>> > meta-poky
>> > meta-yocto-bsp       =3D
>> "dunfell:78fe96f3edf981285cb9b6a0286e45f44d8b4b21"
>> >
>> > Initialising tasks:  44% |######################################
>> >
>> > --
>> > Thanks ,
>> > Ashish .
>> >
>> >
>>
>>
>>
>>
>
> --
> Best regards,
>
> Jos=C3=A9 Quaresma
>
>=20
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000b4538a05cf516dea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Jose Quaresma via <a href=3D"http://l=
ists.yoctoproject.org">lists.yoctoproject.org</a> &lt;quaresma.jose=3D<a hr=
ef=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject=
.org</a>&gt; escreveu no dia ter=C3=A7a, 26/10/2021 =C3=A0(s) 17:42:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>=
If you are using an upstream hash equivalence server it will deadlock if yo=
u have a clean cache dir.</div><div><br></div></div></blockquote><div><br><=
/div><div>Don&#39;t consider my last message, it is only true on the master=
 branch and if we can&#39;t connect the hash equivalence server.<br></div><=
div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div></div><div><a href=3D"https://lists.openembedded.org/g/openem=
bedded-core/topic/86362510" target=3D"_blank">https://lists.openembedded.or=
g/g/openembedded-core/topic/86362510</a><br></div><div><br></div><div>Jose<=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">r=
aj.khem@gmail.com</a>&gt; escreveu no dia ter=C3=A7a, 26/10/2021 =C3=A0(s) =
16:55:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue, O=
ct 26, 2021 at 7:11 AM Ashish &lt;<a href=3D"mailto:ashishm@mvista.com" tar=
get=3D"_blank">ashishm@mvista.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi All ,<br>
&gt; I am trying to get an basic yocto build for qemuarm.<br>
&gt; But the build is struck at message INITIALIZING TASK : 44%<br>
&gt;<br>
&gt; I tried with some other machine name , removing the cache folder etc b=
ut the behaviour remians same .<br>
&gt;<br>
&gt; Any pointers to debug will be helpful .<br>
<br>
check ps output and see whats executing at this point. I wonder if its<br>
stuck parsing some git recipe with autorev or something like that.<br>
<br>
&gt;<br>
&gt; Thanks ,<br>
&gt; Ashish<br>
&gt;<br>
&gt;<br>
&gt; [LAP] ~/yocto-build/build-folder : bitbake core-image-minimal<br>
&gt; Parsing recipes: 100% |###############################################=
###########################################| Time: 0:00:57<br>
&gt; Parsing of 774 .bb files complete (0 cached, 774 parsed). 1326 targets=
, 56 skipped, 0 masked, 0 errors.<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt;<br>
&gt; Build Configuration:<br>
&gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.46.0&qu=
ot;<br>
&gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-li=
nux&quot;<br>
&gt; NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal&quot;<br>
&gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;aarch64-p=
oky-linux&quot;<br>
&gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;qemu=
arm64&quot;<br>
&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot=
;poky&quot;<br>
&gt; DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;3.1.11&quot;<br>
&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;aarch64 armv8a crc&=
quot;<br>
&gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&quot;<br=
>
&gt; meta<br>
&gt; meta-poky<br>
&gt; meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;dunfell:78fe96f3edf=
981285cb9b6a0286e45f44d8b4b21&quot;<br>
&gt;<br>
&gt; Initialising tasks:=C2=A0 44% |######################################<=
br>
&gt;<br>
&gt; --<br>
&gt; Thanks ,<br>
&gt; Ashish .<br>
&gt; <br>
&gt;<br>
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div=
>
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Best regards,<div><br>Jos=C3=A9=
 Quaresma</div></div></div></div>

--000000000000b4538a05cf516dea--
