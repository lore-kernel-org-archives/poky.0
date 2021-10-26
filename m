Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web12.14868.1635266531322132301
 for <poky@lists.yoctoproject.org>;
 Tue, 26 Oct 2021 09:42:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=fILCa6f3;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: quaresma.jose@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id y26so22337lfa.11
        for <poky@lists.yoctoproject.org>; Tue, 26 Oct 2021 09:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=za6LwrQzgzXsIleRKa8yFdX9ZuQ03p91U/46Q/X0jN0=;
        b=fILCa6f3A51Mx5T8dHCUSMzbQdREbZDga0T5fAAExwQ8IP2L2TIi2GyZRTp6AZyb70
         v3k15oxY6WHRsTQkmVS4bzIc4kwfdGk9SA996E2bncO0mZJfJyMTFnR2eF1GI3sd+hCU
         RwUOHtP4G7Nl6UzCMwdNbqZuquypjobHkkyowfL7RscaOWVBKm+gsp1nMP+giforpDmc
         N80T5ONt9j9UXtxjWF+RPI0o3mKIUIOkbrUCQ5ymlSQxRqRl3nHKOPMtsBUsZnoKJxzb
         t7xBlVnjhfmc2FIeBJtf7NobqmWIHDoIJZwSv2NMDUBI4rdupKH21C9ui6nsBygTx3Pk
         85Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=za6LwrQzgzXsIleRKa8yFdX9ZuQ03p91U/46Q/X0jN0=;
        b=rbhujDSRgTYiZ7XAuKs7cSUkqSxdjZYgKmENZ0/kO8WM6h4IUGSmKLJ9kS+5LyCfzC
         pppPYbZqB3aLxCMuGz0yE7ZW7ESyDmVaGkScYPyicy0+PcEwLnFRdTrtQsbZ0AMNzI38
         /xDqplQl9x4N8vLxdiQMkPVMcbSXPebjAtcIP+WiHTbeF/YfuHng4ubexTPEHGuS2vHu
         ZwiXoyjp0bh/ewreOjoWNuAn4Vj+vZ1gN3IjH0ps78qYWS5xSjiT1sQvgkS5ACPUool4
         lwcfbnK8srx2EWL4qbfcjTZgJES9rTEVkgXYp4AjzzWmiBZYovayP60gR+37aWnPZSDR
         Enzg==
X-Gm-Message-State: AOAM531a1Fultklw9UZEuF18CVzoujyCjfFyi8hkrmYkJFUSNvtK9yQc
	FZ7IFsckoEpaJW+J8Jshzupnd3U6jRY8M+yynEQ=
X-Google-Smtp-Source: ABdhPJxHy8a9HmT1whm+f4LwNUiJIVKKtk6I7SEaHQKezSCRQT+0R6WyBKqDL45EkuHwzDTP6IOfOOIdZ7PUkD48PZQ=
X-Received: by 2002:a19:ad0d:: with SMTP id t13mr24499448lfc.161.1635266529199;
 Tue, 26 Oct 2021 09:42:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAP2OjchVtRJfFwirrNjJ80VHLEZvMkascBbDvVkbsOfBB5BCjw@mail.gmail.com>
 <CAMKF1soxAHRFgzqwoTJ+xXbcBKBWqR2MwoDciJvw-6Hijw7Gmw@mail.gmail.com>
In-Reply-To: <CAMKF1soxAHRFgzqwoTJ+xXbcBKBWqR2MwoDciJvw-6Hijw7Gmw@mail.gmail.com>
From: "Jose Quaresma" <quaresma.jose@gmail.com>
Date: Tue, 26 Oct 2021 17:41:58 +0100
Message-ID: <CANPvuR=FRqssxM25SAXE7pQw9=1cPOk9yya1sW+JOo-vAJ=xJA@mail.gmail.com>
Subject: Re: [poky] bitbake core-image-minimal struck at [ Initialising tasks: 44% ]
To: Khem Raj <raj.khem@gmail.com>
Cc: Ashish <ashishm@mvista.com>, poky <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000960a4905cf4428a9"

--000000000000960a4905cf4428a9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you are using an upstream hash equivalence server it will deadlock if
you have a clean cache dir.

https://lists.openembedded.org/g/openembedded-core/topic/86362510

Jose

Khem Raj <raj.khem@gmail.com> escreveu no dia ter=C3=A7a, 26/10/2021 =C3=A0=
(s) 16:55:

> On Tue, Oct 26, 2021 at 7:11 AM Ashish <ashishm@mvista.com> wrote:
> >
> > Hi All ,
> > I am trying to get an basic yocto build for qemuarm.
> > But the build is struck at message INITIALIZING TASK : 44%
> >
> > I tried with some other machine name , removing the cache folder etc bu=
t
> the behaviour remians same .
> >
> > Any pointers to debug will be helpful .
>
> check ps output and see whats executing at this point. I wonder if its
> stuck parsing some git recipe with autorev or something like that.
>
> >
> > Thanks ,
> > Ashish
> >
> >
> > [LAP] ~/yocto-build/build-folder : bitbake core-image-minimal
> > Parsing recipes: 100%
> |########################################################################=
##################|
> Time: 0:00:57
> > Parsing of 774 .bb files complete (0 cached, 774 parsed). 1326 targets,
> 56 skipped, 0 masked, 0 errors.
> > NOTE: Resolving any missing task queue dependencies
> >
> > Build Configuration:
> > BB_VERSION           =3D "1.46.0"
> > BUILD_SYS            =3D "x86_64-linux"
> > NATIVELSBSTRING      =3D "universal"
> > TARGET_SYS           =3D "aarch64-poky-linux"
> > MACHINE              =3D "qemuarm64"
> > DISTRO               =3D "poky"
> > DISTRO_VERSION       =3D "3.1.11"
> > TUNE_FEATURES        =3D "aarch64 armv8a crc"
> > TARGET_FPU           =3D ""
> > meta
> > meta-poky
> > meta-yocto-bsp       =3D "dunfell:78fe96f3edf981285cb9b6a0286e45f44d8b4=
b21"
> >
> > Initialising tasks:  44% |######################################
> >
> > --
> > Thanks ,
> > Ashish .
> >
> >
>
>=20
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000960a4905cf4428a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>If you are using an upstream hash equivalence server =
it will deadlock if you have a clean cache dir.</div><div><br></div><div><a=
 href=3D"https://lists.openembedded.org/g/openembedded-core/topic/86362510"=
>https://lists.openembedded.org/g/openembedded-core/topic/86362510</a><br><=
/div><div><br></div><div>Jose</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">Khem Raj &lt;<a href=3D"mailto:raj.khem@=
gmail.com">raj.khem@gmail.com</a>&gt; escreveu no dia ter=C3=A7a, 26/10/202=
1 =C3=A0(s) 16:55:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">On Tue, Oct 26, 2021 at 7:11 AM Ashish &lt;<a href=3D"mailto:ashishm@mvi=
sta.com" target=3D"_blank">ashishm@mvista.com</a>&gt; wrote:<br>
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
 class=3D"gmail_signature"><div dir=3D"ltr">Best regards,<div><br>Jos=C3=A9=
 Quaresma</div></div></div>

--000000000000960a4905cf4428a9--
