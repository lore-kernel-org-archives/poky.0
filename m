Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web08.19393.1654425692693151821
 for <poky@lists.yoctoproject.org>;
 Sun, 05 Jun 2022 03:41:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=AomfIUo3;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f47.google.com with SMTP id l126-20020a1c2584000000b0039c1a10507fso641283wml.1
        for <poky@lists.yoctoproject.org>; Sun, 05 Jun 2022 03:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=/m1poLEk67KuiR67bPPudkEcuAEJM+JE5PAc9tV95Tg=;
        b=AomfIUo3A1hqTiIJofOxF8ojSFflvZC09ISKpGUMeO+OtU3ml0+bsW8Fs1jef5RTDS
         1/vum4e+t3YGP8tbAGbuJLVrQ+eO0pFwg8J1G9KBLcggMPrLzNiYQtquS3Qjrj7OKKtF
         U3DfrH6+pL70fZIv7bNzBf2iVlmceUmlrd30k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=/m1poLEk67KuiR67bPPudkEcuAEJM+JE5PAc9tV95Tg=;
        b=5uIqFi88J4+ORFMRTfPaXo9RzJfyoQIBdU6CGlEgfRaUSDkVAnJIbSBzJ83mpJ+2Fp
         pgD1n+fUAi6wStBmOSoZkmLHMC5UC6J9Smv9YwbRIj8yDfDvlPLxlhg5oTSqiD42EGiW
         iWqVyT79+Y9kfmTZGAEgDzdBGS/4CLjaJnVn2J9rTpavREGfiUtTdDd25Zu41jlSPPF0
         a2zMXln8XVKUYi7rYXFM3YS9FDuW1w9ytY0hh+zTJ6Aeus8SJXGwYnONfhMnnCUP7Hwh
         XjiJSiSdlzgGsG2fic3A+jRkLu0NnBXNktYqg0AKGqmboY5c9qahnO9IvdSFwMU1yXwR
         b9Cw==
X-Gm-Message-State: AOAM531EcnUc9ibYHuN9wgl3ZBZTfsxB9lt1Lb+8Sl8NLU3LeiTXwF9X
	MV/VmOgk8aRf2j0DowAN62L30A==
X-Google-Smtp-Source: ABdhPJyAu5c3ltfqaQ7yMSvqpwd9ks6q6ivSZoraLdZEXHKop6fmZNGhMLlGZG6TImreedDgqfQTSA==
X-Received: by 2002:a05:600c:3496:b0:39c:1c19:987d with SMTP id a22-20020a05600c349600b0039c1c19987dmr17302462wmq.135.1654425691156;
        Sun, 05 Jun 2022 03:41:31 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:1a6f:63e8:c3d9:1249? ([2001:8b0:aba:5f3c:1a6f:63e8:c3d9:1249])
        by smtp.gmail.com with ESMTPSA id l13-20020a05600c4f0d00b0039c3055a63dsm12024668wmq.36.2022.06.05.03.41.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jun 2022 03:41:30 -0700 (PDT)
Message-ID: <bacff555c7e4124201eba4a0ba7c5473c28c4b8c.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH]Make linux-libc-headers.inc compatible with 4.14
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Thomas Viehweger <patchesThomas.Vie@web.de>, poky@lists.yoctoproject.org
Date: Sun, 05 Jun 2022 11:41:29 +0100
In-Reply-To: <4ba98903-a53c-8b8f-3b20-e2823794609b@web.de>
References: <49f6643a-fe07-af5b-00aa-dc7d48320e55@web.de>
	 <4ba98903-a53c-8b8f-3b20-e2823794609b@web.de>
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 2022-06-05 at 11:44 +0200, Thomas Viehweger wrote:
> After creating a .bbappend file which sets Linux-4.14 as source
>=20
> I got the following error:
>=20
> ERROR: linux-libc-headers-4.14-r0 do_install: oe_multilib_header:
>  =C2=A0Unable to find header asm/bpf_perf_event.h.
>=20
> This is because 4.15 is the first version which includes this header.
>=20
> Here is a patch wich makes it possible to use versions 4.0..4.14.
> Versions below 4.0 are still broken for the arm architectures.
>=20
> Signed-off-by: Thomas Viehweger <patchesThomas.Vie@web.de>

Patches for OE-Core need to go to the openembedded-core mailing list.
That said, I'm not accepting this patch.

You should be able to use the most recent linux-libc-headers even with
an older kernel. I don't understand this desire people have to use lots
of different versions of it but we're not doing it. We do not want a
different userspace per kernel.

There is a warning in the recipe about it and I'm not taking patches
like this unless someone explains a really good reason why the
userspace needs to be built with an older set of headers.

Cheers,

Richard
