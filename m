Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21B66C0218C
	for <webhook@archiver.kernel.org>; Fri, 24 Jan 2025 17:48:45 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web11.18636.1737740923019704627
 for <poky@lists.yoctoproject.org>;
 Fri, 24 Jan 2025 09:48:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=VNZbFstS;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4363dc916ceso22791975e9.0
        for <poky@lists.yoctoproject.org>; Fri, 24 Jan 2025 09:48:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1737740921; x=1738345721; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NqTihn5Unfvlh8shi+HK1e/Cn7x6kr29zyyi40l6Xa4=;
        b=VNZbFstSCoQdC9QV1bkGjHfzFPfZzB6knm2vG6naieVjzc94ZM4aX4200pj59jRn0N
         MvnQHocsregvH0yLmUpncDyHVQHKbPfF9DJneJ9QwHRHK9W/Cmn/msDKElnRM7hQzkG4
         Pmwk742hNQfyjcXDdVgZp+/NCx6qO8mgxkjjI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737740921; x=1738345721;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NqTihn5Unfvlh8shi+HK1e/Cn7x6kr29zyyi40l6Xa4=;
        b=q6Dhs+QNUG+yDij4K3J5uoHuo8Edv/KTgDYI0vwP62n4AdhN1O4it8IHXHNECOAfK5
         8WzdPIpKoYDub8GdEWf6NvwsRkzGXQDDUaF6QYTaEAmpMuiueR5dMJJsso35xnrlBeMT
         E7L2cJLHvAcrrTjhXjM8niLW2+46P0hAJiLfmLjQpDpSnOBf8pyYyKKZ71YGBceSSZuC
         xATlnsQRgHIsjMZnIIw7QBS80YQdlrK66vrj4+QsCAz949LFnpKoYCSct7ZtoS3hM1NM
         Yscjy63i2HCOVFYqVl3Z2c/tQWTXS2VvUEsWie9n6q2FosbdPFTgTNHNmJbRqXwXZ2YE
         VdJg==
X-Forwarded-Encrypted: i=1; AJvYcCV2XzsRzpwyMXrJMBAiCBSxGEE/A0zPJtDTr2t/tIGaWz9otF0cbwYYlI8Cb721MlqEYLLs@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yw9ZF02dPVLbuV2Wm1I3ARh3pIv2TUYGxn94sdCkVDEz9z3PuPA
	6gqEMCgohtYNOLvTDPQs4WYLotkQGe09wSCGLmxBoRmo11l0YVQ57YXBo4+o0j0=
X-Gm-Gg: ASbGnctI/i3TkKfBETUxozNQuIkK6yt16td+JmgvrRLuPoAH/MEk3uKgsF/mpgiuPwO
	BQFB8AFfqyKXhw9eHeXLigAGfii3WMCh8RPppsz0z+Gou3QlCKcwnnYnYaup1ZT92WPLZxmUpkX
	t7FzlKPsGsehv5rREbsQ5PO4QmCO4Qd55KuX6yI1fWyGbMjRNACikG+YE6qATE2aO9ykKdZVGVU
	KivY5KLbT0wG6pby2U4Ra8SeGhEpzvB579abKgmWkYFX79TY77xRe+7CMZrOXmM8btHNQpjYLAm
	nmx+52KC1pg7zTmxGIit/FepGVLt2ZMxYzUviZMyNLY5YdTdGA7lDvinTkHAsiIdBaw+qw==
X-Google-Smtp-Source: AGHT+IHAtw2tv+B8/9VxWYN9Z48wQeD4XLXEcYHscCCchGXoq5pVwabHoR61f/dWkgbX3osuvmEcYA==
X-Received: by 2002:a05:6000:2c7:b0:385:faf5:ebb8 with SMTP id ffacd0b85a97d-38c2226bf6amr9553637f8f.7.1737740921428;
        Fri, 24 Jan 2025 09:48:41 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:6369:e73e:59c4:8223? ([2001:8b0:aba:5f3c:6369:e73e:59c4:8223])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c2a188bf5sm3406245f8f.50.2025.01.24.09.48.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jan 2025 09:48:40 -0800 (PST)
Message-ID: <1b89daa292508bd4aa9621616b7164b1b0523be7.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH RFC] add basic support for b4 contribution
 workflow
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: foss@0leil.net, poky@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@cherry.de>
Date: Fri, 24 Jan 2025 17:48:40 +0000
In-Reply-To: <20250123-b4-support-v1-1-4841f52eccbb@cherry.de>
References: <20250123-b4-support-v1-1-4841f52eccbb@cherry.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.0-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 24 Jan 2025 17:48:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13513

On Thu, 2025-01-23 at 16:44 +0100, Quentin Schulz via lists.yoctoproject.or=
g wrote:
> From: Quentin Schulz <quentin.schulz@cherry.de>
>=20
> b4[1] is a very nice tool for mail-based contribution. A config[2] file
> exists to set up a few defaults. We can use it to set the Cc recipients
> to always add, in our case the mailing list.
>=20
> This also adds a wrapper script that is called by b4 to check that each
> patch in the series is only for one project. Indeed, poky is actually
> a "collection" of multiple repositories, namely BitBake,
> OpenEmbedded-Core and the Yocto Docs. One patch should therefore not
> make changes in multiple of those projects otherwise it cannot be
> merged.
> Additionally, a check is added to make sure that a series only touches
> files from one project to avoid having to figure out which patch is to
> be merged by which maintainer in which project repo.
>=20
> Moreover, it is not uncommon to have people develop patches for those
> projects from within poky. This wrapper figures out which mailing lists
> to send patches to based on the files that are modified in the series.
> Considering that patches to the bitbake/doc/ directory need to be sent
> to both the bitbake and yocto-docs mailing list, this wrapper handles
> that. A limitation of the script (lsdiff actually) is that it doesn't
> know how to handle empty files, but those should be of rather rare
> occurrences.
>=20
> Note that this script requires hardcoding of paths that are handled by
> different projects to map files to projects. Anything not mapped is
> assumed part of OE-Core.
>=20
> [1] https://pypi.org/project/b4/
> [2] https://b4.docs.kernel.org/en/latest/config.html
>=20
> Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
> ---
> This is marked as RFC because I believe there's some additional plumbing
> required to make this work reliably.
>=20
> Indeed, OE-Core will also get its own .b4-config,
> c.f. https://lore.kernel.org/openembedded-core/20250117-b4-support-v1-1-f=
e74a5f50eb6@cherry.de/T/#u
>=20
> So the same file will exist in both OE-Core and poky, at the same
> location. The one from poky should always be this one (or with changes
> contributed via the poky mailing list) and not overridden during a merge
> by an update from the one in OE-Core. Not sure how to handle that yet
> though, does anyone know how this merging of trees is done in poky and
> what can be done to make this safe?

I can sort that bit. Basically we mark the config file as not being
synced by combo-layer.

> There's also a decision that was made to not allow patches to different
> projects in a series, but maybe that's not desired.
>=20
> Finally, I'm not sure about the appropriate copyright holder for the
> patch and the license, I personally don't care, so up to you.

Those look fine to me.

> ---
> =C2=A0.b4-config=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 3 ++
> =C2=A0b4-wrapper.py | 162 +++++++++++++++++++++++++++++++++++++++++++++++=
+++++++++++
> =C2=A02 files changed, 165 insertions(+)

I'm not against this but I would like to:

a) Put the script into OE-Core, just so that we don't have "magic"
things in poky.
b) Perhaps name it something a little more poky specific
c) Move it into the scripts subdir

Cheers,

Richard

