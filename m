Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A47E5C7EE23
	for <webhook@archiver.kernel.org>; Thu,  8 Jun 2023 20:18:26 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web10.4583.1686255498675596939
 for <poky@lists.yoctoproject.org>;
 Thu, 08 Jun 2023 13:18:19 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=iPPWpq1n;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-3f7a8089709so10475155e9.1
        for <poky@lists.yoctoproject.org>; Thu, 08 Jun 2023 13:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1686255497; x=1688847497;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1P4QpDAXk2T+cH+yNsyn6osUzi3ucQJ14QWfJ4e2bd0=;
        b=iPPWpq1nW7YPO2nLnAcB9sCFgsmmdGK9vM6KB29HvPts1pYIvyzHiJjMTPAOqsbhSZ
         7gxuvJOmWhqP1qXz/RnvegWzrtyDRQdrAnlaWBE5N/Uc6g50YKmMafqzAYCaX3llvgVR
         F7v9Wd3qdg1YhmYvpXdV/9a02+ywiCh1iHOP4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686255497; x=1688847497;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1P4QpDAXk2T+cH+yNsyn6osUzi3ucQJ14QWfJ4e2bd0=;
        b=QJCczYcdaQ23TQ71E5u6oV2JWZ2d/zGxgvB5I0DtjDUioU+MOv6ZQcikZ2KNk/BGQy
         Vj7KEELALczdaDxorAvCnGShEyEYSHB5kRNalCfGnxSr/tWMr8sV7/hA0neyGZe+pqap
         CTVaztIqxQ4PDiZfP/RNUhv/r65dfWHDFavgo+8t/g8UCHawGN9/birbcUa9objKLwYB
         R3x7yEw8njcP1VCeoYITeesjdcxyo3U1hgbKKVkf36fm+YhOcKWEHtTSk90LhKvH0tPK
         wPUxg2b0Yp3tUxVBo073Fod5GxWTATdBEHE3tr0AqGSIF8IW1WHP7DK6frS2+Kmah0Rf
         TlJA==
X-Gm-Message-State: AC+VfDwwVUSyj4OzOymdZ3Ta+Pm/n2LtMpN2vfBug2wER9r1ZDNvx5gq
	rRLKrIwFz2/DVd8gBZv+3R3p0pqWD34xzLX1nFQ=
X-Google-Smtp-Source: ACHHUZ7PpZ1XKr4D/lqksJeW8TaxWvLaeMnkTGYP9UZX5bCU3wrrfe4mLON2dJUmPGhUE1F3sD4m6A==
X-Received: by 2002:a1c:7509:0:b0:3f6:6c0:7c99 with SMTP id o9-20020a1c7509000000b003f606c07c99mr2238356wmc.19.1686255497154;
        Thu, 08 Jun 2023 13:18:17 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:d212:ac52:2ca3:dd2f? ([2001:8b0:aba:5f3c:d212:ac52:2ca3:dd2f])
        by smtp.gmail.com with ESMTPSA id z14-20020a7bc7ce000000b003f50d6ee334sm528218wmk.47.2023.06.08.13.18.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 13:18:16 -0700 (PDT)
Message-ID: <5968fd664354f0ef7a8f41e93ddb6ff211016f0d.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] runqemu-ifupdown: Add support for ip tuntap
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: joerg.sommer@navimatix.de, poky@lists.yoctoproject.org
Date: Thu, 08 Jun 2023 21:18:16 +0100
In-Reply-To: <cc9a474aa35bc29c00dc7ed216f697a8ccbb0f6e.1686229638.git.joerg.sommer@navimatix.de>
References: 
	<cc9a474aa35bc29c00dc7ed216f697a8ccbb0f6e.1686229638.git.joerg.sommer@navimatix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 08 Jun 2023 20:18:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13077

On Thu, 2023-06-08 at 15:07 +0200, J=C3=B6rg Sommer via
lists.yoctoproject.org wrote:
> The *ip* command supports the creation and destruction of TAP devices sin=
ce
> 2009 and might be more likely installed on systems then *tunctl*. Therefo=
re
> it should be tried to setup or teardown the TAP interface with *ip* befor=
e
> falling back to *tunctl*.
>=20
> https://git.kernel.org/pub/scm/network/iproute2/iproute2.git/commit/?id=
=3D580fbd88f75cc9eea0d28a48c025b090eb9419a7
>=20
> Signed-off-by: J=C3=B6rg Sommer <joerg.sommer@navimatix.de>
> ---
>  scripts/runqemu-ifdown | 14 ++++++++------
>  scripts/runqemu-ifup   | 31 +++++++++++++++++++------------
>  2 files changed, 27 insertions(+), 18 deletions(-)

This does make me wonder if we could just drop tunctl now?=C2=A0

We originally had this as ifconfig couldn't do what we needed and ip
was comparatively rare on systems. Things have changed and moved on!

Did the gen-tap-devs script also need updating?

Also, this patch does need to go to the openembedded-core list as it is
changing that repository which poky is built from.

Cheers,

Richard


