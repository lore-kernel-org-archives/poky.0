Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC98C77B7C
	for <webhook@archiver.kernel.org>; Thu,  4 May 2023 12:58:36 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web10.49062.1683205111442410402
 for <poky@lists.yoctoproject.org>;
 Thu, 04 May 2023 05:58:31 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=eqaS0dkg;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-3f19ab994ccso4923955e9.2
        for <poky@lists.yoctoproject.org>; Thu, 04 May 2023 05:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1683205110; x=1685797110;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=f+dwt16j3+sTcc/afZRxk2lfJRRtLlYet3JTcB9HPe4=;
        b=eqaS0dkgl5tklkm0oyh0ez1L/S/12s4bqdFk2GuhNSczyliqooAr1rwuinjUNSJzWm
         +/t1UVRxSIr8TBpauWq77xCqUt2q8PY0MWaawa4AHNM3CNe4NIxIo7EiRfj2UmsVAg3i
         C2XnpzyJI1fESan29GNK43gLPRv+zoP0wMAgg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683205110; x=1685797110;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f+dwt16j3+sTcc/afZRxk2lfJRRtLlYet3JTcB9HPe4=;
        b=JN+GceIOWZiZV7m53GloswM4mYAYhC5tjxvqNgEqPYxs7IsDhU7kRDfqb5Wkr8EKC9
         RhrlYlDzEPVNJHQUjva25l9dGsqKQ/2DL4N1KR38+97To4mUiVpeKBc9F5ljpB8G6eI1
         OAz4pxFcLMiTn//iiuY/wPV/twakurd5X7cthhhttBe355sUOI8Ol8O5FIQUoX6UZP25
         ntW+6o+iu4mTiAg+3QsszITEO25Fcv4IrvcMvAyzfXu1Z4aaY53pgnzURtG1F2QOKs6B
         YUCcjjY7S3nFcziHy8AJ+UgTagT74K2OFevGsDla5k4+VyyUT6ps1fqTbn7qzrCj2Z3a
         nm6A==
X-Gm-Message-State: AC+VfDz6ZKzUV/Y6LNyXbJ+2Y9npQaDjqeFXjqEJnhomvSOopH7Khd6G
	uw/4fUHGqmqFSZTaSmgk+suw3A==
X-Google-Smtp-Source: ACHHUZ66NEocDcSu4HnELlNam0/LHgzCAQS9IYCwMKE9WyYi1yRtrcrml0PJ67P157kkDe/mPKMBYA==
X-Received: by 2002:adf:f486:0:b0:307:2d0c:4036 with SMTP id l6-20020adff486000000b003072d0c4036mr1390305wro.66.1683205109858;
        Thu, 04 May 2023 05:58:29 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:6749:5fda:5dc0:e535? ([2001:8b0:aba:5f3c:6749:5fda:5dc0:e535])
        by smtp.gmail.com with ESMTPSA id a6-20020adffac6000000b00306415ac69asm4924936wrs.15.2023.05.04.05.58.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 May 2023 05:58:29 -0700 (PDT)
Message-ID: <380fbc73bede37c82b64ef24b45358f8beed2fa7.camel@linuxfoundation.org>
Subject: Re: [poky] Ability to customize the prserver connection?
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Rusty Howell <rustyhowell@gmail.com>
Cc: poky@lists.yoctoproject.org
Date: Thu, 04 May 2023 13:58:28 +0100
In-Reply-To: <CAE+BM3kiMRJa+_TwfP2TP_R6MehgDOaVk1+giJr18sJgCdESBA@mail.gmail.com>
References: <wKCv.1683133412145731863.pxoj@lists.yoctoproject.org>
	 <58703cd89e9ac138f28b621ac7e93a178118a8e4.camel@linuxfoundation.org>
	 <CAE+BM3kiMRJa+_TwfP2TP_R6MehgDOaVk1+giJr18sJgCdESBA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.47.3-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 04 May 2023 12:58:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13063

On Wed, 2023-05-03 at 13:06 -0600, Rusty Howell wrote:
> My company has need of proper package feeds that support multiple
> active OS releases. That is, we need to have the ability to work on
> OSv1.1 and OSv2 simultaneously. The problem we are having is that
> PRAUTO responses from the prserver do not have a concept of OS
> release. The later query gets a higher number. So if we build OSv1.1
> after OSv2, that means that OSv1.1 has a package with a greater
> PRAUTO value than it's counterpart in OSv2.=C2=A0 In that scenario, our O=
S
> dist-upgrade will be incomplete. I solved this initially by hacking
> the PRserver to include an int os_version, based on a variable in our
> site.conf. And then I changed the prserver to support this extra
> param with another column in the database.=C2=A0 Now queries to the
> prserver consist of a tuple like ("base-files-1.0-r0", "aarch64",
> "12345678978", "11")=C2=A0 where "11" is the new os_version param, and th=
e
> OSv2 counterpart ("base-files-1.0-r0", "aarch64", "12345678978",
> "20") where "20" is the new param.=C2=A0 The SELECT queries to the
> database find the max value for that package/arch and os_version <=3DX.
>=20
> In this manner, any increase in the OSv1.1 package, will cause the
> OSv2 package to get bumped on the next build automatically,
> regardless of a checksum match or not.
> Recently with our Honister upgrade, we had the added complexity of
> changes to the transport protocol (xmlrpc to socket+json) as well as
> simple changes to package.bbclass has caused us redo some things. And
> hence the idea of being able to provide our own custom prserver
> client for bitbake to consume.
> I hope this explains our needs well enough.

That makes sense. It could be done with alternate ports but I'd take a
new field which is used as an ID to make this possible with one port.
Patches welcome.

Cheers,

Richard

