Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web09.3460.1625560470329157819
 for <poky@lists.yoctoproject.org>;
 Tue, 06 Jul 2021 01:34:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=k/YG4Ccm;
 spf=pass (domain: gmail.com, ip: 209.85.222.173, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id q16so19367953qke.10
        for <poky@lists.yoctoproject.org>; Tue, 06 Jul 2021 01:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8mFAf/3iPfdeh9RbOgGP0FV16lo7mUWVhxyrf9f1aGA=;
        b=k/YG4Ccm5QAs8cERsVY9HpSna2J8EX8oNR78/F6BsFTNx+NnTZlLJxLrJJdApRWqBz
         s9gfxlyuoMXHwhYbitJoM14XLTByL5LKhrwQn6rgNn90Bfx9lmPZ4CT8Nu/dIV5oV3ez
         JkWGqWz9eDIZZYhNpLsz5Zef1Ue60781uNlFfJV/ktalErjtzbRqR4NQ5Xzb/5YZTuOI
         4jjMviMpLsQnjuazZe8MHvG8ThNNEObr4CDct0bgGIBFwi+f/+IuXzqyD1KFpKOn5PLs
         stecoUtHG61uS4+YF3t8FuSfieWi4wr+Buuli/PcRlrcj6CP4GtdqQA7fXTiQXBrQgOq
         VPdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8mFAf/3iPfdeh9RbOgGP0FV16lo7mUWVhxyrf9f1aGA=;
        b=E9HV4eFVMVhDab0RDQBIfnsqsq7+vQ+DF3Cv95A0JVahvXJR1bzOUqfgzySsBLVSH/
         FL53C3niU2YdDCW+pMZra0R8MfHP88Trr/6xmokAF+oCl+EuY3W3lJ1W2TjvMYw2CIXd
         CV8qz7n+vmbObLE8x7IoTn7JuI2waj/qVrlflUKDn8KaqiuYb1v5Jk3D2STSSrpjRzjc
         kmacGuM+CjK9Sp40W9/Om9gkMUcaPiXqXBXhVzaLU028lSkefmKOyLVtaVfGQSS5a4p6
         NAFsKYaGwMNn2R7tu2bXfJFkwPsWHQiqLfOIpyO1XCqGse280a9CyGbNiEL7fFHy39gQ
         V6rQ==
X-Gm-Message-State: AOAM5321IBvZEVlxo1UDXUF0mgKSmwyEAGwUhCkBxe3/iyFNBxOp47yy
	AANZ5VrP+L3glFMYsqkDXkqeP7yCB9BPPW8HLP0=
X-Google-Smtp-Source: ABdhPJwtKgGO2j6sHJ6KIlW7plmjEBrbzJxb18jfX2PurCcEY2ktISUZnm/PdScEsJ6Ef8rAHy3It1PO7cK0AtJFPqY=
X-Received: by 2002:a37:a7c7:: with SMTP id q190mr18777535qke.125.1625560469465;
 Tue, 06 Jul 2021 01:34:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210705183627.72790-1-alex.kanavin@gmail.com>
 <CAMKF1srCjD4ay0MJUq0G=V_gy7QwA1Y9ufmb+4bMPgWy=MNS-Q@mail.gmail.com> <d7ca2f7f-54c9-36ad-b574-830658a5ef76@gmail.com>
In-Reply-To: <d7ca2f7f-54c9-36ad-b574-830658a5ef76@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 6 Jul 2021 01:34:03 -0700
Message-ID: <CAMKF1spe2=RO7n8iX=LbDrba24XE8aPgNP6o2GweiVeUUZ7opA@mail.gmail.com>
Subject: Re: [poky] [PATCH] local.conf.sample: disable prelink
To: Armin Kuster <akuster808@gmail.com>
Cc: poky <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, Jul 5, 2021 at 5:03 PM Armin Kuster <akuster808@gmail.com> wrote:
>
>
>
> On 7/5/21 4:06 PM, Khem Raj wrote:
> > On Mon, Jul 5, 2021 at 11:36 AM Alexander Kanavin
> > <alex.kanavin@gmail.com> wrote:
> >> Recent tests have not shown any improvement over not prelinking,
> >> and without a regression test it is very hard to say when and how
> >> this happened.[0]
> >>
> >> There's also a concern that no one is maintaining the code, and there
> >> are open bugs (including serious ones such as [1]). Given that prelink
> >> does intricate address arithmetic and rewriting of binaries the best
> >> option is to disable the feature.
> >>
> >> [0] https://lists.yoctoproject.org/g/poky/message/12467
> >> [1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=14429
> >>
> >> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> >> ---
> >>  meta-poky/conf/local.conf.sample | 3 +--
> >>  1 file changed, 1 insertion(+), 2 deletions(-)
> >>
> >> diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
> >> index fb14379d28..1794126672 100644
> >> --- a/meta-poky/conf/local.conf.sample
> >> +++ b/meta-poky/conf/local.conf.sample
> >> @@ -148,8 +148,7 @@ EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
> >>  # enable extra features. Some available options which can be included in this variable
> >>  # are:
> >>  #   - 'buildstats' collect build statistics
> >> -#   - 'image-prelink' in order to prelink the filesystem image
> >> -USER_CLASSES ?= "buildstats image-prelink"
> >> +USER_CLASSES ?= "buildstats"
> > just disable it for ppc32 since thats a broken case we know.
> So does PPC64 work with prelink? There is a long standing issue with it.
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=1331
>

we use ppc64le for qemuppc64 which uses ELFv2 and we have not
explicitly disabled prelink and
it works fine, My hunch is that it just is a nop with ELFv2

> -armin
> >
> >
> >>  #
> >>  # Runtime testing of images
> >> --
> >> 2.31.1
> >>
> >>
> >>
> >>
> >>
> >>
> >>
>
>
> 
>
