Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECAF3C3DA6E
	for <webhook@archiver.kernel.org>; Wed, 20 Dec 2023 23:31:54 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web11.35439.1703115114059384294
 for <poky@lists.yoctoproject.org>;
 Wed, 20 Dec 2023 15:31:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=JUcaHLO5;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-32f8441dfb5so169605f8f.0
        for <poky@lists.yoctoproject.org>; Wed, 20 Dec 2023 15:31:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1703115112; x=1703719912; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NWtZXuHdvc+fVIY4/AOY+GmFXYwvmyWX9lq6qt1Ko18=;
        b=JUcaHLO59KBmmGSOccu+8F8HWygZc1omuCNdm6mpaiU2VdHn5JyZlh6D9QETGLHhe7
         2dUuhAdKBGA3ZfX6Q+wLrJclVU71enewzF8rMkokaMgAibOLMMRzfMxFhOpOQYOWSaIk
         W0oPCjbUN8XlLE00iz4aH3xGFAfotJxUvBTRs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703115112; x=1703719912;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NWtZXuHdvc+fVIY4/AOY+GmFXYwvmyWX9lq6qt1Ko18=;
        b=tkezuklD4PBohSACFrIwXs8Y7+dAzpplT+fziHrr4MCcqNFm1e73gXCtHj1eLyyHbc
         FVGxZeK3gRR9OMS/Vc5fQolGsbKt+thx7alxVPowMd9+AL6Z7lgOagO9/8MdMgNnZCLE
         EWedY6goYYWpDDOng3uTbbstw6XiIwzyhSLDfdPGT/jmVsqbcY6LZMw+mKZ8Ns3MdUVR
         gnku8uqiqPjB8G9tpt/h47zsPXVIp0PHCff5MfTXUJd7oBxKfZxmBlCUFptRI8RBJAKc
         4DuFBAJCTRq0synX9FFO82weVl2x2FbSPxTQH9xkZrdENvVviuKDErOWjvOlowvHLwSH
         fuZA==
X-Gm-Message-State: AOJu0YwRGROkGDn1S0LeHQErHlcYdrTHCrOQZ12VfvaqYyECT19sLlkb
	CXgHnnsdnW6ZXW2fwV4CCryi5A==
X-Google-Smtp-Source: AGHT+IF21caBCaxrYZyC7Bg9dcafOOtD7uxi5vvOR2+2shP/qcSl5NHpMjrKVBfgWzLkb2ZaTxJWpw==
X-Received: by 2002:adf:f1c5:0:b0:336:6e12:7c62 with SMTP id z5-20020adff1c5000000b003366e127c62mr238261wro.110.1703115112466;
        Wed, 20 Dec 2023 15:31:52 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:916f:409d:c5db:4918? ([2001:8b0:aba:5f3c:916f:409d:c5db:4918])
        by smtp.gmail.com with ESMTPSA id t18-20020a5d49d2000000b00336751cd4ebsm631618wrs.72.2023.12.20.15.31.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Dec 2023 15:31:52 -0800 (PST)
Message-ID: <51481139d73c82715cfe808d20f9fec0073dba40.camel@linuxfoundation.org>
Subject: Re: [poky] [kirkstone][PATCH] poky.conf: update
 SANITY_TESTED_DISTROS to match autobuilder
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: michael.opdenacker@bootlin.com, poky@lists.yoctoproject.org
Date: Wed, 20 Dec 2023 23:31:51 +0000
In-Reply-To: <20231220152600.282677-1-michael.opdenacker@bootlin.com>
References: <20231220152600.282677-1-michael.opdenacker@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 20 Dec 2023 23:31:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13223

On Wed, 2023-12-20 at 16:26 +0100, Michael Opdenacker via
lists.yoctoproject.org wrote:
> From: Michael Opdenacker <michael.opdenacker@bootlin.com>
>=20
> From the intersection of the list of allowed workers
> on https://git.yoctoproject.org/yocto-autobuilder2/tree/config.py
> and the active workers on
> https://autobuilder.yoctoproject.org/typhoon/#/workers
>=20
> Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
> ---
>  meta-poky/conf/distro/poky.conf | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky=
.conf
> index c179cbf..f5aff32 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -37,9 +37,8 @@ SANITY_TESTED_DISTROS ?=3D " \
>              ubuntu-18.04 \n \
>              ubuntu-20.04 \n \
>              ubuntu-22.04 \n \
> -            fedora-37 \n \
> +            fedora-38 \n \
>              debian-11 \n \
> -            opensuseleap-15.3 \n \
>              almalinux-8.8 \n \
>              "
>  # add poky sanity bbclass


I believe the convention for older releases should be to leave releases
we tested upon at the time of the original release but add new ones
we've started testing.

It is unlikely Fedora 37 would stop working with the LTS even if we no
longer test there.

Cheers,

Richard



