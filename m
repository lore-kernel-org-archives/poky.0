Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6F4DC0218F
	for <webhook@archiver.kernel.org>; Fri, 31 Jan 2025 14:38:41 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web10.20579.1738334313364797965
 for <poky@lists.yoctoproject.org>;
 Fri, 31 Jan 2025 06:38:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=QznYt9oE;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-385f07cd1a4so1818303f8f.1
        for <poky@lists.yoctoproject.org>; Fri, 31 Jan 2025 06:38:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1738334312; x=1738939112; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5EP3d+p4JIF4DGT28DMrCpz9xBzZ+7nROQSy51YhWgQ=;
        b=QznYt9oEz5OJcc0SSVrk70dEXPArEzQiJa1qKi731WT456c43utHf6ioSz35JnXc9f
         UZyshAxnyasKsn2jXT3ODifZd+lSdmuFI0s9Z+NAtrQSWoZAsE/rPuQhjP9poRC4UjwD
         i1mmvBGQQgxZOi3KyzPpe41CJWGnP7X/B+pXg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738334312; x=1738939112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5EP3d+p4JIF4DGT28DMrCpz9xBzZ+7nROQSy51YhWgQ=;
        b=XzxRVKwEIe2GVAz+aIFebgt5cyncRpbkA+qUqUE53zlZj7Sko4keh/7zs5irwGFfby
         O6ttD7Am/0eOQ6ORXyXTrbErev7Lhw+wrpCEC77YBivqU9yVmZ5/s0q4qn1YHo+JOg6y
         UFQSGpc+ynE9lsdHWGvpj8TBWgTpmooKOi06IIgFyBeQeN9N6VOKB4myUFRsbC/abFa4
         a7pfmeIY7fQjOdEsSOmGmJThuEmcnp8gXed8eD4ildEVUddRUyWUkrWX5htuEDp9u37q
         4Hr1CB7zE4Ckgmgmx2lJ6tQIzNa5uuDy3Rbt/jm89WYLGp1eRRXb4MIquPxz6IqwcmyL
         X6Dw==
X-Forwarded-Encrypted: i=1; AJvYcCWa54g0qHnqoGqX/tXqA9ijXrSdyf2fy0YQmKjBPUa+jB/ZcRiow3UwBtGHSsPt6LYdAKU+@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yx5TrK5mOIXirCt04piITzGVCIVaoEek0iHK1qrQxfaVuEsjNIa
	b7okH4tP5N4mHDOC1r843UDni83h5NtChaaQWrxNjVRMpEAo4Hv45Ylkpl6kzQYV0IJ3AntgKCw
	a
X-Gm-Gg: ASbGncu8ZxCKRt5dzeocucIJ7hpZmpFNPDrGCL+ETc8KxoF27BgF438eg+TP++B/Awx
	tTmIhtSHIzpyUfhtfEOo83jukCSnmh6585Wwp7X4ux7gMO4yOfY2k4vSHtPRizU0MrWa4idjU/F
	qA5JW9cKcajedBI1yfWV6KH3whO2xMSo3DkQSfOftVL+uoKx9yiThheSowoA8QBrqETMg1Sugol
	q3G45SZk6I57eRDuQUEHR07oP7zjzU32zvTm/QHVAd6hcCrc6QJFJzSLtblKsztOzUkC6m3+VsM
	vwp8sRXTPKHTgLa4a5rfou4UsQBScsiy2d8SwPi5xxPnsIp9rYI4Ie39q/JoPRs4nc5+4W3Rbdp
	ZaOmf
X-Google-Smtp-Source: AGHT+IGv7+gpyRPVUNdHxEhMCtcHnmzocFx+1aIDXka2ctvU2GuiVJVew9WopxS6eAqrwDzIMS11cw==
X-Received: by 2002:a5d:64a6:0:b0:38a:8888:c0b6 with SMTP id ffacd0b85a97d-38c52095e0amr10870139f8f.51.1738334311271;
        Fri, 31 Jan 2025 06:38:31 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:bcf2:8577:8e76:da28? ([2001:8b0:aba:5f3c:bcf2:8577:8e76:da28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c5c102e19sm4907394f8f.36.2025.01.31.06.38.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 06:38:30 -0800 (PST)
Message-ID: <b19ccd384dc2816bf44add397deb0c4bdfd60cf4.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH RFC] add basic support for b4 contribution
 workflow
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Quentin Schulz <quentin.schulz@cherry.de>, foss@0leil.net, 
	poky@lists.yoctoproject.org
Date: Fri, 31 Jan 2025 14:38:29 +0000
In-Reply-To: <056bd5b1-c64f-47d7-91ba-15aa0dca4dd7@cherry.de>
References: <20250123-b4-support-v1-1-4841f52eccbb@cherry.de>
	 <1b89daa292508bd4aa9621616b7164b1b0523be7.camel@linuxfoundation.org>
	 <056bd5b1-c64f-47d7-91ba-15aa0dca4dd7@cherry.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.0-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 31 Jan 2025 14:38:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13518

On Fri, 2025-01-24 at 19:06 +0100, Quentin Schulz wrote:
> Hi Richard,
>=20
> On 1/24/25 6:48 PM, Richard Purdie wrote:
> > On Thu, 2025-01-23 at 16:44 +0100, Quentin Schulz via lists.yoctoprojec=
t.org wrote:
> > > From: Quentin Schulz <quentin.schulz@cherry.de>
> > >=20
> > > b4[1] is a very nice tool for mail-based contribution. A config[2] fi=
le
> > > exists to set up a few defaults. We can use it to set the Cc recipien=
ts
> > > to always add, in our case the mailing list.
> > >=20
> > > This also adds a wrapper script that is called by b4 to check that ea=
ch
> > > patch in the series is only for one project. Indeed, poky is actually
> > > a "collection" of multiple repositories, namely BitBake,
> > > OpenEmbedded-Core and the Yocto Docs. One patch should therefore not
> > > make changes in multiple of those projects otherwise it cannot be
> > > merged.
> > > Additionally, a check is added to make sure that a series only touche=
s
> > > files from one project to avoid having to figure out which patch is t=
o
> > > be merged by which maintainer in which project repo.
> > >=20
> > > Moreover, it is not uncommon to have people develop patches for those
> > > projects from within poky. This wrapper figures out which mailing lis=
ts
> > > to send patches to based on the files that are modified in the series=
.
> > > Considering that patches to the bitbake/doc/ directory need to be sen=
t
> > > to both the bitbake and yocto-docs mailing list, this wrapper handles
> > > that. A limitation of the script (lsdiff actually) is that it doesn't
> > > know how to handle empty files, but those should be of rather rare
> > > occurrences.
> > >=20
> > > Note that this script requires hardcoding of paths that are handled b=
y
> > > different projects to map files to projects. Anything not mapped is
> > > assumed part of OE-Core.
> > >=20
> > > [1] https://pypi.org/project/b4/
> > > [2] https://b4.docs.kernel.org/en/latest/config.html
> > >=20
> > > Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
> > > ---
> [...]
> > I'm not against this but I would like to:
> >=20
> > a) Put the script into OE-Core, just so that we don't have "magic"
> > things in poky.
>=20
> It is very poky-specific though. I don't have anything in mind right now=
=20
> but I could imagine we could need a b4 wrapper for openembedded-core at=
=20
> some point as well. b4-wrapper-oe-core.py and b4-wrapper-poky.py could=
=20
> coexistthough and be pointed at specifically by each repo's .b4-config.
>=20
> Don't mind it, just find it a bit odd.

It is a little unusual but I'd rather this than adding poky specific
content. I'm find with either a poky specific script or a parameter to
put it into "poky" mode.

> I haven't checked if b4 follows symlink, but if it can, would you want=
=20
> .b4-config.poky in OE-Core too and then we do the same dance as with the=
=20
> README.md in OE-Core/poky?

I think that would be confusing, I'm find with two different files and
combo-layer can handle that easily.

> > b) Perhaps name it something a little more poky specific
>=20
> b4-wrapper-poky.py? b4-wrapper-poky.py to match README.poky.md for=20
> example? My brain has already decided it's the weekend so not very=20
> creative right now :)

Something like that. I'm also not feeling very creative atm!

Cheers,

Richard

