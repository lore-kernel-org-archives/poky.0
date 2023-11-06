Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16DC1C4332F
	for <webhook@archiver.kernel.org>; Mon,  6 Nov 2023 17:24:22 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web11.60221.1699291456888818975
 for <poky@lists.yoctoproject.org>;
 Mon, 06 Nov 2023 09:24:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=VvrTwQgH;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.180, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2c514cbbe7eso67114121fa.1
        for <poky@lists.yoctoproject.org>; Mon, 06 Nov 2023 09:24:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1699291455; x=1699896255; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zdI02aqm7lIst4lrqrrEuTfte6IbXPr4RExwJ9JvO5o=;
        b=VvrTwQgHVWbnvc8en+mj8jCFm3Z+cd7+QCp0Lr4+8Qmdv1/6RRJC5nmeDphq97ydjW
         VYKeuffIudAHh26z7gbej3rt2rg1q4uFwk17E3TO9AsBT0AWYMQcAwl42i2TXzQcjH3n
         WVeejpF0DT76szKJLDH152AYxFCLjtPrwGRdQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699291455; x=1699896255;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zdI02aqm7lIst4lrqrrEuTfte6IbXPr4RExwJ9JvO5o=;
        b=QbTiCRX/XrnnJwizqvDCytD2MfxTpcn7k/w2VEye5cYXvgSVpRSk3fzjxh54hMmlsv
         lHzex4FHntr7uHzoipK076Hhx/05/XtvD1sWPxH6gitu4ABx/RMq8+UaDfZuvRrfGhGd
         yH69H69fOun5hu4gPnoDrcFeqJAaJWDJ7NWweYeV1DnDBIPXEJU/DqgszPh0SEhgXJhf
         9NBtBvddqQNLVsrx1m1cXRqzxdv/zRJteIemqAqgVv4QzO5Xc1Q91EUCSzTvMcQPW6NB
         Zt0FB46A/PGO3s04yhTeDU13XWqZ+I3ta9FHQtLXFvAmbVbbmE+U63G+V52ONlADoos1
         d5uA==
X-Gm-Message-State: AOJu0YyNKDD7Ti70ulMZgXI8ILNjpRpK37vOHS1GFg0Dc7cLitVYA+1p
	gy0aF6nVe1YRnJWkYIpvaITt4Q==
X-Google-Smtp-Source: AGHT+IEjf5lLPfTxaVo0fhU0yyeyh8d3Emog9l8nwm/bVru8mQA0MiL4BZteIO1jZMUGTYted6mMoQ==
X-Received: by 2002:a2e:8e81:0:b0:2c5:1d11:5691 with SMTP id z1-20020a2e8e81000000b002c51d115691mr22506132ljk.28.1699291454990;
        Mon, 06 Nov 2023 09:24:14 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:1ccc:c310:74c7:1597? ([2001:8b0:aba:5f3c:1ccc:c310:74c7:1597])
        by smtp.gmail.com with ESMTPSA id j19-20020a05600c191300b004090ca6d785sm13035304wmq.2.2023.11.06.09.24.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 09:24:14 -0800 (PST)
Message-ID: <b989c56434e4410a251b8678248246218a4b249f.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] poky: Do not inherit uninative on ppc64le and
 riscv64 hosts
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>, poky@lists.yoctoproject.org
Date: Mon, 06 Nov 2023 17:24:13 +0000
In-Reply-To: <20231106171051.3741517-1-raj.khem@gmail.com>
References: <20231106171051.3741517-1-raj.khem@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 06 Nov 2023 17:24:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13198

On Mon, 2023-11-06 at 09:10 -0800, Khem Raj wrote:
> uninative tarballs for these architectures is not available
>=20
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  meta-poky/conf/distro/poky.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky=
.conf
> index e742666b4e5..ccad9c835a7 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -62,7 +62,7 @@ require conf/distro/include/poky-world-exclude.inc
>  require conf/distro/include/no-static-libs.inc
>  require conf/distro/include/yocto-uninative.inc
>  require conf/distro/include/security_flags.inc
> -INHERIT +=3D "uninative"
> +INHERIT +=3D "${@bb.utils.contains_any('BUILD_ARCH', 'ppc64le riscv64', =
'', 'uninative', d)}"
> =20
>  BB_SIGNATURE_HANDLER ?=3D "OEEquivHash"
>  BB_HASHSERVE ??=3D "auto"

I really don't like conditional inherits and I suspect there are other
architectures this doesn't work.

It would probably better to improve the uninative code itself.

Cheers,

Richard


