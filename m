Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4EFEB64D7
	for <webhook@archiver.kernel.org>; Fri, 23 Jun 2023 21:06:49 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web10.9253.1687554399743917856
 for <poky@lists.yoctoproject.org>;
 Fri, 23 Jun 2023 14:06:40 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=OuYic+yL;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-4f8735ac3e3so1497006e87.2
        for <poky@lists.yoctoproject.org>; Fri, 23 Jun 2023 14:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1687554398; x=1690146398;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3crptEo2Nhk8zhXCDnmHlVvpeOsqV6CrnwRlI0EnblM=;
        b=OuYic+yLIsmo8QA4F0K8odAN2G2pdYbyL3xDxncRX8TElwjUS7kFOxU1P+yihTaKSJ
         CPkw+uKs81nBGHmc+L5MXIceqtsDdSybnmiEbRMtDfYfmK0/ObKdOWi32Yx+PsZ+TzHZ
         /eyi5JF7FcFenwnW+smErBQxhx+dZ6foMzKdo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687554398; x=1690146398;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3crptEo2Nhk8zhXCDnmHlVvpeOsqV6CrnwRlI0EnblM=;
        b=aukShBi5krQBVje0bgQYlFNiqXZQ1FuvX9mjQhkxe3N1g3EMPGFJkTd1MVXZvH7rES
         U6PrTZrWbiFVcx7ZeCWHMyfX5slJLic4moV2joJirrCICiRcXkeiyKi43laWQnFSsPmo
         UtQIZ5CrCiNETD8KRhhPVkX0qmoeAo047qJTtKwnfqHurGpa3o8gZCUJ50OYJXFxsw7J
         yMnyG0wv6Aw/SKHJn4vsDX+VKUksS8Tajri1JDfSMzbsjAM3+Z4zWC29SJp/f+OFOeU/
         FgW+QKlDecvInG0eqh2ICoJfbsZ90EdqcEn7jRLQXx/8ZTdC6yhdjr/xBPJL66m5wss1
         lMkg==
X-Gm-Message-State: AC+VfDz2HINNYWBMwWJOyslB9pKFqPXmCcapFTMNghGm8kDSkCGwVlU0
	eFAsCw1BDcpN9Fwbp5S25ZQ+XA==
X-Google-Smtp-Source: ACHHUZ45ZN1vPNtfXQRGO9kWhvuo8+KDXzqxAEoAu7GsWkK9KTZ30UztQtyQizQigCrU77AAsa6nbQ==
X-Received: by 2002:a05:6512:3d94:b0:4f9:5d8d:ccb8 with SMTP id k20-20020a0565123d9400b004f95d8dccb8mr6858010lfv.17.1687554397603;
        Fri, 23 Jun 2023 14:06:37 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:1b3:5ed5:120f:4dbc? ([2001:8b0:aba:5f3c:1b3:5ed5:120f:4dbc])
        by smtp.gmail.com with ESMTPSA id h2-20020a1ccc02000000b003fa74bff02asm368059wmb.26.2023.06.23.14.06.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jun 2023 14:06:36 -0700 (PDT)
Message-ID: <8d7b7a7606e8b6b8fbd3f987fb8f1cb7f1b1f0bb.camel@linuxfoundation.org>
Subject: Re: [poky] Yocto and kernel - dependencies
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Steve <star@gmx.li>, poky@lists.yoctoproject.org
Date: Fri, 23 Jun 2023 22:06:35 +0100
In-Reply-To: <56f415b7-cedb-5f6f-0254-4b1358fd8801@gmx.li>
References: <7613284c-e7b0-61c4-d93f-41a5f904d9d0@gmx.li>
	 <CANNYZj8sk4R-CzPZe1thmdp0K9PhbZ_Oi5U0yRHwOwGWFfZd2w@mail.gmail.com>
	 <f7b3af62-9843-8d0e-3882-ca5914969eac@gmx.li>
	 <CADkTA4MhTL1yyO3Q=R8CfnfKMW2TuqPB7t4JQSUqx2eH6Sb1rA@mail.gmail.com>
	 <56f415b7-cedb-5f6f-0254-4b1358fd8801@gmx.li>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 23 Jun 2023 21:06:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13100

On Fri, 2023-06-23 at 17:19 +0200, Steve wrote:
> Am 23.06.23 um 15:44 schrieb Bruce Ashfield:
> > On Fri, Jun 23, 2023 at 7:23=E2=80=AFAM Steve <star@gmx.li> wrote:
> > >=20
> > > Thanks Alex, that was indeed my first attempt.
> > > To start with a simple case (I thought) I just added to my <machine>.=
conf
> > >=20
> > > PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
> > > PREFERRED_VERSION_linux-yocto ?=3D "5.15%"
> > >=20
> > > But get: "Noting Provides virtual/kernel"
> > > I mentiones a few that provides it, but all are skipped as they are
> > > incompatible with my machine. But isn't that anyhow wrong way, as I w=
ant
> > > to use my kernel, not yocto-kernel?
> >=20
> > You mentioned "linux headers" in your first email. What exactly are
> > you looking for out of the kernel ?
> >=20
> > If it is the kernel uapi headers, then you should absolutely use the
> > linux-libc-headers package, it is safe to be used across different
> > kernel versions (and we test it as such each release).
> >=20
> > If it is the actual kernel and BSP/HW support, then you do want your
> > own kernel (but should have a look at how much support is upstream
> > in kernel.org .. because if the support is there, you can just use
> > linux-yocto).
> >=20
>=20
> I didn't observe any issues in my workflow since I compiled "perf" with
> my SDK.That alerts me.
> Get some warnings that Kernel API headers differs.
> tools/include/uapi/linux/const.h and include/uapi/linux/const.h
> tools/include/uapi/linux/in.h and include/uapi/linux/in.h
> as for instance.
>=20
> I am not into it and maybe even mean something different, but that is
> what triggers me.
> I mean the linux-libc-headers are of 5.16, but my kernel is 5.15.
> Where is it set to 5.16? Didn't do active.
>=20
> I don't get why yocto has its own kernel beside the mainline kernel.org?
>=20
> Sorry if I mix things up a but - but that is my understanding as of now.

linux-libc-headers are intended for one thing, to provide the headers
for the toolchain (i.e. the libc).

The kernel developers create the "uapi" headers carefully and together
with the libc developers, they maintain compatibility. As such a 5.15
kernel will work fine with a 5.16 toolchain. There is a variable
"OLDEST_KERNEL" which indicates how far back the kernel support goes in
the libc.

You often need board specific kernels. You do not want board specific
toolchains. As such the toolchain uses a standardised set of headers,
which is linux-libc-headers.

linux-libc-headers *is* mainline. Sometimes the machine specific kernel
is not, for whatever reasons.

As far as I know this all works out fine and has done for quite some
number of years.

Cheers,

Richard

