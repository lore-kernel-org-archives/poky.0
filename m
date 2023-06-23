Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7ABCEB64DD
	for <webhook@archiver.kernel.org>; Fri, 23 Jun 2023 13:43:15 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web10.42260.1687527790161539631
 for <poky@lists.yoctoproject.org>;
 Fri, 23 Jun 2023 06:43:10 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=RFpSrGUS;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2b46a06c553so11624831fa.1
        for <poky@lists.yoctoproject.org>; Fri, 23 Jun 2023 06:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687527788; x=1690119788;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JfZXcArsnBkZfGiDsJ+Fcbvo06ObxYpEIBwC3/NtCrk=;
        b=RFpSrGUSbjhMKklAkQYaA/Ijgf8aguoHkYJnOPP9LKDDv0yMd/k64Xpq60SsYgPTfX
         Mq2Ww+FYwbUcnRiiWJuwN9NubFly8BLfRUs4Yr5PeAg1DgLd/JAljx5wb1HC0rBWnMcV
         mRml3bbJIjrivTLV7709/WDUGRACum+HLcmpv5W3pY94H9ewBKakPmzulpWZ9sdkRsSS
         74Jp66uXH6zVxw80Zr0x7omL7TxZ7CSEuKQ09PkEfR+KWvAgDvGY+LrliN6S0isXz3fN
         kr4oFNqw6uEkAopnmxuCwg2cAxFEK22hWxwLDkPyuGHS+Q3gOQLtM8R2l3Tjuv2xJpJr
         KScg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687527788; x=1690119788;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JfZXcArsnBkZfGiDsJ+Fcbvo06ObxYpEIBwC3/NtCrk=;
        b=flhI7ch57D5sKNVeDa49YbCvFg4URd1ogUja3BKPqhaWQefrW5/RhVOInR67zpGb2v
         A1wiWwVzBX1u0/tWICdWVZhTzPqzOHyGczqljVCfP4NXlaAGipUIpUAWanPQDen6SrVa
         YKVIubuEHJazBFA3jpBvPgr7oZLcZS8mubDwyxBfFTE6+44Nax6Z0s3iEwYdBBK1HxF0
         oNh8cf75bopFDrGj3FuIyRSW7gmr/S6SUqL84UJZXAHmmq1p4BIV1MY7pd38a3vtl+Z3
         aIc+nfCNFO5HtV2nobNYMipsdmLchbK/f/QMQQFPemSl1HzxTQK1xq5ERId4zw6R1Q0N
         DGRA==
X-Gm-Message-State: AC+VfDzWV08orM38TtyX4YbvT2x9XrYFxlT58HxsB3bSvKphJRWVl13p
	TBYBuxaaHW8gs2kI8NW/M3p/vbijH469eQMel+I=
X-Google-Smtp-Source: ACHHUZ5rizg2cLmOaOmNDuU5/MaIq3vLxCMOWEKIIdz0s3bZlpzl+ABKPQ/h0kIU8gii0UV5NwWNcPOgK1qfXDbSbX8=
X-Received: by 2002:a05:6512:10ca:b0:4f9:6b64:9a36 with SMTP id
 k10-20020a05651210ca00b004f96b649a36mr2840370lfg.62.1687527788047; Fri, 23
 Jun 2023 06:43:08 -0700 (PDT)
MIME-Version: 1.0
References: <7613284c-e7b0-61c4-d93f-41a5f904d9d0@gmx.li> <CANNYZj8sk4R-CzPZe1thmdp0K9PhbZ_Oi5U0yRHwOwGWFfZd2w@mail.gmail.com>
 <f7b3af62-9843-8d0e-3882-ca5914969eac@gmx.li> <CANNYZj-Y3fHBuPU4LxnhQbrw_MdKcAJFsh08ZNBBmfAMGFqW9w@mail.gmail.com>
 <d18af7ff-ed61-5e3f-363a-29d85fa10903@gmx.li>
In-Reply-To: <d18af7ff-ed61-5e3f-363a-29d85fa10903@gmx.li>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 23 Jun 2023 15:42:56 +0200
Message-ID: <CANNYZj8yFLetMj52Gf_jRzpxs=nN1W7z30eBFCO50WHayJeGEA@mail.gmail.com>
Subject: Re: [poky] Yocto and kernel - dependencies
To: Steve <star@gmx.li>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 23 Jun 2023 13:43:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13094

I would rather take meta-freescale and start with a machine definition
available from there.

https://git.yoctoproject.org/meta-freescale/about/

Once you get that working, you can embark on customizations. But
trying to build your own kernel outside of yocto, and without all of
the accumulated knowledge embedded in a BSP layer will just frustrate
you.

Alex

On Fri, 23 Jun 2023 at 14:14, Steve <star@gmx.li> wrote:
>
> It's an imx8mp.
> The stuff that comes from NXP ia so fully bloated that I don't have a
> chance to understand what's going on.
> That is why I skipped this til now and have in my machine conf:
>
> imx8mp-my.conf only 3 lines:
> require conf/machine/include/arm/armv8a/tune-cortexa53.inc
> DEFAULTTUNE = "cortexa53-crypto"
> SERIAL_CONSOLES = "115200, ttymxc1".
>
> In local.conf there is
> MACHINE ?= "imx8mp-my"
>
> That's all for the moment to create a rootfs, but afraid with wrong
> kernel headers.
>
> > At this point I need to ask about your hardware. Can you tell what it is?
> >
> > Alex
> >
> > On Fri, 23 Jun 2023 at 13:23, Steve <star@gmx.li> wrote:
> >>
> >> Thanks Alex, that was indeed my first attempt.
> >> To start with a simple case (I thought) I just added to my <machine>.conf
> >>
> >> PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> >> PREFERRED_VERSION_linux-yocto ?= "5.15%"
> >>
> >> But get: "Noting Provides virtual/kernel"
> >> I mentiones a few that provides it, but all are skipped as they are
> >> incompatible with my machine. But isn't that anyhow wrong way, as I want
> >> to use my kernel, not yocto-kernel?
> >>
> >> I also thought about doing like that:
> >>
> >> PREFERRED_PROVIDER_virtual/kernel ?= "my-linux"
> >> PREFERRED_VERSION_linux-yocto ?= "5.15%"
> >>
> >> but it doesn't go for my-linux_5.15.bb file that contains SRC_URI and
> >> SRCREV.
> >>
> >> Seems I am on a completly wrong track.
> >> Thinking about what is theoretically needed:
> >> Source, Revision and what config file it should compile.
> >> How to provide that?
> >>
> >> Am 23.06.23 um 10:38 schrieb Alexander Kanavin:
> >>> The recommended thing is to build the kernel directly in yocto with a
> >>> recipe. Or, even better, take one of the standard kernel recipes and
> >>> use that.
> >>>
> >>> Alex
> >>>
> >>> On Fri, 23 Jun 2023 at 10:28, Steve <star@gmx.li> wrote:
> >>>>
> >>>> I am a bit clueless about the relation between yocto build of rootfs and
> >>>> kernel.
> >>>> Usually I build my kernel completely outside of Yocto, just using the
> >>>> SDK created by Yocto.
> >>>> But now I am afraid I doing something wrong regarding kernel headers
> >>>> need in rootfs - or at least in SDK.
> >>>>
> >>>> My machine-config seems not to have any link to kernel or
> >>>> kernel-version. I found that linux-libc-headers (is this what I need ?)
> >>>> is of 5.16, while I am actually compile a 5.15 (again completely out of
> >>>> Yocto).
> >>>>
> >>>> So what is recommended? What change is needed to use headers out of my
> >>>> linux git repo?
> >>>>
> >>>> Best regards, Arno
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13093): https://lists.yoctoproject.org/g/poky/message/13093
> Mute This Topic: https://lists.yoctoproject.org/mt/99714609/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

