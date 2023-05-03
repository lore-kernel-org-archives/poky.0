Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A76A9C77B7F
	for <webhook@archiver.kernel.org>; Wed,  3 May 2023 18:03:51 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.27251.1683137027746631307
 for <poky@lists.yoctoproject.org>;
 Wed, 03 May 2023 11:03:48 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=UWH7IYsX;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3063b5f32aaso1459731f8f.2
        for <poky@lists.yoctoproject.org>; Wed, 03 May 2023 11:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1683137026; x=1685729026;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zpyO5ElPSPifd98kFJlIgmGS71WWgx455AevJROWNwo=;
        b=UWH7IYsXlZhrBDnfjN8ym+qviX6fKwt60DLGd49U21ChtsCcTZzRVPk9SuZeA9V2SX
         VHr6yCVJZjqC/b+OeroOa5KzkWsBrGVYh5q2GKauWh3BE0fWvt/qmf2OH49eKIOoRiIJ
         qQCOjbiyx5NDzd5c+tRTT9P9wsGy5CsV0QB2k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683137026; x=1685729026;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zpyO5ElPSPifd98kFJlIgmGS71WWgx455AevJROWNwo=;
        b=EMOQPspGP7MRAqDm42c4S3NhS/m7suX7dHn2qmLy4cygpb8yjb6jAfv3b9t1oqXmNT
         2uKeXvkg82pyM8aQckESjz/x3a7mYoIqkQZJUmu0+Ym/ANwolxAs0G/bZaBWG3PoV0ov
         5HNqXIvpxceVKX/NpXVZs/k1YqD+9oz8IcwQ14cnADDcd32GmADNBPWJh9Xl9Qspb3Qo
         TxV1Xrp6aICZ9NnA5mKqLSyjGkJKhWVID+yYYtkzh3GcmVGvMttahyUfczpz+kZUwBji
         X91yIlyj8ZSSPd9DbbP2ua/TKSVV3x02hlJTbwxWwa9/tyqrrjdhc9nJReVqZg04Ao4k
         +HMw==
X-Gm-Message-State: AC+VfDziQPKFtFsxdfJGrDy7occGNYypMF52cDJm5jUsbbixrio5dDqS
	FFWD7Nfnir3ihmdUb+bwoqgSKQ==
X-Google-Smtp-Source: ACHHUZ7lDPNMB+cZJSIDF8sEcsQbXrk35Wudmqx8aqxuMoqrwubeALsA3kFbJoITlp/nFwA9BCzm0g==
X-Received: by 2002:adf:ff8c:0:b0:306:2c01:707f with SMTP id j12-20020adfff8c000000b003062c01707fmr586809wrr.67.1683137026149;
        Wed, 03 May 2023 11:03:46 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:7d60:21e0:c1e5:ef4b? ([2001:8b0:aba:5f3c:7d60:21e0:c1e5:ef4b])
        by smtp.gmail.com with ESMTPSA id l18-20020a05600012d200b002ceacff44c7sm34582599wrx.83.2023.05.03.11.03.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 May 2023 11:03:45 -0700 (PDT)
Message-ID: <58703cd89e9ac138f28b621ac7e93a178118a8e4.camel@linuxfoundation.org>
Subject: Re: [poky] Ability to customize the prserver connection?
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Rusty Howell <rustyhowell@gmail.com>, poky@lists.yoctoproject.org
Date: Wed, 03 May 2023 19:03:44 +0100
In-Reply-To: <wKCv.1683133412145731863.pxoj@lists.yoctoproject.org>
References: <wKCv.1683133412145731863.pxoj@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.47.3-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 03 May 2023 18:03:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13061

On Wed, 2023-05-03 at 10:03 -0700, Rusty Howell wrote:
> Hello, is there a way to (or is there interest from others) in being
> able to customize the connection to the prserver?=C2=A0=C2=A0 We have a n=
eed to
> send an extra parameter to the prserver (which we have also
> customized).=C2=A0 We were able to do this by monkeypatching the prserv
> client during the do_packagedata task. (Rule #5 Never modify Poky)=C2=A0
> We had a custom TaskStarted handler which would monkeypatch the
> getPR() method and add the extra parameter we wanted.=C2=A0 We recently
> upgraded to honister which broke our method of monkeypatching.
>=20
> I know most Yocto users focus on images and don't bother with package
> feeds. But for those who do, I wanted to work on a way to allow one
> to create a custom prserver connection rather than being forced to
> use the client in bb/lib/prserv/client.py and hack at it via inherits
> and task handlers.

I guess we've assumed you might just have multiple PR servers for this
situation and switch to the right one for what you want. I'm not aware
of a way to specifically do what you're asking for here at present.

The PR Server code and approach is all a bit old and creaky. I think
adding some kind of customisable field/data would likely be a
reasonable extension. I know the hash equivalence server handles
situations like this in a much better way.

So I'm open to proposals for this (and to clean up/improve PR serv in
general). I would like to understand more about what kind of data this
is if possible so we can better understand the use scenarios for PR
serv and hopefully ensure it better suits real world usage in future.

Cheers,

Richard


