Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C665D75E22
	for <webhook@archiver.kernel.org>; Fri, 22 Nov 2024 10:29:15 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web10.21040.1732271350608901160
 for <poky@lists.yoctoproject.org>;
 Fri, 22 Nov 2024 02:29:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=QNUzhfdY;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4316f3d3c21so16592345e9.3
        for <poky@lists.yoctoproject.org>; Fri, 22 Nov 2024 02:29:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1732271349; x=1732876149; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pJIBceEyNp7ayWUDbllRaXgKh+RohUCjZrqV7+peXzI=;
        b=QNUzhfdYHeM1KTcSFGDkbMsGaSaov5HU9DlhArBJlW7IWopmTkuiDreyH6KdgM2KlY
         qsN977rEr54U9VeRUoKJ04K9DymeewSxMcb4RCWw9SQmgXW3mULzzoh6V1995gPKz1yl
         ywJZJdxIQ2/sTmtGuoshORA5VnEuTQEiaDkgg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732271349; x=1732876149;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pJIBceEyNp7ayWUDbllRaXgKh+RohUCjZrqV7+peXzI=;
        b=UKprxCWhQMIZkrfIjLXBPYcQr5qWeqR0/Uf5lm34GGZrewnQKejc9N+U9S43vEKfWT
         bsVZLL0b60g88UigQMtjrj+MgbFcMhH+mXAv+L3WMGCa3tNJCnGZXu7YDBBx3cjSfMo1
         4ifIZHyzdu83Cehdd5mqgGMkZUuaX7tkrji2mnnJlN3ZxxV6f93Cm8HALDGwpkOH/0tr
         CGvtEldjqaLGAfYLUdSajpINdVxnVUes4EkWyR+HVE55PZYAi3XuNmaCOig+QXpgUeMQ
         33GAY47zMWALDTf+RMu2gt6gVMfPZ+B7EeVYdJe2kUpf2wHNG1KIGfNEi2/1ORxnGuxu
         Bfeg==
X-Forwarded-Encrypted: i=1; AJvYcCXNv/Il+kb7PL5jNwpvzmH7aOtJ7AQt6UAhH9zre99IAefw76fcxmVdiqpJmYG+/BhGnr8N@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzLGhBhh+mKMLeBjrpIg8IUJISHnYpW9Rdmx8zOcUdnRwtZXFTk
	Pjp/X+oTv5x3bxI8Y7lg5OWzy76mmH31oHoDiHDDZEWYhJ9lGMnQ+AKSCu4Lqrk=
X-Gm-Gg: ASbGnct7d+nK2Si845BtEG6Kse8eMl8xe3jKtABMYNyY1Xkl9VbCP7TmsIg1q3KkE88
	IRJWqDeMf1l45sW8pqLWZGQPBEpCbbaP3CVd6FU9/s5Qbtq81oiCIj0sLmHYXWxMOdHygl3/GHJ
	s/gb77cjM7DMmh6BkmLQkrNUXU31t1Q7ADJ03hRVGRAd70cN7P5tzo+jAg3IuYAnFIuN2We1CRq
	2IQ5BM/J8nacc1jWU95+z7v8KS6TAzEgd9w2pcT2OiuLC+1FDsZkRD+/wvcWxjwLAuHY+2tbtVs
	OcQIIinMqYbwIRxZsPdtD3lkbbT/WXZSFGvjotI=
X-Google-Smtp-Source: AGHT+IF9X9ZNysnCndj/AKxOenBzRJhh+59FpBJVs0+xFX/7X/7Ji+LpuRGRanOs3LhXsoeFxJzqlQ==
X-Received: by 2002:a5d:5f8c:0:b0:382:39a7:3995 with SMTP id ffacd0b85a97d-38260b5b5a5mr1842303f8f.17.1732271348835;
        Fri, 22 Nov 2024 02:29:08 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:87e7:ee61:98f2:6cd2? ([2001:8b0:aba:5f3c:87e7:ee61:98f2:6cd2])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fb53858sm1987583f8f.62.2024.11.22.02.29.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 02:29:08 -0800 (PST)
Message-ID: <ee234eecb6b9a633b57148e425fe969480da71fd.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] licenses: add GPL-2.0-with-Linux-syscall-note
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: denis.osterland@diehl.com, "poky@lists.yoctoproject.org"
	 <poky@lists.yoctoproject.org>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, Joshua Watt
	 <JPEWhacker@gmail.com>
Date: Fri, 22 Nov 2024 10:29:07 +0000
In-Reply-To: <9b605f6d8bdb4f6bb3194d5049bc0db6@diehl.com>
References: <9b605f6d8bdb4f6bb3194d5049bc0db6@diehl.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.0-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 22 Nov 2024 10:29:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13493

On Fri, 2024-11-22 at 10:28 +0100, Denis OSTERLAND-HEIM via lists.yoctoproj=
ect.org wrote:
> According to Linux copying notice[^1] the SPDX copyright should be
> `GPL-2.0 WITH Linux-syscall-note`.
> AFAIK there is no `WITH` operator in yocto yet, so I created
> GPL-2.0-with-Linux-syscall-note based on SPDX[^2] and Linux[^3].
> spdx.org/licenses does not list this license, because of the prefered use=
 of
> WITH operator.
> For example GPL-2.0-with-autoconf-exception[^4] is now marked deprecated.
>=20
> It would be good to have something like `LICENSE =3D "GPL2.0-only +
> Linux-syscall-note"`
> in the future.
>=20
> [^1]:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/C=
OPY
> ING
> [^2]: https://spdx.org/licenses/Linux-syscall-note.html
> [^3]:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/L=
ICE
> NSES/exceptions/Linux-syscall-note
> [^4]: https://spdx.org/licenses/GPL-2.0-with-autoconf-exception.html
>=20
> Signed-off-by: Denis Osterland-Heim <denis.osterland@diehl.com>
> ---
> =C2=A0.../GPL-2.0-with-Linux-syscall-note=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 15 +++++++++++++++
> =C2=A0meta/recipes-kernel/linux/linux-yocto.inc=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 2 +-
> =C2=A02 files changed, 16 insertions(+), 1 deletion(-)
> =C2=A0create mode 100644
> meta/files/common-licenses/GPL-2.0-with-Linux-syscall-note

As Alex mentioned, this is the wrong list for this patch. There is also
a bigger issue in that your change removes the main GPLv2 license text
from the kernel license field. I'm not sure we can do that as is
becomes a fairly serious oversight.

I think we probably need to add dedicated WITH support to our license
code to resolve this.

Cheers,

Richard

