Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F35D9C77B7C
	for <webhook@archiver.kernel.org>; Tue, 24 Jun 2025 16:01:07 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web10.2214.1750780865938978262
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Jun 2025 09:01:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=M3DQDLVO;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6fd1b2a57a0so5242086d6.1;
        Tue, 24 Jun 2025 09:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750780865; x=1751385665; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TG9HJ3A0zKvg42zmBDo6Vxx6N0Ur9ZHPB+QDMSyOfYw=;
        b=M3DQDLVOUYWHNg7nK0/8RPqm9Q/WH0kUh5n4Unt8TGwS8bHJ7i/jzG196VwbJtMWtD
         x8JoY2vb5EaSqupWpq2qlfrjXUlaLJGyVLuLY9N0puKRoybkv+hmNSdPeNcCEVXjx+Wc
         ljODU8aUrqFMsEqb4TkMSF+T1xgYl+qKHSKokCUgeewjP7FdxVns8Oy1f2We/NqYLrbW
         HMSIH2GY/SZ7TEdT1voVzKMmhIdichq6ps2F2nBSWKNvfkP6qqsHacwCmKQ+8hCZeHl6
         PaSZpcKN2pWVSyxbMe1S1CBGb9rktgtwejqdAag9C5htosRGa8I9uARSChZx8f17Weyh
         yw+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750780865; x=1751385665;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TG9HJ3A0zKvg42zmBDo6Vxx6N0Ur9ZHPB+QDMSyOfYw=;
        b=K0gtdviGTE7d5D97a8sgT8i7eU1sXLd1tU+r+bou76AW2126zz5bHLU/wZPjutWQ/G
         J2z9BqdfggyOnQRH0sZHqgYJu5Ikeryjz4j/mpIxOOENXWXadoIWTyfq/ATniZZI4tE+
         JYLivKgVZqZqj84mZPLXNaUoFD01yOKfb73F30WaNaeZHIFPEt5rMZ2hpOS08WzPI1wH
         MhEFeW+mHoZKykqTsFTCRg8QL4cS3n0yqQf340dHFRE0FXDHxWvz45AZbnLkinliPjnz
         7AE98wn6P9O63tZqPIOgnH8lhYv8yPYrYX3i+w+SSNDc22ncFja6Xf0SxLNQGrKiJCC3
         y5qw==
X-Forwarded-Encrypted: i=1; AJvYcCVPjAp5fTdwysu4307vwO5u4opdbtPc73tN9bso8Pz/FspXI68dBLT+zul0XsR3d8d7lPbjzA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzX4HEwS5cHhT6zfkkJRj91hVnkBbt1iNRKQa2QhkW5MeJC/XMq
	BHtcU6d9QHFvzz5NrS1aaak9tJzST5e7ZMWnrJbtVGpunrlb73xRLrC+Ug48Nr1M/pHpRhc7rXb
	hzGHnwOhtk9q+R7CcSHFtI3OqsBlLr4Y=
X-Gm-Gg: ASbGncv8vvf3Fumag+7nfai+lZSwScmClBKOghoJOGRr2Upe9DOiwxY1nRFU0G/ViJU
	CWBRpgndDCiZDNWjBnlkf31XQnyUJ2dz/EOrYNV+XOgTdeBlYRdKSG5saFGet4nLsC+x1Ex/gRo
	aAc3miIDCSxE9l0PEVMcpgyA1cSsh+C03bggtRmt8mUH4H6Wmyxf6cw82XLnGN1LfpIjiEXQqS+
	/aGAA==
X-Google-Smtp-Source: AGHT+IFNNTcROusqmiNv5N/TtR2gFEjEiXVGTkd1OXGfMplAY10+wuOjPWoF/YnypJsdtjhHLcV8xyHnafTTe5ZUavg=
X-Received: by 2002:a05:6214:c83:b0:6d8:99cf:d2db with SMTP id
 6a1803df08f44-6fd0a5d7bf5mr311613576d6.38.1750780861754; Tue, 24 Jun 2025
 09:01:01 -0700 (PDT)
MIME-Version: 1.0
References: <20250623165507.1633860-1-alex.kanavin@gmail.com>
 <6fb30604dfb196088f07c6b59f437eeb0f1df788.camel@linuxfoundation.org>
 <CANNYZj8bcMto=-OHPNEZs_aEM4vr9K1ujVOZ77EDBT-9xC5sRw@mail.gmail.com> <749dde0c3ed74dc938085cd15316245eeaa15cc4.camel@linuxfoundation.org>
In-Reply-To: <749dde0c3ed74dc938085cd15316245eeaa15cc4.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 24 Jun 2025 18:00:49 +0200
X-Gm-Features: Ac12FXzEr61-W12wngpwinTvPp04UteLqOAZrKReiXIS0XXLwzJ6oVyvq4ZBI2o
Message-ID: <CANNYZj_9Yv-SnHt26fbkAbYjjmwKwftAbOzZ_E2zuz6S-64Kew@mail.gmail.com>
Subject: Re: [poky] [PATCH 1/2] meta-poky/conf/templates/default/bblayers.conf.sample:
 do not assume integrated poky repo
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org, 
	bitbake-devel <bitbake-devel@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 24 Jun 2025 16:01:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13675

On Tue, 24 Jun 2025 at 15:58, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:

> > Right, this refers to the poky integration process that cherry-picks
> > files and directories from original repos, e.g. the default template
> > from oe-core (meta/conf/templates/default) does not make it into poky
> > at all.
> >
> > The patch follows the suggestion that such a tweak is possible:
> > https://lists.openembedded.org/g/openembedded-architecture/message/2129
>
> Ah, that is a bit different. There aren't tweaks of a similar nature.
> I'll need to give this more thought...

I want to put my thoughts (and a proposal) forward: the real issue
here is that BBLAYERS is a list of full paths, and thus is not
relocatable. And there's lots of awkwardness around changing that list
relative to ##OEROOT## and back in templates (and ##OEROOT##-prefixed
paths are still not relocatable).

I tried to think of a way to specify layer identifiers instead, and
have some kind of 'magic' figuring out where the layers are in the
filesystem. One option is something like this:

BBLAYERS_SEARCH_PATHS = "/path/to/where/layers/are /some/other/path/with/layers"
BBLAYERS_IDS = "core yocto intel"

e.g. bitbake would walk the filesystem starting from those paths (they
would be set by bitbake-setup or other tools performing layer
checkouts), and add any matching layers to the build.

I think that's actually not too horrible. Should I try to prototype
this? One nice consequence is that it makes templates optional for
those who do not like them: one could instead set the build entirely
from just a list of fragments (machine/distro built-ins at a minimum
:) and layer ids. Having to maintain templates for any possible layer
combination doesn't scale, same way as on-disk fragments for
machines/distros wouldn't scale.

Alex

