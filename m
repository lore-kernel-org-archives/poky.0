Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1875CC2BBCA
	for <webhook@archiver.kernel.org>; Tue, 25 Jun 2024 08:10:24 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web11.166071.1719303019357558914
 for <poky@lists.yoctoproject.org>;
 Tue, 25 Jun 2024 01:10:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=NWEHNujQ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.173, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ec17eb4493so69867011fa.2
        for <poky@lists.yoctoproject.org>; Tue, 25 Jun 2024 01:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1719303017; x=1719907817; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SCpib2IeAAtNvAGXEm4V0wFHRn73QKNzau2DRkZTb1I=;
        b=NWEHNujQRIOdI3mtO8JeMAk6B+aAu54qimQcrsEKd0ktJj5KoCijfWwCQNaLt3vq5h
         muYOXSxJvtU00vs5yULM4BsXDgc/Rs9EBJ9t8QeaOmznjisDo9dhJPbMTrZo82aXsGbg
         lMzPIZAYmfdCBx19wvg3vYZx0mYEweF5c2i1w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719303017; x=1719907817;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SCpib2IeAAtNvAGXEm4V0wFHRn73QKNzau2DRkZTb1I=;
        b=a+Z663rUN17pJGZu/+mJvttb47cFi3uBZEwepsgRMprD+/McLyO+6cBnYRmn6usFTv
         ofKLMkkBkZm0v3PGSrk5TaHCUVBP+6/MGTpbqaYpJ6H81D9/g4AFtLpflo/DZnFnlj5a
         m3b/+N5El8cK0kioIwkAtGIKyCNWTtgRJBVZncnbFzUlMIWc0xbrLeGRxz65KaF2y9cq
         MBEQikkNBkTzXu9FFXEDfs9vBvZg1lTQfm5zCIjaWxDWbVJM//KJQ5tOk+QwFkc9a+MN
         pqbNOUB0lexCItdZqZJAIb21LUjSbv5puUHWIJ//clefCsNsTddiwEoDDpes4ikWl3Tq
         7tKg==
X-Forwarded-Encrypted: i=1; AJvYcCVQRg5/QW2J9ZzOi9iUd9By5w7L+4seFDyuHHSW0CH++j9QWZjWdyBb/rErfhcb4zz06OdctkAXhDjMwNXKi93SmdLSU00/hfQ0RXc=
X-Gm-Message-State: AOJu0YxiuM+CHcL5zirNpiGNYye9jr3Xruz5+MLhVnGC7mRZQTWvzJOC
	tvJaL8kmnkJPOG1QPlTYLqcyMRdm/HAiMQ485BHeBvbt2jJNB8UVHcSjxLZLFrMPtNL+SWfKekM
	k
X-Google-Smtp-Source: AGHT+IGQUKp9dZt2bBg9I9dUcn3M6DRc7DzmyikzuLqgrkSIc2OIofR0BHr3Mb7U/CbI4emQK5mRDA==
X-Received: by 2002:a2e:9917:0:b0:2ec:4bb7:d7f6 with SMTP id 38308e7fff4ca-2ec5b2c4daemr48608601fa.7.1719303017450;
        Tue, 25 Jun 2024 01:10:17 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:43e7:73b8:e0e4:e60d? ([2001:8b0:aba:5f3c:43e7:73b8:e0e4:e60d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4248179d982sm168499245e9.1.2024.06.25.01.10.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 01:10:17 -0700 (PDT)
Message-ID: <05e7aa305fe8079714a10d46de3c0be5bc73ca11.camel@linuxfoundation.org>
Subject: Re: [poky] Issue with Dynamic Linker and Python Dependency in Yocto
 SDK Setup
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: nicolas.wirth@speedgoat.ch, poky@lists.yoctoproject.org
Date: Tue, 25 Jun 2024 09:10:16 +0100
In-Reply-To: <6942.1719297963074354692@lists.yoctoproject.org>
References: 
	<CAMKF1soCgis2C+1cxm0Jzt_39hTwgiOWy3ZKhTdgZfWi19Kb5Q@mail.gmail.com>
	 <6942.1719297963074354692@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.0-1build2 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 25 Jun 2024 08:10:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13390

On Mon, 2024-06-24 at 23:46 -0700, Nicolas Wirth via
lists.yoctoproject.org wrote:
> > relocating tools is a necessary part of SDK self-installer, so it
> > can
> > edit the binaries to use correct libs as SDK expects. You may
> > explore
> > using buildtools-tarball which can provide python perhaps
> > https://downloads.yoctoproject.org/releases/yocto/yocto-5.0/buildtools/
> We found a workaround using patchelf to change the dynamic linker of
> the SDK to the current directory. Then, we create a symlink to the
> toolchain's dynamic linker. By setting LD_LIBRARY_PATH, we can use
> the toolchain as intended without using the installation script or
> Python.
> This is our current solution. Do you see any potential issues or a
> better way to achieve this?

Personally I'd probably have tried to find/create a statically linked
minimal python binary and used that to run the relocation script. Our
own build could probably generate one with a little bit of work or
there may be some around online.

I'd be a bit concerned that you've probably not caught all the
relocation issues with the approach you're using as the relocation
script changes a number of things and I don't think you've listed
everything. I don't have the time to try and look into what you're
doing though, we taught that existing script all these things for a
reason!

Cheers,

Richard

