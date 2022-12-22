Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web10.49035.1671725698918174711
 for <poky@lists.yoctoproject.org>;
 Thu, 22 Dec 2022 08:14:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=YNZI+3jv;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f45.google.com with SMTP id r126-20020a1c4484000000b003d6b8e8e07fso4043283wma.0
        for <poky@lists.yoctoproject.org>; Thu, 22 Dec 2022 08:14:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LHA+4QAgTZM7JUXkP7DOwFqSTPOuR0MLtVf1ejjdptw=;
        b=YNZI+3jvERFVqlA8D6c94y6kVKzdZ+Kzn/UCgW7x76rYCkJJQtDTHLf5HjFR3V2pmC
         GN37W42tJgvuWjfmRoyfoQdE2gNrME3j0gWcZrnwfkAAAqYDGWlBdZLB/BVFrqu05cuC
         p5xfW8arb2mHms40AFlBBSzVZ3gM0hUiXYCPU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LHA+4QAgTZM7JUXkP7DOwFqSTPOuR0MLtVf1ejjdptw=;
        b=wSnjgsbEsqJNbGXPQlWhZ2+ycLysf2bSAOyo5m1kBfLe5vBQWe6M1BXrf8lxwHwo+X
         wmvpIPo7/iT/7YS7TM5Ko0FOCsQgzzmZVgyKmXYoqPI16kQWd+nIGGmqizb1FTNgmrCM
         GQo4Hg43OsAAHzMNEJOKF9AJUA1in7KD3/ZeK3OTcZ47+AlmiZHB1wYf2/YPPVPb2owD
         6t3+tjO4tH/rjco7krkTmDqabodb2CF5RCdvcunhGxsqXwqHo4k0TVfQc6bNrU9tDYsl
         ViD/poHoVyIDnLpBJTRk9nDRcmscIoAI48bUKjrj150h/IsPidD3WjFr2saZRgdItIlH
         FeJA==
X-Gm-Message-State: AFqh2kod/OHo1cd53lsUh0w3zf4zCD0pkmxN02Qp7d/RPt8gs6LvzMe/
	uZ9IHjJ3TDhAPebMOWnSbZrsRg==
X-Google-Smtp-Source: AMrXdXu96365tCuVO7BOdxVc370nxZOkn/G6q3qo8qvrH4Y0SaJdnORx8wkPL0q1IirR5bN0hI4wlw==
X-Received: by 2002:a05:600c:5114:b0:3d0:75ee:357b with SMTP id o20-20020a05600c511400b003d075ee357bmr4867786wms.21.1671725697245;
        Thu, 22 Dec 2022 08:14:57 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:a8db:6d5d:f54f:c6b2? ([2001:8b0:aba:5f3c:a8db:6d5d:f54f:c6b2])
        by smtp.gmail.com with ESMTPSA id v26-20020a7bcb5a000000b003cf4eac8e80sm1749347wmj.23.2022.12.22.08.14.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 08:14:56 -0800 (PST)
Message-ID: <bc006b61f6ce7b6f80e83cbe81e286737339efe1.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] busybox: save a copy of autoconf.h before compiling
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, antoningodard@pm.me
Cc: poky@lists.yoctoproject.org
Date: Thu, 22 Dec 2022 16:14:56 +0000
In-Reply-To: <CANNYZj9rzJaVPCN4xOxP2X2xJX_niRQ6MNqXn6Ksq8koKEknYg@mail.gmail.com>
References: <20221222150904.1058186-1-antoningodard@pm.me>
	 <CANNYZj9rzJaVPCN4xOxP2X2xJX_niRQ6MNqXn6Ksq8koKEknYg@mail.gmail.com>
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2022-12-22 at 16:40 +0100, Alexander Kanavin wrote:
> This seems like something that needs to be solved upstream instead of
> fixing after the fact in the recipe?

We play games to build busybox twice, once for a binary for use with
suid and once without. I suspect this is therefore our own issue but I
didn't check specifically as yet.

Cheers,

Richard
