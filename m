Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E1BDC5B543
	for <webhook@archiver.kernel.org>; Wed,  4 Jun 2025 09:05:50 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web11.12120.1749027949182962476
 for <poky@lists.yoctoproject.org>;
 Wed, 04 Jun 2025 02:05:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=E7OmH9rL;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6faf66905adso3632816d6.2
        for <poky@lists.yoctoproject.org>; Wed, 04 Jun 2025 02:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749027948; x=1749632748; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qeJqEXK3RreRpjGD2vtE13nbcRU/NgtyFNUGbi+uo+M=;
        b=E7OmH9rLSRhnBfElyqnTwc7Q9o7yDxd1tLg1gwyTZBnZ4CVqbn+xj3uc+FgzAtR/1p
         jd5cL8mmFuNUUm4Sfu145G4v9L5MuUGkdabDfGhqQFIvA8DTSFNzLKXMCN+IpWQsgXU0
         uJaq+Lm3Ikf/E63GgUItu6ua/wOYP25jCzXEebNCDu4EXVlvXDu5hIqxL4jj8UirxqUw
         swgIZyS4zRcjg/kF4BGIKV/P2XYm45YH8G9G5rYX+tx21qFdP/1otZX/06aZ+b7dkHpM
         UdzG4qnwxq9iB1S78KUcFunpYVHvizyCmhOBoR8zNW2jyMtpNbzwkRKCO53PchxhhRik
         RuqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749027948; x=1749632748;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qeJqEXK3RreRpjGD2vtE13nbcRU/NgtyFNUGbi+uo+M=;
        b=RjrSK2Own4AKzEmhOI2OX0kBH6VY2FJv6KUXELQrVTf9AMEEkCuRARiLO2/IdMkrig
         Q+6KUOPjVEI5siycAKMLYdBV9fIV9Ks+ydlXjIpdQTx5n2ndVf8f2Ja8tJR+gBPgT6Bj
         +6Z1SupHSJJannZZ/wSZ0jLcHvEiTbH3mFE0rOpijUhwIYN/Mf8iha00+YHyMWcZ8pMO
         DQp4ZIliWmvJJCsp9FrF/AQy20pp/3DAp6AKVZHCcDsP3aY8v8J4KUzTmlE3aNMxuVRa
         Fal2ve3DwSriOTz+ttmcSYkyjZeoyiD9/bcmxZCy6EgvzAJSYzL0ef9Kvl0ohjH7Ce4V
         1bBQ==
X-Gm-Message-State: AOJu0YyL6vYAbEMKEwhV2Qn9CDyIfwiJqcZEcfzKmzJ79io7Bh10EAk1
	OX26NtU36EE3tLqQzFdioeHmJ/yu1OU/hxMHESnvjIVA5Hq53ljSUBo7NB+flPphUPXFKEaS5IF
	0s1QrLbZolrXRTjRzHF054pj+bvxYFaI=
X-Gm-Gg: ASbGncs7BpdU3bI9fRBSc+w2YcK8Zff1xOohHUoub5SKVsF23LeGDrLqrrACmgJpfEY
	miRqQG1TdWndEKER+3YbufXo6+riO6SAqA+tQMzqQa9GMPBU+YjzxsU5qM5m6EA+brZbm3BWkcp
	s4JnTr/vBnKGWpgC7EODvERMDjJev5yDUaj3Qp6kOOkSkpZjM31d7yfiIXURQjmc0jK9E=
X-Google-Smtp-Source: AGHT+IFuV61X9a1sXedzQBkYSU8FXEnyeNbXZnmmUhfuckZrnaS/HXFkLUuBu3ZS2+ECYhQ87LWkpdu5KN2XQ8Zd6BE=
X-Received: by 2002:ad4:5bce:0:b0:6fa:ce87:230c with SMTP id
 6a1803df08f44-6faf6fa6e7amr30178086d6.25.1749027948080; Wed, 04 Jun 2025
 02:05:48 -0700 (PDT)
MIME-Version: 1.0
References: <20250603113558.3104618-1-alex.kanavin@gmail.com>
 <20250603113558.3104618-2-alex.kanavin@gmail.com> <b8f9ba8524090623e0e13ef36724839c140f99a6.camel@linuxfoundation.org>
 <CANNYZj9wRaL3Biwhdjn7B0wW3v61ieoEMCO6MFH15n_aLvtDAg@mail.gmail.com> <e94887f831142516ccf60e3f477155b5b6e5f92d.camel@linuxfoundation.org>
In-Reply-To: <e94887f831142516ccf60e3f477155b5b6e5f92d.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 4 Jun 2025 11:05:37 +0200
X-Gm-Features: AX0GCFtuMpHDmBxD5Wus56oJYDGLztW7g8jZMV0liNyOQ2EoG3pFBlFwCpeNC-0
Message-ID: <CANNYZj-jTjD281=McMDzQtABizNqZ5csbbE9aiJZLRA2U6BX5g@mail.gmail.com>
Subject: Re: [poky] [PATCH 2/4] conf/fragments: add fragments for qemux86-64
 and qemuarm64
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org, Alexander Kanavin <alex@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 04 Jun 2025 09:05:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13645

On Wed, 4 Jun 2025 at 10:48, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> > I think bitbake-config-build should be extended to have
> > 'list-machines/set-machine/list-distros/set-distro', and then
> > bitbake-setup would call out to that, like it already does for
> > fragments. There's already 'show-machines' in bitbake-layers, which
> > should be renamed and moved, so that bitbake-layers is less
> > over-stuffed with sub-commands.
>
> Maybe. I do like the idea of being able to express a configuration with
> just a list of fragments so a magic mapping of machine/XXX and
> distro/XXX does still have some appeal. We could code something:
>
> BBCONFIG_FRAGMENT_VARIABLE_MAPS = "machine/:MACHINE and distro/:DISTRO"
>
> to make the code generic?

My idea was to do away with fragments for machine/distro, and have
'bitbake-config-build set-machine XXX' write 'MACHINE = 'XXX' into
conf/auto.conf.

And then bitbake-setup config files would have a particular syntax for
that, e.g. replace the current:

            "qemux86-64-poky": {
                "description": "Poky reference distro build for qemux86-64",
                "oe-template": "poky-blank",
                "oe-fragments":
["core/machines/qemux86-64","yocto/distros/poky","core/yocto/sstate-mirror-cdn","core/qemu/enable-native-sdl"],
                "targets": ["bitbake core-image-minimal
core-image-full-cmdline core-image-sato-sdk core-image-weston"]
            },

with

          "qemux86-64-poky": {
                "description": "Poky reference distro build for qemux86-64",
                "oe-template": "poky-blank",
                "oe-distro": "poky",
                "oe-machine": "qemux86-64",
                "oe-fragments":
["core/yocto/sstate-mirror-cdn","core/qemu/enable-native-sdl"],
                "targets": ["bitbake core-image-minimal
core-image-full-cmdline core-image-sato-sdk core-image-weston"]
            },

I don't have a strong opinion either way, perhaps it's best to 'upload
discussion data in brain and process', while fixing further do_unpack
rework fails :) If you can respond with further points I'd appreciate
that! (so I better see the forest)

Alex

