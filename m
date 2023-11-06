Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5636C4167B
	for <webhook@archiver.kernel.org>; Mon,  6 Nov 2023 19:21:22 +0000 (UTC)
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
 by mx.groups.io with SMTP id smtpd.web11.63524.1699298475349412151
 for <poky@lists.yoctoproject.org>;
 Mon, 06 Nov 2023 11:21:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kdFQJ+Pf;
 spf=pass (domain: gmail.com, ip: 209.85.160.53, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-1f060e059a3so2776743fac.1
        for <poky@lists.yoctoproject.org>; Mon, 06 Nov 2023 11:21:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699298474; x=1699903274; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9HlEiQWfL/Uif/p0643SlchRwdZ+Vs1FH9wMfVXqg1U=;
        b=kdFQJ+PfcuX+qbpfE+RzTy55EGsqOiLhChpk/ywyHkBiX6WZ8xY4HoM0uv1lFij/pG
         0b/phWgEwI/f5aDsNGflH/+IFMcMLB5eZ+TrZok7vHYCPCOaKRz3oRRD/jxscxbb29ml
         DB6b9hEjpTe5jHG0FXRdeslvp8AIP8ppwZxDaC63zcC0rU1waZNUUhm05g5DxwFr1N1e
         Y9qE3KAGn1r3j5JBMUB85Tr3ATONN949GwDnBPX33aPwI9KuylE+X7EUGgG6a16AZPgZ
         FLFW+kbB0laSJf82uCqGIQVNk2/3qcKBd7mJWixVwco2/lpei1SAlgoYLdVJwle9WYOx
         XrOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699298474; x=1699903274;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9HlEiQWfL/Uif/p0643SlchRwdZ+Vs1FH9wMfVXqg1U=;
        b=LuDATPSZxb38ur45nqSBmmk/cON6QoXo5zeJ2VT2nu9HKbe2r5RSOY48g750/nLcIR
         tb8BO+F4JddTgwAHGPoVmWZvdMdiC1QAn3aaN+YroNxVXWCflYqC9LUuZjy2DK0pWEXg
         uIuOux77G7QKbE3B9aNXBWq8w/tWLU20Om2Rz/MzFudgl7BUR7KU8frd/RstP33BHWcy
         opMBxIszXGmwMpGx473ioR2gQDDqHgJ2gDQM97xRtXwtxKbt5ElHL3BHeImLibXysjIB
         jucIypYWMypzqjC932zsm4fqxKNJVKHrynMzMhcCIzjFAIBTniQVa7pjT16RueCCbE4W
         WilA==
X-Gm-Message-State: AOJu0Yzx4SCRWPFdNzFhbdSE/660aHfoBVIpuLMy6evMsRIos/tNBIMB
	rP6xQTIniouXqBzhEnnz7YfnK6gOkM8blOa4QYI=
X-Google-Smtp-Source: AGHT+IHHkxf4bIbRHnCNOUlFCXoAEDi7JGUwvEps+KFuVjiqvFgrqZR8SAnq7nwk7TVbXoaTWonfWKvhi6JUcsmopes=
X-Received: by 2002:a05:6871:4695:b0:1e9:68b5:d418 with SMTP id
 ni21-20020a056871469500b001e968b5d418mr935936oab.34.1699298474464; Mon, 06
 Nov 2023 11:21:14 -0800 (PST)
MIME-Version: 1.0
References: <20231106171051.3741517-1-raj.khem@gmail.com> <b989c56434e4410a251b8678248246218a4b249f.camel@linuxfoundation.org>
In-Reply-To: <b989c56434e4410a251b8678248246218a4b249f.camel@linuxfoundation.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 6 Nov 2023 11:20:47 -0800
Message-ID: <CAMKF1srGetStxYVKHf7rjRtmk_Jff7bPCi0rO536mHqVOYLu+A@mail.gmail.com>
Subject: Re: [poky] [PATCH] poky: Do not inherit uninative on ppc64le and
 riscv64 hosts
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 06 Nov 2023 19:21:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13199

On Mon, Nov 6, 2023 at 9:24=E2=80=AFAM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Mon, 2023-11-06 at 09:10 -0800, Khem Raj wrote:
> > uninative tarballs for these architectures is not available
> >
> > Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > ---
> >  meta-poky/conf/distro/poky.conf | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/po=
ky.conf
> > index e742666b4e5..ccad9c835a7 100644
> > --- a/meta-poky/conf/distro/poky.conf
> > +++ b/meta-poky/conf/distro/poky.conf
> > @@ -62,7 +62,7 @@ require conf/distro/include/poky-world-exclude.inc
> >  require conf/distro/include/no-static-libs.inc
> >  require conf/distro/include/yocto-uninative.inc
> >  require conf/distro/include/security_flags.inc
> > -INHERIT +=3D "uninative"
> > +INHERIT +=3D "${@bb.utils.contains_any('BUILD_ARCH', 'ppc64le riscv64'=
, '', 'uninative', d)}"
> >
> >  BB_SIGNATURE_HANDLER ?=3D "OEEquivHash"
> >  BB_HASHSERVE ??=3D "auto"
>
> I really don't like conditional inherits and I suspect there are other
> architectures this doesn't work.

Yes, there are perhaps everything besides x86/arm64
because we need uninative tarballs and for them we need host machines
with those architectures.
so essentially this restricts bootstrapping a new architecture for
build unless its in AB, it seems we
need to build uninative tarballs as first step.

>
> It would probably better to improve the uninative code itself.

yeah, maybe add a diagnostic and logic to do no harm if uninative
tarball is not supported
>
> Cheers,
>
> Richard
>

