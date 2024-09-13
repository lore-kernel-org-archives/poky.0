Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68149EEEC1E
	for <webhook@archiver.kernel.org>; Fri, 13 Sep 2024 06:12:28 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.67507.1726207942275754421
 for <poky@lists.yoctoproject.org>;
 Thu, 12 Sep 2024 23:12:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=fUhH8dBQ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4280ca0791bso16713575e9.1
        for <poky@lists.yoctoproject.org>; Thu, 12 Sep 2024 23:12:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1726207941; x=1726812741; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1TDbkzBKlk+EO/8Ay1cGPOMk5MtRj62TkmHvsYqsMmo=;
        b=fUhH8dBQui2x5fxUeTc3JUz+drNsCn+xnqGO4LRdYOR7R74KT5ga8KuUQ9m2p8giy8
         Jrxk972AE6EZ5/HRPe1C1nRw7cOaepf7nTzjIqR7lhty+a2V7NTGCiBKXUUE/dzvexd7
         +Oav/UyxAYb03RLtbY8hvKclLYWu13mr83soc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726207941; x=1726812741;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1TDbkzBKlk+EO/8Ay1cGPOMk5MtRj62TkmHvsYqsMmo=;
        b=rxXrlm6/DTwgnca/Uzr+JrhcuzlpsCu8L/lpB2Drd4mtFsqhYZsJeh3SvcQwqxfiOm
         LXIBQpTxTYLe7e15l1/nofKgaicBrMhKasAtxxwNPlLA8sSqs4olEPlhb/ynsLMFIzlL
         Syx89wlZaAh19jbzxr6ee+5B5iRJOwaRdTKdGJION4yr3h/BLSyrM7DVFitPfkfwVuCm
         +heX5u5j3cs46+zmCeJb5rZDrvcsINWwr7AYgCfeTYL2d24NfzvmYX9Rl//Cf/qR1gEy
         PnxSaBYq5Oe/YcSq9kgsogYLKOl9HvFfZlj4+kqgQClc4dI78Ych2e+NW12dyrpUW2iq
         1mHw==
X-Forwarded-Encrypted: i=1; AJvYcCWQOpRsO9jv+os/qRfRNeWcuw7USAHFHhnQBSI0uSlSD7pgf2G0D85WN5Yw87Ost5jN3zCX@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yw3RcJ6dew2sJ9G/zDyr5zCjJzLwlFigqcV2qZFUljew1BZ4T56
	DOehamec55vnjW12B0rJSCPDzndyPxvxnAytvsWbfWI7mSDPZTxwR8/p1Pm8wdY=
X-Google-Smtp-Source: AGHT+IFukB5uunvXHrJV4rd1JGyRa/OZekxjLlCSXWGDxtLHxGk63VQ9DRMLOPau6wfhvvTNqXge4g==
X-Received: by 2002:a05:600c:1d1a:b0:42c:b45d:4a7b with SMTP id 5b1f17b1804b1-42cdb56ade7mr47980695e9.25.1726207940560;
        Thu, 12 Sep 2024 23:12:20 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:253d:d2d4:3c60:1efd? ([2001:8b0:aba:5f3c:253d:d2d4:3c60:1efd])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42d9b055069sm12544725e9.6.2024.09.12.23.12.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 23:12:20 -0700 (PDT)
Message-ID: <f3f55a63e0fb4fd972ca18401f374e0052ca1c91.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] genericarm64: don't pin to linux 6.6
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: ross.burton@arm.com, poky@lists.yoctoproject.org
Date: Fri, 13 Sep 2024 07:12:19 +0100
In-Reply-To: <20240912161226.4022231-1-ross.burton@arm.com>
References: <20240912161226.4022231-1-ross.burton@arm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 13 Sep 2024 06:12:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13438

On Thu, 2024-09-12 at 17:12 +0100, Ross Burton via lists.yoctoproject.org w=
rote:
> The 6.10 build has been tested on both a BeaglePlay and qemu, so we can
> remove the pinning now.
>=20
> Signed-off-by: Ross Burton <ross.burton@arm.com>
> ---
> =C2=A0meta-yocto-bsp/conf/machine/genericarm64.conf | 1 -
> =C2=A01 file changed, 1 deletion(-)
>=20
> diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-b=
sp/conf/machine/genericarm64.conf
> index 8c1b09fdd50..1cb5e46dcf7 100644
> --- a/meta-yocto-bsp/conf/machine/genericarm64.conf
> +++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
> @@ -12,7 +12,6 @@ MACHINE_FEATURES =3D "acpi alsa bluetooth efi keyboard =
pci qemu-usermode rtc scree
> =C2=A0
> =C2=A0KERNEL_IMAGETYPE =3D "Image"
> =C2=A0PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
> -PREFERRED_VERSION_linux-yocto ?=3D "6.6%"
> =C2=A0
> =C2=A0# Install all the kernel modules into the rootfs
> =C2=A0MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"


https://autobuilder.yoctoproject.org/typhoon/#/builders/166/builds/848/step=
s/11/logs/warnings

Cheers,

Richard

