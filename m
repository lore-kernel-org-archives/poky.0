Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76219C5AE59
	for <webhook@archiver.kernel.org>; Tue,  3 Jun 2025 19:48:16 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web10.4285.1748980095274459187
 for <poky@lists.yoctoproject.org>;
 Tue, 03 Jun 2025 12:48:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Klllif++;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-450cd6b511cso37413295e9.2
        for <poky@lists.yoctoproject.org>; Tue, 03 Jun 2025 12:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1748980094; x=1749584894; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zYhbI6jGUMUjKxpjaLeoWWG4mDhnvUuPJ8KvdLf9V8E=;
        b=Klllif++xazE4dU/ol1+9DQ2W8W9ZV4SL/fyd4pdponbcCJUsntSbgC9AssE7F0ZkM
         o6P6R9FnEuFf0eZuRkWit5qG9BmO5Eji2+fQlH+EpEXt3KPOz5SUEyQx8obqXfZkJgKS
         Lpk8y4vyhPcNjkzqTmfbNrzCGMxYKfq2ljMk4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748980094; x=1749584894;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zYhbI6jGUMUjKxpjaLeoWWG4mDhnvUuPJ8KvdLf9V8E=;
        b=Vjv+1aI7IZ+DwcZXtJYW3bAywqQrBEfhNx2Qz/BBx7RX7AAFFiIJT0LxzJwKPrBTZx
         ix/hPSAABDoeJCV5Ap+6QVaA9ZzdZyVbwmfIOrjWNFhIJWLSEjQkjMvgq3/wufoyJAhm
         TIp8EKqjbMbExb50LKchkV5hnQRz70pSuulm0hVzep96e5+U6YQAyaubrRNu1J0nJrg+
         Fd/yTa47oDt18SfEa61EOy2aUVvmu8OXOd32S0p8e5/n+J48ufBhua4w3vlxU929KyYA
         3IoWCUWB/GPlBr8fFDdZGn2bGgeJGjv8JELjx4Gn/0tD0JubW/fCwdYl34bnRyn64o9X
         3Lcw==
X-Forwarded-Encrypted: i=1; AJvYcCUFkYU+TmHAII5E8rbUq4QcvUtCA7gRBoeXCYMMWfx20ih0PZKRcdRlA484/aYFj4BHVsmc@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwOd0cZfwhkjDl8poGF+xd4+TPhsWUXEJWFFw2Uie8prTbwM6pR
	o6FsBp0budRWAs/KLXy6R1ZDhBXFFFT8wvAq8Kw689/vhSv8NB2d9CXtP4/w6fFBgcA=
X-Gm-Gg: ASbGncs8FZSO9HEShZ/CO3OqjvyNf+vEWELXMYM28M9FxMudvFq3s/1M3F0ot83l/dR
	gmK99iAfCfuLib6bDfkfVWznt7eZuB+em/qQVhJc79dM9Zuro8ZHlF14RBJNOi/OqJSuMyYNngN
	x34K0uXdOsAfm5g2/jsuB+s1vDTIAeZRAkPQT6yYNCH2ZnlK1sAU2dnBmxry+nnDGDMAJeEV84r
	bU4sTJEb8Upx44kBya+uQ5agQjh5ou37uwRYkSC1/sZOlmOFd/d6FDRirKaMKwsdtGAozijSZMM
	qcAqXk/7groceTgd0Zb8T2uDEsqyqfbp4WWbhyUTwebH3clWg6YU74RD95uebAwZyT+I5Pj6Vfk
	K1B7bi3GCkry9BIIV3wJx65A+SuasZUPI/ZyP1OwJ
X-Google-Smtp-Source: AGHT+IHT6GDjozpDwj4mCSKQbm0WSNhlK1qG6f3ywJS0fA40ct7yRTuPOm8F6R2DeRp/ouaSiWVj7Q==
X-Received: by 2002:a05:600c:870c:b0:450:d00d:cc with SMTP id 5b1f17b1804b1-451f0a67348mr146085e9.2.1748980093653;
        Tue, 03 Jun 2025 12:48:13 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:b15a:63cd:1104:eed0? ([2001:8b0:aba:5f3c:b15a:63cd:1104:eed0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-451e505c350sm32709905e9.0.2025.06.03.12.48.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 12:48:12 -0700 (PDT)
Message-ID: <b8f9ba8524090623e0e13ef36724839c140f99a6.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH 2/4] conf/fragments: add fragments for qemux86-64
 and qemuarm64
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alex.kanavin@gmail.com, poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Date: Tue, 03 Jun 2025 20:48:12 +0100
In-Reply-To: <20250603113558.3104618-2-alex.kanavin@gmail.com>
References: <20250603113558.3104618-1-alex.kanavin@gmail.com>
	 <20250603113558.3104618-2-alex.kanavin@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 03 Jun 2025 19:48:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13640

On Tue, 2025-06-03 at 13:35 +0200, Alexander Kanavin via lists.yoctoproject=
.org wrote:
> From: Alexander Kanavin <alex@linutronix.de>
>=20
> These will be used by official bitbake-setup configurations,
> and so let's start with them :) Plenty more fragments can
> be added over time.
>=20
> Signed-off-by: Alexander Kanavin <alex@linutronix.de>
> ---
> =C2=A0meta/conf/fragments/machines/qemuarm64.conf=C2=A0 | 5 +++++
> =C2=A0meta/conf/fragments/machines/qemux86-64.conf | 5 +++++
> =C2=A02 files changed, 10 insertions(+)
> =C2=A0create mode 100644 meta/conf/fragments/machines/qemuarm64.conf
> =C2=A0create mode 100644 meta/conf/fragments/machines/qemux86-64.conf
>=20
> diff --git a/meta/conf/fragments/machines/qemuarm64.conf b/meta/conf/frag=
ments/machines/qemuarm64.conf
> new file mode 100644
> index 00000000000..0fc164541d5
> --- /dev/null
> +++ b/meta/conf/fragments/machines/qemuarm64.conf
> @@ -0,0 +1,5 @@
> +BB_CONF_FRAGMENT_SUMMARY =3D "Use qemuarm64 as a target MACHINE, suitabl=
e for running in QEMU system emulator."
> +BB_CONF_FRAGMENT_DESCRIPTION =3D "Select qemuarm64 as the target machine=
. This is the best option for running the target system inside QEMU emulato=
r on arm64 build hosts, \
> +as it allows near-native performance with kvm acceleration. Also useful =
for testing arm64 specific assembly code or compiler output."
> +
> +MACHINE ?=3D "qemuarm64"
> diff --git a/meta/conf/fragments/machines/qemux86-64.conf b/meta/conf/fra=
gments/machines/qemux86-64.conf
> new file mode 100644
> index 00000000000..0fce37c4e2e
> --- /dev/null
> +++ b/meta/conf/fragments/machines/qemux86-64.conf
> @@ -0,0 +1,5 @@
> +BB_CONF_FRAGMENT_SUMMARY =3D "Use qemux86-64 as a target MACHINE, suitab=
le for running in QEMU system emulator."
> +BB_CONF_FRAGMENT_DESCRIPTION =3D "Select qemux86-64 as the target machin=
e. This is the best option for running the target system inside QEMU emulat=
or on x86-64 build hosts, \
> +as it allows near-native performance with kvm acceleration. Also useful =
for testing x86-64 specific assembly code or compiler output."
> +
> +MACHINE ?=3D "qemux86-64"

What bothers me about this is that we have multiple files, each with a
single similar config line in them. It implies we need to create a new
machine config fragment for every machine, which to be honest, is
madness.

Would it be better if the config/setup code understood what something
like "machine/qemux86-64" or "distro/poky" meant and did something
magic with that?

Cheers,

Richard



