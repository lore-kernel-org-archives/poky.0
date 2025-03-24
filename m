Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF128C36008
	for <webhook@archiver.kernel.org>; Mon, 24 Mar 2025 17:48:24 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web11.45659.1742838499333797253
 for <poky@lists.yoctoproject.org>;
 Mon, 24 Mar 2025 10:48:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=f1h40fWt;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43948021a45so39531575e9.1
        for <poky@lists.yoctoproject.org>; Mon, 24 Mar 2025 10:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1742838498; x=1743443298; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kcmifnzv/oSHh/w0IoBjdwxM4qDEm9q/TJYyKeC9x3w=;
        b=f1h40fWt38nPJQA37151+9DM5aMdMmo2ebhjsFiZNX1TMEE+1m2cEiYttuntHqBjIx
         FH/pkOtbhb0kd+QyGnX8TiKDci2+SB8yN/XHENKXiJffAPdx8V314qxJ8nWvJaOHfbSb
         +ATO8a3bhJxZHFUtVUuhzgy5jP/HWggvuW3ws=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742838498; x=1743443298;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Kcmifnzv/oSHh/w0IoBjdwxM4qDEm9q/TJYyKeC9x3w=;
        b=uRpFMjpQD5y4QHF1PhIvGqbCl3tjdY58yPynHV4LiefpkbQSMErCJmr0GPnwPFwMP2
         EhufTpRZDsmPAqSK6A/OIVwmdKgBgoyxx6seZcYK1syTNGJIg+2Pk+UTPLI+t9BJh8Xm
         +KkvubCN/GpbUIyDIPm8ZGOrf/13OJ60Z8gt1K+Z4VPn2T50ShGObANRERt8QKGMlnyl
         wi6+BqvbiKUZZr507mL3xrKRX1Y6nospGxzOP3jSCgcIJ0H71Ay7mrlkfSGk7WgUceaP
         BNiARfe3cgXpQa+/ehahz8Bx1RV39DIhm2OQUJkUIeRiRpx/w/gp1htepZHs9qEI2w6V
         Gjfw==
X-Forwarded-Encrypted: i=1; AJvYcCUiUyaYNbFxfnF+tIVuDVamxwaI7h1sV/gm3XI9BykDoYwJp+4AUvoEUxV1RoytiC6lJMK2@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yz8FQnK3NU/Ho++L/XdaOwsYhDqs4dt0RFkWf8E1eHuGK1fIonS
	8QYGA6z84AL/2cnvWlf9OWA2XXXto18Qz5Jb/qVYqX/a8t5wgZpo+NqEuVzDkLQ=
X-Gm-Gg: ASbGncugi4/JAmFTzRDZw+4rWHEJWjvfBC/fOJ4ljrT423bsy34uEukudrg7vqsXjGz
	gXOfKMNxrqqrnhzgfoi7syWAYAB5fVCUw2Z6XWkMDshWGRVOL8SUecqY8Lm4H2aX9syMbuPe4z6
	82gwW3sPgufyb2iYwTaf/oUvglx4OPLGXTIAHRa0/8QXSBZWijUwgooqjIvSRVB7mqOWtLcVOeR
	4vpkV9VmSg5MjMSU/k0Ch4tvRBv2dXVcWV+4g2sM5WDEdtxFo0wnn2cQ0/Mqv9y9Gs09U8Ld7TY
	8pe/6HCnQqI46HZMqU9Qmfa7jW9MyZkj6wnpnIHcGiPuOVDW32gwAniS2bVBO29k1HhBWzwXUPv
	gGMSKnRXXUiQ5+1pv6BuYztQfCmtIJLs=
X-Google-Smtp-Source: AGHT+IH2OxqrnvxHm3ZCYwVphaQYer7EKNPCGP/3oFCKqu3MU+qRW7MerettbX8ghlAxmt8vQh9FJQ==
X-Received: by 2002:a05:600c:4693:b0:43c:fda5:41e9 with SMTP id 5b1f17b1804b1-43d50a5237fmr105329045e9.31.1742838497651;
        Mon, 24 Mar 2025 10:48:17 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:24f9:315d:dc7:9e14? ([2001:8b0:aba:5f3c:24f9:315d:dc7:9e14])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9efc90sm11721410f8f.98.2025.03.24.10.48.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 10:48:16 -0700 (PDT)
Message-ID: <50b4a6589d7b48f3ca2c02e075c7ed8bb0e280f0.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] poky: remove Ubu-20.04 from
 SANITY_TESTED_DISTROS due to python
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: paulg@kernel.org, poky@lists.yoctoproject.org
Date: Mon, 24 Mar 2025 17:48:16 +0000
In-Reply-To: <20250321192615.3061383-1-paulg@kernel.org>
References: <20250321192615.3061383-1-paulg@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 24 Mar 2025 17:48:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13578

On Fri, 2025-03-21 at 15:26 -0400, Paul Gortmaker via lists.yoctoproject.or=
g wrote:
> From: Paul Gortmaker <paul.gortmaker@kernel.org>
>=20
> Bitbake commit 0d2e682d00df ("bitbake: lib/bb: Bump minimum python
> version requirement to 3.9" -- local commit 67566c7410e1) means that
> Ubuntu 20.04 is no longer supported out-of-the-box as detailed further
> in the respective commit log.
>=20
> While it is true that it can still be used with buildtools, that can
> also be said for nearly every other unsupported distro out there,
> including Ubuntu 18.04 that we listed as unsupported some years ago.
> Hence continuing to list it as supported with the new python requirement
> in place does not make sense.
>=20
> Signed-off-by: Paul Gortmaker <paulg@kernel.org>
> ---
> =C2=A0meta-poky/conf/distro/poky.conf | 1 -
> =C2=A01 file changed, 1 deletion(-)
>=20
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky=
.conf
> index eeaacd7b88fb..bcbd2c17fbaa 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -33,7 +33,6 @@ PACKAGE_CLASSES ?=3D "package_rpm"
> =C2=A0SANITY_TESTED_DISTROS ?=3D " \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
poky-5.0 \n \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
poky-5.1 \n \
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ubunt=
u-20.04 \n \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
ubuntu-22.04 \n \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
ubuntu-24.04 \n \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
ubuntu-24.10 \n \

Thanks for the patch.

Whilst we're close to doing it, we need to hold this until we actually
drop the 20.04 workers from the autobuilder otherwise we'll start
seeing various warnings in builds.

Cheers,

Richard

