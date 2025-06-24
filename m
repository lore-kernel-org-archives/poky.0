Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BB10C77B7F
	for <webhook@archiver.kernel.org>; Tue, 24 Jun 2025 14:25:49 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.9637.1750775145626263220
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Jun 2025 07:25:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Fy/M917t;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3a6cdc27438so4629477f8f.2
        for <poky@lists.yoctoproject.org>; Tue, 24 Jun 2025 07:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1750775144; x=1751379944; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Ozea/IpeXz45AhbYjPnA6DdcNYzRZ33OM7E7boCBbSA=;
        b=Fy/M917tgl4RDtAjLWE5EbqzVGRpR0fAvH7psegHaR+aFkkTorrayQ5GOmzpzaL0Bj
         ILW4xuXrAxVnMKJjPc08WJMLkBu8yQKEyD1/IsjBaxATY7FJtmf6kr1FEZbGkYQVe48E
         LVRnmmfc0LvmLF+NdHMAjsulwHCNz8meG3w6g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750775144; x=1751379944;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ozea/IpeXz45AhbYjPnA6DdcNYzRZ33OM7E7boCBbSA=;
        b=s3tk7tEuQOX4OMTFV0pV4ESdZuhQLEjezVZKl4rlQ7JMqWh+yacpMREgw3Jfs1uGcv
         xPvLsl1pBSSbUZMaGNYK3dWjEt1Bp7kEv77C5IQpNwWCZXUzC9YbbMSzJc63J8TmXFV6
         yzuldRrguj+TKjCG3vfv9DR9R6RDXg4Mj0RlwffIv0cXTseydAtf/ynasIVCQSwRAfG2
         LDfYwTIOpQptgAZOZ5e0pW4CeDetJ4tMp+lmH/w8i4HWtn2iddgy31YrMTzY6Z6wnpCL
         4dAI6AWDk8biRuMIz3ffHbWsHeLPdRPyy5J7oG7pTdat8FcrRDNC+4owp9jmDJr//Gjq
         jsMw==
X-Gm-Message-State: AOJu0Yzh4Q2Laf0o1C8L8oIzxdvejuG1r8FJmFhRJ0Xs3vjnUlFfr+qZ
	ApdCoEd/bvDZbXaIo9Ld4/UsE3ya4ld1zgSoumHr2H7al8arrKMkdXZeCRLourij35U=
X-Gm-Gg: ASbGncurNfhgawTMQewfqet1iDxohzsvA0mO5UWkIl1v0ZOzAd6ksQcf+iLJJrxyrh0
	i/arzccN9RgyjGTqB/1ZECFROCfvAiWeD/FJAnnVSD+XBkUGBb3tIAXnurzX7IyfD8v9oVrBR2N
	/zcuzTOociXLLGPYl5XHXXg9yeTsQJ6mRetWxuJ7ryUoEXkNA1BuUy1bUvVzpO6kWt0xCCyDHwE
	YIkPbrdMwFxGIGLGgC7UBGCJYZ6RYs54Z2C8oYkp/7emoqAAVTw43ZhR7LuDh+/OfQi6bgq98bB
	CQwqFjNNLnRBbFhX6HSb5//fEwJwIthybTiG6qfFrJFsXebameLUSX4AcOYLGO6U5EwoCe68RBF
	sG9pWXrBzReVveVZAcC9tWGE897sXdlTSOwQiZJoFTgjTgj0g04o=
X-Google-Smtp-Source: AGHT+IEBwMLwVsBIy4hZ8aOZ2vMvBcqoGN16KQT0FgCM1FYf9a11aLJYr2bJlipWCsZV/Vc5N6Vn4g==
X-Received: by 2002:a05:6000:4911:b0:3a5:57b7:cd7b with SMTP id ffacd0b85a97d-3a6d12ead65mr13508323f8f.22.1750775143898;
        Tue, 24 Jun 2025 07:25:43 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:341b:1360:3bd8:8ecc? ([2001:8b0:aba:5f3c:341b:1360:3bd8:8ecc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453647082a2sm144710035e9.37.2025.06.24.07.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 07:25:43 -0700 (PDT)
Message-ID: <99043e62e6530edf30c0ffce2a6316120d29953c.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] meta-yocto: remove erroneous poky-bleeding
 selftest in meta/
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: poky@lists.yoctoproject.org, Alexander Kanavin <alex@linutronix.de>
Date: Tue, 24 Jun 2025 15:25:42 +0100
In-Reply-To: <CANNYZj_ezZhTReLhu27H5Y99-k5mwikBfax==LuHLDQr-3p-9Q@mail.gmail.com>
References: <20250624135017.539280-1-alex@linutronix.de>
	 <abe975974fbba263d27ba2a0629a1bcbcc93a090.camel@linuxfoundation.org>
	 <CANNYZj_ezZhTReLhu27H5Y99-k5mwikBfax==LuHLDQr-3p-9Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 24 Jun 2025 14:25:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13673

On Tue, 2025-06-24 at 16:01 +0200, Alexander Kanavin wrote:
> On Tue, 24 Jun 2025 at 15:55, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
>=20
> > Since this can't work without poky, I'd argue it is in the right
> > place?
>=20
> There are a few other selftests in oe-core that have a hard
> dependency on poky (e.g. multiconfig, fitimage).

We should probably fix that as it wasn't intended.

> I don't mind keeping this test in meta-yocto repo, but it should
> really be moved out of meta/ directory as it's super confusing:
>=20
> https://git.yoctoproject.org/meta-yocto/tree/

Agreed, it should belong alongside the distro.

Cheers,

Richard

