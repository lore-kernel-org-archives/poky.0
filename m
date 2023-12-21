Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3591C35274
	for <webhook@archiver.kernel.org>; Thu, 21 Dec 2023 10:45:48 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web10.49013.1703155545441142983
 for <poky@lists.yoctoproject.org>;
 Thu, 21 Dec 2023 02:45:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=AhhfGO0t;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-40d2e56f3a6so3404075e9.1
        for <poky@lists.yoctoproject.org>; Thu, 21 Dec 2023 02:45:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1703155544; x=1703760344; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LoL32MyYuxQXfWYWcqpFgrFOXs3XRomzKcoMhm59pvo=;
        b=AhhfGO0tHsRUBEm7yenPj/ClkyLzyKJzGfpjTe1UyKsKYfZnn2WVE72nBOS2B/uS7k
         CRoZ5q47jpx2xHYOwPgAC5et/OchM1FK6AJY6afTWlMFZnCtuOfAQ6TXVEpHU8y8SdUX
         YxHYKh5PNCeZiRY+HkdqPbssImJxLW7t4z+Co=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703155544; x=1703760344;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LoL32MyYuxQXfWYWcqpFgrFOXs3XRomzKcoMhm59pvo=;
        b=cxfgKQQ51ebD1EWUJpfyOCgqfqSPGkvZJEx5QZpLpb+U/BjKhTWDrRllLoldpKBdGA
         9Mh/eA8+XBGu3bIE3pkI5CI7qapnLDzRSg/jIW3hbG7wLQy3H9Oy14vBptPAp1tFninO
         LN1YSiPCv3tb+XYj+oQDNsfft3VI6Fv0SaogzRVaWlqMsu4h3xsuOV/JSsHeZj843kjr
         kV1qXYZty3LSsZeN2G5IFDCaLrBj1cpAZRlRIVdOTYrpA3QZTSGKo4iF3AivnM5lHaLt
         R9t/6fIo9BhdpOVNmSEqNmV1kZ9W/WhDIqeDb4/XpxOc6C8ZrmYAFBq8EDmb+r4bSkSt
         9ZBg==
X-Gm-Message-State: AOJu0Yynscqav/7wjhrZEI4OGVxPonMkjA9Yz38iMVyf2ri4TjScPCFR
	rA5569FRpPQ4cB5JlUybPz/H4A==
X-Google-Smtp-Source: AGHT+IGl7bJACNqbVkWe0x7yoXcF6bQ1KherBF/dOEXAQ5SRstV3+YSaBiNr0RJT1MbchpznefvVpw==
X-Received: by 2002:a05:600c:4fce:b0:40b:5e26:2371 with SMTP id o14-20020a05600c4fce00b0040b5e262371mr319278wmq.34.1703155543768;
        Thu, 21 Dec 2023 02:45:43 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:916f:409d:c5db:4918? ([2001:8b0:aba:5f3c:916f:409d:c5db:4918])
        by smtp.gmail.com with ESMTPSA id fa18-20020a05600c519200b0040c4afa027csm2782264wmb.13.2023.12.21.02.45.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Dec 2023 02:45:43 -0800 (PST)
Message-ID: <1b4ee6855ccefea5f128ab1ebcc9bca670b16f87.camel@linuxfoundation.org>
Subject: Re: [poky] [kirkstone][PATCH] poky.conf: update
 SANITY_TESTED_DISTROS to match autobuilder
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Michael Opdenacker <michael.opdenacker@bootlin.com>
Cc: poky@lists.yoctoproject.org
Date: Thu, 21 Dec 2023 10:45:42 +0000
In-Reply-To: <75e908d1-701f-4163-8001-0095aa8b8a0d@bootlin.com>
References: <20231220152600.282677-1-michael.opdenacker@bootlin.com>
	 <51481139d73c82715cfe808d20f9fec0073dba40.camel@linuxfoundation.org>
	 <75e908d1-701f-4163-8001-0095aa8b8a0d@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 21 Dec 2023 10:45:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13229

On Thu, 2023-12-21 at 11:41 +0100, Michael Opdenacker wrote:
> On 21.12.23 at 00:31, Richard Purdie wrote:
> > On Wed, 2023-12-20 at 16:26 +0100, Michael Opdenacker via
> > lists.yoctoproject.org wrote:
> > > From: Michael Opdenacker <michael.opdenacker@bootlin.com>
> > >=20
> > >  From the intersection of the list of allowed workers
> > > on https://git.yoctoproject.org/yocto-autobuilder2/tree/config.py
> > > and the active workers on
> > > https://autobuilder.yoctoproject.org/typhoon/#/workers
> > >=20
> > > Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
> > > ---
> > >   meta-poky/conf/distro/poky.conf | 3 +--
> > >   1 file changed, 1 insertion(+), 2 deletions(-)
> > >=20
> > > diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/=
poky.conf
> > > index c179cbf..f5aff32 100644
> > > --- a/meta-poky/conf/distro/poky.conf
> > > +++ b/meta-poky/conf/distro/poky.conf
> > > @@ -37,9 +37,8 @@ SANITY_TESTED_DISTROS ?=3D " \
> > >               ubuntu-18.04 \n \
> > >               ubuntu-20.04 \n \
> > >               ubuntu-22.04 \n \
> > > -            fedora-37 \n \
> > > +            fedora-38 \n \
> > >               debian-11 \n \
> > > -            opensuseleap-15.3 \n \
> > >               almalinux-8.8 \n \
> > >               "
> > >   # add poky sanity bbclass
> >=20
> > I believe the convention for older releases should be to leave releases
> > we tested upon at the time of the original release but add new ones
> > we've started testing.
> >=20
> > It is unlikely Fedora 37 would stop working with the LTS even if we no
> > longer test there.
>=20
> Understood and remembered now, thanks!
> I'll update my patches then.
>=20
> However, my plan is to propose a documentation patch that removes Fedora=
=20
> 37 from the distributions we support. Even if we can go on testing old=
=20
> distributions for several reasons (such Ubuntu 16.04 for quite long=20
> after it was EOLed), it's hard to support distributions for which we=20
> don't receive updates yet.

I'd prefer to keep the list including the list of things tested when we
originally released even if they have passed EoL.

The reason why is that people quite likely do keep some of these
systems around and run the stable release updates on them. If they do,
they're going to get a message saying it is no longer supported. That
is true to some extent but things will continue to work and I'd rather
not "panic" them like that. Whether they should build on EoL systems is
a matter of debate and their choice, not ours.

Cheers,

Richard







