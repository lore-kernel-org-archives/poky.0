Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3481CF8A17A
	for <webhook@archiver.kernel.org>; Thu, 16 Apr 2026 13:48:24 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.14539.1776347296921210267
 for <poky@lists.yoctoproject.org>;
 Thu, 16 Apr 2026 06:48:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ZtRl3cpJ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-488b0046078so78272815e9.1
        for <poky@lists.yoctoproject.org>; Thu, 16 Apr 2026 06:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1776347295; x=1776952095; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C1hzCfW2UgoaifGygP1VRu1tA9pDCy8R/rhRaHHJff4=;
        b=ZtRl3cpJy0EjnjZWWVEkuTODnujlBgyYx3aOtPtGY8BFFvzH6Du+1tTw+zTgao8pxn
         iOU+HXgziJ3KzHYesSvJTKkhQ7UgiYYlqmQxmFJrWhBLm29bqyE0IRIAK3RCJ34NbUdG
         lB1Tr/BP1QjP5WrQT8mpa3GWw5TGn17UcsHhY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776347295; x=1776952095;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C1hzCfW2UgoaifGygP1VRu1tA9pDCy8R/rhRaHHJff4=;
        b=q1t6ra1ckqpkKXjXemm+kTGu7vTtY+WxXRwkKPuW27ciKwy7sZC3w38r4tFNCd+cAu
         F1KDbEAUlMh5xo92Zzk2A94k91xFhpBy9lea+q88CrNC69QKCTwc0lQgsqL0/qDahq7/
         uQ/Eslp4O2FfCRd6KS5XSklCldMJwYaRVE2W2/0rdCI8BVjuwtoAaUQtq3vMNnfBhZRE
         noWOZn0wB4fyfegD0JXSQaI85p57YXO5RQnq7MVHm6f97ZA+KdOyEVXG/GpuMzrNhUpC
         5TZbL1i3yHEYhGv60Oa6G9sYj+08niZbRsi3xCsbem3Arlpy3K0FSnRd9q+WUFnG8juH
         /3Rw==
X-Forwarded-Encrypted: i=1; AFNElJ+ZS8qoEOpnNPKIZzLHqyfflOTUpJWvelTJBbct3wCuTaevFTwHhdLD9BhcxMdkvLN1mJL1@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxWHdE5Okvh65htwK5t0ZMC7OybTc3NWoRYlSuT+4vzGQawNQAK
	ZPZuF8sX8nEXuenKZvgRB1MLdZsGsLtA/iOiAWdYxDXJ43YAaRZ3Ura/mNvuUJ+rGfg=
X-Gm-Gg: AeBDieuFTr0BMlPhF0+2krzsAusS+NQFXSCUg8oJjUKYb6SJSpeNnIJ4QZiK+F07PlX
	wovcFNOPfB8dVvH5vsNDeQ4/u21WYFAOnWfh045qfIHzFCINc7QNroyGqEnMmk6gRFNEeX0BhH4
	eyzMYT3S34USqhbw9MrCfEq+Zsjf4bQVhuJlb2QcECrVwCvfTvJFU4s1kywib+edbu+QTqrMJwi
	HtiLgwg/f0DDRHjn/8mwiYYcUZQuBU+rllhIqhQwvmkTal0I2mmIT1qLGBqB6ywlMJS8Ovhe0CW
	uAzh0dU7sW4O9Zhbs1g+uH0EI3xeg+dO63qKRolSEPwV4K5jpF2A7u/W5tVyhqMdT58kJBenP71
	ks0pB3x6lc51BD2XLCFwL+a9qwp23HW3jWGKKP01BMad1f3jinNoiAO6L4M2AwBC3hATXo7evGZ
	fQrT/3ldT1GESUxdA7zZR385riRadkBA/KnTihizutWtnrhFl3jDB4pK0R+GZkF4ZtFK8blpUA8
	vxZ+e4bat5ikrCWsPWAAEXmukI=
X-Received: by 2002:a05:600c:c0da:b0:485:4bd1:4c64 with SMTP id 5b1f17b1804b1-488d68a10e2mr311121695e9.31.1776347295261;
        Thu, 16 Apr 2026 06:48:15 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:9444:ba74:dc4b:e8c7? ([2001:8b0:aba:5f3c:9444:ba74:dc4b:e8c7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488f584e306sm65190395e9.11.2026.04.16.06.48.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Apr 2026 06:48:14 -0700 (PDT)
Message-ID: <cc1cc03b1118d75b010727706abacbb4c4f7f345.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH v3] genericarm64 core-image-initramfs-boot:
 remove some kernel drivers
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: mikko.rapeli@linaro.org, poky@lists.yoctoproject.org
Date: Thu, 16 Apr 2026 14:48:13 +0100
In-Reply-To: <aeDjcbnGMMqzyW_z@nuoska>
References: <18A5D9F18A3D8C50.777565@lists.yoctoproject.org>
	 <aeDjcbnGMMqzyW_z@nuoska>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 16 Apr 2026 13:48:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13904

On Thu, 2026-04-16 at 16:26 +0300, Mikko Rapeli via lists.yoctoproject.org =
wrote:
> On Mon, Apr 13, 2026 at 10:27:15AM +0300, Mikko Rapeli via lists.yoctopro=
ject.org wrote:
> > genericarm64 supports a lot of HW and thus large collection of kernel
> > drivers are enabled and installed to images by default.
> > Subset of the kernel drivers are needed in initramfs to mount rootfs
> > from local mass storage devices. This increases initramfs size a lot
> > and with new kernel config updates even more. Thus remove kernel
> > drivers from initramfs image which are not needed for mounting
> > rootfs from local mass storage devices. GPU, Bluetooth, NFC,
> > sound, networking etc support is not needed in the initramfs.
> >=20
> > According to buildhistory core-image-initramfs-boot size is reduced
> > from 118 to 83 Mb.
>=20
> In my oe-core master branch builds core-image-initramfs-boot is now faili=
ng
> due to size limits:
>=20
> https://gitlab.com/Linaro/trustedsubstrate/gpit/-/jobs/13951723488
>=20
> 2026-04-16 13:04:26 - ERROR=C2=A0=C2=A0=C2=A0 - ERROR: core-image-initram=
fs-boot-1.0-r0 do_image_cpio: The initramfs size 282121(K) exceeds INITRAMF=
S_MAXSIZE: 280000(K)
> 2026-04-16 13:04:26 - ERROR=C2=A0=C2=A0=C2=A0 - ERROR: core-image-initram=
fs-boot-1.0-r0 do_image_cpio: You can set INITRAMFS_MAXSIZE a larger value.=
 Usually, it should
> 2026-04-16 13:04:26 - ERROR=C2=A0=C2=A0=C2=A0 - ERROR: core-image-initram=
fs-boot-1.0-r0 do_image_cpio: be less than 1/2 of ram size, or you may fail=
 to boot it.
>=20
> This patch could be one fix.
>=20
> But is this visible in auto-builder side builds? Or have the genericarm64
> poky-altcfg distro builds been disabled?

We're not seeing it there, the builds should be running though.

Cheers,

Richard

