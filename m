Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B31AC2BD09
	for <webhook@archiver.kernel.org>; Mon, 24 Jun 2024 17:04:13 +0000 (UTC)
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
 by mx.groups.io with SMTP id smtpd.web11.146719.1719248651561254770
 for <poky@lists.yoctoproject.org>;
 Mon, 24 Jun 2024 10:04:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZQZIFdrN;
 spf=pass (domain: gmail.com, ip: 209.85.161.54, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-5bafe063f35so2314211eaf.0
        for <poky@lists.yoctoproject.org>; Mon, 24 Jun 2024 10:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719248650; x=1719853450; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uaOeJGIUumyM7J25tKFrpIl0dUv0OtKX2FKtJUeaMWo=;
        b=ZQZIFdrNQu4eqE/GtSLNW3iS0MtutZ1MfGeaEyr8W0kczPP1X7CaE5bveCukVEhwre
         s6+iB+G5zUHxydfkABS8PTmqBcdennhKWuEidRf9XoU0OEP9F4aR42IVpE29S4bW9BnF
         yyl1sUH5Dac4La+tIE3k3X5fn6pBQXEhJrCne3MPsxBvVTuPDznyQ4VAkK6smcpzioAb
         VkwrFaiwUovrsO1N3chKBifG5iGTXsb1idBwRmmyQNwnOyUZRpHA3ll8UGqNIZeVq0AG
         R1t9b/+KJZD7GdPsZmPDguxvkY8gdZ7XV7ZGANK8PoMe1DhKdUjlfBkxD7G0WQqowQ16
         8meg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719248650; x=1719853450;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uaOeJGIUumyM7J25tKFrpIl0dUv0OtKX2FKtJUeaMWo=;
        b=cF69NOcAiGRdWLFf9rwacPKRuyN4riFBFjMCe/Rq5NTHN0n/un2czqot3yIAU3BPB8
         RpqPaYUFLDTrFRvqDyEdD9dhyO4naSJSB2tWbteXF+XZeiqMivh8RD5/WB5lEbsIRrQU
         tmj7jY6R+6HU13YkyFVX/6Hm1q6aWXKwcBzFnBiRI6zAL8GEExOr558XptvqFQJRQp1u
         kaCOtYtCWy69VTp/Vy757ZoCR539RXO+R4leVcOP1BxQkaaWOnc/sH/kFGYT7oHOgdQU
         GT0nGYMLTo8/56Sg1v7GIVlE74/ZU20UMFFmsUJj6/JSPyPYG3nIpMp13wJ4tDekQFTt
         YBwg==
X-Gm-Message-State: AOJu0Yz6PVJc1CcocFn0An+W8rPsYk3pYsonsF8gw1K5QUXpo1KgiGH7
	RUzRcjz99IUkzEagfhmHIukM8HD56mcvRagJFO7labDgaWQQy+6QNuVJsW86hwd57Lhm+83OF4Q
	Ygu5tRgYLfopRywPDnnYiao4tPuQ=
X-Google-Smtp-Source: AGHT+IEnADccpyFaOPkMBWN43sJR9EyUO36//nLKbp9Ms4ox7fOBtP0gh73Au7k55uBK1R2h4I7JFCMSrk2Kua2E4yk=
X-Received: by 2002:a05:6870:5246:b0:25c:9bf2:cc18 with SMTP id
 586e51a60fabf-25cf8a06843mr2616158fac.7.1719248650441; Mon, 24 Jun 2024
 10:04:10 -0700 (PDT)
MIME-Version: 1.0
References: <6942.1719213477427571414@lists.yoctoproject.org> <Groupsio.1.6942.1719213477427571414@lists.yoctoproject.org>
In-Reply-To: <Groupsio.1.6942.1719213477427571414@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 24 Jun 2024 10:03:43 -0700
Message-ID: <CAMKF1soCgis2C+1cxm0Jzt_39hTwgiOWy3ZKhTdgZfWi19Kb5Q@mail.gmail.com>
Subject: Re: [poky] Issue with Dynamic Linker and Python Dependency in Yocto
 SDK Setup
To: nicolas.wirth@speedgoat.ch
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 24 Jun 2024 17:04:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13388

On Mon, Jun 24, 2024 at 12:24=E2=80=AFAM Nicolas Wirth via
lists.yoctoproject.org
<nicolas.wirth=3Dspeedgoat.ch@lists.yoctoproject.org> wrote:
>
> [Edited Message Follows]
>
> Thanks for your input.
>
> I cannot install anything (including Python) on the target machine that w=
ill use the SDK due to company policy. Additionally, I cannot modify the SD=
K generation because the SDK is mounted on the machine using a token mechan=
ism, making the location variable. Finally, I don't have root privilege on =
the target.
>
> Is there no other way to have the SDK available on my target without usin=
g the relocate_sdk.py script?
>

relocating tools is a necessary part of SDK  self-installer, so it can
edit the binaries to use correct libs as SDK expects. You may explore
using buildtools-tarball which can provide python perhaps
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0/buildtools/

>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13386): https://lists.yoctoproject.org/g/poky/message=
/13386
> Mute This Topic: https://lists.yoctoproject.org/mt/106796971/1997914
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [raj.khem@gmail.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

