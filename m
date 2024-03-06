Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDF0BC5475B
	for <webhook@archiver.kernel.org>; Wed,  6 Mar 2024 17:32:17 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web11.237.1709746337124155097
 for <poky@lists.yoctoproject.org>;
 Wed, 06 Mar 2024 09:32:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mHQTjBIf;
 spf=pass (domain: gmail.com, ip: 209.85.214.177, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1dd10ae77d8so30626425ad.0
        for <poky@lists.yoctoproject.org>; Wed, 06 Mar 2024 09:32:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709746336; x=1710351136; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=78yM8wk1ox1RJM6VSBlXp8jv9UJNi3Ds3HlFfJNPvUs=;
        b=mHQTjBIfyCb1M/B8i9a+ezQUQhlVnxCKaG2y6AakTSZk5ozpQr4R7XdSTo3n5flx/f
         eQpd/temLo2jDUvsVhK7nwgRF6Dx5KwI6m8F8wIitZ0adbDlWSttOe4dor3Uvke2aKDf
         g6KWTCv0l2Ii470PdNIqpx8EWFhCqxRyvs6QSI42rjDDhNVH1JCgOObAfUZymOzgwant
         m3vLNpa5mUwhsPimgrnZqup45eTfxBnuLipAdoO9MwhunGUL4i51k6xLvy1WFMK5mOj7
         ec65dwebx5rmRF0k4igtlSLjgVuLiVpmS+tIwnzch9O3CrhbIJg/kGYfOX8Im7lkdWM0
         NfaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709746336; x=1710351136;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=78yM8wk1ox1RJM6VSBlXp8jv9UJNi3Ds3HlFfJNPvUs=;
        b=Td4J1DWHBkLiDGW4wMc5yENog2++KezXUtKPtbJAs5B20ZU3nle2ThW2d5kNb2ttxz
         3ro2sexgxZh1bR/JwG9iNKMd5iSD/vVtAluZj3lYvaqIkf+NLu9ONVhc9JcZmRUg5Swc
         dBZT931oOnETKDaxrvB25Pg71FfoSVDv3aHwawYUjA4s3GR4v+tMZDtfbD38gz7pfJz9
         Ib3ek8P9lKMcUL3t9VmOZHXzE+n4LnlYmIaBXNUO5bcUmvSsqghB4xM+d6S9Hw3W37eT
         +3ar900u8vUsp462HumyOofArlVJo+VbtANl9wMN8JAnmDDXAXMwHEPGFZ0bj53fAVXo
         7aRQ==
X-Gm-Message-State: AOJu0YziRnTcVIdP5QC/mm6GCWc6bX7O0PT/LwoTH/OnO9MR6LNhJUIi
	/wmpWeZM3uVKtBn8x85fE5R1nYqL6Yubpb7YhIJq99FRGvUABgKAR+mcN/cGz5I8J7Gm4oTZ1xT
	vgqJDpRQjx9tqR8j/UNeC1GBJ4B0=
X-Google-Smtp-Source: AGHT+IG8Yu1V7nw0Kpt59cybO6j7IcGkYxPnVkjnbnXluYi0uBRqrhvcolMImJHQH0mJX77k+3izI9+OgtKYokKJcbc=
X-Received: by 2002:a17:903:238e:b0:1dc:728d:b1de with SMTP id
 v14-20020a170903238e00b001dc728db1demr6466541plh.56.1709746336442; Wed, 06
 Mar 2024 09:32:16 -0800 (PST)
MIME-Version: 1.0
References: <17B7D3DE94B664C2.7754@lists.yoctoproject.org> <DB5PR02MB102132C194BE245CC559F17CCEF212@DB5PR02MB10213.eurprd02.prod.outlook.com>
 <CADkTA4P67D7VXRXdpBhYQHUz0Q=kpii+FMLLS1aD8NuyMi7m+w@mail.gmail.com>
 <DB5PR02MB102130C7347BAA23C2E9E9F03EF212@DB5PR02MB10213.eurprd02.prod.outlook.com>
 <CADkTA4PnwoxsvrY_wcEapa4CNvE_NQaA31zzU-Zrj=-ZX+b1dg@mail.gmail.com> <DB5PR02MB10213584D4F6702FA22DCD490EF212@DB5PR02MB10213.eurprd02.prod.outlook.com>
In-Reply-To: <DB5PR02MB10213584D4F6702FA22DCD490EF212@DB5PR02MB10213.eurprd02.prod.outlook.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 6 Mar 2024 12:32:04 -0500
Message-ID: <CADkTA4OjpfO2fbvpSP-zmkHL_AXT+vnOt-Hb28r8dZSp3HHDxA@mail.gmail.com>
Subject: Re: [poky] [PATCH] poky.conf: Set the distro name to "scarthgap"
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 06 Mar 2024 17:32:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13299

On Wed, Mar 6, 2024 at 11:59=E2=80=AFAM Peter Kjellerstedt
<peter.kjellerstedt@axis.com> wrote:
>
> > -----Original Message-----
> > From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Beha=
lf
> > Of Bruce Ashfield
> > Sent: den 6 mars 2024 16:49
> > To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> > Cc: poky@lists.yoctoproject.org
> > Subject: Re: [poky] [PATCH] poky.conf: Set the distro name to "scarthga=
p"
> >
> > On Wed, Mar 6, 2024 at 10:30=E2=80=AFAM Peter Kjellerstedt
> > <peter.kjellerstedt@axis.com> wrote:
> > >
> > > > -----Original Message-----
> > > > From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On
> > Behalf Of Bruce Ashfield
> > > > Sent: den 6 mars 2024 15:30
> > > > To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> > > > Cc: poky@lists.yoctoproject.org
> > > > Subject: Re: [poky] [PATCH] poky.conf: Set the distro name to
> > "scarthgap"
> > > >
> > > > On Wed, Mar 6, 2024 at 9:11=E2=80=AFAM Peter Kjellerstedt
> > <peter.kjellerstedt@axis.com> wrote:
> > > > >
> > > > > *ping*
> > > > >
> > > > > I can't speak for others, but at least we have started our
> > preparations for
> > > > > the Scarthgap upgrade so that we are ready when it is released, t=
hus
> > it would
> > > > > help if DISTRO_CODENAME reflected the reality better.
> > > >
> > > > I can't speak for Richard, but I know when I get patches like this
> > > > for areas I maintain, they would have been better just as an email
> > > > asking when it is expected that the codename / whatever will be
> > > > updated.
> > > >
> > > > Making this change is obviously something Richard can more easily
> > > > do himself when he's happy with the content and not dealing with
> > > > bigger issues (when everything is burning and late, this is low on =
the
> > > > priority list).
> > > >
> > > > Handling a patch for something that he's responsible for (declaring
> > > > that the branch is almost ready for the release) is more effort tha=
n
> > > > it is worth.
> > > >
> > > > Bruce
> > >
> > > Well, the DISTRO_CODENAME is normally updated relatively soon after t=
he
> > > upgrade rather than just before the next upgrade, typically at the sa=
me
> > > time as the DISTRO_VERSION is set to its post-upgrade value. I do not
> > > know why that did not happen this time.
> >
> > I didn't say that asking the question wasn't valid, I said doing it
> > with a patch, following by a *ping* email, comes across as not
> > being particularly sensitive to the current (well known) issues with
> > late merging features to M3.
>
> I am just following the established procedure for integrating changes
> to OE: send a patch, wait for it to be accepted or receive feedback,
> if nothing happens within a reasonable time frame (where I typically
> wait about a week), then ping the patch as it may have been missed.
>
> Since I expect us to be using M3 to do our preparations for the upcoming
> release, I thought it appropriate to give the patch a little nudge since
> simple things like this are easily overlooked when focusing on the more
> problematic integrations.
>
> And the reason I sent it as a patch rather than a request to go and
> change the value is because I assume it is a faster/easier process to
> take a prepared patch rather than to manually do the change (even if
> it is just a one line change like this).

Let's agree to disagree on the message and work that is required
when you send a patch for a common set of changes that are
typically done by the maintainer.

Cheers,

Bruce

>
> > Richard obviously knows what has to be done to prepare for a
> > release, and if it hasn't been done yet, there are likely reasons
> > for that.
> >
> > Bruce
>
> //Peter
>
> > > And the reason I ask for it to be updated to match the content is of
> > > course that we sometimes use it when there is a need to differentiate
> > > between how things are done in the current version and in the upcomin=
g
> > > release.
> > >
> > > //Peter
> > >
> > > > > //Peter
> > > > >
> > > > > > -----Original Message-----
> > > > > > From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org>=
 On
> > Behalf Of Peter Kjellerstedt
> > > > > > Sent: den 27 februari 2024 21:45
> > > > > > To: poky@lists.yoctoproject.org
> > > > > > Subject: [poky] [PATCH] poky.conf: Set the distro name to
> > "scarthgap"
> > > > > >
> > > > > > Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> > > > > > ---
> > > > > >
> > > > > > It's been a long time since this diverged from Nanbield.
> > > > > >
> > > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > > >
> > > > > > diff --git a/meta-poky/conf/distro/poky.conf b/meta-
> > poky/conf/distro/poky.conf
> > > > > > index 3b7bc66780..e59ad974d0 100644
> > > > > > --- a/meta-poky/conf/distro/poky.conf
> > > > > > +++ b/meta-poky/conf/distro/poky.conf
> > > > > > @@ -1,7 +1,7 @@
> > > > > >  DISTRO =3D "poky"
> > > > > >  DISTRO_NAME =3D "Poky (Yocto Project Reference Distro)"
> > > > > >  DISTRO_VERSION =3D "4.3+snapshot-${METADATA_REVISION}"
> > > > > > -DISTRO_CODENAME =3D "nanbield"
> > > > > > +DISTRO_CODENAME =3D "scarthgap"
> > > > > >  SDK_VENDOR =3D "-pokysdk"
> > > > > >  SDK_VERSION =3D "${@d.getVar('DISTRO_VERSION').replace('snapsh=
ot-
> > ${METADATA_REVISION}', 'snapshot')}"
> > > > > >  SDK_VERSION[vardepvalue] =3D "${SDK_VERSION}"
> > >
> >
> >
> > --
> > - Thou shalt not follow the NULL pointer, for chaos and madness await
> > thee at its end
> > - "Use the force Harry" - Gandalf, Star Trek II



--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

