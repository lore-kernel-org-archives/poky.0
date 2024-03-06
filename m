Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3720CC54E41
	for <webhook@archiver.kernel.org>; Wed,  6 Mar 2024 15:48:52 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web10.15234.1709740125853105182
 for <poky@lists.yoctoproject.org>;
 Wed, 06 Mar 2024 07:48:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YhQs9Hbl;
 spf=pass (domain: gmail.com, ip: 209.85.216.50, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-29a74c88f74so4764831a91.3
        for <poky@lists.yoctoproject.org>; Wed, 06 Mar 2024 07:48:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709740125; x=1710344925; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k2nq6MZcSaKxVStxlA5WIIMtBWBBG44mHvW5k+MM144=;
        b=YhQs9Hblp69W+AkA4j/Ao/xnHc9w4QNlVNVDb11UQTphZKVzXldJTKvLEYZ2clF3KC
         D2jyb6FIHH0ZluR15ucZzVt9Ugnbw4ezgomyGeLnIQPxr8HySjI/drb9vxQo/pe/yerO
         Gn6lIc2thwpzQyRX5g1M6b1i8hnwJYKLeHjASiRt5j15BpqJqdTo6PJ1XTwoLEGmUUmt
         Qn4tuxb8S+Q7qBwab7G6iDnD9AeocKCdVa8s6loZ0kiReWckmTZUCxkj6zlMvewoN7/L
         7JnUKfYE6cUP3br9Co9RUBjtSGWijdvVgIeQuKWRC4YH+8cEmhZDw4XOupmTVjNM+K3k
         Augw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709740125; x=1710344925;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k2nq6MZcSaKxVStxlA5WIIMtBWBBG44mHvW5k+MM144=;
        b=vtvfjl5Jz0kEMzCzpxCnQ7kOw1vWcqqV2SvZbzvMHDBuCyIyQejDFE+uq/NBRdfwpt
         BIEmOYqaZzXh9XEcOen0l2JFXBLqtJ8QrGVDn6Xi1tOZDNgOUWZvvR3nPWhij8ISP/Vi
         +EBVy58imDTXz39WJY7h30qe+zycx6rR/8m6nfTgzzWR1CfpoyKtyLnD4GrsbV4qyJhL
         t7cLBkTo5sdDdK3kKcfWiGDncv55vQQZblEqb+JWjUwMB6xUEY0mB+dY/32fbPY/JIcv
         lEsSWhnvZGBQgzDyOdbAgHsGhh72qtcCK024ZIyTm+eyUNBo7BB9So3cbc2beYlFrTgl
         6LzQ==
X-Gm-Message-State: AOJu0YwGfDuy4pFPOR3rk6j9tS4MfsTwAN5PysmQp2xH/PvfafVB2BA/
	yACDbFxhNPPQiPUH+VNH5VmTuEKQ/q3B0Lc1t9UW9MXDPr6wQFwa3yGcG/n3zRkRovzoxrj4eK4
	xT40jHarjds8cUcyyLFr0YEj5WW8=
X-Google-Smtp-Source: AGHT+IHzcEcVaDcqJeNU9ClGdp/KyJYoBKaO1hOUZ9IipLPyHBEnAwAwc8eHE7Up0ab1X8k5dObfdLiMAX8fIADDgcM=
X-Received: by 2002:a17:90a:7143:b0:29a:842b:d8b3 with SMTP id
 g3-20020a17090a714300b0029a842bd8b3mr12573903pjs.7.1709740125145; Wed, 06 Mar
 2024 07:48:45 -0800 (PST)
MIME-Version: 1.0
References: <17B7D3DE94B664C2.7754@lists.yoctoproject.org> <DB5PR02MB102132C194BE245CC559F17CCEF212@DB5PR02MB10213.eurprd02.prod.outlook.com>
 <CADkTA4P67D7VXRXdpBhYQHUz0Q=kpii+FMLLS1aD8NuyMi7m+w@mail.gmail.com> <DB5PR02MB102130C7347BAA23C2E9E9F03EF212@DB5PR02MB10213.eurprd02.prod.outlook.com>
In-Reply-To: <DB5PR02MB102130C7347BAA23C2E9E9F03EF212@DB5PR02MB10213.eurprd02.prod.outlook.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 6 Mar 2024 10:48:33 -0500
Message-ID: <CADkTA4PnwoxsvrY_wcEapa4CNvE_NQaA31zzU-Zrj=-ZX+b1dg@mail.gmail.com>
Subject: Re: [poky] [PATCH] poky.conf: Set the distro name to "scarthgap"
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 06 Mar 2024 15:48:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13297

On Wed, Mar 6, 2024 at 10:30=E2=80=AFAM Peter Kjellerstedt
<peter.kjellerstedt@axis.com> wrote:
>
> > -----Original Message-----
> > From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Beha=
lf Of Bruce Ashfield
> > Sent: den 6 mars 2024 15:30
> > To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> > Cc: poky@lists.yoctoproject.org
> > Subject: Re: [poky] [PATCH] poky.conf: Set the distro name to "scarthga=
p"
> >
> > On Wed, Mar 6, 2024 at 9:11=E2=80=AFAM Peter Kjellerstedt <peter.kjelle=
rstedt@axis.com> wrote:
> > >
> > > *ping*
> > >
> > > I can't speak for others, but at least we have started our preparatio=
ns for
> > > the Scarthgap upgrade so that we are ready when it is released, thus =
it would
> > > help if DISTRO_CODENAME reflected the reality better.
> >
> > I can't speak for Richard, but I know when I get patches like this
> > for areas I maintain, they would have been better just as an email
> > asking when it is expected that the codename / whatever will be
> > updated.
> >
> > Making this change is obviously something Richard can more easily
> > do himself when he's happy with the content and not dealing with
> > bigger issues (when everything is burning and late, this is low on the
> > priority list).
> >
> > Handling a patch for something that he's responsible for (declaring
> > that the branch is almost ready for the release) is more effort than
> > it is worth.
> >
> > Bruce
>
> Well, the DISTRO_CODENAME is normally updated relatively soon after the
> upgrade rather than just before the next upgrade, typically at the same
> time as the DISTRO_VERSION is set to its post-upgrade value. I do not
> know why that did not happen this time.

I didn't say that asking the question wasn't valid, I said doing it
with a patch, following by a *ping* email, comes across as not
being particularly sensitive to the current (well known) issues with
late merging features to M3.

Richard obviously knows what has to be done to prepare for a
release, and if it hasn't been done yet, there are likely reasons
for that.

Bruce

>
> And the reason I ask for it to be updated to match the content is of
> course that we sometimes use it when there is a need to differentiate
> between how things are done in the current version and in the upcoming
> release.
>
> //Peter
>
> > > //Peter
> > >
> > > > -----Original Message-----
> > > > From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On =
Behalf Of Peter Kjellerstedt
> > > > Sent: den 27 februari 2024 21:45
> > > > To: poky@lists.yoctoproject.org
> > > > Subject: [poky] [PATCH] poky.conf: Set the distro name to "scarthga=
p"
> > > >
> > > > Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> > > > ---
> > > >
> > > > It's been a long time since this diverged from Nanbield.
> > > >
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distr=
o/poky.conf
> > > > index 3b7bc66780..e59ad974d0 100644
> > > > --- a/meta-poky/conf/distro/poky.conf
> > > > +++ b/meta-poky/conf/distro/poky.conf
> > > > @@ -1,7 +1,7 @@
> > > >  DISTRO =3D "poky"
> > > >  DISTRO_NAME =3D "Poky (Yocto Project Reference Distro)"
> > > >  DISTRO_VERSION =3D "4.3+snapshot-${METADATA_REVISION}"
> > > > -DISTRO_CODENAME =3D "nanbield"
> > > > +DISTRO_CODENAME =3D "scarthgap"
> > > >  SDK_VENDOR =3D "-pokysdk"
> > > >  SDK_VERSION =3D "${@d.getVar('DISTRO_VERSION').replace('snapshot-$=
{METADATA_REVISION}', 'snapshot')}"
> > > >  SDK_VERSION[vardepvalue] =3D "${SDK_VERSION}"
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

