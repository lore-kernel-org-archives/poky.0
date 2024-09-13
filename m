Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE1C8FA3723
	for <webhook@archiver.kernel.org>; Fri, 13 Sep 2024 07:25:48 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web10.68241.1726212334644357883
 for <poky@lists.yoctoproject.org>;
 Fri, 13 Sep 2024 00:25:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=P5Y9xJdl;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-42cb5b3c57eso17105915e9.2
        for <poky@lists.yoctoproject.org>; Fri, 13 Sep 2024 00:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1726212333; x=1726817133; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Xp6+AkP8IatDx4NkdA79n20a7DUAFAg4QnuQlzemCU=;
        b=P5Y9xJdlxYheSXCmc3jbPsI9IRM6lFVYoih8F4p7nhpR/f8JktsO04B+ih7pC+/+75
         5jaxthfcCwc1FmaL+xyOZUUUIfiIdeIWouSTHqrceQh9TkxDjJH8mgbYZTRGdFLFS5na
         PTZDeG9SbiwUxd/GW/5pPD3PkiQv6h0TM4FlQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726212333; x=1726817133;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6Xp6+AkP8IatDx4NkdA79n20a7DUAFAg4QnuQlzemCU=;
        b=Gx5njQEUQ+3Nia2tlppP9xaV9f4koRy3o9o5ikW6foGNBx+UEkIGh0vpRev6WJr5Ef
         UwBZVdYDLCiVncqindSRDd1B3I7bDnrUhWhR0+RBr7NhxR7p7FGfYMQFBOG+hSfZNv0B
         NB9gt+KPZ1CUxTxnZJQFkTqm+9oFVc1ARUWH6mNmWX0166OnOvUnxpFIBRLo6oWmz5Gu
         f4nrr6vMotw2aj6kuupqiADqN61445/RjGVaNPXZMyrAx4cZ58XIdL4wEB7jDlylQUAB
         YBhGLBaExcKCg/3qWuetEiwVNDTQjlxU0rthVa+Pj4LX39g+vlN7eiA7CloZ+xpDC/Ng
         Im4A==
X-Forwarded-Encrypted: i=1; AJvYcCVLgz3vOEC1tF4N8aVx3pP0YGBf9bO9IJA9Iu+791SAmcN9Se+Wx7ROVIfz1vZ45hBC8Hui@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yx+SGFbVKTgcp6EL7cf8tu3MTzNBohxN4zulUcpr+XWt3zFuZtd
	pE5NdCXGX+KBDWTIVpbCS380zQ/QT65wIjEOXbpWS8q7sT1nMJSdU8fHsELv47k=
X-Google-Smtp-Source: AGHT+IFJ4n9pT3dOcmK0aVqF2pPzGNu6EXZX/LNuoBDhVh+PgMy1KRkrnvymvaJnDgPDWBnPoCTbWA==
X-Received: by 2002:a05:600c:314e:b0:42c:bf94:f9ad with SMTP id 5b1f17b1804b1-42cdb5919fbmr42692265e9.34.1726212332609;
        Fri, 13 Sep 2024 00:25:32 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:253d:d2d4:3c60:1efd? ([2001:8b0:aba:5f3c:253d:d2d4:3c60:1efd])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42d9b054d7esm14284465e9.1.2024.09.13.00.25.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Sep 2024 00:25:32 -0700 (PDT)
Message-ID: <68d72023dcc5e418e2d7b65df2caf8235c0aedaf.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] genericarm64: don't pin to linux 6.6
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: ross.burton@arm.com, poky@lists.yoctoproject.org
Date: Fri, 13 Sep 2024 08:25:31 +0100
In-Reply-To: <17F4B8FA7DC215C4.10184@lists.yoctoproject.org>
References: <20240912161226.4022231-1-ross.burton@arm.com>
	 <17F4B8FA7DC215C4.10184@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 13 Sep 2024 07:25:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13439

On Fri, 2024-09-13 at 07:12 +0100, Richard Purdie via
lists.yoctoproject.org wrote:
> On Thu, 2024-09-12 at 17:12 +0100, Ross Burton via
> lists.yoctoproject.org wrote:
> > The 6.10 build has been tested on both a BeaglePlay and qemu, so we
> > can
> > remove the pinning now.
> >=20
> > Signed-off-by: Ross Burton <ross.burton@arm.com>
> > ---
> > =C2=A0meta-yocto-bsp/conf/machine/genericarm64.conf | 1 -
> > =C2=A01 file changed, 1 deletion(-)
> >=20
> > diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-
> > yocto-bsp/conf/machine/genericarm64.conf
> > index 8c1b09fdd50..1cb5e46dcf7 100644
> > --- a/meta-yocto-bsp/conf/machine/genericarm64.conf
> > +++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
> > @@ -12,7 +12,6 @@ MACHINE_FEATURES =3D "acpi alsa bluetooth efi
> > keyboard pci qemu-usermode rtc scree
> > =C2=A0
> > =C2=A0KERNEL_IMAGETYPE =3D "Image"
> > =C2=A0PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
> > -PREFERRED_VERSION_linux-yocto ?=3D "6.6%"
> > =C2=A0
> > =C2=A0# Install all the kernel modules into the rootfs
> > =C2=A0MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>=20
>=20
> https://autobuilder.yoctoproject.org/typhoon/#/builders/166/builds/848/st=
eps/11/logs/warnings

I think we need to create the bbappend for 6.10, no BSP has been tested
with it until now so it wasn't added so far.

Cheers,

Richard

