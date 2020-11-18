Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com [209.85.208.66])
 by mx.groups.io with SMTP id smtpd.web08.27218.1605718216074537333
 for <poky@lists.yoctoproject.org>;
 Wed, 18 Nov 2020 08:50:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GlK0nQse;
 spf=pass (domain: gmail.com, ip: 209.85.208.66, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f66.google.com with SMTP id v22so2707936edt.9
        for <poky@lists.yoctoproject.org>; Wed, 18 Nov 2020 08:50:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IwN+8pYHdTDrnrcAbdE95DjqItTZoXAa/VXnIMZneWQ=;
        b=GlK0nQseixFfl5wGBRmyCq3asIHw55u0zjqJ2NvWdIWBElfGZ5Ha24cVi1fzOkYrNo
         3Q4Dj0fyzY9gOptlp9GsKo2E3DaSxcVN3ZQYbRs8JSyJb8sv8vVyE+JUisGE/B+byE4o
         TELUSrbtoK71VGuOUf+2k/ddIAdfMlC8NQv7qu/L0qPyiEuj8dXsg6nGeYoVtIIoETit
         6pN02hq96e3lQnvgn+HXIrrpZEosnqk5h1O5cm08ZR9AlnHjhTLJ/BPs5O5ZutO68iM0
         Z41QvY7oqlXNYVtDHDE+amB/UVilmEn6l6QnfmdII1rWhWOlnBmHy4HqGC7k519EL5jv
         fhdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IwN+8pYHdTDrnrcAbdE95DjqItTZoXAa/VXnIMZneWQ=;
        b=Jw85Lt0cthOQerHwrualAo9yVx8CngBqEyTibsNCYjTFByTI6wb8dPiOmKcwRRceJY
         w0h9dZFM/7II8AjDpl5bjYRMYAGqIkpDOd0FbIlIwuSH/MeV7TfdoIy8PaBoMr6Rqkb1
         ruJDGOiIgjawpRYBLVMfP34812t9OF2Ep4NwFvHgRyQM+R/gb/VjJ++1exO+MQQD9+ZY
         IXmYrXmw0PHF+V4EocPeTeZqWVRTVDjtK6HHoTbfImIUqdLgvWQ1zCrnnc5wWQsME9/w
         c5yMhPaVzKLqTB4l2Zy+1jhln8ygfprpnVHamayrER/emtuAjwMB/+iKdRqh0+S8Wmt+
         9FoQ==
X-Gm-Message-State: AOAM5334d/nVqfs4iMcsRgbhci7pEXkRKFIwEUfnMsQGYrR+tHVl6UY2
	qivEpBt11LHwF4S0zcd7CGoWLUFNSw1tQn2yOkQ=
X-Google-Smtp-Source: ABdhPJwz2bVhojZN379PO1mPnBxcBmKoLJ7P9rDy4LjEOse/siWU2lpnt88ATSSzfvq2NbNDzbTlHl6e5Xakh9yZUGs=
X-Received: by 2002:a50:a40c:: with SMTP id u12mr13799545edb.337.1605718214565;
 Wed, 18 Nov 2020 08:50:14 -0800 (PST)
MIME-Version: 1.0
References: <20201117024555.7716-1-okaya@kernel.org> <CAMKF1sqJCo5xTnLjcukxkjYEqGiR9b8pXSDA2igDF+1OzuKBug@mail.gmail.com>
 <fc71a242-b884-01e3-8c21-774e73446a5c@kernel.org> <CAMKF1sqy-Q+mjN=oUZxDhG5DrN-DaOzjgY3VYeXc2DPozPbMNA@mail.gmail.com>
 <3f480e3c-6a75-fb90-f5e5-530e84fb85b3@kernel.org>
In-Reply-To: <3f480e3c-6a75-fb90-f5e5-530e84fb85b3@kernel.org>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Wed, 18 Nov 2020 17:50:03 +0100
Message-ID: <CA+chaQf+2Dri=bKHN=atz1KWym_TZdojYPqZLgBSQUHgrzN2-A@mail.gmail.com>
Subject: Re: [poky] [PATCH] poky-tiny: prefer thumb mode by default
To: Sinan Kaya <okaya@kernel.org>
Cc: Khem Raj <raj.khem@gmail.com>, poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c9e35d05b46467b0"

--000000000000c9e35d05b46467b0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The detection should work fine as long as you select the right DEFAULTTUNE

thumb is used only when ARM_INSTRUCTION_SET is set to thumb AND thumb
appears in TUNE_FEATURES (which are defined by selected DEFAULTTUNE).

I've stopped building for armv4t (om-gta0* MACHINEs dropped in
https://github.com/shr-distribution/meta-smartphone/commit/647d43223ed6ace=
5d68b1e36d34978da472634e7)
and armv5te (tune-xscare.inc used by e.g. spitz MACHINE from meta-handheld=
)
more than 3 years ago, I don't know how much the support for thumb1
degraded since then.

On Wed, Nov 18, 2020 at 5:31 PM Sinan Kaya <okaya@kernel.org> wrote:

> On 11/17/2020 5:50 PM, Khem Raj wrote:
> >     Why was the same decision not made for armv5 and armv6?
> >
> >
> > Right lot of older arm implementation may or may not have thumb ISA so
> > there was no reliable way of choosing it and secondly it=E2=80=99s a b=
it less
> > tested ISA especially when it came to thumb1 for long Martin ran
> > qemuarm/v5 build using thumb ISA and he would find weird corner cases
> > and build failures
> >
> > I think this makes sense for poky-tiny but we do not test it as much a=
nd
> > it might give a bad experience unless we test this combo regularly
>
> I think I need to bring the support detection logic here to find out
> if platform in use supports thumb mode.
>
> I'll do some more builds to ensure everything builds correctly with
> thumb mode. I think I found one more recipe that doesn't play nice.
>
> Setting it default for tiny profile makes sense so that it also gets
> regularly exercised.
>
>=20
>
>

--000000000000c9e35d05b46467b0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The detection should work fine as long as you select the r=
ight DEFAULTTUNE<div><br></div><div>thumb is used only when ARM_INSTRUCTION=
_SET is set to thumb=C2=A0AND thumb appears in TUNE_FEATURES (which are def=
ined by selected DEFAULTTUNE).</div><div><br></div><div>I&#39;ve stopped bu=
ilding for armv4t (om-gta0* MACHINEs dropped in <a href=3D"https://github.c=
om/shr-distribution/meta-smartphone/commit/647d43223ed6ace5d68b1e36d34978da=
472634e7">https://github.com/shr-distribution/meta-smartphone/commit/647d43=
223ed6ace5d68b1e36d34978da472634e7</a>) and armv5te (tune-xscare.inc used b=
y e.g. spitz MACHINE from meta-handheld) more than 3 years ago, I don&#39;t=
 know how much the support for thumb1 degraded since then.</div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov=
 18, 2020 at 5:31 PM Sinan Kaya &lt;<a href=3D"mailto:okaya@kernel.org">oka=
ya@kernel.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">On 11/17/2020 5:50 PM, Khem Raj wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0Why was the same decision not made for armv5 and a=
rmv6?<br>
&gt; <br>
&gt; <br>
&gt; Right lot of older arm implementation may or may not have thumb ISA s=
o<br>
&gt; there was no reliable way of choosing it and secondly it=E2=80=99s a =
bit less<br>
&gt; tested ISA especially when it came to thumb1 for long Martin ran<br>
&gt; qemuarm/v5 build using thumb ISA and he would find weird corner cases=
<br>
&gt; and build failures<br>
&gt; <br>
&gt; I think this makes sense for poky-tiny but we do not test it as much =
and<br>
&gt; it might give a bad experience unless we test this combo regularly=C2=
=
=A0<br>
<br>
I think I need to bring the support detection logic here to find out<br>
if platform in use supports thumb mode.<br>
<br>
I&#39;ll do some more builds to ensure everything builds correctly with<br=
>
thumb mode. I think I found one more recipe that doesn&#39;t play nice.<br=
>
<br>
Setting it default for tiny profile makes sense so that it also gets<br>
regularly exercised.<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000c9e35d05b46467b0--
