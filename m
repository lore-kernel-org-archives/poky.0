Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C636DC35274
	for <webhook@archiver.kernel.org>; Thu, 21 Dec 2023 09:47:58 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web10.48426.1703152071660774903
 for <poky@lists.yoctoproject.org>;
 Thu, 21 Dec 2023 01:47:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=JAA5mLKU;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-33664b4e038so483129f8f.3
        for <poky@lists.yoctoproject.org>; Thu, 21 Dec 2023 01:47:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1703152070; x=1703756870; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wY/gSdQRZt1vAdKzgupjqRxQ9hBcVn5JKq4e2GMZ7U4=;
        b=JAA5mLKUSWjr1m8NdRPO/2pZtTsWk9EoFK0oP7c5imIRIphTlSq8c2q2lWX2/b8UhP
         gSHsrabSptIG64obCyOqmkYA4WTFiMcD3Jgbgua/vpZGHQobSn0XOUcCkCkMg1Jqse42
         +Id4EwOPUt/rZPwl81IlMH/mJQYZN7eh6BjRY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703152070; x=1703756870;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wY/gSdQRZt1vAdKzgupjqRxQ9hBcVn5JKq4e2GMZ7U4=;
        b=AVZzvzE00HhcfhC1MwPoPXzUSyGYj3BdacJvHZABqf2ycZON6jLdpe2f7uF+N/IrCA
         1VaKJdZ/y3e7R/jjylvN0xSCYsFhQ/kUtpGj94RHVUXez7hM6pD/9U+m8d+GgDhv3wuT
         Q5RjGI3dLSBg2osPEib/rAuNnWgyUJbzwGV1Em7GjPqYIsdCNQYissvSlbGvLtaSr9kq
         3FqQBti7p7RhFn1lZvCDcF3R9P4PKckdwPPLUQBv4unhiEBIF8pHFPQmFdcRPhPpFuLb
         j2/a3RINSCSEQF4IiDwT/cvSLSc8zekMOd69kx+uLCNtOuN5D3snSowvRPFMUtTFxMD/
         Vomw==
X-Gm-Message-State: AOJu0YxdCpdXfue7VDtssV56YLyLbuo7+XBKLTtVbQszOc6eRRq4h1Xv
	C/9Z5dxCBCPEEH1KxtWtDKE+1Q==
X-Google-Smtp-Source: AGHT+IEsQw9zGt68i4GInsd8/KxT2E1RHN77dao0YMxo0z8YD7eHVUu+h2Da+aAb25WQyXa5Mj1CAA==
X-Received: by 2002:a5d:4b02:0:b0:336:838f:99b with SMTP id v2-20020a5d4b02000000b00336838f099bmr465311wrq.29.1703152069974;
        Thu, 21 Dec 2023 01:47:49 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:916f:409d:c5db:4918? ([2001:8b0:aba:5f3c:916f:409d:c5db:4918])
        by smtp.gmail.com with ESMTPSA id w18-20020adfee52000000b0033657376b62sm1603584wro.105.2023.12.21.01.47.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Dec 2023 01:47:49 -0800 (PST)
Message-ID: <1aecfabe198d4d76dbd975e8e38533012be32814.camel@linuxfoundation.org>
Subject: Re: [poky] Add a new OpenSuse Leap 15.5 worker?
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Michael Opdenacker <michael.opdenacker@bootlin.com>, Michael Halstead
	 <mhalstead@linuxfoundation.org>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Date: Thu, 21 Dec 2023 09:47:48 +0000
In-Reply-To: <4fd92d9a-1a05-45bf-ada3-23bd1e81fefc@bootlin.com>
References: <cd61b01b-32e1-4edc-bf05-d9e5bb31dc1b@bootlin.com>
	 <200bb2ba062142fe0bb75bbeddd6cfae1290ecd3.camel@linuxfoundation.org>
	 <4fd92d9a-1a05-45bf-ada3-23bd1e81fefc@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 21 Dec 2023 09:47:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13225

On Thu, 2023-12-21 at 10:23 +0100, Michael Opdenacker wrote:
> Hi Richard,
>=20
> On 21.12.23 at 00:28, Richard Purdie wrote:
> > On Wed, 2023-12-20 at 16:13 +0100, Michael Opdenacker via
> > lists.yoctoproject.org wrote:
> > > Checking our workers, I see that we just have an "opensuse154" worker=
,
> > > but OpenSuse Leap 15.4 reaches end of life soon, at the end of this y=
ear
> > > (see https://en.wikipedia.org/wiki/OpenSUSE)
> > >=20
> > > To go on supporting OpenSuse in 2024, could we have a new 15.5 worker=
?
> > I believe that is already in progress.
>=20
> Thanks for the good news. I was asking because I wasn't seeing such a=20
> work on https://autobuilder.yoctoproject.org/typhoon/#/workers yet.

You mean https://autobuilder.yoctoproject.org/typhoon/#/workers/79 ?

> Any way to see which new workers are being tested, like a test=20
> autobuilder instance? This way I can check by myself and not bother=20
> others unnecessarily.

You can see that the namespace was added which is a hint that the
hardware is being prepared but not powered/connected yet. There is no
test autobuilder instance, we can barely keep one alive/working atm :(

I'd love to have processes and procedures and all kinds of things but
we have far too few people actually doing this as it is.

Cheers,

Richard


