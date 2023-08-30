Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79202C83F17
	for <webhook@archiver.kernel.org>; Wed, 30 Aug 2023 16:00:13 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web10.963.1693411210608421373
 for <poky@lists.yoctoproject.org>;
 Wed, 30 Aug 2023 09:00:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=EunPCf5P;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-400a087b0bfso54169145e9.2
        for <poky@lists.yoctoproject.org>; Wed, 30 Aug 2023 09:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1693411209; x=1694016009; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NA7pLczKUq9KF39eYhtVN4DFzzTONdagaa7d3ZMCUrw=;
        b=EunPCf5Pzd8Pxdsgn4gf4zfekgmR7M7j7BnBnXrLDt1tJNLO/BVWDYVFxyUXAIot9c
         02NO8bhhGEwj6Dr4urGbWDDag60NZGwRcxZVLINwqGjrveQu7q9voEbzldsUBki09HQ4
         Xr9IIRHTlF76KqPiOgZhc1BL26ILKzCBOGdfo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693411209; x=1694016009;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NA7pLczKUq9KF39eYhtVN4DFzzTONdagaa7d3ZMCUrw=;
        b=G3iQQLYR6GFdq/rRSoigG2+HbB8NeYAX8wA0yRBj1mzicRQnfKvV0GWtiPjf8kcbml
         +xetwtoLwqESUvjNwqnqGRl/OWVYQAWaNcIKjnVLeRlkM4rt5UyUtGWNM+sTN56Le9O0
         J99SNfnP1twqePHnSKbgN6OeR6biDovv0Etm+JhP2bZKHVmF8QllypJ9XYIZbeB4sPmz
         hBn5R5pfZ/yaHXxnTef+a12AgYH4Ur0oUy1+t9FOvsKyC8PQMbS7e4cbrMqk8K7YphQi
         5MiCws/YqxY1opqOUvToy3QcD8KJEOpcoeXWhZrUqMWuLu79Ss6bjP7g6GDdo6LJL2u9
         zmgw==
X-Gm-Message-State: AOJu0YwCnmtwAXZ/JgWKxnV34Yz6rmQsSGpCpwtYvRDuAJBhYlVH78EQ
	paNDiE2p50vJnJGkBvssenxb+w==
X-Google-Smtp-Source: AGHT+IGtH1ElufOMAKx1Q/xb4SElce8nmZ4UazvLApO+MBF6XFV5vGLPA6DIsOs7PdHXCzZotZkMTQ==
X-Received: by 2002:a7b:cd0a:0:b0:401:cc0f:f866 with SMTP id f10-20020a7bcd0a000000b00401cc0ff866mr2630443wmj.12.1693411209041;
        Wed, 30 Aug 2023 09:00:09 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:15ec:a052:9304:60a5? ([2001:8b0:aba:5f3c:15ec:a052:9304:60a5])
        by smtp.gmail.com with ESMTPSA id b4-20020adff244000000b0031423a8f4f7sm17014233wrp.56.2023.08.30.09.00.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Aug 2023 09:00:08 -0700 (PDT)
Message-ID: <09460cf1e1d4db1f21bf14284dec6c82f75e8fc4.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] README: Clarify/standardise contributions process
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bas Mevissen <abuse@basmevissen.nl>
Cc: poky@lists.yoctoproject.org
Date: Wed, 30 Aug 2023 17:00:08 +0100
In-Reply-To: <92d36cfa11b72367e8880a859cb577e4@basmevissen.nl>
References: <20230830153927.2016454-1-richard.purdie@linuxfoundation.org>
	 <92d36cfa11b72367e8880a859cb577e4@basmevissen.nl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 30 Aug 2023 16:00:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13140

On Wed, 2023-08-30 at 17:55 +0200, Bas Mevissen wrote:
> On 2023-08-30 17:39, Richard Purdie wrote:
> > Now we have a contributor guide combining various wiki pages, point at
> > that and standarise our approach across layers.
> >=20
>=20
> I get a 404 on https://docs.yoctoproject.org/dev/contributor-guide/
> where=20
> https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded=
=20
> is pointing to.

The server is busy processing the docs patches and it will appear there
soon as the docs build completes. You can see it right now at:

https://docs.yoctoproject.org/next/contributor-guide/

Cheers,

Richard



