Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDE97C001DF
	for <webhook@archiver.kernel.org>; Fri, 20 Oct 2023 12:08:37 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web10.52580.1697803710217961159
 for <poky@lists.yoctoproject.org>;
 Fri, 20 Oct 2023 05:08:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=VPE7c3Dy;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.181, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2c523ac38fbso10763981fa.0
        for <poky@lists.yoctoproject.org>; Fri, 20 Oct 2023 05:08:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1697803708; x=1698408508; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xwtQD1eu3hLDuN4VsmdJyfNaL4gKHvFuNSZCr+F/OfI=;
        b=VPE7c3DyqHYvV2W0H9E8yY8dvSFB8OwPmXzz297NoDSXLagd88JooCSJvA+w0P5MPx
         dAkn6jMKgjBE2GdsQ85Qu/Cf+W3MWNlpiqiM4oz2Cn7i+6eqdrm9GvNJtB/+ItpcQrY6
         B/rn2G0PI+cSU0rWKMCdfQf8FUNl5x9mdR8oU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697803708; x=1698408508;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xwtQD1eu3hLDuN4VsmdJyfNaL4gKHvFuNSZCr+F/OfI=;
        b=XixNip2fDaUvWlf+aakg0AWsDIJH3Fu0T9HvygznWH6IsPZ1LTtzGSkC5Rwa+l/HWd
         TMfjxIWK97vt76aH8T0p/QsZ5iW9y1IXau337r6ldcIMOQ0O3RAD+ue17VBpl+mTV7eL
         a7dpZgX7iallQMWXdKMXrm6i6j7jO7aRv2fY8SvN05yrDuZXz6EvNQDieWm7LEdZP/9f
         vLxNulYdhVHsUWhNNXaO9jReEVnhGnXnCB76Ir6xhrEes4tTe+kvD3U2W3SYqkIHXttQ
         cXmA0FyBIz0bh3ekpEBYLMzx2gCS8DxCWWhpmuWGZSRhLSnC9dcSd1WoliBX6uz3SDMB
         XmqA==
X-Gm-Message-State: AOJu0Yx3hy13CMAQIdaCYSsdrLGiZca5ivjbhkJXxwW1Ba+C+0Y02WkN
	whp7HZTB0lNY26RgrSpMptTWqQ==
X-Google-Smtp-Source: AGHT+IHeHV0T8AmvNV8MuYD+UVq2OqGjP0je9mqIa4O/kwob7LmM7lK/hso7XC8ulE2Ta1EXdldelQ==
X-Received: by 2002:a2e:a309:0:b0:2c0:7d6:570a with SMTP id l9-20020a2ea309000000b002c007d6570amr1199991lje.33.1697803707999;
        Fri, 20 Oct 2023 05:08:27 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:e461:a77:598a:10d6? ([2001:8b0:aba:5f3c:e461:a77:598a:10d6])
        by smtp.gmail.com with ESMTPSA id m16-20020a7bca50000000b00405d9a950a2sm6731341wml.28.2023.10.20.05.08.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 05:08:27 -0700 (PDT)
Message-ID: <df3bf5a897c3519dcef8237d8eb850c541aada6e.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH 0/3] lighttpd-1.4.72
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Glenn Strauss <gs-yoctoproject.org@gluelogic.com>, 
	poky@lists.yoctoproject.org
Cc: Glenn Strauss <gstrauss@gluelogic.com>
Date: Fri, 20 Oct 2023 13:08:26 +0100
In-Reply-To: <20231020114845.100062-1-gs-yoctoproject.org@gluelogic.com>
References: <20231020114845.100062-1-gs-yoctoproject.org@gluelogic.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 20 Oct 2023 12:08:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13187

On Fri, 2023-10-20 at 07:48 -0400, Glenn Strauss wrote:
> From: Glenn Strauss <gstrauss@gluelogic.com>
>=20
>=20
> Glenn Strauss (3):
>   lighttpd: upgrade 1.4.71 -> 1.4.72
>   lighttpd: update init script
>   lighttpd: modernize lighttpd.conf
>=20
>  .../lighttpd/lighttpd/lighttpd                | 19 +++++++++-
>  .../lighttpd/lighttpd/lighttpd.conf           | 38 ++++---------------
>  ...{lighttpd_1.4.71.bb =3D> lighttpd_1.4.72.bb} |  2 +-
>  3 files changed, 26 insertions(+), 33 deletions(-)
>  rename meta/recipes-extended/lighttpd/{lighttpd_1.4.71.bb =3D> lighttpd_=
1.4.72.bb} (97%)

At a quick glance the patches look reasonable, thanks. Would you be
able to resend this series to the openembededded-core mailing list
though please? Patches for that component should be sent there.

Cheers,

Richard

