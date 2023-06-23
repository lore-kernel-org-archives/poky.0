Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06425EB64D7
	for <webhook@archiver.kernel.org>; Fri, 23 Jun 2023 11:54:05 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web10.40120.1687521240049803544
 for <poky@lists.yoctoproject.org>;
 Fri, 23 Jun 2023 04:54:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=APDItvYW;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-4f122ff663eso653570e87.2
        for <poky@lists.yoctoproject.org>; Fri, 23 Jun 2023 04:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687521238; x=1690113238;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qx5Ick2maXkSjQeToOvdC6JqtY+WoJQj4f3CjbpMvfo=;
        b=APDItvYW/0jguoT04FAZUusSxmxUuHrwFgAzv2hMisEI+6iQhHIjza3gY7HfekWurj
         4PrwtytI2Iq4hg4hZQm6y7P4I/KT+q0maasiAfrrqgA+KRdlBRcUyrRYAI6ze9YL6Fjh
         iCssGm6E5iQYJRMWEJLrni+OBEclupXXNr2XgwE4NUZQsjqzhaUxcDmb7cbSGgTUO+Ti
         z6KiYIQHX1ncNM+93QeJrCYyd3Px5XZ2pOJlbRUQFx1dv9p1ZYZ96tThcGeG20TWAiux
         29oAsgSELR73CKJVjDQboPANNCBMoupTIHZpLsF8+CsUkGmtUzMxbPIcyqMH2C/TwoyI
         EkSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687521238; x=1690113238;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qx5Ick2maXkSjQeToOvdC6JqtY+WoJQj4f3CjbpMvfo=;
        b=WDJ2pZdr0nTnAhoaS7Lv8QkC9qAT9euqSGd04nvvNd9HGXPP+uAHguVg4TyL0R67hE
         JgvwolLVE0BMgIYF//i2ZUS7BOBfv749mu+dlXY3Tk8Nhd43H3hWZjGnQe2aOPfe2QJj
         AcPROzNbLTXeHnlb0Uho5nrW4WpPCebpTNMD4BKcTcLA0lWuNxMh0H2Wajocv9mBmZ2F
         H1aZerp+J4P7Y1PgOVPAeZCf5z5wnVT0HHOFsHc+LYd5cqwDSyNhtC+6/MIXPMJpwNQo
         XxzhYRyRuhFRW+ftmOJNq6EFbq1UssijEl1MiGevz7urtLguAdbeFa4A5uoYjaurH3UI
         EmbQ==
X-Gm-Message-State: AC+VfDwTH1LXlZHzRRKK7Yy6JM/g8MGnR2UygvEKKuM895SBpRi1pE0R
	5kOOO9x8Afx6QFxH5A/eG/fBj1jVqJSQ79lyhcU=
X-Google-Smtp-Source: ACHHUZ7A97V3BZ1KixYvuRa5GGdpP56COCpcDKIsjq2bJ+Ycl2rLCirxrcTgBVNHH6Dw9c44Yl6kocnFMRIDe4htNMs=
X-Received: by 2002:a19:5e41:0:b0:4f8:49a7:2deb with SMTP id
 z1-20020a195e41000000b004f849a72debmr12071049lfi.8.1687521237719; Fri, 23 Jun
 2023 04:53:57 -0700 (PDT)
MIME-Version: 1.0
References: <7613284c-e7b0-61c4-d93f-41a5f904d9d0@gmx.li> <CANNYZj8sk4R-CzPZe1thmdp0K9PhbZ_Oi5U0yRHwOwGWFfZd2w@mail.gmail.com>
 <f7b3af62-9843-8d0e-3882-ca5914969eac@gmx.li>
In-Reply-To: <f7b3af62-9843-8d0e-3882-ca5914969eac@gmx.li>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 23 Jun 2023 13:53:46 +0200
Message-ID: <CANNYZj-Y3fHBuPU4LxnhQbrw_MdKcAJFsh08ZNBBmfAMGFqW9w@mail.gmail.com>
Subject: Re: [poky] Yocto and kernel - dependencies
To: Steve <star@gmx.li>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 23 Jun 2023 11:54:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13092

At this point I need to ask about your hardware. Can you tell what it is?

Alex

On Fri, 23 Jun 2023 at 13:23, Steve <star@gmx.li> wrote:
>
> Thanks Alex, that was indeed my first attempt.
> To start with a simple case (I thought) I just added to my <machine>.conf
>
> PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> PREFERRED_VERSION_linux-yocto ?= "5.15%"
>
> But get: "Noting Provides virtual/kernel"
> I mentiones a few that provides it, but all are skipped as they are
> incompatible with my machine. But isn't that anyhow wrong way, as I want
> to use my kernel, not yocto-kernel?
>
> I also thought about doing like that:
>
> PREFERRED_PROVIDER_virtual/kernel ?= "my-linux"
> PREFERRED_VERSION_linux-yocto ?= "5.15%"
>
> but it doesn't go for my-linux_5.15.bb file that contains SRC_URI and
> SRCREV.
>
> Seems I am on a completly wrong track.
> Thinking about what is theoretically needed:
> Source, Revision and what config file it should compile.
> How to provide that?
>
> Am 23.06.23 um 10:38 schrieb Alexander Kanavin:
> > The recommended thing is to build the kernel directly in yocto with a
> > recipe. Or, even better, take one of the standard kernel recipes and
> > use that.
> >
> > Alex
> >
> > On Fri, 23 Jun 2023 at 10:28, Steve <star@gmx.li> wrote:
> >>
> >> I am a bit clueless about the relation between yocto build of rootfs and
> >> kernel.
> >> Usually I build my kernel completely outside of Yocto, just using the
> >> SDK created by Yocto.
> >> But now I am afraid I doing something wrong regarding kernel headers
> >> need in rootfs - or at least in SDK.
> >>
> >> My machine-config seems not to have any link to kernel or
> >> kernel-version. I found that linux-libc-headers (is this what I need ?)
> >> is of 5.16, while I am actually compile a 5.15 (again completely out of
> >> Yocto).
> >>
> >> So what is recommended? What change is needed to use headers out of my
> >> linux git repo?
> >>
> >> Best regards, Arno
> >>
> >>
> >>
> >>
> >>
> >>
> >>
> >>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13091): https://lists.yoctoproject.org/g/poky/message/13091
> Mute This Topic: https://lists.yoctoproject.org/mt/99714609/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

