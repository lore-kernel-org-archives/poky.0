Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34F65C77B7C
	for <webhook@archiver.kernel.org>; Tue, 24 Jun 2025 13:11:59 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web10.7829.1750770712057072156
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Jun 2025 06:11:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ZgOeGfyw;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-453398e90e9so36193065e9.1
        for <poky@lists.yoctoproject.org>; Tue, 24 Jun 2025 06:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1750770710; x=1751375510; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3M62EiWHixBVJBgA/7miHvzNSoZMOfwauBpDYxlf+pE=;
        b=ZgOeGfywNvCPSl9xTaJSrreyprzlJOuIdX/hOIuAOidtx8aUMKRm9Hlx95ufyly43T
         Q2LKgOuY+oD9AftVar6sYeCATvFprbfW1K8unZWQJZjyJmWIGEeS2m17MdAXZdemXPMt
         qw14Sg3TzAxBH97D+IjssXY2FDcoQzgyP4VqQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750770710; x=1751375510;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3M62EiWHixBVJBgA/7miHvzNSoZMOfwauBpDYxlf+pE=;
        b=d5I22cr7UY0f52DqUOdnOy3oBRfb0qtQYAFKH3ISh3I68lx2fuGQ4ROIa6dKBF+f86
         X3U66irkHNaZduXk5cBgSsKUWgaR1uoG1voxHKJXlfpbff1NgwwQYvdr9QWnzL+pNG1j
         fJrY5WsOwpmvd2OlNRZmrQuWR2BAxvMd/sGXyI/WX3xVVeZXkWAnhu5SD0wjksfm2RzC
         PxGYsJFnXL1FhzJiEg859vGxNL1tr+EIKvq5bw0Wg0+Ar+A0/DayZcC4t2CRYKeh9zSi
         bWI83RQW2s+5HAo3EytRb6xxrFLHEb/bGn1dERKZ0vMzlV/Kp8R189CsQTpeIX0PR4v6
         vtVQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+HShNlgSy+wysS2wvt+QRZv8Vg2HrLrvWzkbs/Z2+12q8BziJeGNuJcitLJq0puaJyJgJ@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yz4Q0/NkDNs7S4IC1DG4qLQUitOMc0Slf8u7VOw+obPcuApsrCU
	WZ9M0QVuHx4+7x9LAIKExP1L9D8LHQ6aCXs3YrPZ77ayCTCj0aM5+pfo4GBukUYoKMs=
X-Gm-Gg: ASbGncvw+susiX0u6dH7sdyDvPiHJsDjAKgBVMSxruJDeKYyhgYyOlsRg+nAcgY7Bj5
	McwmDN5ai7gqE9zRDFb+3jN+KnsGsES8U6ij1QAK/cTWDtFqwPDidrSTVxrsrk97FGkRQi27+fw
	tGPBZ793AQSDWIa/YlPwNWYNCsG5nTIgO7m8HfIEB8p2c0L7yrT6X6MZpK9HTNmeQmct5Y3JHQm
	IwhfDHyihM9hZ/mTzkLHguYFBL85CAHevV3I/CIN5zZvHtIPkeW8rFa+cvVXMY+smZfb6O9L6LA
	Vu0GcXIve2c4aApiyJIip549UJ6y4pXnueRdDLOuJmto+njD+A61HcZ8SKayLgfhNNTPEM3fGwh
	1d4N/BlSlWivhkYxcnxbR8irkQycGgj6pIFwCxzuBFwtkFgg8LFs=
X-Google-Smtp-Source: AGHT+IEMYm+sIgwxh8QJz8P7GdKj7p56/v5P4yxAFXnf6lIPZ4Ow/CB06z1yydC1hiP9kdxY0BynXg==
X-Received: by 2002:a05:600c:3ba4:b0:441:b3eb:570a with SMTP id 5b1f17b1804b1-453659c3b97mr153388755e9.2.1750770710437;
        Tue, 24 Jun 2025 06:11:50 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:341b:1360:3bd8:8ecc? ([2001:8b0:aba:5f3c:341b:1360:3bd8:8ecc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453647084a5sm142704005e9.38.2025.06.24.06.11.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 06:11:49 -0700 (PDT)
Message-ID: <6fb30604dfb196088f07c6b59f437eeb0f1df788.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH 1/2]
 meta-poky/conf/templates/default/bblayers.conf.sample: do not assume
 integrated poky repo
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alex.kanavin@gmail.com, poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Date: Tue, 24 Jun 2025 14:11:49 +0100
In-Reply-To: <20250623165507.1633860-1-alex.kanavin@gmail.com>
References: <20250623165507.1633860-1-alex.kanavin@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 24 Jun 2025 13:11:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13666

On Mon, 2025-06-23 at 18:55 +0200, Alexander Kanavin via
lists.yoctoproject.org wrote:
> From: Alexander Kanavin <alex@linutronix.de>
>=20
> The list of layers was written assuming the template is used with
> the 'integrated' poky checkout, where content of meta-yocto is
> 'overlaid' on content of openembedded-core, and the layers are
> all in the same top level poky repository directory.
>=20
> This doesn't work when oe-core and meta-yocto are cloned separately,
> where relative path that starts from oe-core would have to go one
> level above oe-core and then go into meta-yocto, assuming the
> separate repo clones are in the same top level directory.
>=20
> This requires a custom tweak to bblayers.conf when it makes its way
> from meta-yocto into poky that would strip the ../meta-yocto/ part in
> BBLAYERS. As there are already numerous other tweaks of similar
> nature, I think this is feasible.

Which other tweaks of a similar nature are made? I'm not aware of any
file contents changing between repos...

Cheers,

Richard

