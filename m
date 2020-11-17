Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com [209.85.222.193])
 by mx.groups.io with SMTP id smtpd.web11.16392.1605653461729906416
 for <poky@lists.yoctoproject.org>;
 Tue, 17 Nov 2020 14:51:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MiId4481;
 spf=pass (domain: gmail.com, ip: 209.85.222.193, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f193.google.com with SMTP id k4so12708226qko.13
        for <poky@lists.yoctoproject.org>; Tue, 17 Nov 2020 14:51:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=K5idCK/7XMofrXR7YarV/OSrCEyLOaxw2kQ+nhTYTLg=;
        b=MiId4481JDjcHiUM7N/tGxQfJ46YoynRe7sUiH0xUnIBCORcfTtN690MqXUPbAsNz9
         LG7y8CR0hWRJzKHP1Qdsq34lnK3F6pGzTBK/RnsUWpyHjd4JpEEwPkpcwNuswIJH9Vq/
         AB9Gt+S4kGVOZy2hF4Rnwbln1xd0nluzSR7y8GmAamf0TFmNbkrgs4qQW3QKiofAUKfc
         ZWOrP+NIZ/wdq9+aD1ekfv30g9nQ6c72MvTb8iUxsXtZ5G9Czg973396DVdGGq2+jc9J
         vcyRKOHO4orUSOn4KqoC8V7yiqCcaP0Q+nfAcnXqA1oTPL+Imy773NRud7PDZ3bKwjxo
         pffA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=K5idCK/7XMofrXR7YarV/OSrCEyLOaxw2kQ+nhTYTLg=;
        b=r8mlPgjHnmAdWizyTj8S+QUukVMn6qxx36qR+hcyQ887wvxJ4/9vwIOQ1oEEX/J6n2
         yuRQc/PXcb+vd+MXTWw4y9uuCjBN2g+mPoUlO6p8Ea58JmNTMV55GEjR89tNcWWDnF7e
         U49Mi7eNVc+iW6zr8Mi6uF+XaevDkanFPknQIBnlx6b84NIMjIpDywf5529yhHD+9Jdc
         4eb56iNmOXIh5IJyCvY+oX5VYm0IwLK1xiiCVXv5txsG8798PZCN2hJUkEgLz9nJddBA
         9LJRiB72mrekY1FT8QlXK1DsfrTofbREnv2YzjbqDCpAPH0G3047TTzujBu9iDaZNLJr
         k8CQ==
X-Gm-Message-State: AOAM533xLngMP4uulD2lbJVV/hetSYQ+oz9l2u+zZpQ2rI2X3X9cL7lS
	gKltkr0CdaIdJywwXbhce0txzBAcUIxmFsPh8dg=
X-Google-Smtp-Source: ABdhPJz/1JlZwNeK75O2M8tD/kb6h4l2Jf0735sP4JBu43GpqfoX46jM7TlZBRL4U5i5uuRJl6eGIGQTBY1/6SD1w4c=
X-Received: by 2002:a37:6195:: with SMTP id v143mr1918417qkb.71.1605653460890;
 Tue, 17 Nov 2020 14:51:00 -0800 (PST)
MIME-Version: 1.0
References: <20201117024555.7716-1-okaya@kernel.org> <CAMKF1sqJCo5xTnLjcukxkjYEqGiR9b8pXSDA2igDF+1OzuKBug@mail.gmail.com>
 <fc71a242-b884-01e3-8c21-774e73446a5c@kernel.org>
In-Reply-To: <fc71a242-b884-01e3-8c21-774e73446a5c@kernel.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 17 Nov 2020 14:50:50 -0800
Message-ID: <CAMKF1sqy-Q+mjN=oUZxDhG5DrN-DaOzjgY3VYeXc2DPozPbMNA@mail.gmail.com>
Subject: Re: [poky] [PATCH] poky-tiny: prefer thumb mode by default
To: Sinan Kaya <okaya@kernel.org>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002b390a05b45554cf"

--0000000000002b390a05b45554cf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 17, 2020 at 6:14 AM Sinan Kaya <okaya@kernel.org> wrote:

> On 11/17/2020 2:35 AM, Khem Raj wrote:
> >> +# prefer thumb mode by default for userspace
> >> +ARM_INSTRUCTION_SET =3D "thumb"
> > we have defaulted armv7a+ machines to use thumb ISA if DEFAULTTUNE has
> > 't' attribute in it
> > which SOCs do you target with this change ?
> >
>
> I wanted to use it on ARM926EJS. I noticed that it is defaulting to arm
> even though the CPU supports thumb.
>
> Why was the same decision not made for armv5 and armv6?


Right lot of older arm implementation may or may not have thumb ISA so
there was no reliable way of choosing it and secondly it=E2=80=99s a bit l=
ess
tested ISA especially when it came to thumb1 for long Martin ran qemuarm/v=
5
build using thumb ISA and he would find weird corner cases and build
failures

I think this makes sense for poky-tiny but we do not test it as much and i=
t
might give a bad experience unless we test this combo regularly

>
>
>=20
>
>

--0000000000002b390a05b45554cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Nov 17, 2020 at 6:14 AM Sinan Kaya &lt;<a href=3D"=
mailto:okaya@kernel.org">okaya@kernel.org</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">On 11/17/2020 2:35 AM, Khem Raj wrote:<br>
&gt;&gt; +# prefer thumb mode by default for userspace<br>
&gt;&gt; +ARM_INSTRUCTION_SET =3D &quot;thumb&quot;<br>
&gt; we have defaulted armv7a+ machines to use thumb ISA if DEFAULTTUNE ha=
s<br>
&gt; &#39;t&#39; attribute in it<br>
&gt; which SOCs do you target with this change ?<br>
&gt; <br>
<br>
I wanted to use it on ARM926EJS. I noticed that it is defaulting to arm<br=
>
even though the CPU supports thumb.<br>
<br>
Why was the same decision not made for armv5 and armv6?</blockquote><div d=
ir=3D"auto"><br></div><div dir=3D"auto">Right lot of older arm implementati=
on may or may not have thumb ISA so there was no reliable way of choosing i=
t and secondly it=E2=80=99s a bit less tested ISA especially when it came t=
o thumb1 for long Martin ran qemuarm/v5 build using thumb ISA and he would =
find weird corner cases and build failures</div><div dir=3D"auto"><br></div=
><div dir=3D"auto">I think this makes sense for poky-tiny but we do not tes=
t it as much and it might give a bad experience unless we test this combo r=
egularly=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex" dir=3D"auto"><br>
<br>
<br>
<br>
</blockquote></div></div>

--0000000000002b390a05b45554cf--
