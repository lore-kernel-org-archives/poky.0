Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7A8AC3DA6E
	for <webhook@archiver.kernel.org>; Wed, 20 Dec 2023 23:28:54 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web10.35802.1703114930965444870
 for <poky@lists.yoctoproject.org>;
 Wed, 20 Dec 2023 15:28:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=LZVG8+lz;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-40d2764c0f2so2651645e9.2
        for <poky@lists.yoctoproject.org>; Wed, 20 Dec 2023 15:28:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1703114929; x=1703719729; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rh3h3+Bo1F0widJ8xSyYKr+tcxu5iCrXT/vRQqjHaZQ=;
        b=LZVG8+lzL8y6VU5gg/hoAU2I9UIZl78pMkOhvWcUUkq8utTnIWAK0zR0lpGJXO2WdQ
         1MIqAR8HfXR/Jvx1DUEReyPNXucYplsrWvgo11TPA1xGrNxh8NoeHh0DnpxFY6F03Nnw
         c05H6At8XfmriHEu7JmhshSO1W1jnZHcPvz7g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703114929; x=1703719729;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rh3h3+Bo1F0widJ8xSyYKr+tcxu5iCrXT/vRQqjHaZQ=;
        b=fUwBa3OcmSsR902CdIT8lVr9L9cwt8gGi8RcEDyKkRBXOxJTzxhkpdU/XKoTKxLA14
         9UVUnv7cYnM9ebPZ/3vgAzSzPbL1LYyHiH6grHvQRCwrtlYrhs1uQDtThGEoGek/asKg
         wxd6DmyaHIGm2VW9Hix2/nDTN6J+t651S2X284A4pWkMDG8xtUFY5E/30dQI5R2/jLnJ
         zqYiPnPRXRbALVHVEda0p4jwdwTbSDPACoSarEyys2DPzHV7eeDgzDW5ZEiou9poGXFU
         LoaKmMK1OQd1TwPRUJ9Nk8nqFHEvwDcLzh/QyMwahoV+w3+Zx1D0kQLGETRKst+IIHlr
         rV3Q==
X-Gm-Message-State: AOJu0YzwOlsrBGoqnO66gpQCZ7NDziO/VxM9JZQvz1XAFPJerBv8/L34
	zisBcjvqx3AbAhGes6YD3wXt8w==
X-Google-Smtp-Source: AGHT+IGHWEH93x191gfK/kA5Bn2MDdkY62al3SWHnsoK0xtxGJWfQNkRq3dUT58fbE9TWqEaZrdIUA==
X-Received: by 2002:a05:600c:1e1f:b0:40c:3742:5a9 with SMTP id ay31-20020a05600c1e1f00b0040c374205a9mr188037wmb.177.1703114929357;
        Wed, 20 Dec 2023 15:28:49 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:916f:409d:c5db:4918? ([2001:8b0:aba:5f3c:916f:409d:c5db:4918])
        by smtp.gmail.com with ESMTPSA id j16-20020a05600c191000b0040c11fbe581sm1090023wmq.27.2023.12.20.15.28.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Dec 2023 15:28:49 -0800 (PST)
Message-ID: <200bb2ba062142fe0bb75bbeddd6cfae1290ecd3.camel@linuxfoundation.org>
Subject: Re: [poky] Add a new OpenSuse Leap 15.5 worker?
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: michael.opdenacker@bootlin.com, Michael Halstead
	 <mhalstead@linuxfoundation.org>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Date: Wed, 20 Dec 2023 23:28:48 +0000
In-Reply-To: <cd61b01b-32e1-4edc-bf05-d9e5bb31dc1b@bootlin.com>
References: <cd61b01b-32e1-4edc-bf05-d9e5bb31dc1b@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 20 Dec 2023 23:28:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13222

On Wed, 2023-12-20 at 16:13 +0100, Michael Opdenacker via
lists.yoctoproject.org wrote:
> Checking our workers, I see that we just have an "opensuse154" worker,=
=20
> but OpenSuse Leap 15.4 reaches end of life soon, at the end of this year=
=20
> (see https://en.wikipedia.org/wiki/OpenSUSE)
>=20
> To go on supporting OpenSuse in 2024, could we have a new 15.5 worker?

I believe that is already in progress.

Cheers,

Richard

