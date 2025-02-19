Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E51C021AA
	for <webhook@archiver.kernel.org>; Wed, 19 Feb 2025 16:00:04 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web10.25983.1739980802653143550
 for <poky@lists.yoctoproject.org>;
 Wed, 19 Feb 2025 08:00:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=WsiKP89d;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-38f5fc33602so94713f8f.0
        for <poky@lists.yoctoproject.org>; Wed, 19 Feb 2025 08:00:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1739980801; x=1740585601; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tuBJ/TNR2vv7329Fz1mUa1Xlz/2iSXwbzjr46QR+Cno=;
        b=WsiKP89d1s4poKpUFfEcMlJ3ZPHOono7rUm+TofdXNTm7wq1OUDe+DZAXIGx0OMbY0
         XWf+PYPLWPnJS8Vl//k/Gl8N47rqKNhNI85rb4CBxhl/6J4FS+4NWsnNMwpbqaE5cs6v
         g5vgzY5ycnwAbD13cmX85wlyDurMyGqpjeBls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739980801; x=1740585601;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tuBJ/TNR2vv7329Fz1mUa1Xlz/2iSXwbzjr46QR+Cno=;
        b=JqRfYaoNYk/C1BFwTxwRJ4buiof83icH+G5q3ASa0J8BFt5BKGDgGreZK2CrGuSHg5
         Cl7Y+ADxZzOR41D5ve0ksHIQMGTb5J42zUIkAIscm/xnZyKXAxbGj761mQZT2I5cslvL
         sM7CbDvm26ZNjH+gVJv37JuSmPRtiSjnWzzP1gdpCuqzFxlFlq8SQFynmuNPjMSdzcYP
         SvTE4x8bi+rCJal4vm+KojYwy83CFy4kkVx0BN4gb62hllkEJ5+QpSQMX9wBBSIloK7e
         kGbbf2GX4ov3FmjGX4LYu2YHiKHGa04EiA+Llp5hVAtGJYfXC6U1bm3eN/nfC8wA5WBj
         37lg==
X-Gm-Message-State: AOJu0YwrIH2e7QIHJDn2IDzddq7E3u7w/JqPQqLwMctu7aD43Z88/VpI
	i2lrA/Np6kupalQ5XqLQ/CVwY5ST7E9XAXomLaGEA2iJkY5E8Dhdeky8bW/hRxs=
X-Gm-Gg: ASbGnctieXxorErfceSTwxUYGaPA0+C7bYxQKEKXeGG9WfoNuRORjRefHJ2k20yP6Wv
	+y4KRNEGMZGJcpvRLag0LGRTwEi6ruO3s1OZnJLZP+Okym83pn4ZFr35JxtkS94A1exX2bFcNfX
	Z79I6p1WHRZ4yBBLTJCB8zx3ZNBIY+kSW2gxWPZawjKxNUpzGvgfyKK4snzU0ptmi86oSWdQANj
	F3bb7ErKGUOaNa1hoQgm05WlBzNB33UqAYXves3uO/B3iOMuY0wSDx5BuVJXBtf5t/iRHozEqlL
	Df0ds3MB5DEKGokew5pBvE7kLSKQHtzdGtAmJFY033JEfhBteXcm4wbyj7/5UncpMv6lLcf2snz
	lmacX
X-Google-Smtp-Source: AGHT+IG3IzCkxJsKfgw4/HrxmRc4tIzjp7PEOyA05vWm+xAHQtRjisJBmMmtdNPJz1ytlq6KFN4Lvg==
X-Received: by 2002:a05:6000:401e:b0:38d:ba8e:7327 with SMTP id ffacd0b85a97d-38f57c086d3mr4251551f8f.8.1739980801031;
        Wed, 19 Feb 2025 08:00:01 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:4146:2030:963a:7035? ([2001:8b0:aba:5f3c:4146:2030:963a:7035])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f259f7979sm17943312f8f.83.2025.02.19.07.59.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 08:00:00 -0800 (PST)
Message-ID: <a7821314c57220b19a189530d48a64934c4b4820.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH 2/2] psplash: start via udev if framebuffer
 device detected
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: mikko.rapeli@linaro.org, openembedded-core@lists.openembedded.org
Cc: poky@lists.yoctoproject.org, Mathieu Dubois-Briand	
 <mathieu.dubois-briand@bootlin.com>, Jon Mason <Jon.Mason@arm.com>, Ross
 Burton	 <ross.burton@arm.com>
Date: Wed, 19 Feb 2025 15:59:59 +0000
In-Reply-To: <20250206144406.1328276-1-mikko.rapeli@linaro.org>
References: <20250206144406.1328276-1-mikko.rapeli@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.0-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 19 Feb 2025 16:00:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13533

On Thu, 2025-02-06 at 16:44 +0200, Mikko Rapeli via lists.yoctoproject.org =
wrote:
> psplash-start.service expected to find /dev/fb0 and failed
> if device was not found. This failure breaks systemd
> oeqa runtime test with "runqemu nographic". Starting
> psplash based on detected framebuffer device fixes systemd
> boot status and systemd oeqa runtime tests for qemu
> boots with and without graphics support.
>=20
> Note that psplash-systemd.service still depends on /dev/fb0
> so startup with multiple framebuffer devices may not work
> correctly. I don't have devices with multiple framebuffer
> devices to test with.
>=20
> On qemu machine with graphics, psplash displays yocto
> logo correctly and boot progress bar as well. Once boot completes
> to systemd "running" state, the logo is replaced by login prompt.
> On qemu machine without graphics, boot completes without psplash
> or failures and login over serial console works normally.
> Tested with genericarm64 machine poky-altcfg distro and core-image-base
> image on qemu. AMD kv260 tested as well but graphics stack is not yet
> working there so boot is similar to qemu without graphics.
>=20
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
> =C2=A0meta/recipes-core/psplash/files/fb.rules=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1 +
> =C2=A0.../{psplash-start.service =3D> psplash-start@.service}=C2=A0=C2=A0=
=C2=A0 | 5 ++---
> =C2=A0meta/recipes-core/psplash/files/psplash-systemd.service=C2=A0 | 8 +=
++-----
> =C2=A0meta/recipes-core/psplash/psplash_git.bb=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 9 +=
+++++---
> =C2=A04 files changed, 12 insertions(+), 11 deletions(-)
> =C2=A0create mode 100644 meta/recipes-core/psplash/files/fb.rules
> =C2=A0rename meta/recipes-core/psplash/files/{psplash-start.service =3D> =
psplash-start@.service} (84%)

Unfortunately I think this has introduced an intermittent QA test
failure showing up in meta-arm in particular. Examples:

https://autobuilder.yoctoproject.org/valkyrie/#/builders/75/builds/994/step=
s/22/logs/stdio
https://gitlab.com/jonmason00/meta-arm/-/jobs/9155263483

but it doesn't always fail. There were other failures if you look
through the meta-arm builds.

Cheers,

Richard

