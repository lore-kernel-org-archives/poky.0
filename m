Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24B9C0015E
	for <webhook@archiver.kernel.org>; Tue, 15 Aug 2023 10:13:31 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web10.131081.1692094404616021555
 for <poky@lists.yoctoproject.org>;
 Tue, 15 Aug 2023 03:13:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=hKLBmQzA;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-3fe5c0e587eso52775385e9.0
        for <poky@lists.yoctoproject.org>; Tue, 15 Aug 2023 03:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1692094403; x=1692699203;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dVn9vZVEiD4ZR4cx8JXeZoHf8TVkNvTwZlN69y9Am8g=;
        b=hKLBmQzAFjRbo8/VmD9fG3l3jrl8x4zxvX6zrKylcN6gtRbChaG2jSAV/JAXlEQGsL
         1M1eoNCxCz8rfeBbcKDKQy8rHsDfmnwwZvaoAxMbuHx7bVqIIpdRb24KiAGHNtDUzNHY
         s6OqkEP0d2NaGS+vu06QxpiyEfEmXOSYqox4I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692094403; x=1692699203;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dVn9vZVEiD4ZR4cx8JXeZoHf8TVkNvTwZlN69y9Am8g=;
        b=GCdwAenPQR01GA/wTrDXjGTXGWwwBCM4+O/kMRtUDz023lJNwsnOQn6SB/trylrsxr
         om81QTMRY5lpOXdmPxSYxUFttxn2F2JT1iYxI454iqMMbnbkKMJSqcPUYXT+7Qi2PRPK
         N2UKak2UoEN3k2xu+fsEy/RhSTp71jJ9jPMhAvFYaG8TqHf6rHQ0+MFBqIRk7m2Bdhl9
         6VO9Wyatz68yUC9xWUXsNEIlDbZ/cSlepfQbz6NTg9tHrHNBs7Cqyq7GorW6p+DHqH19
         0IMH6CpWZuHUNjxKZrM0VmNNcwyWKQSyZJsaW7U400zIkEcGdC/BRvfdsBxNPRSsLlM+
         n3NA==
X-Gm-Message-State: AOJu0YwNWzid87gVeQKcleXygKvYjO+hMI/KvZeBY7CHxAjc9Rd1v9LQ
	u8+E1M/bkYD/vTsT6llD1V2Odw==
X-Google-Smtp-Source: AGHT+IEemcv/BR6TT576R+aJ3kfLtb7VUZWJuaDwIkCLUOF+JFNI/nh+OLLw7h1sHXcZ83Tn4wL57Q==
X-Received: by 2002:adf:f34d:0:b0:317:60fc:d3c8 with SMTP id e13-20020adff34d000000b0031760fcd3c8mr9266284wrp.71.1692094402853;
        Tue, 15 Aug 2023 03:13:22 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:6020:ab41:e8d3:f1e6? ([2001:8b0:aba:5f3c:6020:ab41:e8d3:f1e6])
        by smtp.gmail.com with ESMTPSA id k3-20020a056000004300b003177074f830sm17484700wrx.59.2023.08.15.03.13.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Aug 2023 03:13:21 -0700 (PDT)
Message-ID: <d8837748c0b0ebff9a2911bb20edea3191e0336e.camel@linuxfoundation.org>
Subject: Re: [poky] GCC configuration issue: nanosleep does not seems to be
 available
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: nicolas.wirth@speedgoat.ch, poky@lists.yoctoproject.org
Date: Tue, 15 Aug 2023 11:13:20 +0100
In-Reply-To: <0mdv.1692092740280080896.9eNG@lists.yoctoproject.org>
References: <0mdv.1692092740280080896.9eNG@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 15 Aug 2023 10:13:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13123

On Tue, 2023-08-15 at 02:45 -0700, Nicolas Wirth via
lists.yoctoproject.org wrote:
> Hello everyone,
> I trust you're all doing well.
> I've encountered a specific error while running my code, and I'm
> seeking assistance to resolve it:
> =C2=A0 =C2=A0 =C2=A0 =C2=A0error: 'sleep_for' is not a member of 'std::th=
is_thread'
> =C2=A0 =C2=A0 =C2=A0 =C2=A051 |
> std::this_thread::sleep_for(std::chrono::milliseconds(500));
> Based on my research, it appears that this issue is closely tied to
> the GCC configuration. I've referred to the following discussions on
> Stack Overflow for insight:
> https://stackoverflow.com/questions/4438084/stdthis-threadsleep-for-and-g=
cc
> https://stackoverflow.com/questions/12523122/what-is-glibcxx-use-nanoslee=
p-all-about
>=20
> I'm using the Yocto version Honister and the poky meta layer. I have
> found out that the recipe for gcc is under poky/meta/recipes-
> devtool/gcc. So my thinking was to create a gcc_%.bbappend file and
> add the following code as advised in the topics linked before:
> EXTRA_OECONF_BASE:append =3D " --enable-libstdccxx-time"
>=20
> It did not remove the error. Out of despair, I also tried to edit the
> gcc_11.2.0.bb file directly but it also did not fix the error.
> gcc version =3D=C2=A011.2.0
> g++ version =3D 11.2.0
> glibc version =3D=C2=A0(GNU libc) 2.34
>=20
> Does anyone have an input on my problem ?
>=20
> (ps: it's my first time using this resource, I hope I've posted my
> question in the right topic)

libstdc++ is built as part of gcc-runtime, not the gcc recipe so I
suspect that bbappend is in the wrong place.

Whilst not ideal, I'd try changing the gcc recipes in oe-core itself
directly to add what you need configuration wise and see if that works.
You could also look at the config.log of the gcc-runtime libstdc++
component to check the right configuration is being enabled where it
needs to be.

Once you figure out what you need, we can work out how enable it from a
bbappend in your layer.

Cheers,

Richard




