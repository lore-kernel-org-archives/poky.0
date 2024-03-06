Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6C23C54E41
	for <webhook@archiver.kernel.org>; Wed,  6 Mar 2024 14:30:29 +0000 (UTC)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web11.13027.1709735420463799305
 for <poky@lists.yoctoproject.org>;
 Wed, 06 Mar 2024 06:30:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=j16BFW/u;
 spf=pass (domain: gmail.com, ip: 209.85.215.175, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-5cddfe0cb64so5042571a12.0
        for <poky@lists.yoctoproject.org>; Wed, 06 Mar 2024 06:30:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709735420; x=1710340220; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BcWklPqXBmjpGv7CrjVWtOM+CUwsNUDjtALnp630rJE=;
        b=j16BFW/uUcRXBM67b32n3JLCFhRYPv32/da8RRLp9BxI9FySWK1AvAobgx4JhtIzL0
         XTJnhDiOqCSF/aQBVEDTZLWBVEqZlkOk8IhSNsPUhgdcyDxcDv8xJmjG4pHRTn90ns0u
         fB6vKzL61Mohcwc8MSqLAZrp82TQUiaLgR+P/1paIo806REg/Lpyd2y5hfhRHLu8cIS2
         7LtGru0tYPb/7YFm9nqHCYJGu7+VbhEiLcryXP/Q+TEFItV3rr65SuEQGuRDkqtBXsWA
         JvqGTL82MUfx9sPMfZcP6xcGk+YBjd1sBXXHSuERwxhkV4A1XAcxXLXIcV6MY70RCiHF
         fI4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709735420; x=1710340220;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BcWklPqXBmjpGv7CrjVWtOM+CUwsNUDjtALnp630rJE=;
        b=lFwz8YnTWtz2xFXF7c4fMX4QtXq8coxog99ezEUcuc4BMjdZlAyRxqWDNsKhVfuGzx
         JguSCvi8YiQpvAcMXJWaYUYNkTV0MMyD+T9v5MVVHOgFOOLDvKf33w5fD4Wx3J1QQoLO
         TASiJGXULrPwbkrEWYQkwQADtMxrHBlh6QOviDViaC75xgjA3k/5uQ4iMmIR9gvfoiOA
         /9HHkq5BYxpe9C1uPpcrW7Iik6cyAHBHYj5G38WZgKUXALOfxSh/PpgCo6Sxyk37SSC9
         gc3H5IHgZHr3wEx/eLn4du0gHjpqNmGUXNnJwiFbKNexyKyV0oDZ8DQ/F3eKw5PbriKQ
         BMVA==
X-Gm-Message-State: AOJu0Yx5kz9LbV+7NvsOXzBywifONrnRuRKUHmZFLFT2pOhRFy/Oqkk7
	wc2zVOp4ZTPDVTXDayP0wtLMhznzA99kQxu69p1dzIptW915/gq1oxbC1uXoDpwnbPrU0GRw5Hy
	K6iqxbtodmCYhwfVZe5nF+qN7ZftUQegk
X-Google-Smtp-Source: AGHT+IET/5rtdrK0bNAq7H6UyMXS08/BUiZdJ/pO/rRU/7pMdNscp+8+ADWZNkXj1du4gW1/z5R1AIqzl6Oh4x1XnbM=
X-Received: by 2002:a17:90a:9484:b0:29b:2c24:21ff with SMTP id
 s4-20020a17090a948400b0029b2c2421ffmr11913744pjo.39.1709735419716; Wed, 06
 Mar 2024 06:30:19 -0800 (PST)
MIME-Version: 1.0
References: <17B7D3DE94B664C2.7754@lists.yoctoproject.org> <DB5PR02MB102132C194BE245CC559F17CCEF212@DB5PR02MB10213.eurprd02.prod.outlook.com>
In-Reply-To: <DB5PR02MB102132C194BE245CC559F17CCEF212@DB5PR02MB10213.eurprd02.prod.outlook.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 6 Mar 2024 09:30:08 -0500
Message-ID: <CADkTA4P67D7VXRXdpBhYQHUz0Q=kpii+FMLLS1aD8NuyMi7m+w@mail.gmail.com>
Subject: Re: [poky] [PATCH] poky.conf: Set the distro name to "scarthgap"
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 06 Mar 2024 14:30:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13295

On Wed, Mar 6, 2024 at 9:11=E2=80=AFAM Peter Kjellerstedt
<peter.kjellerstedt@axis.com> wrote:
>
> *ping*
>
> I can't speak for others, but at least we have started our preparations f=
or
> the Scarthgap upgrade so that we are ready when it is released, thus it w=
ould
> help if DISTRO_CODENAME reflected the reality better.
>

I can't speak for Richard, but I know when I get patches like this
for areas I maintain, they would have been better just as an email
asking when it is expected that the codename / whatever will be
updated.

Making this change is obviously something Richard can more easily
do himself when he's happy with the content and not dealing with
bigger issues (when everything is burning and late, this is low on the
priority list).

Handling a patch for something that he's responsible for (declaring
that the branch is almost ready for the release) is more effort than
it is worth.

Bruce

> //Peter
>
> > -----Original Message-----
> > From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Beha=
lf
> > Of Peter Kjellerstedt
> > Sent: den 27 februari 2024 21:45
> > To: poky@lists.yoctoproject.org
> > Subject: [poky] [PATCH] poky.conf: Set the distro name to "scarthgap"
> >
> > Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> > ---
> >
> > It's been a long time since this diverged from Nanbield.
> >
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/po=
ky.conf
> > index 3b7bc66780..e59ad974d0 100644
> > --- a/meta-poky/conf/distro/poky.conf
> > +++ b/meta-poky/conf/distro/poky.conf
> > @@ -1,7 +1,7 @@
> >  DISTRO =3D "poky"
> >  DISTRO_NAME =3D "Poky (Yocto Project Reference Distro)"
> >  DISTRO_VERSION =3D "4.3+snapshot-${METADATA_REVISION}"
> > -DISTRO_CODENAME =3D "nanbield"
> > +DISTRO_CODENAME =3D "scarthgap"
> >  SDK_VENDOR =3D "-pokysdk"
> >  SDK_VERSION =3D "${@d.getVar('DISTRO_VERSION').replace('snapshot-${MET=
ADATA_REVISION}', 'snapshot')}"
> >  SDK_VERSION[vardepvalue] =3D "${SDK_VERSION}"
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13294): https://lists.yoctoproject.org/g/poky/message=
/13294
> Mute This Topic: https://lists.yoctoproject.org/mt/104611400/1050810
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [bruce.ashfield@=
gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

