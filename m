Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF15EB64D7
	for <webhook@archiver.kernel.org>; Fri, 23 Jun 2023 13:43:45 +0000 (UTC)
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
 by mx.groups.io with SMTP id smtpd.web10.42276.1687527824405079570
 for <poky@lists.yoctoproject.org>;
 Fri, 23 Jun 2023 06:43:44 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=O/rNJBj9;
 spf=pass (domain: gmail.com, ip: 209.85.166.41, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-78336da9b40so1112539f.1
        for <poky@lists.yoctoproject.org>; Fri, 23 Jun 2023 06:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687527823; x=1690119823;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8b0fdUaVJReaUj4GXVSlXPCA+CEiUFR544RMKHy+D74=;
        b=O/rNJBj9NzSHp3GIwKxIZO35AAtru7ojqOgiQh4Om8a2uojR36wh5tnrSUXOlet8T8
         Cb0pKWrybOWdyKKRfZqfq28SSrwGr4boqZzkyvPi6C4m8lFGvDUjFXa5Zaf9AyOYgxAz
         CIwvkHDBxc0R4R+kBKLYPNmv9hZ2TNVUc3HrF2aCvoMfUrO+kNb5sKnw69C0zPOY1I0A
         Jox5fykXfgIal4MnuaLqGWF5HnE1kDsDkVE0J9clKxaBOse4Ii6sXHs2/9egR6+GPNl1
         uqitFH898Qph+nxqZyE6s8KeuSHE8axdGNS7BlBlnGYh9RwJcA8U7dDtjetdGXfxHljl
         SCfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687527823; x=1690119823;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8b0fdUaVJReaUj4GXVSlXPCA+CEiUFR544RMKHy+D74=;
        b=GC/IN2pyz1M52aV/lzCkEaKv1zqvGwyxrM27a9Gt1FvxGmKrk5PTi0HWU0qxyqAv4o
         JIpmGeMVS0Zac/Z4ZmYUM9rLKOg1U5EBsl0mDWyjOaYlRkMuCcF7/+bJQYmHD6Sy+erE
         tEF9+NAcZY7EnrKaG0KuH7XTg+ALaprU4R01n6ldLVfsR8y/fZotejZhP0HcOwq3C0+o
         Ur2BBhqxCAYadBKdijGDOPUIr2mTrOZebU5hazrVDf/ZZbKm1uL8+COGYFsD9f743f68
         1L4RsgReA7h7pELY+ydVecQHn2f8ZCIzk5bSLpJEwzo8jF89ezhMdTaF+AMWTb6+vXkj
         0aeQ==
X-Gm-Message-State: AC+VfDyoHzMSj6Q7pWlRHWrb758BD8jZFCp9YrT79zDrzZQATW1kONCk
	BRxAZ/6hUf/SUXvCaC6kxPWrPWQdE6rs3m6QpTg=
X-Google-Smtp-Source: ACHHUZ5NFMQNJS+obg9Pnw+dfLYm/TPodM773p/74xq4vghNvMpiBM+XDSKEDmbpFdcsDT40pmQTJ6rWxuL1q4xT5cU=
X-Received: by 2002:a05:6602:1613:b0:780:ba85:f475 with SMTP id
 x19-20020a056602161300b00780ba85f475mr6150505iow.3.1687527823534; Fri, 23 Jun
 2023 06:43:43 -0700 (PDT)
MIME-Version: 1.0
References: <7613284c-e7b0-61c4-d93f-41a5f904d9d0@gmx.li> <CANNYZj8sk4R-CzPZe1thmdp0K9PhbZ_Oi5U0yRHwOwGWFfZd2w@mail.gmail.com>
 <f7b3af62-9843-8d0e-3882-ca5914969eac@gmx.li>
In-Reply-To: <f7b3af62-9843-8d0e-3882-ca5914969eac@gmx.li>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 23 Jun 2023 09:44:00 -0400
Message-ID: <CADkTA4MhTL1yyO3Q=R8CfnfKMW2TuqPB7t4JQSUqx2eH6Sb1rA@mail.gmail.com>
Subject: Re: [poky] Yocto and kernel - dependencies
To: Steve <star@gmx.li>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 23 Jun 2023 13:43:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13095

On Fri, Jun 23, 2023 at 7:23=E2=80=AFAM Steve <star@gmx.li> wrote:
>
> Thanks Alex, that was indeed my first attempt.
> To start with a simple case (I thought) I just added to my <machine>.conf
>
> PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
> PREFERRED_VERSION_linux-yocto ?=3D "5.15%"
>
> But get: "Noting Provides virtual/kernel"
> I mentiones a few that provides it, but all are skipped as they are
> incompatible with my machine. But isn't that anyhow wrong way, as I want
> to use my kernel, not yocto-kernel?

You mentioned "linux headers" in your first email. What exactly are
you looking for out of the kernel ?

If it is the kernel uapi headers, then you should absolutely use the
linux-libc-headers package, it is safe to be used across different
kernel versions (and we test it as such each release).

If it is the actual kernel and BSP/HW support, then you do want your
own kernel (but should have a look at how much support is upstream
in kernel.org .. because if the support is there, you can just use
linux-yocto).

>
> I also thought about doing like that:
>
> PREFERRED_PROVIDER_virtual/kernel ?=3D "my-linux"
> PREFERRED_VERSION_linux-yocto ?=3D "5.15%"

You wouldn't set the preferred version of linux-yocto, if you are using
your own kernel recipe. If you only have one version of your kernel
provider, then you don't need to set a preferred version at all.

Check if something else is setting the preferred provider for the
kernel (since you are using "?=3D" as the assignment, you may not
actually be setting the final variable.

>
> but it doesn't go for my-linux_5.15.bb file that contains SRC_URI and
> SRCREV.

If there were no warnings about incompatible machines, etc, then
it probably is just the assignment I mentioned previously.

>
> Seems I am on a completly wrong track.
> Thinking about what is theoretically needed:
> Source, Revision and what config file it should compile.
> How to provide that?

The yocto project documentation is the best place to get into details
like that.

But again, if you are mainly looking for kernel userspace headers,
you won't get them from providing your own kernel recipe.

Bruce

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
> >> I am a bit clueless about the relation between yocto build of rootfs a=
nd
> >> kernel.
> >> Usually I build my kernel completely outside of Yocto, just using the
> >> SDK created by Yocto.
> >> But now I am afraid I doing something wrong regarding kernel headers
> >> need in rootfs - or at least in SDK.
> >>
> >> My machine-config seems not to have any link to kernel or
> >> kernel-version. I found that linux-libc-headers (is this what I need ?=
)
> >> is of 5.16, while I am actually compile a 5.15 (again completely out o=
f
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
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13091): https://lists.yoctoproject.org/g/poky/message=
/13091
> Mute This Topic: https://lists.yoctoproject.org/mt/99714609/1050810
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [bruce.ashfield@=
gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

