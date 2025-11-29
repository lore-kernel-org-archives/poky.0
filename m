Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D166FD116E2
	for <webhook@archiver.kernel.org>; Sat, 29 Nov 2025 23:36:37 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.5143.1764459391293514351
 for <poky@lists.yoctoproject.org>;
 Sat, 29 Nov 2025 15:36:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=RPd41Gm4;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-47789cd2083so15347105e9.2
        for <poky@lists.yoctoproject.org>; Sat, 29 Nov 2025 15:36:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1764459389; x=1765064189; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CtN34IGfc5vXWNxst/Gad+GTYjD7JpBWc63iMChrYEw=;
        b=RPd41Gm4jcmR0JW5nCePmgA6oCZDG58AHaarFg/Aen/CnoG5qQthXm3ycPLbOnZCQT
         fcP5uIbQr3mPdxMIide7LZtxxE+5vIgkkbl0Wajlnfs27s2pyuTar8I94jbVImqa1bKu
         wrzDfx4ledW1zMGAn+rp3BZCkXSHauHjN9+30=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764459389; x=1765064189;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CtN34IGfc5vXWNxst/Gad+GTYjD7JpBWc63iMChrYEw=;
        b=jOwqtvLeXtipvXPmSTDl6EGgmfW/yrQ8G+quIKIoVsS76YdGuolIr61BoMlAjGv61o
         1LQIa9fbrG8bXAZGBedgKSGHE/sn91TcrT2n4AkJowNcxlPio4cCEtHsKJDxcmCGReXg
         R1iRUSMeGBLVlv9F5yRadrOj/cp+Ys5zmbILPfzBglkRvbiwSXj9huyNMnvVdBNzHZ0Z
         smhbisqTL3ror1Foej9hznvqPkRZ4HI/r8uS24D+TItH5He1xzUlCy5ZldYmRsL2RYeC
         2hcRqDmwyXoGm3cPIOSNdo6p7eexOdhniij59E0rXlqs5d66d273Km+ORaF+BH8FNxRs
         DeCw==
X-Forwarded-Encrypted: i=1; AJvYcCXd7tAQ2vhFXPXEpZ/plCdlOs4CJ7QIf82Z5iCYR+N9VIcpOwThH5wDobc4AlStKHmsvH4Z@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzG8AQiCpn1K+4x35xUr0iKmarjiw6PJhRxE1oFT3R83abvTG0A
	ofh1BbEqik6A1vfCS9JrrFc4UwZKLjvt+N+mEs9nvhcqJ3JSxyyvAdmMkngFVA9+zGs=
X-Gm-Gg: ASbGnctxahNbxGxsOJO4FxmH+muBhU7Jx3cjnvqJudTmM6it70USsQxvWotc6cF+260
	J58VyTcfIf23p/gf4SZZjZr5KHt5g+5a3symmCUrt42jGpBFpoZwhEEK2SemtBe3zWH4HV1Np6l
	jxRGTeCH0KW18RkY/J05u8kXhwWabJ6mnVfKSJjP1i9Zlin8f9+VVCTMg8qMYaVwG8Lc4Mhhxr7
	U3ivtTQBVmgp4IC0yBxydk2RKe4ZF4Wtdyu4loeza7M/FxzHLRyfmR7e4Mr63hga7RfpjsknP8D
	su4mt1/YULqFBi+dWJplrBFeAT3b/+QT/HT69BRHcqy3+Kk17OG5XZTISKPgPjkxlHEqyKeXx23
	p2fl14i3tHFfHOywU1o55kwHd2a9p+kkmvorCm8wYFqp8TQLWqoHdI7NdvDipDWSFnpUpol0HdL
	hZr9aF39YjujQ4purTqGXJxa4CbJKSwZnTxBCHp6vzTYPBEQBYqiViVL77Q2YnUzn6b9R0UH8c
X-Google-Smtp-Source: AGHT+IFjz5lPiMkzH5CC8N+l1FKx+wq+a/p4mDWS3OI4ZvgLGLDw6wv6SaB3qE/34LCQbfu0TWYsaw==
X-Received: by 2002:a05:600c:474e:b0:477:7523:da8c with SMTP id 5b1f17b1804b1-477c111d3f8mr377944495e9.15.1764459389506;
        Sat, 29 Nov 2025 15:36:29 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:9cf7:b95e:b79:bb48? ([2001:8b0:aba:5f3c:9cf7:b95e:b79:bb48])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4791163e3cbsm161929875e9.10.2025.11.29.15.36.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Nov 2025 15:36:28 -0800 (PST)
Message-ID: <10a35a1b76ea399ab1c7d389f6ce9aa4a9feba57.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] genericarm64.conf: override poky-altcfg distro
 kernel version
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: mikko.rapeli@linaro.org, poky@lists.yoctoproject.org
Cc: Ross Burton <ross.burton@arm.com>
Date: Sat, 29 Nov 2025 23:36:27 +0000
In-Reply-To: <20251129133901.1732829-1-mikko.rapeli@linaro.org>
References: <20251129133901.1732829-1-mikko.rapeli@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1ubuntu0.1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 29 Nov 2025 23:36:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13803

On Sat, 2025-11-29 at 15:39 +0200, Mikko Rapeli via lists.yoctoproject.org =
wrote:
> To use latest stable kernel from oe-core. It has much more genericarm64
> support than the old version selected by poky-altcfg distro.
>=20
> genericarm64 machine basically only works well with systemd init with
> udev already in initramfs and thus with poky-altcfg distro, not plain
> poky distro.
>=20
> This setting makes default release binaries for poky-altcfg distro
> useful for genericarm64 machine and the many HW devices we want to
> support.
>=20
> Cc: Ross Burton <ross.burton@arm.com>
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
> =C2=A0meta-yocto-bsp/conf/machine/genericarm64.conf | 3 +++
> =C2=A01 file changed, 3 insertions(+)

I have said no and I have explained why not. Sending it again doesn't
change that. We need to find a different solution.

Cheers,

Richard

