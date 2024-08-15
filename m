Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80FBAC3DA7F
	for <webhook@archiver.kernel.org>; Thu, 15 Aug 2024 12:50:49 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web11.122451.1723726244369932550
 for <poky@lists.yoctoproject.org>;
 Thu, 15 Aug 2024 05:50:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=TNUABV13;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-371845c66d9so433444f8f.3
        for <poky@lists.yoctoproject.org>; Thu, 15 Aug 2024 05:50:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1723726242; x=1724331042; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OAzhnmOTNvorX2QKqb4SmC8LxLJkki+2SoTuQpHQ+3o=;
        b=TNUABV136rUGzC/JTzcJc4sDk3UKbEJDByRQWXHLUWEZyqWJn6go7BL8vUhGfQCa7Q
         EjzqM8XsqJK+u8dVSBQFIzC1I6TYsRjRR5APiYbqzw51KgVfjTtXNt8Vko947bfYD2HB
         VTfK9fp7NaBwx2u+VtOo08JClm7h6i/VEQvWM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723726242; x=1724331042;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OAzhnmOTNvorX2QKqb4SmC8LxLJkki+2SoTuQpHQ+3o=;
        b=El53lRPBzopiiBJVyZvmR07X86MBApjhT8hlaESW+ETQQXSgAFnjUppQeCTFQ092Ao
         msR0ueur6qi6w5D0AP2DzQW1O9GlrbxQAbF3xfktFLwhI2BUoNfdAZb9+7aMR5/CY/zv
         DEhkbKGXyLaQGK1/NNqyETUZKRzzIJrUFnzWuhIkQfBpgY4PgYuXv2HQtFaftZ0W42zP
         tTMQclbG99eA29eutkhgFrG3UYkFfHt5PGiddFsa7ogd/huQEjK/22BlIt4WtSvPfPOs
         YBy1LhUID3wx/pCMj0zBt1tpFdmkaeiTVfEMFdd30/Yg4AJ/ORXqnw5ZahpFpR2JM83M
         qY+A==
X-Gm-Message-State: AOJu0YxFOMWwf2LWWVYM+Zj+5fbb467joHwktIpXr4o8z6GDrAR/ZcCi
	OGH8lTpJYgYVZ1uu7zROs5/FXREGdz/B6btoQ27jQWkRCcSCDzJoBo68Z5b48JQ=
X-Google-Smtp-Source: AGHT+IH8WWKAzItpsrBS3dJVi4eOD3SgF+Kb8R9FHH2BQV8a/M74Kn1VuTgMWOJN8RvgQ0hIgZ+QOw==
X-Received: by 2002:a05:6000:120f:b0:368:785f:b78e with SMTP id ffacd0b85a97d-3717775e9f4mr4002631f8f.13.1723726242417;
        Thu, 15 Aug 2024 05:50:42 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:2bbd:6430:deb7:a333? ([2001:8b0:aba:5f3c:2bbd:6430:deb7:a333])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429e7bfdbc9sm19116975e9.10.2024.08.15.05.50.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 05:50:42 -0700 (PDT)
Message-ID: <6e378269ec5e321b4a00393427efb93858fbf5f3.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] variables.rst: update GCCVERSION
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alex.kanavin@gmail.com, kai.kang@windriver.com
Cc: poky@lists.yoctoproject.org
Date: Thu, 15 Aug 2024 13:50:41 +0100
In-Reply-To: <CANNYZj9nspchM_6fb=BDJkLzBTwsT7odZf1N_EtXOwypCS7VwA@mail.gmail.com>
References: <20240815052749.3696159-1-kai.kang@windriver.com>
	 <CANNYZj9nspchM_6fb=BDJkLzBTwsT7odZf1N_EtXOwypCS7VwA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 15 Aug 2024 12:50:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13426

On Thu, 2024-08-15 at 11:49 +0200, Alexander Kanavin via
lists.yoctoproject.org wrote:
> I think this is better reworded to avoid mentioning a specific
> version
> completely.
>=20
> E.g. 'by default it is set to the gcc version provided by oe-core
> layer'.

Agreed, I was thinking the same thing. he jump from 8 to 14 shows how
long this was gone un-updated for.

Cheers,

Richard

