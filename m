Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web09.30243.1654509404466395668
 for <poky@lists.yoctoproject.org>;
 Mon, 06 Jun 2022 02:56:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=UZ8S+Mkg;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f50.google.com with SMTP id e5so553915wma.0
        for <poky@lists.yoctoproject.org>; Mon, 06 Jun 2022 02:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=Vfsuf7olDemGmXDmnxYCaGxBBLSaX82HqBUh+bv0GDU=;
        b=UZ8S+Mkgq+wD2jQzutUKPYSwtsHErQ94b/1htxF+3pSffL6VJxywDXcngwsWz5WExp
         ojzCRwfnkyc7zPHaE/QZ9Pdy7lwwVdLSqsCM7b2UxxKh3GlPcTmMUvyPYy5qPS3b6IM5
         ZhWl0P0R9i1O50bVDwJYmxThYnpaSeYbn6htY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=Vfsuf7olDemGmXDmnxYCaGxBBLSaX82HqBUh+bv0GDU=;
        b=xlJkKmJyt2fjtVYxbaCkmJ7hpbZ+JdlwujFCtKMKeLIOvVXAfvIytqiI1iHR/I8xtG
         kNlXWFWAv7HFL9ATx5I00N1057FlR4auWytLMRG2REx4k2i+n1jZYKYGTEp1NGTGpZZL
         7zCdGs3wyYbM61Sb1PXd3JeeiuT1iNaz8hc2zG6OJWfN2glKtxFNLPFRNncOgTkBBskB
         wPnSh7BIEy31Akwi6GX+PHdp2zP+RUXsDZytL0iBE4ZG7momoA5luyc1SSI5mG69p7EM
         MGQvuCskPeqF5g+BvmvCtbreabcdw8DXgim8eCwwXcProfUz7gQTBYm0NCvC+wApAlee
         8GYw==
X-Gm-Message-State: AOAM530IayBKriM+ifexblJsrFhOcUhKM/K6BNIdlpNzj2P1d+Xk1Unr
	91yfNL4hhAlOED3wRezqrYHqzg==
X-Google-Smtp-Source: ABdhPJxsc48/8Dmt/yoaKT4ynerZ1lHcMIRsLR8aQzT/k0sIvz5GbWb2ORE1ATSoyPfvmNgNsPrhXA==
X-Received: by 2002:a05:600c:4a28:b0:39c:4d97:37e2 with SMTP id c40-20020a05600c4a2800b0039c4d9737e2mr5782818wmp.31.1654509402832;
        Mon, 06 Jun 2022 02:56:42 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:22ca:1a07:c46c:a885? ([2001:8b0:aba:5f3c:22ca:1a07:c46c:a885])
        by smtp.gmail.com with ESMTPSA id u4-20020adff884000000b00210288c55d0sm14867592wrp.52.2022.06.06.02.56.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jun 2022 02:56:42 -0700 (PDT)
Message-ID: <8fd6ddb04af647f9c6ce264a4f4f9b4f67915871.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH]Make linux-libc-headers.inc compatible with 4.14
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Thomas Viehweger <patchesThomas.Vie@web.de>, poky@lists.yoctoproject.org
Date: Mon, 06 Jun 2022 10:56:41 +0100
In-Reply-To: <a3e5e6c4-58b8-1094-dad2-f367a8ffe528@web.de>
References: <49f6643a-fe07-af5b-00aa-dc7d48320e55@web.de>
	 <4ba98903-a53c-8b8f-3b20-e2823794609b@web.de>
	 <bacff555c7e4124201eba4a0ba7c5473c28c4b8c.camel@linuxfoundation.org>
	 <a3e5e6c4-58b8-1094-dad2-f367a8ffe528@web.de>
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2022-06-06 at 11:27 +0200, Thomas Viehweger wrote:
> > You should be able to use the most recent linux-libc-headers even with
> > an older kernel. I don't understand this desire people have to use lots
> > of different versions of it but we're not doing it. We do not want a
> > different userspace per kernel.
> >=20
> > There is a warning in the recipe about it and I'm not taking patches
> > like this unless someone explains a really good reason why the
> > userspace needs to be built with an older set of headers.
>=20
> Yes, I have seen the warnings in the receipt. I know that newer kernels
> shall
> be compatible with older userspace. E.g. pyro-userspace should work with
> kirkstone kernels.
> But are you really sure that kirkstone userspace (e.g. glibc compiled wit=
h
> 5.16 kernel headers) does not try to use features which the older kernel
> does not provide?
> So, to ask the other way: what is the reason why kirkstone uses the newer
> kernel-headers?
> Shouldn't the userspace be compiled with the headers of the minimum
> supported kernel headers instead (for example the oldest supported
> longterm - currently 4.9)?

That isn't how glibc works. There is code in glibc which only uses
features if they are available and it defines a kernel version it is
compatible back to (see OLDEST_KERNEL) which is architecture specific.
Obviously you won't get features in new kernels but it is meant to be
safe.

Cheers,

Richard

