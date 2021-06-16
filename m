Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
 by mx.groups.io with SMTP id smtpd.web08.5263.1623836722701977724
 for <poky@lists.yoctoproject.org>;
 Wed, 16 Jun 2021 02:45:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bt+mV1Sw;
 spf=pass (domain: gmail.com, ip: 209.85.221.178, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f178.google.com with SMTP id u66so475302vkb.4;
        Wed, 16 Jun 2021 02:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4R/ozKgK8DjWnmwyO6ULFUhseSgYV3nTHEDVotjZ8u0=;
        b=bt+mV1SwuMIJ0n3DK8orBOMyokM/DX90yYnFbr0o+RXVaGtmnJ41NnQarKZfDlQ2AK
         EjNUAOW0Y2GR2mCWjdd7d+7ZkLQbzB91oE97mYAAL8J5uVMzw1xACA1rcGPzw//buxJU
         jyoYit3wKsIGbEuM1hqqNRRhnZZxL1qdmPJWxwufziFPD1xV7MOvnE3kExsLi9jEtV29
         6ddAjqN87vl4azWPHP4EA/iSQSw/Gs9Y3N7aPj4i4jtpM8i7GzL5z41BtX7haLBFhhTd
         OLEZLhMbJlGCkD+uI/XKX5kSryGvf9IEmfeA0kcH3v+WNyzHi9UFfCwn0P/a8dYvzvTp
         l2fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4R/ozKgK8DjWnmwyO6ULFUhseSgYV3nTHEDVotjZ8u0=;
        b=lvxwTqE3e0hGfWKjptIVCUb9q3YfLZtrrxR1s7sgpx/lQXWNKERZNICsjs+zDO1Flx
         uTpXxiKAg6ALO7td2z76gzls/S5h3I4ojjxx+bcG2oMPSVIpqmuWOqMiWp/S12rNgQR7
         2mv4RE3vM12n3hlCtF25pCbSIRBtJwBwp3rPRszJwM68Em6QQUyQw6/Myqdt6vcMTFxU
         V3Dq4UjQbuwptcdqe0y+LYfJCJHT7rU7PHCWYS4RMg/gmlaVOs0V0iU12M3z7pA8RAIz
         F4M1EmVtvLtEQw5WrSp89JmNygH8FgzpmS7WJzkypSyyCOg3V1lAWQAJZP+P9BKj84V3
         RkDw==
X-Gm-Message-State: AOAM530lSFDtUGKW4EqmIqyQi4rOF0BDBBLGUvU0wP6IcqGff6WZt6Hg
	zzHy1dU5WkVOPVY8ywgwauBFJK/lqnvF3qKZubc=
X-Google-Smtp-Source: ABdhPJwJmcvgkSc/rKOWT68jCBSDXXUcEjA5CeovSgiKVkOZNmtdcDTIPCVLuFvqqtp5WheoM4OkGEglUvXlCxLcK7Y=
X-Received: by 2002:a1f:aac7:: with SMTP id t190mr358118vke.0.1623836721783;
 Wed, 16 Jun 2021 02:45:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210615081225.1734033-1-alex.kanavin@gmail.com>
 <5ed9e1d2676d4d31289ebaf2ec3b492c1daa88a7.camel@linuxfoundation.org>
 <CANNYZj84MXS57sG5CWLmS-Y_0-w8h1_9NLmtjFEo4pJ5snXvcA@mail.gmail.com>
 <CANNYZj8S7V5owiS0p3B1fD7n_JpF-OPLApO=e9d+SiPuyFWHZw@mail.gmail.com> <0451f536368310860d9acb12e5a8424881b545e8.camel@linuxfoundation.org>
In-Reply-To: <0451f536368310860d9acb12e5a8424881b545e8.camel@linuxfoundation.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 16 Jun 2021 11:45:10 +0200
Message-ID: <CANNYZj9Z87Jb7Ea-vtQ1ZEmtQvfFRDtTXAxvStZT3c02RnU01g@mail.gmail.com>
Subject: Re: [poky] [PATCH] local.conf.sample: disable prelink
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Mark Hatle <mark.hatle@kernel.crashing.org>, poky@lists.yoctoproject.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f9a7bc05c4def27d"

--000000000000f9a7bc05c4def27d
Content-Type: text/plain; charset="UTF-8"

On Wed, 16 Jun 2021 at 11:11, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> What makes me sad is that this is an embedded focused feature which
> the project should be caring about, i.e. memory footprint and speed.
> I don't know why the numbers don't show it, Mark and I have theories
> but it would take work to explore them and neither of us have that time,
> nor are we experts on prelink able to maintain it with the time we have
> available.
>

What I think happened is that glibc simply got better at linking, optimised
the runtime bits to the fullest, and any benefits prelink may once have had
aren't there anymore. Which is IMO fine - I am terrified of custom address
arithmetic that's not really understood by anyone, and very easy to get
wrong, with devastating consequences. I spent more or less the whole day
stepping assembly in gdb to figure out what exactly is going wrong in that
ppc bug.

The value proposition of Yocto is still very strong, and is not at all
affected by dropping prelink, in my opinion.

Alex

--000000000000f9a7bc05c4def27d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, 16 Jun 2021 at 11:11, Richard Purdie &lt;<a href=3D"mailto:r=
ichard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
What makes me sad is that this is an embedded focused feature which=C2=A0<b=
r>
the project should be caring about, i.e. memory footprint and speed.<br>
I don&#39;t know why the numbers don&#39;t show it, Mark and I have theorie=
s<br>
but it would take work to explore them and neither of us have that time,<br=
>
nor are we experts on prelink able to maintain it with the time we have<br>
available.<br></blockquote><div><br></div><div>What I think happened is tha=
t glibc simply got better at linking, optimised the runtime bits to the ful=
lest, and any benefits prelink may once have had aren&#39;t there anymore. =
Which is IMO fine - I am terrified of custom address arithmetic that&#39;s =
not really understood by anyone, and very easy to get wrong, with devastati=
ng consequences. I spent more or less the whole day stepping assembly in gd=
b to figure out what exactly is going wrong in that ppc bug.</div><div><br>=
</div><div>The value proposition of Yocto is still very strong, and is not =
at all affected by dropping prelink, in my opinion.<br></div><div><br></div=
><div>Alex<br></div></div></div>

--000000000000f9a7bc05c4def27d--
