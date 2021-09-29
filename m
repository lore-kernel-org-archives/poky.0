Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web10.9832.1632926503137802588
 for <poky@lists.yoctoproject.org>;
 Wed, 29 Sep 2021 07:41:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ReQ/gahy;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id w29so4683021wra.8
        for <poky@lists.yoctoproject.org>; Wed, 29 Sep 2021 07:41:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=DV1ZwNyjtkqEAv53RXIOoOERMSJ65w7cQqz9SnXSFzw=;
        b=ReQ/gahyLsk9k5IrsHybkO0brA0O/21MAD3v/tbKHcGXg/pHZWmfL5Jj4TKNyuCIb9
         NaP2i3PhI+dNtmU+cQYp8EZXZnc87K41aIhV9ephP9UoVDUMcAgHNZIV/jDad5kidQsn
         4vAnuGCb8Yl4/UXgq/pN33P59cfMv0S+xhIsk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=DV1ZwNyjtkqEAv53RXIOoOERMSJ65w7cQqz9SnXSFzw=;
        b=3c+CN5WldExWJBxHgWs0WAPi5BJw7CSuqLx121EylSQA9VSdKcaQc94m2syPKUKgUQ
         rgYDZfO60pZkv7+em25wCinylcNqekW1+o/lgLfIoFQE0V9kgRx0n24fwBXHtG03Hccm
         jh1XXDvmyZC0HRFRobrai+MnzgNuIHFpnOD9rRn0cchhOFnOB1uNGgjp8gmEznlyTqNJ
         +nrVH5V0L7S5rBrY3CVDGGgi1ccngtJmlk4RHdjcZY7NKyf59iQgbFB1Typ/pOq2cDXC
         u+2wTJKDUpncrRF51VTWu1O+3Mm9QMNQk80HkSpVOL1mVGp4j7JlA5f0NwJgsJjm0zzk
         OBSA==
X-Gm-Message-State: AOAM533eJoofHPI5yIA8ueC6kTNsPiNhS/m45W3nNA4V3tKSD3Xk6sCN
	yNZx4ehI0QEiN6/L0YLfyq/LEg==
X-Google-Smtp-Source: ABdhPJwINvZjUcsanNaa2fxgUP68M6Tsa1LLpcrV8UHaE217p52OMzy1GSrGy0AiRi35Z1u1mlq9iA==
X-Received: by 2002:adf:a101:: with SMTP id o1mr167780wro.379.1632926501582;
        Wed, 29 Sep 2021 07:41:41 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:4a38:6a33:4c6c:a572? ([2001:8b0:aba:5f3c:4a38:6a33:4c6c:a572])
        by smtp.gmail.com with ESMTPSA id m2sm1872665wmm.3.2021.09.29.07.41.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Sep 2021 07:41:41 -0700 (PDT)
Message-ID: <711d883bc83b84562247e1cf4c76c7089ad37d51.camel@linuxfoundation.org>
Subject: Re: [poky] cant get the python interpreter installed in recipe-sysroot
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Daniel Squires <dan@engineeredarts.co.uk>, poky@lists.yoctoproject.org
Date: Wed, 29 Sep 2021 15:41:40 +0100
In-Reply-To: <gAzG.1632925478477700955.M3AT@lists.yoctoproject.org>
References: <gAzG.1632925478477700955.M3AT@lists.yoctoproject.org>
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2021-09-29 at 07:24 -0700, Daniel Squires wrote:
> I'm trying to run some unit tests on some of our internal packages using ctest
> which in turn executes some doctest based binaries, these in turn try to start
> a python based fixture. So part of the problem is ctest executes natively and
> then tries to exec cross compiled binaries. This is relatively easy to resolve
> with qemu-user and the relevant bin_fmt strings. With this all the C only
> tests are passing. However when it comes to fire up the python interpreter it
> by default tries to run my hosts interpreter.  It's pretty trivial to adapt
> the test suite to detect its within yocto and run the python pointed to by
> PYTHON, however this is still problematic, some of the modules such as zmq are
> trying to use c based libraries. I think i need to run a python with qemu
> within the recipe-sysroot however I cannot figure out how to get the python
> interpreter installed here.
> With  DEPENDS += "python3" it is still missing. I have seen some of the docs
> re running tests within the final built image however I would like to be able
> to run the tests on specific recipes without having to build the entire image
> first hence I have added a class that implements a run_test task  such that it
> can be used like bitbake -c run_test <recipe>.
> How can I "install" python3 within the recipe-sysroot ?

We don't store that anywhere. The sysroot data is stored and handled separately
from the target package data since it isn't always identical. One of the
optimisations in the code is that since we don't run the target binaries, they
aren't part of the sysroot. The python target binaries will therefore never end
up in the sysroot.

Cheers,

Richard

