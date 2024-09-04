Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65865CD3431
	for <webhook@archiver.kernel.org>; Wed,  4 Sep 2024 10:52:37 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web10.47201.1725447153343912208
 for <poky@lists.yoctoproject.org>;
 Wed, 04 Sep 2024 03:52:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=OaJYF5/w;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-42c828c8863so27384445e9.3
        for <poky@lists.yoctoproject.org>; Wed, 04 Sep 2024 03:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1725447151; x=1726051951; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HYkf4tRxeN3kiKeoQ6mbOJiGibbmZT2Lmgrz/CZW4nY=;
        b=OaJYF5/wQyjK6vJIIOLzjLyzQUzx0JzyeRmtb/zJje6rWd+5wpocrTwTKFQOIXk9GA
         Ce9Dm0eDKYZSDJWabvCz57n8VmbGkEJI6Y6T2CKvwXJwFfNqV6Fxbz4yqo7ArfQZz45e
         aNFpTr12+m3RuEFyoJnrHxC0kgQ5KpvU5sWqk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725447151; x=1726051951;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HYkf4tRxeN3kiKeoQ6mbOJiGibbmZT2Lmgrz/CZW4nY=;
        b=FnAtzV6kCFmsJTUAjZ3R9aKCAGwVl1gaCpZTr4VmSjrpkpjQShTADBA/FCg3R29sCG
         Vd4+Arwc7tSr1SweIC1dWg87kO8JeNeTGY5X/p0V0YJG3BzH9MjMjns3mmQ7P7pDyaQ1
         tZlYGtl64QIi7qNIA4VnG0K9/lgtP6hn7AZB0pP0yuooACAxYfGg2jsR3NBCNkfZQI0/
         8+BBvtUfjWVLNpmEQwomEVOC4qAq3apRSvzpewhlGoITglH1nYFfElB+NuNfbMaBIUBd
         szV9el+JvZ8P+BAbl8S+CqVbrCwymwWMc5RX5b2f+qEMLXnGVlxNb9kVuIWLwCQ4fN6N
         Kupg==
X-Forwarded-Encrypted: i=1; AJvYcCW+BpYM2NwgHCdno0svTJdGrniko5qPXn8Jk+E2s7aWeTPAv8WXtSjDOraAaZqacUZsRzUE@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzDqX/5qgVK0gjpcssNg4dI8jUZ8jtEVc454G9N3KAAHXCIxPCB
	4urLqnRAutt1tIgZMa+qBHhWzO1JotvlzvHpJ/XTBHg/NcavM7VdDh7LnLuy2Lk=
X-Google-Smtp-Source: AGHT+IGRcduRF58UFxvW1fSxoh4NHGCojCmzLNXBJH8CyEv3ndfau1Qri/Ca6Vgv+MPSVgWNI7ZA9Q==
X-Received: by 2002:a05:600c:3d92:b0:42b:afbb:171b with SMTP id 5b1f17b1804b1-42be48fa9e7mr89368995e9.35.1725447151231;
        Wed, 04 Sep 2024 03:52:31 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:99f4:e9dc:3777:c785? ([2001:8b0:aba:5f3c:99f4:e9dc:3777:c785])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3749ef81146sm16669973f8f.82.2024.09.04.03.52.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 03:52:30 -0700 (PDT)
Message-ID: <091ffe210164018ec2f25379850c24a06aedcab4.camel@linuxfoundation.org>
Subject: Re: [poky] Poky calls host pzstd with uninative's libstdc++.so.6
 instead of the host library
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tamara Schmitz <tamara.schmitz@kernelconcepts.de>, 
	poky@lists.yoctoproject.org
Date: Wed, 04 Sep 2024 11:52:30 +0100
In-Reply-To: <1f7a3c4062e8ae3edf847b3248af39e0ce2ee30b.camel@kernelconcepts.de>
References: 
	<87fe05839a90d96222d1afb0811fa8eca72a977d.camel@kernelconcepts.de>
	 <614539e4e2e958d172483b7d4ad0faf15548b32b.camel@linuxfoundation.org>
	 <1f7a3c4062e8ae3edf847b3248af39e0ce2ee30b.camel@kernelconcepts.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 04 Sep 2024 10:52:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13433

On Wed, 2024-09-04 at 12:01 +0200, Tamara Schmitz wrote:
> On Wed, 2024-09-04 at 10:41 +0100, Richard Purdie wrote:
> > A key piece of information is which version of poky are you trying
> > to
> > build?
>=20
> The Vendor BSP specifies branch scarthgap commit
> 02eacd385eca7aa9cf25aaaa61427aa9c126e0bc which is between the yocto-
> 5.0 and the yocto-5.0.1 release tag which is from May. Yeah could use
> an update.

https://git.yoctoproject.org/poky/commit/?h=3Dscarthgap&id=3D818fe3d7df5352=
56c2736f200fc30d92ae19a7fe

is probably what you need and there are gcc fixes on the branch too
which should be helpful to make fedora 40 work

I'd suggest moving down that branch for oe-core for the security
updates too.

> > uninative changes the loader of executables to use the loader from
> > uninative rather than the host system. It does this so that
> > binaries
> > built on a newer distro can work on an older one.
> >=20
> > The cost of doing that is that you need to use a uninative that
> > matches
> > or is greater than the host system.
>=20
> Wouldn't it be great if Poky could distinct between host binaries and
> its own binaries?

In the previous email you implied the developers working on the project
were "silly" and you're now implying we're missing easy fixes to these
problems. If you think you can do this better than what we have, feel
free.=C2=A0If that is the case you don't need my help to debug this either.

It might not be as easy as you think.

Cheers,

Richard

